#ifndef ONNX_MLIR_CRT_COST_MODEL
#define ONNX_MLIR_CRT_COST_MODEL

#include <cstdlib>
#include <iostream>
#include <memory>
#include <string>
#include "stdlib.h"

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/SmallString.h"

#include "src/Dialect/Crt/CrtDialect.hpp"
#include "src/Dialect/Crt/CrtOps.hpp"

// for LogicalResult, in MLIRSupport
using namespace mlir;

namespace onnx_mlir {

class SimulatorBase {

protected:
  llvm::DenseMap<StringRef, float> atomic_cost;
  llvm::DenseMap<StringRef, float> atomic_uncertainty;

public:
  inline LogicalResult verify() {
    return success();
  }
  
  inline float estimate_atomic_op(Operation* op) {
    std::string query_key;
    std::string op_name_str = op->getName().stripDialect().str();
    query_key += op_name_str;

    auto operand_type_range = op->getOperandTypes();
    for (auto operand_type: operand_type_range) {
      auto _type = llvm::cast<mlir::TensorType>(operand_type);
      ArrayRef _shape = _type.getShape();
      std::string operand_type_str;
      for (auto dim: _shape) {
        if (!operand_type_str.empty()) operand_type_str += "x";
        operand_type_str += std::to_string(dim);
      }
      query_key += "-";
      query_key += operand_type_str;
    }

    auto result_type_range = op->getResultTypes();
    for (auto result_type: result_type_range) {
      auto _type = llvm::cast<mlir::TensorType>(result_type);
      ArrayRef _shape = _type.getShape();
      std::string result_type_str;
      for (auto dim: _shape) {
        if (!result_type_str.empty()) result_type_str += "x";
        result_type_str += std::to_string(dim);
      }
      query_key += "-";
      query_key += result_type_str;
    }
    std::cout << query_key << std::endl;

    if (isa<crt::ConstantOp>(op)) {
      return 0.0;
    } else if (isa<crt::AllreduceOp>(op)) {
      // TODO adjust cost;
      return 0.53;
    } else if (isa<func::ReturnOp>(op) || isa<crt::YieldOp>(op)) {
      return 0.0;
    } else if (isa<func::FuncOp>(op) || isa<crt::PhantomBlockOp>(op)) {
      assert(0 && "FuncOp cannot get atomic cost");
    } else if (isa<crt::ReshapeOp>(op)) {
      return 0.0;
    } else {
      assert(this->atomic_cost.count(query_key) == 1);
      float _cost = this->atomic_cost.lookup(query_key);
      assert(_cost != 0);
      return _cost;
    } 
  }
};

class CPUSimulator: public SimulatorBase {
public:
  CPUSimulator() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCPUCosts.cpp.inc"
  }
};

class GPUTypeASimulator: public SimulatorBase {
public:
  GPUTypeASimulator() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeACosts.cpp.inc"
  }
};

class GPUTypeBSimulator: public SimulatorBase {
public:
  GPUTypeBSimulator() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeBCosts.cpp.inc"
  }
};

class CostEstimator {
public:
  llvm::SmallVector<SimulatorBase*> simulators;
  SimulatorBase* default_device;
  int dev_count;

  CostEstimator() {
    // 1 CPU, 4 GPU
    simulators.push_back(new CPUSimulator());
    simulators.push_back(new GPUTypeASimulator());
    simulators.push_back(new GPUTypeASimulator());
    simulators.push_back(new GPUTypeBSimulator());
    simulators.push_back(new GPUTypeBSimulator());

    default_device = simulators[4];

    dev_count = 5;
  }

  // single-dev-strategy
  // find the fastest dev to execute solely
  inline float single_dev(func::FuncOp funcOp) {
    float min_time = -1.0;
    for (int dev = 0; dev < dev_count; dev++) {
      auto _time = this->bounded_estimate_dag_at(funcOp, dev);
      if (_time < min_time || min_time < 0) min_time = _time;
    }
    return min_time;
  }

  // useAllGPUs-strategy
  // has 4 even pblocks that packs all ops
  // but dispatched to all GPU devs
  inline float dispatch_to_all_gpus(func::FuncOp funcOp) {
    llvm::SmallVector<int> devs = {1, 2, 3, 4};
    auto min_time = this->dynamic_dispatch_dag_at(funcOp.getOperation(), devs);
    return min_time;
  }

  inline float estimate_function(func::FuncOp funcOp) {
    return this->unbounded_estimate_dag_at(funcOp, 4);
  }

