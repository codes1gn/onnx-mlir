#ifndef ONNX_MLIR_CRT_COST_MODEL
#define ONNX_MLIR_CRT_COST_MODEL

#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <memory>
#include <mlir/IR/PatternMatch.h>
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

  inline float mpmdSchedule(func::FuncOp funcOp,  llvm::SmallVector<int32_t> devices_idx) {
    llvm::SmallVector<Operation*> worklist;
    funcOp.getBody().front().walk([&](Operation* op){
      Operation* parentOp = op->getParentOp();
      if (isa<crt::PhantomBlockOp>(parentOp)) {
        assert(1==1);
      } else {
        worklist.push_back(op);
      }
    });

    llvm::DenseMap<mlir::Value, float> value_ready_worklist;

    // getFuncOp argument
    auto arguments = funcOp.getArguments();
    for (auto arg: arguments) {
      value_ready_worklist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }
    

    float current_time;
    for (auto _op: worklist) {
      current_time = 0.0;
      auto _operands = _op->getOperands();
      bool isReady = true;
      for (auto _operand: _operands) {
        if (value_ready_worklist.count(_operand) == 0) {
          isReady = false;
        } else {
          float t = value_ready_worklist.lookup(_operand);
          current_time = (t > current_time) ? t : current_time;
        }
      }
      if (!isReady) continue;
    
      std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time << std::endl;
    
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        std::cout << "found Terminator\n";
        auto opers = _op->getOperands();
        float value_last_time = -1.0;
        for (auto _operand_yield: opers) {
          auto value_time = value_ready_worklist.lookup(_operand_yield);
          value_last_time = (value_time > value_last_time) ? value_time : value_last_time;
        }
        return value_last_time;
      } else if (isa<crt::ConstantOp>(_op)) {
        value_ready_worklist.insert(std::make_pair(_op->getResult(0), (float)0.0));
      } else if (isa<crt::PhantomBlockOp>(_op)) {
        float _extra_time = this->mpmdSchedulePBlockWithHEFTStrategy(
            llvm::cast<crt::PhantomBlockOp>(_op), 
            devices_idx
        );
        auto _operands = _op->getOperands();
        float _base_time = -1.0;
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist.lookup(_operand);
          _base_time = (_base_time < _operand_ready_time) ? _operand_ready_time : _base_time;
        }
        float _complete_time = _base_time + _extra_time;
        value_ready_worklist.insert(std::make_pair(_op->getResult(0), _complete_time));
    
      } else if (isa<crt::AllreduceOp>(_op)) {
        // only dispatch pblock, other ops on cpu/host
        float _extra_time = this->default_device->estimate_atomic_op(_op);
        auto _operands = _op->getOperands();
        float _base_time = -1.0;
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist.lookup(_operand);
          _base_time = (_base_time < _operand_ready_time) ? _operand_ready_time : _base_time;
        }
        float _complete_time = _base_time + _extra_time;
        value_ready_worklist.insert(std::make_pair(_op->getResult(0), _complete_time));
      } else { 
        assert(0 && "top-level do not accept this op"); 
      }
    }
    return 0.0;
  }

  // assume PhantomBlockOp
  inline float mpmdSchedulePBlockWithHEFTStrategy(crt::PhantomBlockOp pblock, llvm::SmallVector<int32_t> devices_idx) {
    Block& blk = pblock->getRegion(0).front();
    llvm::SmallVector<Operation*> op_worklist;
    llvm::SmallVector<Operation*> rev_op_worklist;
    llvm::DenseMap<Operation*, float> avg_op_cost_worklist;
    llvm::DenseMap<Operation*, float> upward_rank;
    llvm::DenseMap<Operation*, float> downward_rank;

    blk.walk([&](Operation* op){
      op_worklist.push_back(op);
      rev_op_worklist.push_back(op);
    });
    std::reverse(rev_op_worklist.begin(), rev_op_worklist.end());

    // simulate avg op cost
    std::cout << " ========== calc avg op cost ENTER =========== " << std::endl;
    for (auto _op: op_worklist) {
      std::cout << "handling op " << _op->getName().getStringRef().str() << std::endl;
      int count = 0;
      float cost = 0.0;
      for (auto _dev_id: devices_idx) {
        std::cout << "handling dev " << _dev_id << std::endl;
        cost += this->estimate_atomic_op_at(_op, _dev_id);
        std::cout << "cost sum = " << cost << std::endl;
        count++;
      }
      avg_op_cost_worklist.insert(std::make_pair(_op, cost/count));
      std::cout << "avg cost = " << avg_op_cost_worklist.lookup(_op) << std::endl;
    }
    std::cout << " ========== calc avg op cost EXIT =========== " << std::endl;

    // calc upward rank
    std::cout << " ========== calc upward-rank ENTER =========== " << std::endl;
    for (auto _op: rev_op_worklist) {
      std::cout << "handling op ==> " << std::endl;
      _op->dump(); 
      // handle terminators
      if (isa<crt::YieldOp>(_op)) {
        auto _base_cost = 0.0;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _base_cost + _cost));
        std::cout << "uprank = " << _base_cost + _cost << std::endl;
      } else {
        auto _users = _op->getUsers();
        float _base_cost = 0.0;
        for (auto _user: _users) {
          std::cout << "succesor ==> " << std::endl; 
          _user->dump();
          auto tmp = upward_rank.lookup(_user);
          std::cout << "get a succesor uprank = " << tmp << std::endl;
          _base_cost = (tmp > _base_cost) ? tmp : _base_cost;
        }
        std::cout << "base uprank = " << _base_cost << std::endl;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        auto _uprank = _cost + _base_cost;
        std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _uprank));
        std::cout << "uprank = " << _uprank << std::endl << std::endl;
      }
    }
    std::cout << " ========== calc upward-rank EXIT =========== " << std::endl;

    std::cout << " ========== dispatch with HEFT strategy Enter =========== " << std::endl;
    // iterate over worklist, fetch partialEQ op group
    llvm::DenseMap<mlir::Value, float> value_EFT_timelist;
    llvm::SmallVector<float> device_EAT_timelist;
    auto args = pblock.getOperation()->getOperands();
    for (auto arg: args) {
      printf("anchor arg %p", arg);
      value_EFT_timelist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // init, set device_EAT all ready at time 0.0
    for (auto devid: devices_idx) {
      device_EAT_timelist.push_back(0.0);
    }

    llvm::SmallVector<Operation*> dispatch_waitlist;
    llvm::DenseMap<Operation*, int32_t> dispatch_records;

    while (dispatch_records.size() < op_worklist.size()) {
      // reset waitlist for reorder for dispatch
      dispatch_waitlist.clear();
      // filter out all zero-indegree ops in this iteration
      for (auto _op: op_worklist) {

        // if this op already dispatch, skip it
        if (dispatch_records.count(_op) > 0) continue;

        std::cout << "filtering zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
        bool isReady = true;
        auto _operands = _op->getOperands();
        for (auto _operand: _operands) {
          printf("anchor operand %p", _operand);
          if (value_EFT_timelist.count(_operand) == 0) {
            isReady = false;
          }
        }
        if (isReady) {
          dispatch_waitlist.push_back(_op);
          std::cout << "find zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
        }
      }

      // 1. consume one op with bigest uprank, and dispatch it
      // 2. alloc to dev, with EFT
      // 3. add result to value_EFT_timelist with EFT 
      // 4. update dev_EAT_timelist
      do {
        // choice max uprank op
        std::cout << "step 0: find max uprank op " 
          << std::endl
          << std::endl;
        Operation* choice_op;
        int choice_id = -1;
        float max_uprank = -1.0;
        std::cout << "found zero-indegree nodes this time with count = " << dispatch_waitlist.size() << std::endl;
        for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
          auto _op = dispatch_waitlist[idx];
          auto _uprank = upward_rank.lookup(_op);
          std::cout << "_uprank = " << _uprank << std::endl;
          if (_uprank > max_uprank) {
            std::cout << "max uprank = " << max_uprank << ", need to update to " << _uprank << std::endl;
            max_uprank = _uprank;
            choice_op = _op;
            choice_id = idx;
          }
        }

        // dispatch_waitlist.swap(choice_op, dispatch_waitlist.end());
        dispatch_waitlist[choice_id] = dispatch_waitlist[dispatch_waitlist.size()-1];
        dispatch_waitlist.pop_back();
        // dispatch_waitlist.erase(choice_op);

        // find EFT of it and corresponding dev
        // 1. find latest operand value eft
        float _operands_eft = -1.0;
        auto _operands = choice_op->getOperands();
        std::cout << "step 1: calc value eft time\n";
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_EFT_timelist.lookup(_operand);
          std::cout << "operand ready time = " << _operand_ready_time << std::endl;
          _operands_eft = (_operands_eft < _operand_ready_time) ? _operand_ready_time : _operands_eft;
        }
        std::cout << "value eft = " << _operands_eft << std::endl;

        float _finish_time = 10000000.0;
        int _best_dev = -1;
        std::cout << "step 2: probe devs, find EFT\n";
        for (auto dev_id: devices_idx) {
          std::cout << "device " << dev_id << "'s eat time = ";
          float _dev_eat_time = device_EAT_timelist[dev_id]; 
          std::cout << _dev_eat_time << std::endl;

          std::cout << "if dispatch to dev #" << dev_id << std::endl;
          auto _compute_cost = this->estimate_atomic_op_at(choice_op, dev_id);
          std::cout << "compute cost = " << _compute_cost << std::endl;
          auto _eft_tmp = (float)std::max(_dev_eat_time, _operands_eft) + _compute_cost;
          if (_eft_tmp < _finish_time) {
            _finish_time = _eft_tmp;
            _best_dev = dev_id;
          }
        }
        std::cout << "op #" << choice_op->getName().getStringRef().str()
          << " will be dispatched into dev #" << _best_dev << "; with EFT = " 
          << _finish_time << std::endl;

        std::cout << "step 3: update value-EFT table and device-EAT table\n";
        value_EFT_timelist.insert(std::make_pair(choice_op->getResult(0), _finish_time));
        device_EAT_timelist[_best_dev] = _finish_time;
        dispatch_records.insert(std::make_pair(choice_op, _best_dev));

      } while (!dispatch_waitlist.empty());

    };
    std::cout << " ========== dispatch with HEFT strategy Exit =========== " 
      << std::endl
      << std::endl;

    std::cout << " ========== SUMMARY =========" << std::endl;
    float dev_last_time = -1.0;
    for (auto _dev_time: device_EAT_timelist) {
      dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    }
    std::cout << "latest dev eat = " << dev_last_time << std::endl;
    
    float value_last_time = -1.0;
    for (auto _op: op_worklist) {
      if (isa<crt::YieldOp>(_op)) {
        auto opers = _op->getOperands();
        for (auto _operand_yield: opers) {
          auto value_time = value_EFT_timelist.lookup(_operand_yield);
          value_last_time = (value_time > value_last_time) ? value_time : value_last_time;
        }
      }
    }
    std::cout << "latest value eft = " << value_last_time << std::endl;
    assert(value_last_time == dev_last_time);
    std::cout << " ========== SUMMARY =========" << std::endl;
    return value_last_time;
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
