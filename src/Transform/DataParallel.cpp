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

// class UpdateIdentityOp : public OpRewritePattern<crt::IdentityOp> {
// public:
//   using OpRewritePattern<crt::IdentityOp>::OpRewritePattern;
//
//   LogicalResult matchAndRewrite(
//       crt::IdentityOp op, PatternRewriter &rewriter) const {
//
//
//
// class UpdateIdentityOp : public RewritePattern {
// public:
//   UpdateIdentityOp(MLIRContext *ctx) : RewritePattern(MatchAnyOpTypeTag(), 1, ctx) {}
//
//   LogicalResult matchAndRewrite(
//       Operation *op, PatternRewriter &rewriter) const {
//
//
//
    // bad case 2:
    // updateRootInPlace, this method invokes in matchAndRewrite
    // but matchAndRewrite will erase op, so we cannot only update
    //
void updateIdentity(func::FuncOp funcOp, PatternRewriter &rewriter) {
  // funcOp.walk([&](crt::IdentityOp op) {
  //     op.dump();
  //     // auto nextOps = op.getResult().getUsers();
  //     // for (auto nextOp: nextOps) {
  //     //   printf("dfdf");
  //     //   nextOp->replaceUsesOfWith(nextOp->getOperand(0), op.getOperand());
  //     //   // nextOp->dropAllReferences();
  //     //   // nextOp->dropAllUses();
  //     //   // nextOp->setOperand(0, op.getOperand());
  //     // }
  //     // op.getOperation()->dropAllReferences();
  //     // op.getOperation()->dropAllUses();
  //     // op.getOperation()->dropAllDefinedValueUses();
  //     // rewriter.eraseOp(op);
  // });
  return;
}
class UpdateIdentityOp : public OpRewritePattern<func::FuncOp> {
public:
  using OpRewritePattern<func::FuncOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(
      func::FuncOp op, PatternRewriter &rewriter) const {
    // auto newOp = op.clone();
    // op.dump();
    // newOp.dump();
    // Location uloc = UnknownLoc::get(rewriter.getContext());
    // auto newid = rewriter.create<crt::IdentityOp>(uloc, op.getType(), op.getOperand());
    // Operation *raw_op = newid.getOperation();
    // Block *newblock = raw_op->getBlock();
    // raw_op->remove();
    // newblock->dump();
    //
    // auto pblock_op = rewriter.create<crt::PhantomBlockOp>(op.getLoc(), op.getType(), op.getOperand());
    // pblock_op.dump();
    // Region& region = pblock_op.getBody();
    // // region.dump();
    // Block& block = region.emplaceBlock();
    // block.push_back(raw_op);
    // block.dump();
    // pblock_op.dump();
    // // region.dump();
    // // raw_op->getResult no uses
    // // Value from = raw_op->getOperand(0);
    // // Value to = pblock_op.getOperand();
    // // raw_op->replaceUsesOfWith(from, to);
    // pblock_op.dump();
    // raw_op->setOperand(0, pblock_op.getOperand());
    //
    // auto nextOps = op.getOperation()->getUsers();
    // op->getParentOp()->dump();
    // for (auto nextOp: nextOps) {
    //   nextOp->dump();
    //   // nextOp->setOperand(0, raw_op->getResult(0));
    // }
    // op->getParentOp()->dump();
    



    // block.getParentOp()->dump();
    // raw_op->moveBefore(block, block.begin());
    // printf("first %p", raw_op->getBlock());
    // printf("second %p", &block);
    // raw_op->moveAfter(&block, block.begin());
    //
    // newblock->moveBefore(&block);
    // auto newop = newid.cast<mlir::Operation>();
    // newblock.push_back(&newop);
    // // newregion.getBody().push_back(&newblock);
    // for (Block &block: newregion.getBody()) {
    //   printf("hehe");
    //   block.dump();
    // }
    //
    // op.getOperation()->dropAllReferences();
    // op.getOperation()->dropAllUses();
    // op.getOperation()->dropAllDefinedValueUses();
    // rewriter.eraseOp(op);
    
    // bad case 2:
    // updateRootInPlace, this method invokes in matchAndRewrite
    // but matchAndRewrite will erase op, so we cannot only update
    //
    // rewriter.updateRootInPlace(op, [&]{});
    // rewriter.updateRootInPlace(op, [&]{updateIdentity(op, rewriter);});
    //

    return success();

  }
};

