/*
 * SPDX-License-Identifier: Apache-2.0
 */

//===-------- LowerKrnlShape.cpp ------------------------------------------===//
//
// Copyright 2019-2022 The IBM Research Authors.
//
// =============================================================================
//
// This pass enables the lowering of the krnl.shape operation to use Shape
// dialect operations.
//
//===----------------------------------------------------------------------===//
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <ctime>

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "llvm/ADT/DenseMap.h"

#include "src/Dialect/Crt/CrtDialect.hpp"
#include "src/Dialect/Crt/CrtOps.hpp"
#include "src/Pass/Passes.hpp"

#include "src/RapCostModel/CostModel.hpp"

using namespace mlir;
using namespace onnx_mlir;

namespace {

// // template 1
// LogicalResult replicatePBlock(func::FuncOp funcOp, MLIRContext *context) {
//   funcOp.walk([&](crt::PhantomBlockOp op) {
//     op.dump();
//   };
//   return success();
// }
//
// // template 2
// LogicalResult replicatePBlock(func::FuncOp funcOp, MLIRContext *context) {
//   SmallVector<Operation *, 16> worklist;
//
//   funcOp.getBody().front().walk([&](Operation *op) {
//     worklist.push_back(op);
//   });
//
//   std::reverse(worklist.begin(), worklist.end());
//   for (auto op: worklist) {
//     if (llvm::isa</* some op */>(op)) {
//       // do sth
//     }
//   }
//   return success();
// }
class RapHelper {
  llvm::DenseMap<Value, Value> valueMapping;
public: 
  RapHelper() {}

  inline Operation* replicateOpWithRemapping(Operation* op);
  
  inline void addMapping(Operation* from, Operation* to);

  inline void fixMapping(Operation* op);

  inline void pprint_two_values(mlir::Value lhs, mlir::Value rhs) {
    printf("%p vs %p, equal = %d\n", lhs, rhs, lhs==rhs);
  }

