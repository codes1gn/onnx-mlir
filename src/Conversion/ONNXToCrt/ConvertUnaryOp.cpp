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

using namespace mlir;

namespace onnx_mlir {

namespace {

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
    rewriter.replaceOpWithNewOp<TgtOp>(op, op->getOperand(0).getType(), op->getOperand(0));
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
    rewriter.replaceOpWithNewOp<TgtOp>(op, op->getOperand(0).getType(), op->getOperand(0), op->getOperand(1));
    return success();
  }
};

} // namespace

void populateLoweringONNXToCrtPattern(ConversionTarget &target,
    RewritePatternSet &patterns, TypeConverter &typeConverter,
    MLIRContext *ctx) {
  // ANCHOR UNARY
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXReluOp, crt::ReluOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXExpOp, crt::ExpOp>>(typeConverter, ctx);
  patterns.add<ConvertUnaryOpOnnxToCrt<ONNXAbsOp, crt::AbsOp>>(typeConverter, ctx);
  //
  // ANCHOR BINARY
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXAddOp, crt::AddOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXSubOp, crt::SubOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXMulOp, crt::MulOp>>(typeConverter, ctx);
  patterns.add<ConvertBinaryOpOnnxToCrt<ONNXDivOp, crt::DivOp>>(typeConverter, ctx);
}

} // namespace onnx_mlir
