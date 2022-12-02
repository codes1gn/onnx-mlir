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
  llvm::DenseMap<StringRef, float> real_atomic_cost;
  llvm::DenseMap<StringRef, float> atomic_uncertainty;
  llvm::DenseMap<StringRef, float> real_atomic_uncertainty;

public:
  inline LogicalResult verify() {
    return success();
  }

  inline float mock_atomic_op(Operation* op) {
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
    // std::cout << query_key << std::endl;

    if (isa<crt::ConstantOp>(op)) {
      return 0.0;
    } else if (isa<crt::AllreduceOp>(op)) {
      // TODO adjust cost;
      return 7.53;
    } else if (isa<func::ReturnOp>(op) || isa<crt::YieldOp>(op)) {
      return 0.43;
    } else if (isa<func::FuncOp>(op) || isa<crt::PhantomBlockOp>(op)) {
      assert(0 && "FuncOp cannot get atomic cost");
    } else if (isa<crt::ReshapeOp>(op)) {
      return 1.1;
    } else {

      // if (this->real_atomic_cost.count(query_key) == 0) {
      //   std::cout << "failure in lookup cost for op #" << query_key << std::endl;
      //   assert(0);
      // };
      if (this->real_atomic_cost.count(query_key) == 0) {
        // std::cout << "failure in lookup cost for op #" << query_key << std::endl;
        return 11.11;
      };
      float _cost = this->real_atomic_cost.lookup(query_key);
      return _cost;
    } 
  }
  
  inline std::optional<float> estimate_atomic_op(Operation* op) {
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
    // std::cout << query_key << std::endl;

    if (isa<crt::ConstantOp>(op)) {
      return std::make_optional(0.0);
    } else if (isa<crt::AllreduceOp>(op)) {
      // TODO adjust cost;
      return std::make_optional(0.53);
    } else if (isa<func::ReturnOp>(op) || isa<crt::YieldOp>(op)) {
      return std::make_optional(0.0);
    } else if (isa<func::FuncOp>(op) || isa<crt::PhantomBlockOp>(op)) {
      return std::make_optional(0.0);
    } else if (isa<crt::ReshapeOp>(op)) {
      return std::make_optional(0.0);
    } else {

      // if (this->atomic_cost.count(query_key) == 0) {
      //   std::cout << "failure in lookup cost for op #" << query_key << std::endl;
      //   return std::nullopt;
      // };
      // TODO we use mutable guess for cost unknown
      if (this->atomic_cost.count(query_key) == 0) {
        // std::cout << "failure in lookup cost for op #" << query_key << std::endl;
        return std::make_optional(11.11);
      };
      float _cost = this->atomic_cost.lookup(query_key);
      return std::make_optional(_cost);
    } 
  }
};

// U0
class CPUSimulatorU0: public SimulatorBase {
public:
  CPUSimulatorU0() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCPUCostsU0.cpp.inc"

#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsCPUCosts.cpp.inc"
  }
};

class GPUTypeASimulatorU0: public SimulatorBase {
public:
  GPUTypeASimulatorU0() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeACostsU0.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeACosts.cpp.inc"
  }
};

class GPUTypeBSimulatorU0: public SimulatorBase {
public:
  GPUTypeBSimulatorU0() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeBCostsU0.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeBCosts.cpp.inc"
  }
};

class GPUTypeCSimulatorU0: public SimulatorBase {
public:
  GPUTypeCSimulatorU0() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeCCostsU0.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeCCosts.cpp.inc"
  }
};

class GPUTypeDSimulatorU0: public SimulatorBase {
public:
  GPUTypeDSimulatorU0() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeDCostsU0.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeDCosts.cpp.inc"
  }
};

// U5
class CPUSimulatorU5: public SimulatorBase {
public:
  CPUSimulatorU5() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCPUCostsU5.cpp.inc"

#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsCPUCosts.cpp.inc"
  }
};

class GPUTypeASimulatorU5: public SimulatorBase {
public:
  GPUTypeASimulatorU5() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeACostsU5.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeACosts.cpp.inc"
  }
};

class GPUTypeBSimulatorU5: public SimulatorBase {
public:
  GPUTypeBSimulatorU5() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeBCostsU5.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeBCosts.cpp.inc"
  }
};

class GPUTypeCSimulatorU5: public SimulatorBase {
public:
  GPUTypeCSimulatorU5() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeCCostsU5.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeCCosts.cpp.inc"
  }
};

class GPUTypeDSimulatorU5: public SimulatorBase {
public:
  GPUTypeDSimulatorU5() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeDCostsU5.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeDCosts.cpp.inc"
  }
};

// U10
class CPUSimulatorU10: public SimulatorBase {
public:
  CPUSimulatorU10() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCPUCostsU10.cpp.inc"

#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsCPUCosts.cpp.inc"
  }
};

class GPUTypeASimulatorU10: public SimulatorBase {
public:
  GPUTypeASimulatorU10() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeACostsU10.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeACosts.cpp.inc"
  }
};

class GPUTypeBSimulatorU10: public SimulatorBase {
public:
  GPUTypeBSimulatorU10() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeBCostsU10.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeBCosts.cpp.inc"
  }
};

class GPUTypeCSimulatorU10: public SimulatorBase {
public:
  GPUTypeCSimulatorU10() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeCCostsU10.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeCCosts.cpp.inc"
  }
};

class GPUTypeDSimulatorU10: public SimulatorBase {
public:
  GPUTypeDSimulatorU10() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeDCostsU10.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeDCosts.cpp.inc"
  }
};

// U15
class CPUSimulatorU15: public SimulatorBase {
public:
  CPUSimulatorU15() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCPUCostsU15.cpp.inc"

#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsCPUCosts.cpp.inc"
  }
};

class GPUTypeASimulatorU15: public SimulatorBase {
public:
  GPUTypeASimulatorU15() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeACostsU15.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeACosts.cpp.inc"
  }
};

class GPUTypeBSimulatorU15: public SimulatorBase {
public:
  GPUTypeBSimulatorU15() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeBCostsU15.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeBCosts.cpp.inc"
  }
};

class GPUTypeCSimulatorU15: public SimulatorBase {
public:
  GPUTypeCSimulatorU15() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeCCostsU15.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeCCosts.cpp.inc"
  }
};

class GPUTypeDSimulatorU15: public SimulatorBase {
public:
  GPUTypeDSimulatorU15() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeDCostsU15.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeDCosts.cpp.inc"
  }
};

// U20
class CPUSimulatorU20: public SimulatorBase {
public:
  CPUSimulatorU20() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCPUCostsU20.cpp.inc"

#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsCPUCosts.cpp.inc"
  }
};

class GPUTypeASimulatorU20: public SimulatorBase {
public:
  GPUTypeASimulatorU20() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeACostsU20.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeACosts.cpp.inc"
  }
};

class GPUTypeBSimulatorU20: public SimulatorBase {
public:
  GPUTypeBSimulatorU20() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeBCostsU20.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeBCosts.cpp.inc"
  }
};

class GPUTypeCSimulatorU20: public SimulatorBase {
public:
  GPUTypeCSimulatorU20() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeCCostsU20.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeCCosts.cpp.inc"
  }
};

class GPUTypeDSimulatorU20: public SimulatorBase {
public:
  GPUTypeDSimulatorU20() {
#define GET_OP_COST
#include "src/RapCostModel/CrtOpsGPUTypeDCostsU20.cpp.inc"
#define GET_OP_COST
#include "src/RapCostModel/RealCrtOpsGPUTypeDCosts.cpp.inc"
  }
};


class CostEstimator {
public:
  llvm::SmallVector<SimulatorBase*> simulators;
  SimulatorBase* default_device;
  int dev_count;