  inline void pprint_one_values(mlir::Value lhs) {
    printf("==> %p\n", lhs);
  }

};

inline Operation* RapHelper::replicateOpWithRemapping(Operation* op) {
  Operation* cloned_op;
  if (isa<crt::PhantomBlockOp>(op)) {
    OpBuilder builder(op);

  } else if (
      isa<crt::ConstantOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ConstantOp>(
        op->getLoc(), 
        op->getResultTypes(),
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);
  } else if (isa<crt::ExpOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ExpOp>(
        op->getLoc(), 
        op->getResultTypes(),
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::ReluOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ReluOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::SoftmaxOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::SoftmaxOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::MaxpoolOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::MaxpoolOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (
      isa<crt::ReshapeOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ReshapeOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (
      isa<crt::GemmOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::GemmOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::YieldOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::YieldOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::ConvaddOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ConvaddOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::AddOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::AddOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::ReducemeanOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ReducemeanOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::SqueezeOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::SqueezeOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::UnsqueezeOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::UnsqueezeOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::AbsOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::AbsOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::ReluOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ReluOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::SqrtOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::SqrtOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::ErfOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ErfOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::TransposeOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::TransposeOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::AvgpoolOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::AvgpoolOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::MaxpoolOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::MaxpoolOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else if (isa<crt::FlattenOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::FlattenOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperands()
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);

  } else {
    // op->dump();
    // std::cout << op->getName().getStringRef().str() << std::endl;
    assert(0);
  }
  return cloned_op;
}

inline void RapHelper::addMapping(Operation* from, Operation* to) {
  // std::cout << from->getName().getStringRef().str() << std::endl;
  auto from_res = from->getResults();
  auto to_res = to->getResults();
  auto from_opr = from->getOperands();
  auto to_opr = to->getOperands();
  SmallVector<Value> from_results;
  SmallVector<Value> to_results;
  SmallVector<Value> from_operands;
  SmallVector<Value> to_operands;
  for (auto _r: from_res) {
    from_results.push_back(_r);
  }
  for (auto _r: to_res) {
    to_results.push_back(_r);
  }
  for (auto _r: from_opr) {
    from_operands.push_back(_r);
  }
  for (auto _r: to_opr) {
    to_operands.push_back(_r);
  }
  for (int idx = 0; idx < from_results.size(); idx++) {
    this->valueMapping.insert(std::make_pair(from_results[idx], to_results[idx]));
  }
  for (int idx = 0; idx < from_operands.size(); idx++) {
    this->valueMapping.insert(std::make_pair(from_operands[idx], to_operands[idx]));
  }
  // if (isa<crt::PhantomBlockOp>(from) && isa<crt::PhantomBlockOp>(to)) {
  //   this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
  //   this->valueMapping.insert(std::make_pair(from->getOperand(0), to->getOperand(0)));
  //
  // } else if (
  //     (isa<crt::ConstantOp>(from) && isa<crt::ConstantOp>(to))) {
  //   this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
  //
  // } else if (
  //     (isa<crt::ReshapeOp>(from) && isa<crt::ReshapeOp>(to))) {
  //   this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
  //
  // } else if (
  //     (isa<crt::GemmOp>(from) && isa<crt::GemmOp>(to))) {
  //   this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
  //
  // } else if (
  //     (isa<crt::ExpOp>(from) && isa<crt::ExpOp>(to)) ||
  //     (isa<crt::MaxpoolOp>(from) && isa<crt::MaxpoolOp>(to)) ||
  //     (isa<crt::SoftmaxOp>(from) && isa<crt::SoftmaxOp>(to)) ||
  //     (isa<crt::ReluOp>(from) && isa<crt::ReluOp>(to))) {
  //   this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
  //
  // } else if (isa<crt::YieldOp>(from) && isa<crt::YieldOp>(to)) {
  //   assert(1);
  // } else {
  //   std::cout << from->getName().getStringRef().str() << std::endl;
  //   assert(0);
  // }
}

inline void RapHelper::fixMapping(Operation* op) {
  auto operands = op->getOperands();
  for (auto operand: operands) {
    auto new_operand = valueMapping.lookup(operand);
    op->replaceUsesOfWith(operand, new_operand);
  }
  // if (isa<crt::ExpOp>(op) || 
  //     isa<crt::MaxpoolOp>(op) ||
  //     isa<crt::ReluOp>(op) ||
  //     isa<crt::SoftmaxOp>(op)) {
  //   auto operands = op->getOperands();
  //   for (auto operand: operands) {
  //     auto new_operand = valueMapping.lookup(operand);
  //     op->replaceUsesOfWith(operand, new_operand);
  //   }
  // } else if (isa<crt::ConstantOp>(op)) {
  //   // auto new_operand = valueMapping.lookup(op->getOperand(0));
  //   // op->replaceUsesOfWith(op->getOperand(0), new_operand);
  //   // zenary op, do not need to remap operands
  //   assert(1);
  //   
  // } else if (isa<crt::ReshapeOp>(op)) {
  //   auto lhs_new_operand = valueMapping.lookup(op->getOperand(0));
  //   op->replaceUsesOfWith(op->getOperand(0), lhs_new_operand);
  //   auto rhs_new_operand = valueMapping.lookup(op->getOperand(1));
  //   op->replaceUsesOfWith(op->getOperand(1), rhs_new_operand);
  //
  // } else if (isa<crt::GemmOp>(op)) {
  //   auto first_new_operand = valueMapping.lookup(op->getOperand(0));
  //   op->replaceUsesOfWith(op->getOperand(0), first_new_operand);
  //   auto second_new_operand = valueMapping.lookup(op->getOperand(1));
  //   op->replaceUsesOfWith(op->getOperand(1), second_new_operand);
  //   auto third_new_operand = valueMapping.lookup(op->getOperand(2));
  //   op->replaceUsesOfWith(op->getOperand(2), third_new_operand);
  //
  // } else if (isa<crt::YieldOp>(op)) {
  //   auto new_operand = valueMapping.lookup(op->getOperand(0));
  //   op->replaceUsesOfWith(op->getOperand(0), new_operand);
  //
  // } else if (isa<crt::PhantomBlockOp>(op)) {
  //   auto new_operand = valueMapping.lookup(op->getOperand(0));
  //   op->replaceUsesOfWith(op->getOperand(0), new_operand);
  //
  // } else {
  //   std::cout << op->getName().getStringRef().str() << std::endl;
  //   assert(0);
  // }
}

LogicalResult estimateCost(func::FuncOp funcOp, MLIRContext *context) {
  std::cout << "processing estimateCost" << std::endl;

  // onnx_mlir::CostEstimator cest;
  // assert(cest.verify().succeeded());
  //
  // cest.estimate_function(funcOp);

  return success();
}

LogicalResult verifyCostModel(func::FuncOp funcOp, MLIRContext *context) {
  // funcOp.dump();
  std::cout << "processing CostModel Verification" << std::endl;

  // TODO fix interface, need devices set in construction of cest
  // onnx_mlir::CostEstimator cest;
  // assert(cest.verify().succeeded());
  //
  // cest.verifyCostModel(funcOp);

  return success();
}

LogicalResult singleDev(func::FuncOp funcOp, MLIRContext *context) {
  // funcOp.dump();
  std::cout << "processing single-dev-strategy" << std::endl;

  // onnx_mlir::CostEstimator cest;
  // assert(cest.verify().succeeded());
  //
  // float total_cost = cest.single_dev(funcOp);
  // std::cout << "======> single-dev-strategy <Estimated Wall-Time in ms> = " << total_cost << "(ms) <======" << std::endl;

  return success();
}

LogicalResult useAllGPUs(func::FuncOp funcOp, MLIRContext *context) {
  std::cout << "processing dispatch-to-all-GPUs-strategy" << std::endl;

  // onnx_mlir::CostEstimator cest;
  // assert(cest.verify().succeeded());
  //
  // float total_cost = cest.dispatch_to_all_gpus(funcOp);
  // std::cout << "======> dispatch-to-all-GPUs-strategy <Estimated Wall-Time in ms> = " << total_cost << "(ms) <======" << std::endl;

  return success();
}

// SmallVector<float> mpmdSchedule(func::FuncOp funcOp, MLIRContext *context, SmallVector<SmallVector<int32_t>> to_devs, bool is_uncertain) {
SmallVector<float> mpmdSchedule(func::FuncOp funcOp, MLIRContext *context, SmallVector<SmallVector<int32_t>> to_devs, bool is_uncertain) {
  std::cout << "processing mpmdSchedule with HEFT" << std::endl;

  onnx_mlir::CostEstimator cest(to_devs);
  assert(cest.verify().succeeded());

  SmallVector<float> total_cost = cest.mpmdSchedule(funcOp, is_uncertain);
  std::cout << "======> mpmd-strategy <Estimated Wall-Time in us> = " << total_cost[0] << "(us) <======" << std::endl;

  return total_cost;
}

LogicalResult replicatePBlock(func::FuncOp funcOp, MLIRContext *context, int rep_cnt) {
  std::cout << "processing replicatePBlock, with replicates count = " << rep_cnt << std::endl;

  SmallVector<Operation *, 1024> worklist;
  // replicate once
  funcOp.walk([&](crt::PhantomBlockOp op) {
    for (int rep_idx = 1; rep_idx < rep_cnt; rep_idx++) {
      // std::cout << rep_idx << std::endl;

      worklist.clear();
      RapHelper chelper;

      // replicate pblock itself and add to func-region
      OpBuilder builder(op);
      auto prior_pb_operand = op.getOperand();
      auto latter_pb_operand = builder.create<crt::ConstantOp>(prior_pb_operand.getLoc(), prior_pb_operand.getType());
      auto clonedPB = builder.create<crt::PhantomBlockOp>(op.getLoc(), op.getType(), op.getOperand());
      clonedPB.getBody().emplaceBlock();
      // chelper.addMapping(op.getOperand(), latter_pb_operand);
      clonedPB.getOperation()->replaceUsesOfWith(clonedPB.getOperand(), latter_pb_operand.getResult());
      chelper.addMapping(op.getOperation(), clonedPB.getOperation());

      // connect clonedPB to next allreduce's operands
      for (auto user: op.getOperation()->getUsers()) {
        assert(isa<crt::AllreduceOp>(user));
        // this legacy way but always works, better way is to use below method
        // MutableOperandRange mor(user);
        auto mor = llvm::cast<crt::AllreduceOp>(user).getOperandMutable();
        mor.append(clonedPB.getResult());
      }

      // ensemble ops in pblock region
      op.getBody().front().walk([&](Operation *_op) {
        worklist.push_back(_op);
      });

      // replicate ops in pblock region
      // std::reverse(worklist.begin(), worklist.end());
      for (auto _op: worklist) {
        // _op->dump();
        auto new_op = chelper.replicateOpWithRemapping(_op);
        new_op->remove();
        clonedPB.getBody().front().push_back(new_op);
      }
    }
  });

  return success();
}

LogicalResult dispatchAllToDev(func::FuncOp funcOp, MLIRContext *context, int devat) {
  std::cout << "processing dispatchAllToDev" << std::endl;
  funcOp.walk([&](crt::PhantomBlockOp op) {
    // op.dump();
    OpBuilder builder(op);
    llvm::SmallVector<int32_t> arr;
    arr.push_back(devat);
    mlir::ArrayAttr arratt = builder.getI32ArrayAttr(arr);
    op.setDevatAttr(arratt);
    // op.dump();
  });
  return success();
}

// anchor
LogicalResult setBatchSize(func::FuncOp funcOp, MLIRContext *context, int64_t new_batch_size) {
  std::cout << "processing setBatchSize" << std::endl;

  funcOp.walk([&](Operation* op) {
    if (isa<crt::ConstantOp>(op)) return;
    // if (isa<crt::AddOp>(op)) {
    //   auto results = op->getOperands();
    //   for (auto result: results) {
    //     auto shaped_type = result.getType();
    //     ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
    //     // shaped_type.dump();
    //
    //     llvm::SmallVector<int64_t> revised_shape;
    //     for (auto dim: shape) {
    //       int64_t new_dim = dim;
    //       revised_shape.push_back(new_dim);
    //     }
    //     if (revised_shape.size() > 0) {
    //       revised_shape[0] = new_batch_size;
    //       auto revisedTensorType =
    //         RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
    //       result.setType(revisedTensorType);
    //     }
    //   }
    // }
    if (isa<crt::ReshapeOp>(op)) {
      auto first_input = op->getOperand(0).getType();
      ArrayRef<int64_t> _input_shape = llvm::cast<mlir::TensorType>(first_input).getShape();
      if (_input_shape[0] != new_batch_size) return;
      // handle result
      auto results = op->getResults();
      for (auto result: results) {
        auto shaped_type = result.getType();
        ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
        // shaped_type.dump();

        llvm::SmallVector<int64_t> revised_shape;
        for (auto dim: shape) {
          int64_t new_dim = dim;
          revised_shape.push_back(new_dim);
        }
        if (revised_shape.size() > 0) {
          revised_shape[0] = new_batch_size;
          auto revisedTensorType =
            RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
          result.setType(revisedTensorType);
        }
      }
    }
    if (isa<func::FuncOp>(op)) {
      auto fop = llvm::cast<func::FuncOp>(op);
      auto func_type = fop.getFunctionType();

      auto inputs = func_type.getInputs();
      auto results = func_type.getResults();
      SmallVector<Type> new_inputs;
      SmallVector<Type> new_results;
      for (auto _input: inputs) {
        auto shaped_type = _input;
        ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
        // shaped_type.dump();
      
        llvm::SmallVector<int64_t> revised_shape;
        for (auto dim: shape) {
          int64_t new_dim = dim;
          revised_shape.push_back(new_dim);
        }
        if (revised_shape.size() > 0) {
          revised_shape[0] = new_batch_size;
          auto revisedTensorType =
            RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
          new_inputs.push_back(revisedTensorType);
        }
      }
      for (auto _result: results) {
        auto shaped_type = _result;
        ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
        // shaped_type.dump();
      
        llvm::SmallVector<int64_t> revised_shape;
        for (auto dim: shape) {
          int64_t new_dim = dim;
          revised_shape.push_back(new_dim);
        }
        if (revised_shape.size() > 0) {
          revised_shape[0] = new_batch_size;
          auto revisedTensorType =
            RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
          new_results.push_back(revisedTensorType);
        }
      }
      auto new_func_type = FunctionType::get(context, new_inputs, new_results);
      fop.setFunctionTypeAttr(TypeAttr::get(new_func_type));
      // fop.dump();
    }

    // handle result
    auto results = op->getResults();
    // std::cout << "setting result bs" << std::endl;
    // op->dump();
    for (auto result: results) {
      // std::cout << result == nullptr << std::endl;
      // std::cout << std::endl;
      auto shaped_type = result.getType();
      ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
      // shaped_type.dump();

      llvm::SmallVector<int64_t> revised_shape;
      for (auto dim: shape) {
        int64_t new_dim = dim;
        revised_shape.push_back(new_dim);
      }
      // avoid squeeze 1xi32, 1xi32 -> i32
      if (revised_shape.size() > 0) {
        revised_shape[0] = new_batch_size;
        auto revisedTensorType =
          RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
        result.setType(revisedTensorType);

      }
    }
  });

  auto arguments = funcOp.getArguments();
  for (auto argument: arguments) {
    auto shaped_type = argument.getType();
    ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
    llvm::SmallVector<int64_t> revised_shape;
    for (auto dim: shape) {
      int64_t new_dim = dim;
      revised_shape.push_back(new_dim);
    }
    revised_shape[0] = new_batch_size;
    auto revisedTensorType =
      RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
    argument.setType(revisedTensorType);
  }
  // mlir::Region& region = funcOp.getBody();
  // SmallVector<Operation *, 1024> pblocklist;
  // region.front().walk([&](crt::PhantomBlockOp op) {
  //   pblocklist.push_back(op);
  // });
  // OpBuilder builder(pblocklist[0]);
  // auto arg0 = builder.create<crt::ConstantOp>(
  //     pblocklist[0]->getLoc(), 
  //     revisedTensorType);
  //
  // // replace use of arguments with new-shaped-arguments at const literature
  // region.front().walk([&](Operation* op) {
  //   auto operands = op->getOperands();
  //   for (auto operand: operands) {
  //     if (operand == argument) {
  //       op->replaceUsesOfWith(operand, arg0);
  //     }
  //   }
  // });

  return success();
}

LogicalResult shardingBatchSizeWithGiven(func::FuncOp funcOp, MLIRContext *context, SmallVector<int32_t> replica_batch_size) {
  std::cout << "processing shardingBatchSizeWithGiven" << std::endl;
  mlir::Region& region = funcOp.getBody();
  // funcOp.dump();
  

  SmallVector<Operation *, 1024> pblocklist;
  int pblock_count = 0;
  int count = 0;

  region.front().walk([&](crt::PhantomBlockOp op) {
    pblocklist.push_back(op);
    pblock_count++;
  });
  assert(pblock_count == replica_batch_size.size());

  auto argument = funcOp.getArgument(0);
  auto shaped_type = argument.getType();
  ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
  llvm::SmallVector<int64_t> revised_shape[pblock_count];
  for (auto dim: shape) {
    int64_t new_dim = dim;
    for (int idx = 0; idx < pblock_count; idx++) {
      revised_shape[idx].push_back(new_dim);
    }
  }
  for (int idx = 0; idx < pblock_count; idx++) {
    revised_shape[idx][0] = replica_batch_size[idx];
  }
  SmallVector<RankedTensorType> revisedTensorType;
  for (int idx = 0; idx < pblock_count; idx++) {
    revisedTensorType.push_back(RankedTensorType::get(revised_shape[idx], shaped_type.cast<ShapedType>().getElementType()));
  }
  auto tmpop = pblocklist[0];
  OpBuilder builder(tmpop);
  SmallVector<Operation*> new_argument;
  for (int idx = 0; idx < pblock_count; idx++) {
    new_argument.push_back(builder.create<crt::ConstantOp>(tmpop->getLoc(), revisedTensorType[idx]));
  }

  for (int idx = 0; idx < replica_batch_size.size(); idx++) {
    auto pblock = pblocklist[idx];
    pblock->walk([&](Operation* op) {
      auto operands = op->getOperands();
      for (auto operand: operands) {
        if (operand == pblock->getOperand(0)) {
          op->replaceUsesOfWith(operand, new_argument[idx]->getResult(0));
        }
      }
    });
    pblock->replaceUsesOfWith(pblock->getOperand(0), new_argument[idx]->getResult(0));

    auto batch_size = replica_batch_size[idx];
    pblock->walk([&](Operation* op) {
      if (isa<crt::ConstantOp>(op)) return;
      if (isa<crt::PhantomBlockOp>(op)) {
        auto operand = op->getOperand(0);
        auto shaped_type = operand.getType();
        ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
        // shaped_type.dump();

        llvm::SmallVector<int64_t> revised_shape;
        for (auto dim: shape) {
          int64_t new_dim = dim;
          revised_shape.push_back(new_dim);
        }
        revised_shape[0] = batch_size;
        auto revisedTensorType =
          RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
        operand.setType(revisedTensorType);

      }

      // handle result
      auto results = op->getResults();
      for (auto result: results) {
      // auto result = op->getResult(0);
      // {
        auto shaped_type = result.getType();
        ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
        // shaped_type.dump();

        llvm::SmallVector<int64_t> _revised_shape;
        for (auto dim: shape) {
          int64_t new_dim = dim;
          _revised_shape.push_back(new_dim);
        }
        _revised_shape[0] = batch_size;
        auto _revisedTensorType =
          RankedTensorType::get(_revised_shape, shaped_type.cast<ShapedType>().getElementType());
        result.setType(_revisedTensorType);
      }

    });
  }

  // funcOp.dump();
  return success();
}

LogicalResult shardingBatchSizeEvenly(func::FuncOp funcOp, MLIRContext *context, int replica_cnt) {
  std::cout << "processing shardingBatchSizeEvenly" << std::endl;
  mlir::Region& region = funcOp.getBody();

  SmallVector<Operation *, 1024> worklist;
  int count = 0;

  region.front().walk([&](Operation *op) {
    worklist.push_back(op);
  });

  // adjust funcOp's block argument0
  auto argument = funcOp.getArgument(0);
  auto shaped_type = argument.getType();
  ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
  llvm::SmallVector<int64_t> revised_shape;
  for (auto dim: shape) {
    int64_t new_dim = dim;
    revised_shape.push_back(new_dim);
  }
  revised_shape[0] = revised_shape[0] / replica_cnt;
  auto revisedTensorType =
    RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
  // argument.setType(revisedTensorType);
  auto tmpop = worklist[0];
  OpBuilder builder(tmpop);
  auto new_argument = builder.create<crt::ConstantOp>(
      tmpop->getLoc(), 
      revisedTensorType);
  region.front().walk([&](Operation* op) {
    auto operands = op->getOperands();
    for (auto operand: operands) {
      if (operand == argument) {
        op->replaceUsesOfWith(operand, new_argument);
      }
    }
  });

  for (auto op: worklist) {
    // auto _moduleOp = llvm::cast<ModuleOp>();
    // handle terminator, add pblock and link pblocks two side to head and tail
    if (isa<crt::ConstantOp>(op)) continue;
    if (isa<crt::AllreduceOp>(op)) continue;
    if (isa<crt::PhantomBlockOp>(op)) {
      auto operand = op->getOperand(0);
      auto shaped_type = operand.getType();
      ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
      // shaped_type.dump();

      llvm::SmallVector<int64_t> revised_shape;
      for (auto dim: shape) {
        int64_t new_dim = dim;
        revised_shape.push_back(new_dim);
      }
      revised_shape[0] = revised_shape[0] / replica_cnt;
      auto revisedTensorType =
        RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
      operand.setType(revisedTensorType);

    }

    // handle result
    auto results = op->getResults();
    for (auto result: results) {
    // auto result = op->getResult(0);
    // {
      auto shaped_type = result.getType();
      ArrayRef<int64_t> shape = llvm::cast<mlir::TensorType>(shaped_type).getShape();
      // shaped_type.dump();

      llvm::SmallVector<int64_t> revised_shape;
      for (auto dim: shape) {
        int64_t new_dim = dim;
        revised_shape.push_back(new_dim);
      }
      revised_shape[0] = revised_shape[0] / replica_cnt;
      auto revisedTensorType =
        RankedTensorType::get(revised_shape, shaped_type.cast<ShapedType>().getElementType());
      result.setType(revisedTensorType);
    }
    // }
    // std::cout << "after ========" << op->getName().getStringRef().str() << std::endl;
    // op->dump();
  }

  return success();
}

// method that pack the entire region of funcOp into a pblock region
LogicalResult packUpEntireRegionWithPBlock(func::FuncOp funcOp, MLIRContext *context) {
  std::cout << "processing packUpEntireRegionWithPBlock" << std::endl;
  mlir::Region& region = funcOp.getBody();

  SmallVector<Operation *, 1024> worklist;
  int count = 0;

  region.front().walk([&](Operation *op) {
    worklist.push_back(op);
  });

  crt::PhantomBlockOp pblock_op;
  crt::YieldOp pterminator;
  mlir::ModuleOp moduleOp = funcOp->getParentOfType<ModuleOp>();

  mlir::Value pterminator_operand;
  mlir::Value new_argument;
  mlir::Value argument;

  std::reverse(worklist.begin(), worklist.end());
  for (auto op: worklist) {
    // auto _moduleOp = llvm::cast<ModuleOp>();
    // handle terminator, add pblock and link pblocks two side to head and tail
    if (llvm::isa<func::ReturnOp>(op)) {
      OpBuilder builder(op);
      argument = funcOp.getArgument(0);
      auto shaped_type = argument.getType();
      new_argument = builder.create<crt::ConstantOp>(
          op->getLoc(), 
          shaped_type);

      pblock_op = builder.create<crt::PhantomBlockOp>(op->getLoc(), op->getOperand(0).getType(), op->getOperand(0));
      
      // let arg0 -> pblock
      pblock_op.getOperation()->replaceUsesOfWith(pblock_op.getOperand(), new_argument);
      mlir::Block& block = pblock_op.getBody().emplaceBlock();

      // insert yield into pblock, let return operand -> yield operand
      pterminator = builder.create<crt::YieldOp>(op->getLoc(), op->getOperand(0));
      pterminator.getOperation()->remove();
      block.push_back(pterminator);
      // pterminator.getOperation()->replaceUsesOfWith(pterminator.getOperand(), op->getOperand(0));

      // create Allreduce
      auto arop = builder.create<crt::AllreduceOp>(op->getLoc(), op->getOperand(0).getType(), pblock_op.getResult());

      // TODO assume return single value
      // from whom -> return
      // let whom -> pblock -> allreduce -> return
      op->replaceUsesOfWith(op->getOperand(0), arop.getResult());
    } else {
      op->remove();
      pblock_op.getBody().front().push_front(op);
      // current all handle together, but should classify by result num
    }
  }

  for (auto op: worklist) {
    auto operands = op->getOperands();
    for (auto operand: operands) {
      if (operand == argument) {
        op->replaceUsesOfWith(operand, new_argument);
      }
    }
  }

  return success();
}

// method that pack the given op into a pblock
template<typename OpType> 
LogicalResult packUpSpecOpWithPBlock(func::FuncOp funcOp, MLIRContext *context) {
  funcOp.walk([&](crt::IdentityOp op) {
      OpBuilder builder(op);
      // add new inserted op, a region op
      auto pblock_op = builder.create<crt::PhantomBlockOp>(op.getLoc(), op.getType(), op.getOperand());
      // clone former op into new one;
      // can we use .clone()
      auto newidop = builder.create<crt::IdentityOp>(op.getLoc(), op.getType(), op.getOperand());

      // unlink new-clone and move into region op first block first position
      newidop.getOperation()->remove();
      Block& block = pblock_op.getBody().emplaceBlock();
      block.push_back(newidop);
      newidop.getOperation()->replaceUsesOfWith(newidop.getOperand(), pblock_op.getOperand());

      // set terminator for pblock_op
      auto _terminator = builder.create<crt::YieldOp>(op.getLoc(), newidop.getResult());
      _terminator.getOperation()->remove();
      block.push_back(_terminator);


      // unlink op's users and link to region op results
      auto nextOps = op.getResult().getUsers();
      for (auto nextOp: nextOps) {
        // cannot link, we may can use terminator to do it
        // ref 1: search OpBuilder builder(op) 
        // ref 2: link to onnx-mlir/docs/lowering.
        // nextOp->replaceUsesOfWith(nextOp->getOperand(0), newidop.getResult());
        nextOp->replaceUsesOfWith(nextOp->getOperand(0), pblock_op.getResult());
      }

      // drop legacy op links and erase it.
      op.getOperation()->dropAllReferences();
      op.getOperation()->dropAllUses();
      op.getOperation()->dropAllDefinedValueUses();
      op.erase();
  });
  return success();
}

// anchor
SmallVector<float> aslaOptimisation(func::FuncOp funcOp, MLIRContext *context) {
  std::cout << "asla Opt Enter" << std::endl;


  setBatchSize(funcOp, context, 64);
  packUpEntireRegionWithPBlock(funcOp, context);
  replicatePBlock(funcOp, context, 2);
  shardingBatchSizeEvenly(funcOp, context, 2);
  // shardingBatchSizeWithGiven(funcOp, context, rep_bs);
  SmallVector<SmallVector<int32_t>> device_set1{{1, 3}, {0, 2, 4}};
  onnx_mlir::CostEstimator cest(device_set1);
  SmallVector<float> wtimes = cest.mpmdSchedule(funcOp, true);

  std::cout << "hengshi => BS-64 =>"
    << "BS(32+32)"
    << "DV(1+3,0+2+4)"
    << "; ideal time = " << wtimes[0]
    << "; legacy time = " << wtimes[1]
    << "; proposed time = " << wtimes[2] << std::endl;

  return wtimes;
}

// entry for rap
struct RaptorAutoParallelPass 
    : public PassWrapper<RaptorAutoParallelPass, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(RaptorAutoParallelPass)
  StringRef getArgument() const override { return "raptor-auto-parallel"; }

  StringRef getDescription() const override {
    return "raptor-auto-parallel";
  }

  void runOnOperation() override {
    func::FuncOp funcOp = getOperation();
    MLIRContext *context = &getContext();

    const char* _outfile = std::getenv("OUT");
    char* _bs_str = std::getenv("BS");
    char* _shard_str = std::getenv("REP");
    char* _dev_set_str = std::getenv("DEVSET");

    std::fstream outfile(_outfile, outfile.out | outfile.app);
    std::time_t t_now = std::time(nullptr);

    outfile << std::asctime(std::localtime(&t_now)) << " => BS-" << std::getenv("BS") << " =>"
      << "REP-" << std::getenv("REP") << " =>"
      << "DEVICESET-" << std::getenv("DEVSET") << " ==> ";

    int32_t global_batch_size = atoi(_bs_str);

    SmallVector<int32_t> rep_bs;
    char* rep_token = strtok(_shard_str, ",");
    while(rep_token != NULL) {
      rep_bs.push_back(atoi(rep_token));
      rep_token = strtok(NULL, ",");
    }

    const char* delim = ":";
    const char* subdelim = ",";
    char* token;
    char* token_end;
    SmallVector<SmallVector<int32_t>> device_set;
    token = strtok_r(_dev_set_str, ":", &token_end);
    while(token != NULL) {
      SmallVector<int32_t> _dev_set;
      char* sub_token_end;
      // std::cout << "out" << token << std::endl;
      char* sub_token = strtok_r(token, ",", &sub_token_end);
      while(sub_token) {
        // std::cout << "in" << sub_token << std::endl;
        _dev_set.push_back(atoi(sub_token));
        sub_token = strtok_r(NULL, ",", &sub_token_end);
      }
      device_set.push_back(_dev_set);
      token = strtok_r(NULL, ":", &token_end);
    }

    onnx_mlir::CostEstimator cest(device_set);

    // setBatchSize(funcOp, context, global_batch_size);
    packUpEntireRegionWithPBlock(funcOp, context);
    // replicatePBlock(funcOp, context, rep_bs.size());
    // shardingBatchSizeEvenly(funcOp, context, 2);
    // shardingBatchSizeWithGiven(funcOp, context, rep_bs);
    // SmallVector<SmallVector<int32_t>> device_set{{1, 3}, {0, 2, 4}};
    //
    // verifyCostModel(funcOp, context);
    SmallVector<float> wall_times = cest.mpmdSchedule(funcOp, true);
    outfile << "; ideal time = " << wall_times[0] << " (us)";
    outfile << "; legacy-time = " << wall_times[1] << " (us)";
    outfile << "; proposed-time = " << wall_times[2] << " (us)" << std::endl;

    // if (const char* env_p = std::getenv("RAP")) {
    //   if (std::strcmp(env_p, "test-pack-one") == 0) {
    //     packUpSpecOpWithPBlock<crt::IdentityOp>(funcOp, context);
    //   } else if (std::strcmp(env_p, "dp4") == 0) {
    //     packUpEntireRegionWithPBlock(funcOp, context);
    //     replicatePBlock(funcOp, context, 4);
    //   } else if (std::strcmp(env_p, "estimate") == 0) {
    //     // packUpEntireRegionWithPBlock(funcOp, context);
    //     estimateCost(funcOp, context);
    //   } else if (std::strcmp(env_p, "single-dev") == 0) {
    //     // packUpEntireRegionWithPBlock(funcOp, context);
    //     singleDev(funcOp, context);
    //   } else if (std::strcmp(env_p, "verify") == 0) {
    //     // packUpEntireRegionWithPBlock(funcOp, context);
    //     verifyCostModel(funcOp, context);
    //   } else if (std::strcmp(env_p, "hlest") == 0) {
    //     // packUpEntireRegionWithPBlock(funcOp, context);
    //     // hlestListScheduling(funcOp, context);
    //     assert(1);
    //   } else if (std::strcmp(env_p, "data-parallel-evenly") == 0) {
    //     packUpEntireRegionWithPBlock(funcOp, context);
    //     replicatePBlock(funcOp, context, 4);
    //     shardingBatchSizeEvenly(funcOp, context, 4);
    //     useAllGPUs(funcOp, context);
    //     // singleDev(funcOp, context);
    //   } else if (std::strcmp(env_p, "data-parallel-with-arbitrary-bs") == 0) {
    //     packUpEntireRegionWithPBlock(funcOp, context);
    //     replicatePBlock(funcOp, context, 4);
    //     SmallVector<int64_t> rep_bs{320, 320, 192, 192};
    //     shardingBatchSizeWithGiven(funcOp, context, rep_bs);
    //     useAllGPUs(funcOp, context);
    //     // singleDev(funcOp, context);
    //   } else if (std::strcmp(env_p, "mpmd") == 0) {
    //     packUpEntireRegionWithPBlock(funcOp, context);
    //     SmallVector<SmallVector<int32_t>> to_devs{{0, 1, 2, 3, 4}};
    //     mpmdSchedule(funcOp, context, to_devs, true);
    //   } else if (std::strcmp(env_p, "mpmd-ideal") == 0) {
    //     packUpEntireRegionWithPBlock(funcOp, context);
    //     SmallVector<SmallVector<int32_t>> to_devs{{0, 1, 2, 3, 4}};
    //     mpmdSchedule(funcOp, context, to_devs, false);
    //   } else if (std::strcmp(env_p, "asla") == 0) {
    //     // arg from scripts
    //     aslaOptimisation(funcOp, context);
    //     // write to file
    //   } else {
    //     std::cout << env_p << "\n";
    //     std::cout << "no matching mode for RAP envs";
    //   }
    // } else {
    //   std::cout << "please set RAP environment";
    // }
  }
};

} // namespace

// TODO: integrate with other passes if needed.
std::unique_ptr<Pass> onnx_mlir::createRaptorAutoParallelPass() {
  return std::make_unique<RaptorAutoParallelPass>();
}