  // dag execute on device at specified idx, where this device can
  // only execute one operation at a time
  inline float dynamic_dispatch_dag_at(Operation* funcOp, llvm::SmallVector<int> devices) {
    llvm::SmallVector<Operation*> worklist;
    llvm::SmallVector<int> available_devices = devices;
    // use `ms` as time units
    llvm::DenseMap<mlir::Value, float> tensor_ready_worklist;
    Block& blk = funcOp->getRegion(0).front();

    // get all ops ready
    // funcOp->dump();
    std::cout << "here" << std::endl;
    blk.walk([&](Operation* op){
      if (isa<crt::PhantomBlockOp>(op) || 
          isa<crt::AllreduceOp>(op) || 
          isa<crt::ConstantOp>(op) || 
          isa<func::ReturnOp>(op))
      worklist.push_back(op);
    });
    std::cout << "here" << std::endl;

    // for (auto pblock: worklist) {
    //   float _extra_cost = estimate_pblock(pblock, 0);
    //   std::cout << "phantom-time = " << _extra_cost<< std::endl;
    // }
    // return 13.0;
    
    // set arg ready at time 0
    auto blkargs = blk.getArguments();
    for (auto arg: blkargs) {
      tensor_ready_worklist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // swap to get all ready op, and update its result value timing
    float yield_time;
    float current_time;
    yield_time = 0.0;
    for (auto _op: worklist) {
      current_time = 0.0;
      auto _operands = _op->getOperands();
      bool isReady = true;
      for (auto _operand: _operands) {
        if (tensor_ready_worklist.count(_operand) == 0) {
          isReady = false;
        } else {
          float t = tensor_ready_worklist.lookup(_operand);
          current_time = (t > current_time) ? t : current_time;
        }
      }
      if (!isReady) continue;
    
      std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time << std::endl;
    
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        yield_time = current_time;
      } else if (isa<crt::PhantomBlockOp>(_op)) {
        // pop avail dev to execute this op
        int devat = available_devices.back();
        available_devices.pop_back();
        std::cout << "dispatch pblock to dev-id = " << devat << std::endl;
        _extra_cost = this->estimate_pblock(llvm::cast<crt::PhantomBlockOp>(_op), devat);
        std::cout << "get pblock extra-time-cost = " << _extra_cost << std::endl;
        float complete_time = current_time + _extra_cost;
        tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
        std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time << std::endl;
        std::cout << std::endl << std::endl;
    
        // TODO simulate when dev is idle from busy?
      } else {
        // only dispatch pblock, other ops on cpu/host
        _extra_cost = this->default_device->estimate_atomic_op(_op);
        std::cout << _op->getName().getStringRef().str() << " _extra_cost = " << _extra_cost << std::endl;
        float complete_time = current_time + _extra_cost;
        tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
        std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time << std::endl;
      }
    
    }
    
    std::cout << "==> returning/yielding now ==== yield time = " << yield_time<< std::endl<< std::endl << std::endl;
    
    return yield_time;
  }

