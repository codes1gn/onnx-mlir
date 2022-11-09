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

// method that pack the entire region of funcOp into a pblock region
LogicalResult packUpEntireRegionWithPBlock(func::FuncOp funcOp, MLIRContext *context) {
  std::cout << "yes" << std::endl;
  mlir::Region& region = funcOp.getBody();

  SmallVector<Operation *, 16> worklist;
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
      std::cout << "return " << count++ << std::endl;
      op->dump();
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

      // TODO assume return single value
      // let pblock -> return
      op->replaceUsesOfWith(op->getOperand(0), pblock_op.getResult());
    } else {
      op->remove();
      pblock_op.getBody().front().push_front(op);
      // current all handle together, but should classify by result num
    }
  }
  // pterminator.getOperation()->replaceUsesOfWith(pterminator.getOperand(), op->getResult(0));

  // funcOp.walk([&](crt::IdentityOp op) {
  //     OpBuilder builder(op);
  //     // add new inserted op, a region op
  //     auto pblock_op = builder.create<crt::PhantomBlockOp>(op.getLoc(), op.getType(), op.getOperand());
  //     // clone former op into new one;
  //     // can we use .clone()
  //     auto newidop = builder.create<crt::IdentityOp>(op.getLoc(), op.getType(), op.getOperand());
  //
  //     // unlink new-clone and move into region op first block first position
  //     newidop.getOperation()->remove();
  //     Block& block = pblock_op.getBody().emplaceBlock();
  //     block.push_back(newidop);
  //     newidop.getOperation()->replaceUsesOfWith(newidop.getOperand(), pblock_op.getOperand());
  //
  //     // set terminator for pblock_op
  //     auto _terminator = builder.create<crt::YieldOp>(op.getLoc(), newidop.getResult());
  //     _terminator.getOperation()->remove();
  //     block.push_back(_terminator);
  //
  //
  //     // unlink op's users and link to region op results
  //     auto nextOps = op.getResult().getUsers();
  //     for (auto nextOp: nextOps) {
  //       // cannot link, we may can use terminator to do it
  //       // ref 1: search OpBuilder builder(op) 
  //       // ref 2: link to onnx-mlir/docs/lowering.
  //       // nextOp->replaceUsesOfWith(nextOp->getOperand(0), newidop.getResult());
  //       nextOp->replaceUsesOfWith(nextOp->getOperand(0), pblock_op.getResult());
  //     }
  //
  //     // drop legacy op links and erase it.
  //     op.getOperation()->dropAllReferences();
  //     op.getOperation()->dropAllUses();
  //     op.getOperation()->dropAllDefinedValueUses();
  //     op.erase();
  // });
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
      } else if (std::strcmp(env_p, "test-pack-all") == 0) {
        packUpEntireRegionWithPBlock(funcOp, context);
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
