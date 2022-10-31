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

// ANCHOR negate not defined yet
// template <>
// struct CrtDialectOp<ONNXNegOp> {
//   using Op = crt::NegateOp;
// };

namespace {

// Element-wise unary ops lowering to Crt dialect.
//===----------------------------------------------------------------------===//
// template <typename ElementwiseUnaryOp>
// class ONNXElementwiseUnaryOpLoweringToCrt
//     : public OpConversionPattern<ElementwiseUnaryOp> {
// public:
//   using OpConversionPattern<ElementwiseUnaryOp>::OpConversionPattern;
//   using OpAdaptor = typename ElementwiseUnaryOp::Adaptor;
//   LogicalResult matchAndRewrite(ElementwiseUnaryOp op, OpAdaptor adaptor,
//       ConversionPatternRewriter &rewriter) const override {
//     rewriter.replaceOpWithNewOp<CrtOp<ElementwiseUnaryOp>>(
//         op, op.getType(), adaptor.X());
//     return success();
//   }
// };
//
// class ONNXFloorOpLoweringToCrt : public OpConversionPattern<ONNXFloorOp> {
// public:
//   using OpConversionPattern<ONNXFloorOp>::OpConversionPattern;
//   using OpAdaptor = typename ONNXFloorOp::Adaptor;
//   LogicalResult matchAndRewrite(ONNXFloorOp op, OpAdaptor adaptor,
//       ConversionPatternRewriter &rewriter) const override {
//
//     auto scalarType = getElementTypeOrSelf(adaptor.X());
//     if (!isCrtFloat(scalarType))
//       return rewriter.notifyMatchFailure(
//           op, "`crt.floor` only supports float types");
//
//     rewriter.replaceOpWithNewOp<crt::FloorOp>(op, op.getType(), adaptor.X());
//     return success();
//   }
// };
//
class ReluOp2Crt : public OpConversionPattern<ONNXReluOp> {
public:
  using OpConversionPattern::OpConversionPattern;
  LogicalResult matchAndRewrite(ONNXReluOp op, OpAdaptor adaptor,
      ConversionPatternRewriter &rewriter) const override {

    rewriter.replaceOpWithNewOp<IdentityOp>(op, op->getOperand(0).getType(), op->getOperand(0));
    return success();
  }
};

} // namespace

void populateLoweringONNXUnaryOpToCrtPattern(ConversionTarget &target,
    RewritePatternSet &patterns, TypeConverter &typeConverter,
    MLIRContext *ctx) {
  // patterns.add<ONNXElementwiseUnaryOpLoweringToCrt<ONNXNegOp>>(typeConverter, ctx);,
  patterns.add<ReluOp2Crt>(typeConverter, ctx);
  // patterns.add<ONNXFloorOpLoweringToCrt>(typeConverter, ctx);,
}

} // namespace onnx_mlir