  CostEstimator(SmallVector<SmallVector<int32_t>> device_set) {
    // only assess single block model
    assert(device_set.size() == 1);
    dev_count = 0;

    SmallVector<int32_t> device_types = device_set.back();
    // 1 CPU, 4 GPU
    for (int32_t device_type: device_types) {
      if (device_type == 0) {
        simulators.push_back(new CPUSimulatorU0());
      } else if (device_type == 1) {
        simulators.push_back(new GPUTypeASimulatorU0());
      } else if (device_type == 2) {
        simulators.push_back(new GPUTypeBSimulatorU0());
      } else if (device_type == 3) {
        simulators.push_back(new GPUTypeCSimulatorU0());
      } else if (device_type == 4) {
        simulators.push_back(new GPUTypeDSimulatorU0());
      } else if (device_type == 5) {
        simulators.push_back(new CPUSimulatorU5());
      } else if (device_type == 6) {
        simulators.push_back(new GPUTypeASimulatorU5());
      } else if (device_type == 7) {
        simulators.push_back(new GPUTypeBSimulatorU5());
      } else if (device_type == 8) {
        simulators.push_back(new GPUTypeCSimulatorU5());
      } else if (device_type == 9) {
        simulators.push_back(new GPUTypeDSimulatorU5());
      } else if (device_type == 10) {
        simulators.push_back(new CPUSimulatorU10());
      } else if (device_type == 11) {
        simulators.push_back(new GPUTypeASimulatorU10());
      } else if (device_type == 12) {
        simulators.push_back(new GPUTypeBSimulatorU10());
      } else if (device_type == 13) {
        simulators.push_back(new GPUTypeCSimulatorU10());
      } else if (device_type == 14) {
        simulators.push_back(new GPUTypeDSimulatorU10());
      } else if (device_type == 15) {
        simulators.push_back(new CPUSimulatorU15());
      } else if (device_type == 16) {
        simulators.push_back(new GPUTypeASimulatorU15());
      } else if (device_type == 17) {
        simulators.push_back(new GPUTypeBSimulatorU15());
      } else if (device_type == 18) {
        simulators.push_back(new GPUTypeCSimulatorU15());
      } else if (device_type == 19) {
        simulators.push_back(new GPUTypeDSimulatorU15());
      } else if (device_type == 20) {
        simulators.push_back(new CPUSimulatorU20());
      } else if (device_type == 21) {
        simulators.push_back(new GPUTypeASimulatorU20());
      } else if (device_type == 22) {
        simulators.push_back(new GPUTypeBSimulatorU20());
      } else if (device_type == 23) {
        simulators.push_back(new GPUTypeCSimulatorU20());
      } else if (device_type == 24) {
        simulators.push_back(new GPUTypeDSimulatorU20());
      } else { assert(0); }
      dev_count++;
    }

    default_device = simulators[0];

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

  inline void verifyCostModel(func::FuncOp funcOp) {
    int passed = 0;
    int failed = 0;
    funcOp.getBody().front().walk([&](Operation* op){
        std::optional<float> ocost = this->default_device->estimate_atomic_op(op);

        if (ocost == std::nullopt) {
          std::cout << "===================> Failure to find cost for op \n" << std::endl;
          op->dump();
          std::cout << "<=================== \n" << std::endl;
          failed++;
        } else {
          std::cout << "===================> Success to find cost for op \n" << std::endl;
          std::cout << op->getName().getStringRef().str() << " : cost = " << ocost.value() << " us\n" << std::endl;
          std::cout << "<=================== \n" << std::endl;
          passed++;
          
        }
    });
    std::cout << "========= SUMMARY ==========\n" << " || Success op cost estimate at count = " << passed << "\n || failure op cost estimate at count = " << failed << "\n========= SUMMARY ==========\n" << std::endl;
    return;
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

  // inline llvm::SmallVector<float> mpmdSchedule(func::FuncOp funcOp, llvm::SmallVector<llvm::SmallVector<int32_t>> devices_idx, bool has_uncertainty) {
  inline llvm::SmallVector<float> mpmdSchedule(func::FuncOp funcOp, bool has_uncertainty) {
    funcOp.dump();
    llvm::SmallVector<Operation*> worklist;
    funcOp.getBody().front().walk([&](Operation* op){
      Operation* parentOp = op->getParentOp();
      if (isa<crt::PhantomBlockOp>(parentOp)) {
        assert(1==1);
      } else {
        worklist.push_back(op);
      }
    });

    llvm::DenseMap<mlir::Value, float> value_ready_worklist_ideal;
    llvm::DenseMap<mlir::Value, float> value_ready_worklist_estimated;
    llvm::DenseMap<mlir::Value, float> value_ready_worklist_proposed;

    // getFuncOp argument
    auto arguments = funcOp.getArguments();
    for (auto arg: arguments) {
      value_ready_worklist_proposed.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
      value_ready_worklist_estimated.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
      value_ready_worklist_ideal.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    int pbcnt = 0;
    for (auto _op: worklist) {
      if (isa<crt::PhantomBlockOp>(_op)) pbcnt++;
    }


    float current_time;
    for (auto _op: worklist) {
      current_time = 0.0;
      auto _operands = _op->getOperands();
      bool isReady = true;
      for (auto _operand: _operands) {
        if (value_ready_worklist_estimated.count(_operand) == 0) {
          isReady = false;
        } else {
          float t = value_ready_worklist_estimated.lookup(_operand);
          current_time = (t > current_time) ? t : current_time;
        }
      }
      if (!isReady) continue;
    
      // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time << std::endl;
    
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        // std::cout << "found Terminator\n";
        auto opers = _op->getOperands();
        float value_last_time_ideal = -1.0;
        float value_last_time_estimated = -1.0;
        float value_last_time_proposed = -1.0;
        for (auto _operand_yield: opers) {
          auto value_time = value_ready_worklist_ideal.lookup(_operand_yield);
          value_last_time_ideal = (value_time > value_last_time_ideal) ? value_time : value_last_time_ideal;
        }
        for (auto _operand_yield: opers) {
          auto value_time = value_ready_worklist_estimated.lookup(_operand_yield);
          value_last_time_estimated = (value_time > value_last_time_estimated) ? value_time : value_last_time_estimated;
        }
        for (auto _operand_yield: opers) {
          auto value_time = value_ready_worklist_proposed.lookup(_operand_yield);
          value_last_time_proposed = (value_time > value_last_time_proposed) ? value_time : value_last_time_proposed;
        }
        llvm::SmallVector<float> value_last_time;
        value_last_time.push_back(value_last_time_ideal);
        value_last_time.push_back(value_last_time_estimated);
        value_last_time.push_back(value_last_time_proposed);
        return value_last_time;
      } else if (isa<crt::ConstantOp>(_op)) {
        value_ready_worklist_ideal.insert(std::make_pair(_op->getResult(0), (float)0.0));
        value_ready_worklist_estimated.insert(std::make_pair(_op->getResult(0), (float)0.0));
        value_ready_worklist_proposed.insert(std::make_pair(_op->getResult(0), (float)0.0));
      } else if (isa<crt::PhantomBlockOp>(_op)) {
        llvm::DenseMap<Operation*, int32_t> _strategy;
        llvm::DenseMap<Operation*, int32_t> _strategy_ideal;
        float _extra_time_proposed;
        float _extra_time_estimated;
        float _extra_time_ideal;

        SmallVector<int32_t> _devs;
        for (int32_t idx = 0; idx < this->dev_count; idx++) {
          _devs.push_back(idx);
        }
        // auto _devs = devices_idx.back();
        // devices_idx.pop_back();
        _strategy = std::get<0>(this->mpmdSchedulePBlockWithHEFTStrategy(
            llvm::cast<crt::PhantomBlockOp>(_op), 
            _devs,
            true
        ));
        _extra_time_ideal = std::get<1>(this->mpmdSchedulePBlockWithHEFTStrategy(
            llvm::cast<crt::PhantomBlockOp>(_op), 
            _devs,
            false
        ));
        // ASLA
        // _extra_time = this->mockPBlockWithStrategy(llvm::cast<crt::PhantomBlockOp>(_op), _strategy, _devs, false, false);
        // std::cout << " ============= albert use fake metrics; run on fake model - time = " << _extra_time << std::endl;
        // _op->dump();
        // std::cout << " =============== " << std::endl;
        // _extra_time = this->mockPBlockWithStrategy(llvm::cast<crt::PhantomBlockOp>(_op), _strategy, devices_idx, true, false);
        // std::cout << "albert use real metrics; run on fake model - time = " << _extra_time << std::endl;
        // TODO
        _extra_time_proposed = this->mockPBlockWithProposed(llvm::cast<crt::PhantomBlockOp>(_op), _strategy, _devs, false, true);
        // TODO
        _extra_time_estimated = this->mockPBlockWithStrategy(llvm::cast<crt::PhantomBlockOp>(_op), _strategy, _devs, false, true);
        // _extra_time_ideal = this->mockPBlockWithStrategy(llvm::cast<crt::PhantomBlockOp>(_op), _strategy_ideal, _devs, true, true);
        // std::cout << "albert use fake metrics; run on real model - proposed time = " << _extra_time_proposed;
        // std::cout << "; albert use real metrics; run on real model - estimated time = " << _extra_time_estimated << std::endl;

        auto _operands = _op->getOperands();
        float _base_time_ideal = -1.0;
        float _base_time_estimated = -1.0;
        float _base_time_proposed = -1.0;
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist_ideal.lookup(_operand);
          _base_time_ideal = (_base_time_ideal < _operand_ready_time) ? _operand_ready_time : _base_time_ideal;
        }
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist_estimated.lookup(_operand);
          _base_time_estimated = (_base_time_estimated < _operand_ready_time) ? _operand_ready_time : _base_time_estimated;
        }
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist_proposed.lookup(_operand);
          _base_time_proposed = (_base_time_proposed < _operand_ready_time) ? _operand_ready_time : _base_time_proposed;
        }
        float _complete_time_proposed = _base_time_proposed + _extra_time_proposed;
        float _complete_time_estimated = _base_time_estimated + _extra_time_estimated;
        float _complete_time_ideal = _base_time_ideal + _extra_time_ideal;
        value_ready_worklist_proposed.insert(std::make_pair(_op->getResult(0), _complete_time_proposed));
        value_ready_worklist_estimated.insert(std::make_pair(_op->getResult(0), _complete_time_estimated));
        value_ready_worklist_ideal.insert(std::make_pair(_op->getResult(0), _complete_time_ideal));
    
      } else if (isa<crt::AllreduceOp>(_op)) {
        // only dispatch pblock, other ops on cpu/host
        float _extra_time_ideal = this->default_device->estimate_atomic_op(_op).value();
        float _extra_time_estimated = this->default_device->estimate_atomic_op(_op).value();
        float _extra_time_proposed = this->default_device->estimate_atomic_op(_op).value();
        auto _operands = _op->getOperands();

        float _base_time_ideal = -1.0;
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist_ideal.lookup(_operand);
          _base_time_ideal = (_base_time_ideal < _operand_ready_time) ? _operand_ready_time : _base_time_ideal;
        }
        float _complete_time_ideal = _base_time_ideal + _extra_time_ideal;
        value_ready_worklist_ideal.insert(std::make_pair(_op->getResult(0), _complete_time_ideal));

        float _base_time_estimated = -1.0;
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist_estimated.lookup(_operand);
          _base_time_estimated = (_base_time_estimated < _operand_ready_time) ? _operand_ready_time : _base_time_estimated;
        }
        float _complete_time_estimated = _base_time_estimated + _extra_time_estimated;
        value_ready_worklist_estimated.insert(std::make_pair(_op->getResult(0), _complete_time_estimated));