struct DataParallelVersionTwoPass
    : public PassWrapper<DataParallelVersionTwoPass, OperationPass<func::FuncOp>> {
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(DataParallelVersionTwoPass)
  StringRef getArgument() const override { return "data-parallel-v2"; }

  StringRef getDescription() const override {
    return "dataparallel.";
  }

  void runOnOperation() override {
    func::FuncOp funcOp = getOperation();
    MLIRContext *context = &getContext();

    // good case: find this way to do
    funcOp.walk([&](crt::IdentityOp op) {
        OpBuilder builder(op);
        auto pblock_op = builder.create<crt::PhantomBlockOp>(op.getLoc(), op.getType(), op.getOperand());
        auto newidop = builder.create<crt::IdentityOp>(op.getLoc(), op.getType(), op.getOperand());
        newidop.getOperation()->remove();
        Block& block = pblock_op.getBody().emplaceBlock();
        block.push_back(newidop);
        auto nextOps = op.getResult().getUsers();
        for (auto nextOp: nextOps) {
          // nextOp->replaceUsesOfWith(nextOp->getOperand(0), op.getOperand());
          // note: replaceUsesOfWith cannot change result ssa-id
          // newidop->dump();
          // newidop->replaceUsesOfWith(newidop->getResult(0), pblock_op.getResult());
          // newidop->dump();
          // nextOp->replaceUsesOfWith(nextOp->getOperand(0), pblock_op.getResult());

          // cannot link, we may can use terminator to do it
          // ref 1: search OpBuilder builder(op) 
          // ref 2: link to onnx-mlir/docs/lowering.
          nextOp->replaceUsesOfWith(nextOp->getOperand(0), newidop.getResult());




          // bad case, ??? segfault
          // nextOp->dropAllReferences();
          // nextOp->setOperand(0, op.getOperand());
        }
        op.getOperation()->dropAllReferences();
        op.getOperation()->dropAllUses();
        op.getOperation()->dropAllDefinedValueUses();
        op.erase();
    });

    // bad case: 
    // 1. applyOpPatternsAndFold and applyPatternsAndFoldGreedily folds op, must create new
    //
    // RewritePatternSet patterns(context);
    // patterns.insert<UpdateIdentityOp>(context);
    //
    // // use BotUp traversal from return to head
    // GreedyRewriteConfig config;
    // config.maxIterations = 1;
    //
    // if (failed(applyOpPatternsAndFold(funcOp, std::move(patterns))))
    //   signalPassFailure();
  }
};

/*!
 *  Function pass that emits the shape of a MemRef.
 */

class DummyPattern : public RewritePattern {
public:

  DummyPattern(MLIRContext *ctx) : RewritePattern(MatchAnyOpTypeTag(), 1, ctx) {}

  LogicalResult matchAndRewrite(
      Operation *op, PatternRewriter &rewriter) const override {
    op->dump(); 
    return success();
  }
};
class DataParallelPass
    : public PassWrapper<DataParallelPass, OperationPass<func::FuncOp>> {
public:
  MLIR_DEFINE_EXPLICIT_INTERNAL_INLINE_TYPE_ID(DataParallelPass)

  StringRef getArgument() const override { return "data-parallel"; }

  StringRef getDescription() const override {
    return "dataparallel.";
  }

  void runOnOperation() override {
    auto function = getOperation();

    RewritePatternSet patterns(&getContext());
    patterns.insert<DummyPattern>(&getContext());

    GreedyRewriteConfig config;
    config.maxIterations = 1;

    if (failed(applyPatternsAndFoldGreedily(function, std::move(patterns))))
      signalPassFailure();
  }
};
} // namespace

// TODO: integrate with other passes if needed.
std::unique_ptr<Pass> onnx_mlir::createDataParallelPass() {
  return std::make_unique<DataParallelVersionTwoPass>();
}
