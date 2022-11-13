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
  } else if (isa<crt::ExpOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::ExpOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperand(0)
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);
  } else if (isa<crt::YieldOp>(op)) {
    OpBuilder builder(op);
    cloned_op = builder.create<crt::YieldOp>(
        op->getLoc(), 
        op->getResultTypes(), 
        op->getOperand(0)
    ).getOperation();
    this->addMapping(op, cloned_op);
    this->fixMapping(cloned_op);
  } else {
    op->dump();
    assert(0);
  }
  return cloned_op;
}

inline void RapHelper::addMapping(Operation* from, Operation* to) {
  if (isa<crt::PhantomBlockOp>(from) && isa<crt::PhantomBlockOp>(to)) {
    this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
    this->valueMapping.insert(std::make_pair(from->getOperand(0), to->getOperand(0)));
  } else if (isa<crt::ExpOp>(from) && isa<crt::ExpOp>(to)) {
    this->valueMapping.insert(std::make_pair(from->getResult(0), to->getResult(0)));
  } else if (isa<crt::YieldOp>(from) && isa<crt::YieldOp>(to)) {
    assert(1);
  } else {
    assert(0);
  }
}

inline void RapHelper::fixMapping(Operation* op) {
  if (isa<crt::ExpOp>(op)) {
    auto new_operand = valueMapping.lookup(op->getOperand(0));
    op->replaceUsesOfWith(op->getOperand(0), new_operand);
  } else if (isa<crt::YieldOp>(op)) {
    auto new_operand = valueMapping.lookup(op->getOperand(0));
    op->replaceUsesOfWith(op->getOperand(0), new_operand);
  } else if (isa<crt::PhantomBlockOp>(op)) {
    auto new_operand = valueMapping.lookup(op->getOperand(0));
    op->replaceUsesOfWith(op->getOperand(0), new_operand);
  } else {
    assert(0);
  }
}

LogicalResult estimateCost(func::FuncOp funcOp, MLIRContext *context) {
  std::cout << "processing estimateCost" << std::endl;

  onnx_mlir::CostEstimator cest;
  assert(cest.verify().succeeded());

  cest.estimate_function(funcOp);

  return success();
}

LogicalResult replicatePBlock(func::FuncOp funcOp, MLIRContext *context, int rep_cnt) {
  std::cout << "processing replicatePBlock, with replicates count = " << rep_cnt << std::endl;

  SmallVector<Operation *, 1024> worklist;
  // replicate once
  funcOp.walk([&](crt::PhantomBlockOp op) {
    for (int rep_idx = 1; rep_idx < rep_cnt; rep_idx++) {
      std::cout << rep_idx << std::endl;

      worklist.clear();
      RapHelper chelper;

      // replicate pblock itself and add to func-region
      OpBuilder builder(op);
      auto clonedPB = builder.create<crt::PhantomBlockOp>(op.getLoc(), op.getType(), op.getOperand());
      chelper.addMapping(op.getOperation(), clonedPB.getOperation());
      clonedPB.getBody().emplaceBlock();
      clonedPB.getOperation()->replaceUsesOfWith(clonedPB.getOperand(), funcOp.getArgument(0));

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
        _op->dump();
        auto new_op = chelper.replicateOpWithRemapping(_op);
        new_op->remove();
        clonedPB.getBody().front().push_back(new_op);
      }
    }
  });

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

  std::reverse(worklist.begin(), worklist.end());
  for (auto op: worklist) {
    // auto _moduleOp = llvm::cast<ModuleOp>();
    // handle terminator, add pblock and link pblocks two side to head and tail
    if (llvm::isa<func::ReturnOp>(op)) {
      OpBuilder builder(op);
      pblock_op = builder.create<crt::PhantomBlockOp>(op->getLoc(), op->getOperand(0).getType(), op->getOperand(0));

      // let arg0 -> pblock
      pblock_op.getOperation()->replaceUsesOfWith(pblock_op.getOperand(), funcOp.getArgument(0));
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

    if (const char* env_p = std::getenv("RAP")) {
      if (std::strcmp(env_p, "test-pack-one") == 0) {
        packUpSpecOpWithPBlock<crt::IdentityOp>(funcOp, context);
      } else if (std::strcmp(env_p, "dp4") == 0) {
        packUpEntireRegionWithPBlock(funcOp, context);
        replicatePBlock(funcOp, context, 4);
      } else if (std::strcmp(env_p, "costest") == 0) {
        packUpEntireRegionWithPBlock(funcOp, context);
        estimateCost(funcOp, context);
      }
      else {
        std::cout << env_p << "\n";
        std::cout << "no matching mode for RAP envs";
      }
    } else {
      std::cout << "please set RAP environment";
    }
  }
};

} // namespace

// TODO: integrate with other passes if needed.
std::unique_ptr<Pass> onnx_mlir::createRaptorAutoParallelPass() {
  return std::make_unique<RaptorAutoParallelPass>();
}
