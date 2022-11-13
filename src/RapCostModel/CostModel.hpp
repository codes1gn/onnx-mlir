#ifndef ONNX_MLIR_CRT_COST_MODEL
#define ONNX_MLIR_CRT_COST_MODEL

#include <cstdlib>
#include <iostream>
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

class Cost {
  double cycles;
};

class RapOp {
  
};

class CostEstimator {

  llvm::DenseMap<StringRef, float> atomic_cost;
  llvm::DenseMap<StringRef, float> atomic_uncertainty;

public:
  CostEstimator() {

#define GET_OP_COST
#include "src/RapCostModel/CrtOpsCosts.cpp.inc"

  }
  inline LogicalResult verify() {
    return success();
  }

  inline float estimate_function(func::FuncOp funcOp) {
    // funcOp.getBody().front().walk([&](Operation* op) {
    //   auto cost_per_op = cest.estimate_atomic_op(op);
    //   std::cout << "cost = " << cost_per_op << std::endl;
    //
    // });
    return this->estimate_dag(funcOp);
  }

  inline float estimate_dag(Operation* funcOp) {
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
        auto _operands = _op->getOperands();
        bool isReady = true;
        float timing = 0.0;
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
        float _extra_cost;
        if (isa<crt::YieldOp>(_op) || isa<func::ReturnOp>(_op)) {
          yield_time = timing;
        } else if (isa<func::FuncOp>(_op) || isa<crt::PhantomBlockOp>(_op)) {
          _extra_cost = this->estimate_dag(_op);
        } else {
          _extra_cost = this->estimate_atomic_op(_op);
        }
        tensor_ready_worklist.insert(std::make_pair(_op->getResult(0), _extra_cost + timing));
        std::cout << "==> simulating op ---- " << _op->getName().getStringRef().str() << " readytime = " << timing << " completetime = " << _extra_cost + timing << std::endl;
      }
    } while (isConverged);

    return yield_time;
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
      return 10.0;
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

} // namespace onnx_mlir

#endif /* ONNX_MLIR_CRT_COST_MODEL */
