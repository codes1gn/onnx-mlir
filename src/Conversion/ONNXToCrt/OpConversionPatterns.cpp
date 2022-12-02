/*
 * SPDX-License-Identifier: Apache-2.0
 */

//===---------------- Elementwise.cpp - Elementwise Op --------------------===//
//
// Copyright (c) 2022 Advanced Micro Devices, Inc.
//
// =============================================================================
//
// This file lowers ONNX element-wise operators to Crt dialect.
//
//===----------------------------------------------------------------------===//

#include "mlir/IR/TypeUtilities.h"
#include "src/Conversion/ONNXToCrt/ONNXToCrtCommon.hpp"
#include <iostream>

using namespace mlir;

namespace onnx_mlir {

namespace {

// Element-wise zenary ops lowering to Crt dialect.
//===----------------------------------------------------------------------===//
template <typename SrcOp, typename TgtOp>
class ConvertZenaryOpOnnxToCrt
    : public OpConversionPattern<SrcOp> {
public:
  using OpConversionPattern<SrcOp>::OpConversionPattern;
  using OpAdaptor = typename SrcOp::Adaptor;
  LogicalResult matchAndRewrite(
      SrcOp op,
      OpAdaptor adaptor,
      ConversionPatternRewriter &rewriter
  ) const override {
    // rewriter.replaceOpWithNewOp<TgtOp>(op, op.getType(), adaptor.X());
    rewriter.replaceOpWithNewOp<TgtOp>(op, op.getType());
    return success();
  }
};
// Element-wise unary ops lowering to Crt dialect.
//===----------------------------------------------------------------------===//
template <typename SrcOp, typename TgtOp>
class ConvertUnaryOpOnnxToCrt
    : public OpConversionPattern<SrcOp> {
public:
  using OpConversionPattern<SrcOp>::OpConversionPattern;
  using OpAdaptor = typename SrcOp::Adaptor;
  LogicalResult matchAndRewrite(
      SrcOp op,
      OpAdaptor adaptor,
      ConversionPatternRewriter &rewriter
  ) const override {
    // rewriter.replaceOpWithNewOp<TgtOp>(op, op.getType(), adaptor.X());
    rewriter.replaceOpWithNewOp<TgtOp>(op, op.getType(), op->getOperand(0));
    return success();
  }
};

// Element-wise binary ops lowering to Crt dialect.
//===----------------------------------------------------------------------===//
template <typename SrcOp, typename TgtOp>
class ConvertBinaryOpOnnxToCrt
    : public OpConversionPattern<SrcOp> {
public:
  using OpConversionPattern<SrcOp>::OpConversionPattern;
  using OpAdaptor = typename SrcOp::Adaptor;
  LogicalResult matchAndRewrite(
      SrcOp op,
      OpAdaptor adaptor,
      ConversionPatternRewriter &rewriter
  ) const override {
    op.dump();
    rewriter.replaceOpWithNewOp<TgtOp>(op, op.getType(), op->getOperand(0), op->getOperand(1));
    return success();
  }
};

// Element-wise tenary ops lowering to Crt dialect.
//===----------------------------------------------------------------------===//
template <typename SrcOp, typename TgtOp>
class ConvertTenaryOpOnnxToCrt
    : public OpConversionPattern<SrcOp> {
public:
  using OpConversionPattern<SrcOp>::OpConversionPattern;
  using OpAdaptor = typename SrcOp::Adaptor;
  LogicalResult matchAndRewrite(
      SrcOp op,
      OpAdaptor adaptor,
      ConversionPatternRewriter &rewriter
  ) const override {
    rewriter.replaceOpWithNewOp<TgtOp>(op, op.getType(), op->getOperand(0), op->getOperand(1), op->getOperand(2));
    return success();
  }
};

class ConvertReshape
    : public OpConversionPattern<ONNXReshapeOp> {
public:
  using OpConversionPattern<ONNXReshapeOp>::OpConversionPattern;
  using OpAdaptor = typename ONNXReshapeOp::Adaptor;
  LogicalResult matchAndRewrite(
      ONNXReshapeOp op,
      OpAdaptor adaptor,
      ConversionPatternRewriter &rewriter
  ) const override {
    op.dump();
    rewriter.replaceOpWithNewOp<crt::ReshapeOp>(op, op.getType(), op->getOperand(0), op->getOperand(1));
    return success();
  }
};

struct ONNXCastOpLoweringToCrt : public ConversionPattern {
  ONNXCastOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXCastOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXCastOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    Location loc = op->getLoc();
    Value data = operandAdaptor.input();
    Type outputType = op->getResult(0).getType();
    Value result =
        rewriter.create<crt::CastOp>(loc, outputType, data);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXTanhOpLoweringToCrt : public ConversionPattern {
  ONNXTanhOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXCastOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXCastOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    Location loc = op->getLoc();
    Value data = operandAdaptor.input();
    Type outputType = op->getResult(0).getType();
    Value result =
        rewriter.create<crt::CastOp>(loc, outputType, data);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXReshapeOpLoweringToCrt : public ConversionPattern {
  ONNXReshapeOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXReshapeOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXReshapeOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    Location loc = op->getLoc();
    Value data = operandAdaptor.data();
    Value shape = operandAdaptor.shape();
    Type outputType = *op->result_type_begin();
    Value result =
        rewriter.create<crt::ReshapeOp>(loc, outputType, data, shape);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXSplitOpLoweringToCrt : public ConversionPattern {
  ONNXSplitOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXSplitOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXSplitOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    Location loc = op->getLoc();
    Value data = operandAdaptor.input();
    Value shape = operandAdaptor.split();
    TypeRange outputType = op->getResultTypes();
    auto result =
        rewriter.create<crt::SplitOp>(loc, outputType, data, shape).getResults();
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXDimOpLoweringToCrt : public ConversionPattern {
  ONNXDimOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXDimOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXDimOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    Location loc = op->getLoc();
    Value data = operandAdaptor.data();
    Type outputType = op->getResult(0).getType();
    Value result =
        rewriter.create<crt::DimOp>(loc, outputType, data);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXSqueezeOpLoweringToCrt : public ConversionPattern {
  ONNXSqueezeOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXSqueezeOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXSqueezeOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    op->dump();
    Location loc = op->getLoc();
    Value data = operandAdaptor.data();
    Value axes = operandAdaptor.axes();
    Type outputType = *op->result_type_begin();
    Value result =
        rewriter.create<crt::SqueezeOp>(loc, outputType, data, axes);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXUnsqueezeOpLoweringToCrt : public ConversionPattern {
  ONNXUnsqueezeOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXUnsqueezeOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXUnsqueezeOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    op->dump();
    Location loc = op->getLoc();
    Value data = operandAdaptor.data();
    Value axes = operandAdaptor.axes();
    Type outputType = *op->result_type_begin();
    Value result =
        rewriter.create<crt::UnsqueezeOp>(loc, outputType, data, axes);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXGatherOpLoweringToCrt : public ConversionPattern {
  ONNXGatherOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXGatherOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    ONNXGatherOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    op->dump();
    Location loc = op->getLoc();
    Value data = operandAdaptor.data();
    Value indices = operandAdaptor.indices();
    Type outputType = *op->result_type_begin();
    Value result =
        rewriter.create<crt::GatherOp>(loc, outputType, data, indices);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXConcatOpLoweringToCrt : public ConversionPattern {
  ONNXConcatOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXConcatOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    // ONNXConcatOpAdaptor operandAdaptor(operands, op->getAttrDictionary());
    op->dump();
    Location loc = op->getLoc();
    ONNXConcatOpAdaptor operandAdaptor(operands);
    ONNXConcatOp concatOp = llvm::cast<ONNXConcatOp>(op);

    assert(op->getNumResults() == 1 && "ONNXConcatOp shoule have 1 result");

    ValueRange inputs = operandAdaptor.inputs();
    Value result = rewriter.create<crt::ConcatOp>(
        loc, op->getResultTypes(), inputs);
    rewriter.replaceOp(op, result);
    return success();
  }
};

struct ONNXExpandOpLoweringToCrt : public ConversionPattern {
  ONNXExpandOpLoweringToCrt(MLIRContext *ctx)
      : ConversionPattern(mlir::ONNXExpandOp::getOperationName(), 1, ctx) {}

  LogicalResult matchAndRewrite(Operation *op, ArrayRef<Value> operands,
      ConversionPatternRewriter &rewriter) const final {
    op->dump();
    ONNXExpandOpAdaptor operandAdaptor(operands);
    Location loc = op->getLoc();
    Value inputs = operandAdaptor.input();
    Value shape = operandAdaptor.shape();
    Value result = rewriter.create<crt::ExpandOp>(
        loc, op->getResultTypes(), inputs, shape);
    rewriter.replaceOp(op, result);
    return success();
  }
};


} // namespace

void populateLoweringONNXToCrtPattern(ConversionTarget &target,
    RewritePatternSet &patterns, TypeConverter &typeConverter,
    MLIRContext *ctx) {
  // ANCHOR ZENARY
  patterns.add<ConvertZenaryOpOnnxToCrt<ONNXConstantOp, crt::ConstantOp>>(typeConverter, ctx);

  // ANCHOR UNARY
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXReluOp, crt::ReluOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXExpOp, crt::ExpOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXPowOp, crt::PowOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXSqrtOp, crt::SqrtOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXErfOp, crt::ErfOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXTanhOp, crt::TanhOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXTransposeOp, crt::TransposeOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXDimOp, crt::DimOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXAbsOp, crt::AbsOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXFlattenOp, crt::FlattenOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXMaxPoolSingleOutOp, crt::MaxpoolOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXReduceMeanOp, crt::ReducemeanOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXSoftmaxOp, crt::SoftmaxOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXAveragePoolOp, crt::AvgpoolOp>>(typeConverter, ctx);
  
  // ANCHOR BINARY
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXAddOp, crt::AddOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXSubOp, crt::SubOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXMulOp, crt::MulOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXDivOp, crt::DivOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXMatMulOp, crt::MatmulOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXGatherOp, crt::GatherOp>>(typeConverter, ctx);
  // patterns.add<ConvertBinaryOpOnnxToCrt<ONNXExpandOp, crt::ExpandOp>>(typeConverter, ctx);
  // patterns.add<ConvertBinaryOpOnnxToCrt<ONNXSqueezeOp, crt::SqueezeOp>>(typeConverter, ctx);
  // ANCHOR why this work, ConversionPattern > OpConversionPattern
  patterns.add<ONNXSplitOpLoweringToCrt>(ctx);
  patterns.add<ONNXReshapeOpLoweringToCrt>(ctx);
  patterns.add<ONNXCastOpLoweringToCrt>(ctx);
  patterns.add<ONNXTanhOpLoweringToCrt>(ctx);
  patterns.add<ONNXDimOpLoweringToCrt>(ctx);
  patterns.add<ONNXGatherOpLoweringToCrt>(ctx);
  patterns.add<ONNXUnsqueezeOpLoweringToCrt>(ctx);
  patterns.add<ONNXSqueezeOpLoweringToCrt>(ctx);
  patterns.add<ONNXConcatOpLoweringToCrt>(ctx);
  patterns.add<ONNXExpandOpLoweringToCrt>(ctx);
  // patterns.add<ConvertReshape>(typeConverter, ctx);
  // patterns.add<ConvertBinaryOpOnnxToCrt<ONNXReshapeOp, crt::ReshapeOp>>(typeConverter, ctx);

  // ANCHOR TENARY
  patterns.add<ConvertTenaryOpOnnxToCrt<ONNXConvOp, crt::ConvaddOp>>(typeConverter, ctx);
  patterns.add<ConvertTenaryOpOnnxToCrt<ONNXGemmOp, crt::GemmOp>>(typeConverter, ctx);
}

} // namespace onnx_mlir