        float _base_time_proposed = -1.0;
        for (auto _operand: _operands) {
          auto _operand_ready_time = value_ready_worklist_proposed.lookup(_operand);
          _base_time_proposed = (_base_time_proposed < _operand_ready_time) ? _operand_ready_time : _base_time_proposed;
        }
        float _complete_time_proposed = _base_time_proposed + _extra_time_proposed;
        value_ready_worklist_proposed.insert(std::make_pair(_op->getResult(0), _complete_time_proposed));
      } else { 
        assert(0 && "top-level do not accept this op"); 
      }
    }
    return {0.0, 0.0, 0.0};
  }

  inline float mockPBlockWithProposed(
      crt::PhantomBlockOp pblock, 
      llvm::DenseMap<Operation*, int32_t> dispatch_records,
      llvm::SmallVector<int32_t> devices_idx,
      bool is_real_cost,
      bool is_real_run) {

    // std::cout << "==================> MOCK SESSION ==================>" << std::endl;
    // std::cout << "==================> MOCK SESSION ==================>" << std::endl;
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
    // std::cout << " ========== calc avg op cost ENTER =========== " << std::endl;
    for (auto _op: op_worklist) {
      // std::cout << "handling op " << _op->getName().getStringRef().str() << std::endl;
      int count = 0;
      float cost = 0.0;
      for (auto _dev_id: devices_idx) {
        // std::cout << "handling dev " << _dev_id << std::endl;
        if (is_real_cost) {
          cost += this->mock_atomic_op_at(_op, _dev_id);
        } else {
          cost += this->estimate_atomic_op_at(_op, _dev_id);
        }
        // std::cout << "cost sum = " << cost << std::endl;
        count++;
      }
      avg_op_cost_worklist.insert(std::make_pair(_op, cost/count));
      // std::cout << "avg cost = " << avg_op_cost_worklist.lookup(_op) << std::endl;
    }
    // std::cout << " ========== calc avg op cost EXIT =========== " << std::endl;

    // calc upward rank
    // std::cout << " ========== calc upward-rank ENTER =========== " << std::endl;
    for (auto _op: rev_op_worklist) {
      // std::cout << "handling op ==> " << std::endl;
      // _op->dump(); 
      // handle terminators
      if (isa<crt::YieldOp>(_op)) {
        auto _base_cost = 0.0;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _base_cost + _cost));
        // std::cout << "uprank = " << _base_cost + _cost << std::endl;
      } else {
        auto _users = _op->getUsers();
        float _base_cost = 0.0;
        for (auto _user: _users) {
          // std::cout << "succesor ==> " << std::endl; 
          // _user->dump();
          auto tmp = upward_rank.lookup(_user);
          // std::cout << "get a succesor uprank = " << tmp << std::endl;
          _base_cost = (tmp > _base_cost) ? tmp : _base_cost;
        }
        // std::cout << "base uprank = " << _base_cost << std::endl;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        auto _uprank = _cost + _base_cost;
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _uprank));
        // std::cout << "uprank = " << _uprank << std::endl << std::endl;
      }
    }
    // std::cout << " ========== calc upward-rank EXIT =========== " << std::endl;

    // std::cout << " ========== Mock Procedure Enter =========== " << std::endl;
    // iterate over worklist, fetch partialEQ op group
    llvm::DenseMap<mlir::Value, float> value_EFT_timelist;
    llvm::SmallVector<float> device_EAT_timelist;
    llvm::SmallVector<std::optional<Operation*>> who_use_this_dev;
    auto args = pblock.getOperation()->getOperands();
    for (auto arg: args) {
      value_EFT_timelist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // init, set device_EAT all ready at time 0.0
    for (auto devid: devices_idx) {
      device_EAT_timelist.push_back(0.0);
      who_use_this_dev.push_back(std::nullopt);
    }
    // for (auto idx = 0; idx < 5; idx++) {
    //   device_EAT_timelist.push_back(0.0);
    //   who_use_this_dev.push_back(std::nullopt);
    // }

    llvm::SmallVector<Operation*> dispatch_waitlist;
    for (auto _op: op_worklist) {

      // std::cout << "filtering zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
      bool isReady = true;
      auto _operands = _op->getOperands();
      for (auto _operand: _operands) {
        // printf("anchor operand %p", _operand);
        if (value_EFT_timelist.count(_operand) == 0) {
          isReady = false;
        }
      }
      if (isReady) {
        // if this op already in dispatch_waitlist, continue
        if (std::find(dispatch_waitlist.begin(), dispatch_waitlist.end(), _op) == dispatch_waitlist.end()) {
          dispatch_waitlist.push_back(_op);
        }
      }
    }

    do {
      // filter out all zero-indegree ops in this iteration
      Operation* choice_op;
      int choice_id = -1;
      float _earliest_start_time = 10000000.0;
      // std::cout << "found zero-indegree nodes this time with count = " << dispatch_waitlist.size() << std::endl;
      // HEFT
      for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
        auto _op = dispatch_waitlist[idx];
        // std::cout << "calc est of " << _op->getName().getStringRef().str() << std::endl;
        // auto _uprank = upward_rank.lookup(_op);
        auto _operands = _op->getOperands();
        float _earliest_operand_ready_time = 0.0;
        for (auto _operand: _operands) {
          // printf("anchor operand %p", _operand);
          float _operand_ready_time = value_EFT_timelist.lookup(_operand);
          _earliest_operand_ready_time = (_operand_ready_time > _earliest_operand_ready_time) ? _operand_ready_time : _earliest_operand_ready_time;
        }
        //
        if (_earliest_operand_ready_time < _earliest_start_time) {
          // std::cout << "_earliest_start_time = " << _earliest_start_time << ", need to update to " << _earliest_operand_ready_time << std::endl;
          _earliest_start_time = _earliest_operand_ready_time;
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
      // float _operands_eft = -1.0;
      // auto _operands = choice_op->getOperands();
      // std::cout << "step 1: calc value eft time\n";
      // for (auto _operand: _operands) {
      //   auto _operand_ready_time = value_EFT_timelist.lookup(_operand);
      //   std::cout << "operand ready time = " << _operand_ready_time << std::endl;
      //   _operands_eft = (_operands_eft < _operand_ready_time) ? _operand_ready_time : _operands_eft;
      // }
      // std::cout << "value eft = " << _operands_eft << std::endl;
      //
      // TODO legacy way, just use original strategy
      // float _operands_eft = _earliest_start_time;
      // int _best_dev = dispatch_records.lookup(choice_op);
      // float _dev_eat_time = device_EAT_timelist[_best_dev];
      // float _compute_cost;
      // if (is_real_run) {
      //   _compute_cost = this->mock_atomic_op_at(choice_op, _best_dev);
      // } else {
      //   _compute_cost = this->estimate_atomic_op_at(choice_op, _best_dev);
      // }
      // auto _finish_time = (float)std::max(_dev_eat_time, _operands_eft) + _compute_cost;

      // TODO my solution, 
      float _this_operands_eft = _earliest_start_time;
      int _this_expected_dev = dispatch_records.lookup(choice_op);
      float _dev_eat_time = device_EAT_timelist[_this_expected_dev];
      float _compute_cost;
      int _best_dev;
      float _finish_time;
      if (_this_operands_eft >= _dev_eat_time) {
        if (is_real_run) {
          _compute_cost = this->mock_atomic_op_at(choice_op, _this_expected_dev);
        } else {
          _compute_cost = this->estimate_atomic_op_at(choice_op, _this_expected_dev);
        }
        _best_dev = _this_expected_dev;
        _finish_time = (float)std::max(_dev_eat_time, _this_operands_eft) + _compute_cost;
      } else {
        // since this time later than operand time, should already assigned > 1 times.
        // just take value from it
        Operation* other = who_use_this_dev[_this_expected_dev].value();
        // std::cout << "this->uprank = " << upward_rank.lookup(choice_op)
        //   << "; other->uprank = " << upward_rank.lookup(other) << std::endl;
        // time for other op finish
        float timepath1 = _dev_eat_time;
        // float timepath1 = _dev_eat_time;
        // std::cout << "timepath1 - " << timepath1 << std::endl;
        float timepath2 = 10000000.0;
        int _second_best_dev_for_this_op;
        float timepath3 = _this_operands_eft + upward_rank.lookup(choice_op);
        // std::cout << "timepath3 - " << timepath3 << std::endl;
        float timepath4 = 10000000.0;
        int _second_best_dev_for_other_op;

        for (auto dev_id: devices_idx) {
          // skip current dev
          // SWITCH consider or not
          // if (dev_id == _this_expected_dev) continue;
          float _tmp_timepath = std::max(device_EAT_timelist[dev_id], _this_operands_eft)
            + upward_rank.lookup(choice_op)
            + this->estimate_atomic_op_at(choice_op, dev_id);
          if (timepath2 > _tmp_timepath) {
            timepath2 = _tmp_timepath;
            _second_best_dev_for_this_op = dev_id;
          }
        }
        // std::cout << "timepath2 - " << timepath2 << "_second_dev_for_this - " << _second_best_dev_for_this_op << std::endl;

        for (auto dev_id: devices_idx) {
          // skip current dev
          // TODO consider terminate other task, start this task, then followed by other task
          // SWITCH consider or not
          // if (dev_id == _this_expected_dev) continue;
          float _tmp_timepath = std::max(device_EAT_timelist[dev_id], _this_operands_eft)
            + upward_rank.lookup(other)
            + this->estimate_atomic_op_at(other, dev_id);
          if (timepath4 > _tmp_timepath) {
            timepath4 = _tmp_timepath;
            _second_best_dev_for_other_op = dev_id;
          }
        }
        // std::cout << "timepath4 - " << timepath4 << "_second_best_dev_for_other - " << _second_best_dev_for_other_op << std::endl;

        // keep
        if (upward_rank.lookup(other) >= upward_rank.lookup(choice_op)) {
          // consider uncertainty, still can use new dispatch-destination rather than pre-dispatched target
          _best_dev = _this_expected_dev;
          // std::cout << "use strategy #0, _best_dev = " << _best_dev << std::endl;
          if (is_real_run) {
            _compute_cost = this->mock_atomic_op_at(choice_op, _best_dev);
          } else {
            _compute_cost = this->estimate_atomic_op_at(choice_op, _best_dev);
          }
          // CORRECT, AND EQUAL TO BELOW EQ: _finish_time = _dev_eat_time + _compute_cost;
          // since device EAT > current-time
          _finish_time = (float)std::max(device_EAT_timelist[_best_dev], _this_operands_eft) + _compute_cost;
        // all consider dispatch other* right away, is better against uncertainty
        // min-max: gogo mpmd 6->124150 (us) // } else if (std::max(timepath1, timepath2) <= std::max(timepath3, timepath4)) {
        // equal-weight-sum: gogo mpmd 6-> (us) // } else if ((timepath1 + timepath2) <= (timepath3 + timepath4)) {
        } else if (std::max(timepath1, timepath2) <= std::max(timepath3, timepath4)) {
          _best_dev = _second_best_dev_for_this_op;
          // std::cout << "use strategy #1, _best_dev = " << _best_dev << std::endl;
          if (is_real_run) {
            _compute_cost = this->mock_atomic_op_at(choice_op, _best_dev);
          } else {
            _compute_cost = this->estimate_atomic_op_at(choice_op, _best_dev);
          }
          // this strategy will keep otherOp, and dispatch thisOp to best but not stealing behaviour
          // if _best_dev is thisDev, max(device EAT, current time) === device EAT, assumed in prior predicate
          // if _best_dev is otherDev, use earliest time that both otherDev and thisOpOperands(curtime) are all ready.
          // NOT CORRECT: _finish_time = device_EAT_timelist[_best_dev] + _compute_cost;
          // since if _best_dev == otherDev, above equation startes too early before OpOperands ready.
          _finish_time = (float)std::max(device_EAT_timelist[_best_dev], _this_operands_eft) + _compute_cost;
        } else {
          _best_dev = _this_expected_dev;
          // std::cout << "use strategy #2, _best_dev = " << _best_dev << std::endl;
          if (is_real_run) {
            _compute_cost = this->mock_atomic_op_at(choice_op, _best_dev);
          } else {
            _compute_cost = this->estimate_atomic_op_at(choice_op, _best_dev);
          }
          // if thisOp steal expected-dev, then otherOp will redispatched to second_best for otherOp
          // time for thisOp is, current-time + thisOp->on->thisDev
          _finish_time = _this_operands_eft + _compute_cost;
          // NOT this: _finish_time = (float)std::max(device_EAT_timelist[_best_dev], _this_operands_eft) + _compute_cost;
          // because, device EAT for thisDev, is assumed to be larger than current-time, but device is stealed,
          // so should start at the moment


          // way 1: requeue + redispatch-next-iter on <otherOp>
          // value_EFT_timelist.erase(other->getResult(0));
          // dispatch_waitlist.push_back(other);

          // way 2: send otherOp to second-best-dev, and start right now
          value_EFT_timelist.erase(other->getResult(0));
          float _other_compute_cost;
          float _other_finish_time;
          if (is_real_run) {
            _other_compute_cost = this->mock_atomic_op_at(choice_op, _second_best_dev_for_other_op);
          } else {
            _other_compute_cost = this->estimate_atomic_op_at(choice_op, _second_best_dev_for_other_op);
          }
          _other_finish_time = (float)std::max(device_EAT_timelist[_second_best_dev_for_other_op], _this_operands_eft) + _other_compute_cost;
          //update
          value_EFT_timelist.insert(std::make_pair(other->getResult(0), _other_finish_time));
          device_EAT_timelist[_second_best_dev_for_other_op] = _other_finish_time;
          // TODO set this dev's user is this dispatched op
          who_use_this_dev[_second_best_dev_for_other_op] = std::make_optional(other);

        }
      }
      // std::cout << "ablation-group-#2 ==> op #" << choice_op->getName().getStringRef().str()
      //   << " will be dispatched into dev #" << _best_dev << "; with EFT = "
      //   << _finish_time << std::endl;

      // std::cout << "step 3: update value-EFT table and device-EAT table\n";
      value_EFT_timelist.insert(std::make_pair(choice_op->getResult(0), _finish_time));
      device_EAT_timelist[_best_dev] = _finish_time;
      // TODO set this dev's user is this dispatched op
      who_use_this_dev[_best_dev] = std::make_optional(choice_op);
      // 
      // operands_eft, this->ready time of operand
      // dev_eat_time, this->ready time of device
      // if dev used by others, who_use_this_dev[dev_id] => op
      // if this uprank < other uprank => use this action
      // if operands_eft > dev_eat_time => use this action
      // if operands_eft < dev_eat_time => {
      //   other <= who_use_this_dev[dev_id]
      //   choice 1: keep this way,
      //   path1 = dev_eat_time + rankup(other)
      //   path2 = min(other_eat_time + run_on_that_dev_time(this) + rankup(this))
      //   _sum1 = max(path1, path2)
      //
      //   choice 2: stealing
      //   path1 = operands_eft + run_on_this_dev_time(this) + rankup(this)
      //   path2 = min(other_eat_time + run_on_that_dev_time(other) + rankup(other))
      //   _sum2 = max(path1, path2)
      //
      //   who smaller choose who
      // }
      // 

      
      // update dispatch_waitlist, consider above compute newly defined value, add this values users if ready
      auto _users = choice_op->getResult(0).getUsers();
      for (auto _op: _users) {
        // std::cout << "filtering successors users " << _op->getName().getStringRef().str() << std::endl;
        bool isReady = true;
        auto _operands = _op->getOperands();
        for (auto _operand: _operands) {
          // printf("anchor operand %p", _operand);
          if (value_EFT_timelist.count(_operand) == 0) {
            isReady = false;
          }
        }
        if (isReady) {
          // if this op already in dispatch_waitlist, continue
          if (std::find(dispatch_waitlist.begin(), dispatch_waitlist.end(), _op) == dispatch_waitlist.end()) {
            dispatch_waitlist.push_back(_op);
          }
        }
      }

    } while (!dispatch_waitlist.empty());

    // std::cout << " ========== Mock SUMMARY =========" << std::endl;
    float dev_last_time = -1.0;
    for (auto _dev_time: device_EAT_timelist) {
      dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    }
    // for (int idx = 0; idx < 5; idx++) {
    //   auto _dev_time = device_EAT_timelist[idx];
    //   dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    // }
    // std::cout << "latest dev eat = " << dev_last_time << std::endl;

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
    // std::cout << "latest value eft = " << value_last_time << std::endl;
    // assert(value_last_time == dev_last_time);
    // std::cout << " ========== Mock SUMMARY =========" << std::endl;
    // return value_last_time;
    return dev_last_time;
  }

  inline float mockPBlockWithStrategy(
      crt::PhantomBlockOp pblock, 
      llvm::DenseMap<Operation*, int32_t> dispatch_records,
      llvm::SmallVector<int32_t> devices_idx,
      bool is_real_cost,
      bool is_real_run) {

    // std::cout << "==================> MOCK SESSION ==================>" << std::endl;
    // std::cout << "==================> MOCK SESSION ==================>" << std::endl;
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
    // std::cout << " ========== calc avg op cost ENTER =========== " << std::endl;
    for (auto _op: op_worklist) {
      // std::cout << "handling op " << _op->getName().getStringRef().str() << std::endl;
      int count = 0;
      float cost = 0.0;
      for (auto _dev_id: devices_idx) {
        // std::cout << "handling dev " << _dev_id << std::endl;
        if (is_real_cost) {
          cost += this->mock_atomic_op_at(_op, _dev_id);
        } else {
          cost += this->estimate_atomic_op_at(_op, _dev_id);
        }
        // std::cout << "cost sum = " << cost << std::endl;
        count++;
      }
      avg_op_cost_worklist.insert(std::make_pair(_op, cost/count));
      // std::cout << "avg cost = " << avg_op_cost_worklist.lookup(_op) << std::endl;
    }
    // std::cout << " ========== calc avg op cost EXIT =========== " << std::endl;

    // calc upward rank
    // std::cout << " ========== calc upward-rank ENTER =========== " << std::endl;
    for (auto _op: rev_op_worklist) {
      // std::cout << "handling op ==> " << std::endl;
      // _op->dump(); 
      // handle terminators
      if (isa<crt::YieldOp>(_op)) {
        auto _base_cost = 0.0;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _base_cost + _cost));
        // std::cout << "uprank = " << _base_cost + _cost << std::endl;
      } else {
        auto _users = _op->getUsers();
        float _base_cost = 0.0;
        for (auto _user: _users) {
          // std::cout << "succesor ==> " << std::endl; 
          // _user->dump();
          auto tmp = upward_rank.lookup(_user);
          // std::cout << "get a succesor uprank = " << tmp << std::endl;
          _base_cost = (tmp > _base_cost) ? tmp : _base_cost;
        }
        // std::cout << "base uprank = " << _base_cost << std::endl;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        auto _uprank = _cost + _base_cost;
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _uprank));
        // std::cout << "uprank = " << _uprank << std::endl << std::endl;
      }
    }
    // std::cout << " ========== calc upward-rank EXIT =========== " << std::endl;

    // std::cout << " ========== Mock Procedure Enter =========== " << std::endl;
    // iterate over worklist, fetch partialEQ op group
    llvm::DenseMap<mlir::Value, float> value_EFT_timelist;
    llvm::SmallVector<float> device_EAT_timelist;
    auto args = pblock.getOperation()->getOperands();
    for (auto arg: args) {
      value_EFT_timelist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // init, set device_EAT all ready at time 0.0
    for (auto devid: devices_idx) {
      device_EAT_timelist.push_back(0.0);
    }
    // for (int idx = 0; idx < 5; idx++) {
    //   device_EAT_timelist.push_back(0.0);
    // }

    llvm::SmallVector<Operation*> dispatch_waitlist;
    for (auto _op: op_worklist) {

      // std::cout << "filtering zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
      bool isReady = true;
      auto _operands = _op->getOperands();
      for (auto _operand: _operands) {
        // printf("anchor operand %p", _operand);
        if (value_EFT_timelist.count(_operand) == 0) {
          isReady = false;
        }
      }
      if (isReady) {
        // if this op already in dispatch_waitlist, continue
        if (std::find(dispatch_waitlist.begin(), dispatch_waitlist.end(), _op) == dispatch_waitlist.end()) {
          dispatch_waitlist.push_back(_op);
        }
      }
    }

    do {
      // filter out all zero-indegree ops in this iteration
      Operation* choice_op;
      int choice_id = -1;
      float _earliest_start_time = 10000000.0;
      // std::cout << "found zero-indegree nodes this time with count = " << dispatch_waitlist.size() << std::endl;
      // HEFT
      for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
        auto _op = dispatch_waitlist[idx];
        // std::cout << "calc est of " << _op->getName().getStringRef().str() << std::endl;
        // auto _uprank = upward_rank.lookup(_op);
        auto _operands = _op->getOperands();
        float _earliest_operand_ready_time = 0.0;
        for (auto _operand: _operands) {
          // printf("anchor operand %p", _operand);
          float _operand_ready_time = value_EFT_timelist.lookup(_operand);
          _earliest_operand_ready_time = (_operand_ready_time > _earliest_operand_ready_time) ? _operand_ready_time : _earliest_operand_ready_time;
        }
        //
        if (_earliest_operand_ready_time < _earliest_start_time) {
          // std::cout << "_earliest_start_time = " << _earliest_start_time << ", need to update to " << _earliest_operand_ready_time << std::endl;
          _earliest_start_time = _earliest_operand_ready_time;
          choice_op = _op;
          choice_id = idx;
        }
      }
      //
      // // PICK FIRST
      // for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
      //   choice_id = 0;
      //   choice_op = dispatch_waitlist[idx];
      // }
      //
      // // PICK LAST 
      // for (int idx = dispatch_waitlist.size()-1; idx >= 0; idx--) {
      //   choice_id = 0;
      //   choice_op = dispatch_waitlist[idx];
      // }

      // dispatch_waitlist.swap(choice_op, dispatch_waitlist.end());
      dispatch_waitlist[choice_id] = dispatch_waitlist[dispatch_waitlist.size()-1];
      dispatch_waitlist.pop_back();
      // dispatch_waitlist.erase(choice_op);

      // find EFT of it and corresponding dev
      // 1. find latest operand value eft
      // float _operands_eft = -1.0;
      // auto _operands = choice_op->getOperands();
      // std::cout << "step 1: calc value eft time\n";
      // for (auto _operand: _operands) {
      //   auto _operand_ready_time = value_EFT_timelist.lookup(_operand);
      //   std::cout << "operand ready time = " << _operand_ready_time << std::endl;
      //   _operands_eft = (_operands_eft < _operand_ready_time) ? _operand_ready_time : _operands_eft;
      // }
      // std::cout << "value eft = " << _operands_eft << std::endl;
      float _operands_eft = _earliest_start_time;

      int _best_dev = dispatch_records.lookup(choice_op);
      float _dev_eat_time = device_EAT_timelist[_best_dev];
      float _compute_cost;
      if (is_real_run) {
        _compute_cost = this->mock_atomic_op_at(choice_op, _best_dev);
      } else {
        _compute_cost = this->estimate_atomic_op_at(choice_op, _best_dev);
      }
      auto _finish_time = (float)std::max(_dev_eat_time, _operands_eft) + _compute_cost;
      // std::cout << "step 2: probe devs, find EFT\n";
      // for (auto dev_id: devices_idx) {
      //   std::cout << "device " << dev_id << "'s eat time = ";
      //   float _dev_eat_time = device_EAT_timelist[dev_id]; 
      //   std::cout << _dev_eat_time << std::endl;
      //
      //   std::cout << "if dispatch to dev #" << dev_id << std::endl;
      //   auto _compute_cost = this->estimate_atomic_op_at(choice_op, dev_id);
      //   std::cout << "compute cost = " << _compute_cost << std::endl;
      //   auto _eft_tmp = (float)std::max(_dev_eat_time, _operands_eft) + _compute_cost;
      //   if (_eft_tmp < _finish_time) {
      //     _finish_time = _eft_tmp;
      //     _best_dev = dev_id;
      //   }
      // }
      // anchor
      // std::cout << "ablation-group-#2 ==> op #" << choice_op->getName().getStringRef().str()
      //   << " will be dispatched into dev #" << _best_dev << "; with EFT = "
      //   << _finish_time << std::endl;

      // std::cout << "step 3: update value-EFT table and device-EAT table\n";
      value_EFT_timelist.insert(std::make_pair(choice_op->getResult(0), _finish_time));
      device_EAT_timelist[_best_dev] = _finish_time;

      // update dispatch_waitlist, consider above compute newly defined value, add this values users if ready
      auto _users = choice_op->getResult(0).getUsers();
      for (auto _op: _users) {
        // std::cout << "filtering successors users " << _op->getName().getStringRef().str() << std::endl;
        bool isReady = true;
        auto _operands = _op->getOperands();
        for (auto _operand: _operands) {
          // printf("anchor operand %p", _operand);
          if (value_EFT_timelist.count(_operand) == 0) {
            isReady = false;
          }
        }
        if (isReady) {
          // if this op already in dispatch_waitlist, continue
          if (std::find(dispatch_waitlist.begin(), dispatch_waitlist.end(), _op) == dispatch_waitlist.end()) {
            dispatch_waitlist.push_back(_op);
          }
        }
      }

    } while (!dispatch_waitlist.empty());

    // std::cout << " ========== Mock SUMMARY =========" << std::endl;
    float dev_last_time = -1.0;
    for (auto _dev_time: device_EAT_timelist) {
      dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    }
    // for (int idx = 0; idx < 5; idx++) {
    //   auto _dev_time = device_EAT_timelist[idx];
    //   dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    // }
    // std::cout << "latest dev eat = " << dev_last_time << std::endl;

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
    // std::cout << "latest value eft = " << value_last_time << std::endl;
    // assert(value_last_time == dev_last_time);
    // std::cout << " ========== Mock SUMMARY =========" << std::endl;
    // return value_last_time;
    return dev_last_time;
  }

  inline llvm::DenseMap<Operation*, int32_t> mpmdSchedulePBlockWithHEFTStrategyWithoutUncertainty(crt::PhantomBlockOp pblock, llvm::SmallVector<int32_t> devices_idx) {
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
    // std::cout << " ========== calc avg op cost ENTER =========== " << std::endl;
    for (auto _op: op_worklist) {
      // std::cout << "handling op " << _op->getName().getStringRef().str() << std::endl;
      int count = 0;
      float cost = 0.0;
      for (auto _dev_id: devices_idx) {
        // std::cout << "handling dev " << _dev_id << std::endl;
        cost += this->mock_atomic_op_at(_op, _dev_id);
        // std::cout << "cost sum = " << cost << std::endl;
        count++;
      }
      avg_op_cost_worklist.insert(std::make_pair(_op, cost/count));
      // std::cout << "avg cost = " << avg_op_cost_worklist.lookup(_op) << std::endl;
    }
    // std::cout << " ========== calc avg op cost EXIT =========== " << std::endl;

    // calc upward rank
    // std::cout << " ========== calc upward-rank ENTER =========== " << std::endl;
    for (auto _op: rev_op_worklist) {
      // std::cout << "handling op ==> " << std::endl;
      // _op->dump(); 
      // handle terminators
      if (isa<crt::YieldOp>(_op)) {
        auto _base_cost = 0.0;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _base_cost + _cost));
        // std::cout << "uprank = " << _base_cost + _cost << std::endl;
      } else {
        auto _users = _op->getUsers();
        float _base_cost = 0.0;
        for (auto _user: _users) {
          // std::cout << "succesor ==> " << std::endl; 
          // _user->dump();
          auto tmp = upward_rank.lookup(_user);
          // std::cout << "get a succesor uprank = " << tmp << std::endl;
          _base_cost = (tmp > _base_cost) ? tmp : _base_cost;
        }
        // std::cout << "base uprank = " << _base_cost << std::endl;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        auto _uprank = _cost + _base_cost;
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _uprank));
        // std::cout << "uprank = " << _uprank << std::endl << std::endl;
      }
    }
    // std::cout << " ========== calc upward-rank EXIT =========== " << std::endl;

    // std::cout << " ========== dispatch with HEFT strategy Enter =========== " << std::endl;
    // iterate over worklist, fetch partialEQ op group
    llvm::DenseMap<mlir::Value, float> value_EFT_timelist;
    llvm::SmallVector<float> device_EAT_timelist;
    auto args = pblock.getOperation()->getOperands();
    for (auto arg: args) {
      // printf("anchor arg %p", arg);
      value_EFT_timelist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // init, set device_EAT all ready at time 0.0
    for (auto devid: devices_idx) {
      device_EAT_timelist.push_back(0.0);
    }
    // for (int idx = 0; idx < 5; idx++) {
    //   device_EAT_timelist.push_back(0.0);
    // }

    llvm::SmallVector<Operation*> dispatch_waitlist;
    llvm::DenseMap<Operation*, int32_t> dispatch_records;

    for (auto _op: op_worklist) {

      // if this op already dispatch, skip it
      if (dispatch_records.count(_op) > 0) continue;

      // std::cout << "filtering zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
      bool isReady = true;
      auto _operands = _op->getOperands();
      for (auto _operand: _operands) {
        // printf("anchor operand %p", _operand);
        if (value_EFT_timelist.count(_operand) == 0) {
          isReady = false;
        }
      }
      if (isReady) {
        dispatch_waitlist.push_back(_op);
        // std::cout << "find zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
      }
    }

    // Filter out all zero-indegree ops in this iteration
    // 1. consume one op with bigest uprank, and dispatch it
    // 2. alloc to dev, with EFT
    // 3. add result to value_EFT_timelist with EFT 
    // 4. update dev_EAT_timelist
    do {
      // choice max uprank op
      // std::cout << "step 0: find max uprank op " 
      //   << std::endl
      //   << std::endl;
      Operation* choice_op;
      int choice_id = -1;
      float max_uprank = -1.0;
      // std::cout << "found zero-indegree nodes this time with count = " << dispatch_waitlist.size() << std::endl;
      // HEFT
      for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
        auto _op = dispatch_waitlist[idx];
        auto _uprank = upward_rank.lookup(_op);
        // std::cout << "_uprank = " << _uprank << std::endl;
        if (_uprank > max_uprank) {
          // std::cout << "max uprank = " << max_uprank << ", need to update to " << _uprank << std::endl;
          max_uprank = _uprank;
          choice_op = _op;
          choice_id = idx;
        }
      }
      //
      // // PICK FIRST
      // for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
      //   choice_id = 0;
      //   choice_op = dispatch_waitlist[idx];
      // }
      //
      // // PICK LAST 
      // for (int idx = dispatch_waitlist.size()-1; idx >= 0; idx--) {
      //   choice_id = 0;
      //   choice_op = dispatch_waitlist[idx];
      // }

      // dispatch_waitlist.swap(choice_op, dispatch_waitlist.end());
      dispatch_waitlist[choice_id] = dispatch_waitlist[dispatch_waitlist.size()-1];
      dispatch_waitlist.pop_back();
      // dispatch_waitlist.erase(choice_op);

      // find EFT of it and corresponding dev
      // 1. find latest operand value eft
      float _operands_eft = -1.0;
      auto _operands = choice_op->getOperands();
      // std::cout << "step 1: calc value eft time\n";
      for (auto _operand: _operands) {
        auto _operand_ready_time = value_EFT_timelist.lookup(_operand);
        // std::cout << "operand ready time = " << _operand_ready_time << std::endl;
        _operands_eft = (_operands_eft < _operand_ready_time) ? _operand_ready_time : _operands_eft;
      }
      // std::cout << "value eft = " << _operands_eft << std::endl;

      float _finish_time = 10000000.0;
      int _best_dev = -1;
      // std::cout << "step 2: probe devs, find EFT\n";
      for (auto dev_id: devices_idx) {
        // std::cout << "device " << dev_id << "'s eat time = ";
        float _dev_eat_time = device_EAT_timelist[dev_id]; 
        // std::cout << _dev_eat_time << std::endl;

        // std::cout << "if dispatch to dev #" << dev_id << std::endl;
        auto _compute_cost = this->mock_atomic_op_at(choice_op, dev_id);
        // std::cout << "compute cost = " << _compute_cost << std::endl;
        auto _eft_tmp = (float)std::max(_dev_eat_time, _operands_eft) + _compute_cost;
        if (_eft_tmp < _finish_time) {
          _finish_time = _eft_tmp;
          _best_dev = dev_id;
        }
      }
      // std::cout << "ablation-group-#1 ==> op #" << choice_op->getName().getStringRef().str()
      //   << " will be dispatched into dev #" << _best_dev << "; with EFT = " 
      //   << _finish_time << std::endl;

      // std::cout << "step 3: update value-EFT table and device-EAT table\n";
      value_EFT_timelist.insert(std::make_pair(choice_op->getResult(0), _finish_time));
      device_EAT_timelist[_best_dev] = _finish_time;
      dispatch_records.insert(std::make_pair(choice_op, _best_dev));

      // because new value ready, update dispatch_waitlist with its users
      auto _users = choice_op->getResult(0).getUsers();
      for (auto _op: _users) {
        // std::cout << "filtering successors users " << _op->getName().getStringRef().str() << std::endl;
        bool isReady = true;
        auto _operands = _op->getOperands();
        for (auto _operand: _operands) {
          // printf("anchor operand %p", _operand);
          if (value_EFT_timelist.count(_operand) == 0) {
            isReady = false;
          }
        }
        if (isReady) {
          // if this op already in dispatch_waitlist, continue
          if (std::find(dispatch_waitlist.begin(), dispatch_waitlist.end(), _op) == dispatch_waitlist.end()) {
            dispatch_waitlist.push_back(_op);
          }
        }
      }

    } while (!dispatch_waitlist.empty());

    // std::cout << " ========== dispatch with HEFT strategy Exit =========== " 
    //   << std::endl
    //   << std::endl;

    // std::cout << " ========== ESTIMATOR SUMMARY =========" << std::endl;
    float dev_last_time = -1.0;
    for (auto _dev_time: device_EAT_timelist) {
      dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    }
    // for (int idx = 0; idx < 5; idx++) {
    //   auto _dev_time = device_EAT_timelist[idx];
    //   dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    // }
    // std::cout << "latest dev eat = " << dev_last_time << std::endl;
    
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
    // std::cout << "latest value eft = " << value_last_time << std::endl;
    // assert(value_last_time == dev_last_time);
    // std::cout << " ========== ESTIMATOR SUMMARY =========" << std::endl;
    // for (auto value_time_pair: value_EFT_timelist) {
    //   std::cout << "estimate ==> value #" << std::endl; 
    //   value_time_pair.getFirst().dump(); 
    //   std::cout << "time = "
    //     << value_time_pair.getSecond() 
    //     << std::endl; 
    // }
    return dispatch_records;
  }

  // assume PhantomBlockOp
  inline std::pair<llvm::DenseMap<Operation*, int32_t>, float> mpmdSchedulePBlockWithHEFTStrategy(crt::PhantomBlockOp pblock, llvm::SmallVector<int32_t> devices_idx, bool has_uncertainty) {
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
    // std::cout << " ========== calc avg op cost ENTER =========== " << std::endl;
    for (auto _op: op_worklist) {
      // std::cout << "handling op " << _op->getName().getStringRef().str() << std::endl;
      int count = 0;
      float cost = 0.0;
      for (auto _dev_id: devices_idx) {
        // std::cout << "handling dev " << _dev_id << std::endl;
        if (has_uncertainty) {
          cost += this->estimate_atomic_op_at(_op, _dev_id);
        } else {
          cost += this->mock_atomic_op_at(_op, _dev_id);
        }
        // std::cout << "cost sum = " << cost << std::endl;
        count++;
      }
      avg_op_cost_worklist.insert(std::make_pair(_op, cost/count));
      // std::cout << "avg cost = " << avg_op_cost_worklist.lookup(_op) << std::endl;
    }
    // std::cout << " ========== calc avg op cost EXIT =========== " << std::endl;

    // calc upward rank
    // std::cout << " ========== calc upward-rank ENTER =========== " << std::endl;
    for (auto _op: rev_op_worklist) {
      // std::cout << "handling op ==> " << std::endl;
      // _op->dump(); 
      // handle terminators
      if (isa<crt::YieldOp>(_op)) {
        auto _base_cost = 0.0;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _base_cost + _cost));
        // std::cout << "uprank = " << _base_cost + _cost << std::endl;
      } else {
        auto _users = _op->getUsers();
        float _base_cost = 0.0;
        for (auto _user: _users) {
          // std::cout << "succesor ==> " << std::endl; 
          // _user->dump();
          auto tmp = upward_rank.lookup(_user);
          // std::cout << "get a succesor uprank = " << tmp << std::endl;
          _base_cost = (tmp > _base_cost) ? tmp : _base_cost;
        }
        // std::cout << "base uprank = " << _base_cost << std::endl;
        auto _cost = avg_op_cost_worklist.lookup(_op);
        auto _uprank = _cost + _base_cost;
        // std::cout << "cost of this op = " << _cost << std::endl;
        upward_rank.insert(std::make_pair(_op, _uprank));
        // std::cout << "uprank = " << _uprank << std::endl << std::endl;
      }
    }
    // std::cout << " ========== calc upward-rank EXIT =========== " << std::endl;

    // std::cout << " ========== dispatch with HEFT strategy Enter =========== " << std::endl;
    // iterate over worklist, fetch partialEQ op group
    llvm::DenseMap<mlir::Value, float> value_EFT_timelist;
    llvm::SmallVector<float> device_EAT_timelist;
    auto args = pblock.getOperation()->getOperands();
    for (auto arg: args) {
      // printf("anchor arg %p", arg);
      value_EFT_timelist.insert(std::make_pair(llvm::cast<mlir::Value>(arg), 0.0));
    }

    // init, set device_EAT all ready at time 0.0
    for (auto devid: devices_idx) {
      device_EAT_timelist.push_back(0.0);
    }
    // for (int idx = 0; idx < 5; idx++) {
    //   device_EAT_timelist.push_back(0.0);
    // }

    llvm::SmallVector<Operation*> dispatch_waitlist;
    llvm::DenseMap<Operation*, int32_t> dispatch_records;

    for (auto _op: op_worklist) {

      // if this op already dispatch, skip it
      if (dispatch_records.count(_op) > 0) continue;

      // std::cout << "filtering zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
      bool isReady = true;
      auto _operands = _op->getOperands();
      for (auto _operand: _operands) {
        // printf("anchor operand %p", _operand);
        if (value_EFT_timelist.count(_operand) == 0) {
          isReady = false;
        }
      }
      if (isReady) {
        dispatch_waitlist.push_back(_op);
        // std::cout << "find zero-indegree op " << _op->getName().getStringRef().str() << std::endl;
      }
    }

    // Filter out all zero-indegree ops in this iteration
    // 1. consume one op with bigest uprank, and dispatch it
    // 2. alloc to dev, with EFT
    // 3. add result to value_EFT_timelist with EFT 
    // 4. update dev_EAT_timelist
    do {
      // choice max uprank op
      // std::cout << "step 0: find max uprank op " 
      //   << std::endl
      //   << std::endl;
      Operation* choice_op;
      int choice_id = -1;
      float max_uprank = -1.0;
      // std::cout << "found zero-indegree nodes this time with count = " << dispatch_waitlist.size() << std::endl;
      // HEFT
      for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
        auto _op = dispatch_waitlist[idx];
        auto _uprank = upward_rank.lookup(_op);
        // std::cout << "_uprank = " << _uprank << std::endl;
        if (_uprank > max_uprank) {
          // std::cout << "max uprank = " << max_uprank << ", need to update to " << _uprank << std::endl;
          max_uprank = _uprank;
          choice_op = _op;
          choice_id = idx;
        }
      }
      //
      // // PICK FIRST
      // for (int idx = 0; idx < dispatch_waitlist.size(); idx++) {
      //   choice_id = idx;
      //   choice_op = dispatch_waitlist[idx];
      // // }
      // choice_id = 0;
      // choice_op = dispatch_waitlist[0];
      //
      // // PICK LAST 
      // for (int idx = dispatch_waitlist.size()-1; idx >= 0; idx--) {
      //   choice_id = 0;
      //   choice_op = dispatch_waitlist[idx];
      // }

      // dispatch_waitlist.swap(choice_op, dispatch_waitlist.end());
      dispatch_waitlist[choice_id] = dispatch_waitlist[dispatch_waitlist.size()-1];
      dispatch_waitlist.pop_back();
      // dispatch_waitlist.erase(choice_op);

      // find EFT of it and corresponding dev
      // 1. find latest operand value eft
      float _operands_eft = -1.0;
      auto _operands = choice_op->getOperands();
      // std::cout << "step 1: calc value eft time\n";
      for (auto _operand: _operands) {
        auto _operand_ready_time = value_EFT_timelist.lookup(_operand);
        // std::cout << "operand ready time = " << _operand_ready_time << std::endl;
        _operands_eft = (_operands_eft < _operand_ready_time) ? _operand_ready_time : _operands_eft;
      }
      // std::cout << "value eft = " << _operands_eft << std::endl;

      float _finish_time = 10000000.0;
      int _best_dev = -1;
      // std::cout << "step 2: probe devs, find EFT\n";
      for (auto dev_id: devices_idx) {
        // std::cout << "device " << dev_id << "'s eat time = ";
        float _dev_eat_time = device_EAT_timelist[dev_id]; 
        // std::cout << _dev_eat_time << std::endl;

        // std::cout << "if dispatch to dev #" << dev_id << std::endl;
        auto _compute_cost = this->estimate_atomic_op_at(choice_op, dev_id);
        // std::cout << "compute cost = " << _compute_cost << std::endl;
        auto _eft_tmp = (float)std::max(_dev_eat_time, _operands_eft) + _compute_cost;
        if (_eft_tmp < _finish_time) {
          _finish_time = _eft_tmp;
          _best_dev = dev_id;
        }
      }
      // std::cout << "op #" << choice_op->getName().getStringRef().str()
      //   << " will be dispatched into dev #" << _best_dev << "; with EFT = " 
      //   << _finish_time << std::endl;

      // std::cout << "step 3: update value-EFT table and device-EAT table\n";
      value_EFT_timelist.insert(std::make_pair(choice_op->getResult(0), _finish_time));
      device_EAT_timelist[_best_dev] = _finish_time;
      dispatch_records.insert(std::make_pair(choice_op, _best_dev));

      // because new value ready, update dispatch_waitlist with its users
      auto _users = choice_op->getResult(0).getUsers();
      for (auto _op: _users) {
        // std::cout << "filtering successors users " << _op->getName().getStringRef().str() << std::endl;
        bool isReady = true;
        auto _operands = _op->getOperands();
        for (auto _operand: _operands) {
          // printf("anchor operand %p", _operand);
          if (value_EFT_timelist.count(_operand) == 0) {
            isReady = false;
          }
        }
        if (isReady) {
          // if this op already in dispatch_waitlist, continue
          if (std::find(dispatch_waitlist.begin(), dispatch_waitlist.end(), _op) == dispatch_waitlist.end()) {
            dispatch_waitlist.push_back(_op);
          }
        }
      }

    } while (!dispatch_waitlist.empty());

    // std::cout << " ========== dispatch with HEFT strategy Exit =========== " 
    //   << std::endl
    //   << std::endl;

    // std::cout << " ========== ESTIMATOR SUMMARY =========" << std::endl;
    float dev_last_time = -1.0;
    for (auto _dev_time: device_EAT_timelist) {
      dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    }
    // for (auto dev_id: devices_idx) {
    //   auto _dev_time = device_EAT_timelist[dev_id];
    //   dev_last_time = (_dev_time > dev_last_time) ? _dev_time : dev_last_time;
    // }
    // std::cout << "latest dev eat = " << dev_last_time << std::endl;
    
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
    // std::cout << "latest value eft = " << value_last_time << std::endl;
    // assert(value_last_time == dev_last_time);
    // std::cout << " ========== ESTIMATOR SUMMARY =========" << std::endl;
    return std::make_pair(dispatch_records, dev_last_time);
  }

  // dag execute on device at specified idx, where this device can
  // only execute one operation at a time
  inline float dynamic_dispatch_dag_at(Operation* funcOp, llvm::SmallVector<int> devices) {
    llvm::SmallVector<Operation*> worklist;
    llvm::SmallVector<int> available_devices = devices;
    // use `us` as time units
    llvm::DenseMap<mlir::Value, float> tensor_ready_worklist;
    Block& blk = funcOp->getRegion(0).front();

    // get all ops ready
    // funcOp->dump();
    // std::cout << "here" << std::endl;
    blk.walk([&](Operation* op){
      if (isa<crt::PhantomBlockOp>(op) || 
          isa<crt::AllreduceOp>(op) || 
          isa<crt::ConstantOp>(op) || 
          isa<func::ReturnOp>(op))
      worklist.push_back(op);
    });
    // std::cout << "here" << std::endl;

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
    
      // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time << std::endl;
    
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        yield_time = current_time;
      } else if (isa<crt::PhantomBlockOp>(_op)) {
        // pop avail dev to execute this op
        int devat = available_devices.back();
        available_devices.pop_back();
        // std::cout << "dispatch pblock to dev-id = " << devat << std::endl;
        _extra_cost = this->estimate_pblock(llvm::cast<crt::PhantomBlockOp>(_op), devat);
        // std::cout << "get pblock extra-time-cost = " << _extra_cost << std::endl;
        float complete_time = current_time + _extra_cost;
        tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
        // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time << std::endl;
        // std::cout << std::endl << std::endl;
    
        // TODO simulate when dev is idle from busy?
      } else {
        // only dispatch pblock, other ops on cpu/host
        _extra_cost = this->default_device->estimate_atomic_op(_op).value();
        // std::cout << _op->getName().getStringRef().str() << " _extra_cost = " << _extra_cost << std::endl;
        float complete_time = current_time + _extra_cost;
        tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
        // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time << std::endl;
      }
    
    }
    
    // std::cout << "==> returning/yielding now ==== yield time = " << yield_time<< std::endl<< std::endl << std::endl;
    
    return yield_time;
  }

  inline float estimate_pblock(crt::PhantomBlockOp pblock, int devat) {
    llvm::SmallVector<Operation*> worklist;
    // use `us` as time units
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

      // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time <<  std::endl;
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        yield_time = current_time;
      } else {
        _extra_cost = this->estimate_atomic_op_at(_op, devat);
      }
      // std::cout << _op->getName().getStringRef().str() << " _extra_cost = " << _extra_cost << std::endl;
      float complete_time = current_time + _extra_cost;
      tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
      // do not verbose if converged
      // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time <<  std::endl;
      // bounded methods, operations are not concurrent
      // set current_time = completetime for single-thread handling
      current_time = complete_time;
    }

    // std::cout << "==> returning/yielding now ==== yield time = " << yield_time<< std::endl<< std::endl << std::endl;

    return yield_time;
  }

  // dag execute on device at specified idx, where this device can
  // only execute one operation at a time
  inline float bounded_estimate_dag_at(Operation* funcOp, int devat) {
    llvm::SmallVector<Operation*> worklist;
    // use `us` as time units
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
      // std::cout << "happer" << std::endl;
      // _op->dump();

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

      // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << current_time <<  std::endl;
      float _extra_cost = 0.0;
      if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
        yield_time = current_time;
      } else if (isa<func::FuncOp>(_op) || isa<crt::PhantomBlockOp>(_op)) {
        _extra_cost = this->bounded_estimate_dag_at(_op, devat);
      } else {
        // _extra_cost = this->simulators[devat]->estimate_atomic_op(_op);
        _extra_cost = this->estimate_atomic_op_at(_op, devat);
      }
      // std::cout << _op->getName().getStringRef().str() << " _extra_cost = " << _extra_cost << std::endl;
      float complete_time = current_time + _extra_cost;
      tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), complete_time));
      // do not verbose if converged
      // std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " completetime = " << complete_time <<  std::endl;

      // bounded methods, operations are not concurrent
      // set current_time = completetime for single-thread handling
      current_time = complete_time;
    }

    // std::cout << "==> returning/yielding now ==== yield time = " << yield_time<< std::endl<< std::endl << std::endl;

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
    // use `us` as time units
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
    return this->simulators[devat]->estimate_atomic_op(op).value();
  }

  inline float mock_atomic_op_at(Operation* op, int devat) {
    return this->simulators[devat]->mock_atomic_op(op);
  }
  
  inline LogicalResult verify() {
    return success();
  }
};

} // namespace onnx_mlir

#endif /* ONNX_MLIR_CRT_COST_MODEL */
