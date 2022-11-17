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
} // namespace

void populateLoweringONNXToCrtPattern(ConversionTarget &target,
    RewritePatternSet &patterns, TypeConverter &typeConverter,
    MLIRContext *ctx) {
  // ANCHOR ZENARY
  patterns.add<ConvertZenaryOpOnnxToCrt<ONNXConstantOp, crt::ConstantOp>>(typeConverter, ctx);

  // ANCHOR UNARY
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXReluOp, crt::ReluOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXExpOp, crt::ExpOp>>(typeConverter, ctx);
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
  // patterns.add<ConvertBinaryOpOnnxToCrt<ONNXUnsqueezeOp, crt::UnsqueezeOp>>(typeConverter, ctx);
  // ANCHOR why this work, ConversionPattern > OpConversionPattern
  patterns.add<ONNXReshapeOpLoweringToCrt>(ctx);
  patterns.add<ONNXGatherOpLoweringToCrt>(ctx);
  // patterns.add<ConvertReshape>(typeConverter, ctx);
  // patterns.add<ConvertBinaryOpOnnxToCrt<ONNXReshapeOp, crt::ReshapeOp>>(typeConverter, ctx);

  // ANCHOR TENARY
  patterns.add<ConvertTenaryOpOnnxToCrt<ONNXConvOp, crt::ConvaddOp>>(typeConverter, ctx);
  patterns.add<ConvertTenaryOpOnnxToCrt<ONNXGemmOp, crt::GemmOp>>(typeConverter, ctx);
}

} // namespace onnx_mlir
