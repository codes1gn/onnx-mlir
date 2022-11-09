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

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

#include "src/Dialect/Crt/CrtDialect.hpp"
#include "src/Dialect/Crt/CrtOps.hpp"
#include "src/Pass/Passes.hpp"

using namespace mlir;
using namespace onnx_mlir;

namespace {

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

    packUpSpecOpWithPBlock<crt::IdentityOp>(funcOp, context);
  }
};

} // namespace

// TODO: integrate with other passes if needed.
std::unique_ptr<Pass> onnx_mlir::createRaptorAutoParallelPass() {
  return std::make_unique<RaptorAutoParallelPass>();
}