  inline float estimate_pblock(crt::PhantomBlockOp pblock, int devat) {
    llvm::SmallVector<Operation*> worklist;
    // use `ms` as time units
    llvm::DenseMap<mlir::Value, float> tensor_ready_worklist;
    Block& blk = pblock->getRegion(0).front();

    // get all ops ready
    blk.walk([&](Operation* op){
      worklist.push_back(op);
    });
    
    // set arg ready at time 0
    auto arg = pblock.getOperand();
    tensor_ready_worklist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));

    // swap to get all ready op, and update its result value timing
    bool isConverged = true;
    float yield_time = 0.0;
    float current_time = 0.0;
    for (auto _op: worklist) {
      auto _operands = _op->getOperands();
      bool isReady = true;
      for (auto _operand: _operands) {
        if (tensor_ready_worklist.count(_operand) == 0) {
          isReady = false;
        } else {
          float t = tensor_ready_worklist.lookup(_operand);
          current_time = (t > current_time) ? t : current_time;
        }
      }
      if (!isReady) continue;

      std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time <<  std::endl;
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        yield_time = current_time;
      } else {
        _extra_cost = this->estimate_atomic_op_at(_op, devat);
      }
      std::cout << _op->getName().getStringRef().str() << " _extra_cost = " << _extra_cost << std::endl;
      float complete_time = current_time + _extra_cost;
      tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
      // do not verbose if converged
      std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time <<  std::endl;
      // bounded methods, operations are not concurrent
      // set current_time = completetime for single-thread handling
      current_time = complete_time;
    }

    std::cout << "==> returning/yielding now ==== yield time = " << yield_time<< std::endl<< std::endl << std::endl;

    return yield_time;
  }

  // dag execute on device at specified idx, where this device can
  // only execute one operation at a time
  inline float bounded_estimate_dag_at(Operation* funcOp, int devat) {
    llvm::SmallVector<Operation*> worklist;
    // use `ms` as time units
    llvm::DenseMap<mlir::Value, float> tensor_ready_worklist;
    Block& blk = funcOp->getRegion(0).front();

    // get all ops ready
    blk.walk([&](Operation* op){
      worklist.push_back(op);
    });
    
    // set arg ready at time 0
    auto blkargs = blk.getArguments();
    for (auto arg: blkargs) {
      tensor_ready_worklist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // swap to get all ready op, and update its result value timing
    bool isConverged = true;
    float yield_time = 0.0;
    float current_time = 0.0;
    for (auto _op: worklist) {
      std::cout << "happer" << std::endl;
      _op->dump();

      auto _operands = _op->getOperands();
      bool isReady = true;
      for (auto _operand: _operands) {
        if (tensor_ready_worklist.count(_operand) == 0) {
          isReady = false;
        } else {
          float t = tensor_ready_worklist.lookup(_operand);
          current_time = (t > current_time) ? t : current_time;
        }
      }
      if (!isReady) continue;

      std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time <<  std::endl;
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        yield_time = current_time;
      } else if (isa<func::FuncOp>(_op) || isa<crt::PhantomBlockOp>(_op)) {
        _extra_cost = this->bounded_estimate_dag_at(_op, devat);
      } else {
        // _extra_cost = this->simulators[devat]->estimate_atomic_op(_op);
        _extra_cost = this->estimate_atomic_op_at(_op, devat);
      }
      std::cout << _op->getName().getStringRef().str() << " _extra_cost = " << _extra_cost << std::endl;
      float complete_time = current_time + _extra_cost;
      tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
      // do not verbose if converged
      std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time <<  std::endl;

      // bounded methods, operations are not concurrent
      // set current_time = completetime for single-thread handling
      current_time = complete_time;
    }

    std::cout << "==> returning/yielding now ==== yield time = " << yield_time<< std::endl<< std::endl << std::endl;

    return yield_time;
  }

  // dag execute on device at specified idx, where this device can
  // only execute multiple operations at a time, as long as all 
  // pre-tensors are ready
  inline float unbounded_estimate_dag_at(Operation* funcOp, int devat) {
    // get devat idx
    //
    // llvm::SmallVector<int32_t> devat; 
    // if (isa<crt::PhantomBlockOp>(funcOp)) {
    //   mlir::ArrayAttr devatattr = llvm::cast<crt::PhantomBlockOp>(funcOp).getDevatAttr();
    //   for (auto devat: devatattr) {
    //     mlir::IntegerAttr lala = devat;
    //   }
    // }
    //
    llvm::SmallVector<Operation*> worklist;
    // use `ms` as time units
    llvm::DenseMap<mlir::Value, float> tensor_ready_worklist;
    Block& blk = funcOp->getRegion(0).front();

    // get all ops ready
    blk.walk([&](Operation* op){
      worklist.push_back(op);
    });
    
    // set arg ready at time 0
    auto blkargs = blk.getArguments();
    for (auto arg: blkargs) {
      tensor_ready_worklist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // swap to get all ready op, and update its result value timing
    bool isConverged = true;
    float yield_time = 0.0;
    do {
      for (auto _op: worklist) {
        float timing = 0.0;
        auto _operands = _op->getOperands();
        bool isReady = true;
        for (auto _operand: _operands) {
          if (tensor_ready_worklist.count(_operand) == 0) {
            isReady = false;
          } else {
            float t = tensor_ready_worklist.lookup(_operand);
            timing = (t > timing) ? t : timing;
          }
        }
        if (!isReady) continue;

        isConverged = false;
        float _extra_cost = 0.0;
        if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
          yield_time = timing;
        } else if (isa<func::FuncOp>(_op) || isa<crt::PhantomBlockOp>(_op)) {
          _extra_cost = this->unbounded_estimate_dag_at(_op, devat);
        } else {
          // _extra_cost = this->simulators[devat]->estimate_atomic_op(_op);
          _extra_cost = this->estimate_atomic_op_at(_op, devat);
        }
        tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), _extra_cost + timing));

        // do not verbose if converged
        if (!isConverged) {
          std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << timing << " completetime = " << _extra_cost + timing << std::endl;
          std::cout << "==> this op takes extra time cost = " << _extra_cost << std::endl;
        }
      }
    } while (isConverged);

    std::cout << "==> returning/yielding now ==== yield time = " << yield_time << std::endl;

    return yield_time;
  }

  inline float estimate_atomic_op_at(Operation* op, int devat) {
    return this->simulators[devat]->estimate_atomic_op(op);
  }
  
  inline LogicalResult verify() {
    return success();
  }
};

} // namespace onnx_mlir

#endif /* ONNX_MLIR_CRT_COST_MODEL */
