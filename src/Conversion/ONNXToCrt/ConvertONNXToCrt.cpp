/*
 * SPDX-License-Identifier: Apache-2.0
 */

//====------ ConvertONNXToCrt.cpp - ONNX dialects to Crt lowering -------===//
//
// Copyright (c) 2022 Arm Limited.
//
// =============================================================================
//
// This file implements the lowering of frontend operations to the Crt dialect.
//
//===----------------------------------------------------------------------===//

#include "src/Conversion/ONNXToCrt/ONNXToCrtCommon.hpp"

using namespace mlir;

namespace onnx_mlir {

void populateONNXToCrtConversionPattern(ConversionTarget &target,
    RewritePatternSet &patterns, TypeConverter &typeConverter,
    MLIRContext *ctx) {
  populateLoweringONNXToCrtPattern(target, patterns, typeConverter, ctx);
}

// Performs lowering to Crt dialect
struct FrontendToCrtLoweringPass
    : public PassWrapper<FrontendToCrtLoweringPass, OperationPass<ModuleOp>> {
  StringRef getArgument() const override { return "convert-onnx-to-crt"; }

  StringRef getDescription() const override {
    return "Lower frontend ops to Crt dialect.";
  }

  FrontendToCrtLoweringPass() = default;
  FrontendToCrtLoweringPass(const FrontendToCrtLoweringPass &pass)
      : PassWrapper<FrontendToCrtLoweringPass, OperationPass<ModuleOp>>() {}

  void runOnOperation() final;
};

void FrontendToCrtLoweringPass::runOnOperation() {
  ModuleOp module = getOperation();
  // Define final conversion target
  MLIRContext *context = &getContext();
  RewritePatternSet patterns(context);
  ConversionTarget target(*context);

  TypeConverter typeConverter;
  typeConverter.addConversion([](Type type) -> Optional<Type> {
    if (isCrtSignedInt(type) || isCrtFloat(type))
      return type;
    return llvm::None;
  });
  typeConverter.addConversion([&](TensorType type) -> Optional<Type> {
    if (typeConverter.isLegal(type.getElementType()))
      return type;
    return llvm::None;
  });

  // Define legal dialects and operations
  target.addLegalDialect<crt::CrtDialect, func::FuncDialect>();

  // Define patterns
  populateONNXToCrtConversionPattern(target, patterns, typeConverter, context);

  if (failed(applyPartialConversion(module, target, std::move(patterns)))) {
    signalPassFailure();
  }
}

std::unique_ptr<Pass> createConvertONNXToCrtPass() {
  return std::make_unique<FrontendToCrtLoweringPass>();
}

} // namespace onnx_mlir
