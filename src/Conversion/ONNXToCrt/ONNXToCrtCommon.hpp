/*
 * SPDX-License-Identifier: Apache-2.0
 */

//====------ ONNXTocrtCommon.hpp - ONNX dialects to crt lowering --------===//
//
// Copyright (c) 2022 Advanced Micro Devices, Inc.
//
// =============================================================================
//
// This file contains common code shared by the functions performing the
// lowering to the crt dialect.
//
//===----------------------------------------------------------------------===//

#pragma once

#include "mlir/Dialect/Quant/QuantTypes.h"
// ANCHOR 
#include "src/Dialect/Crt/CrtDialect.hpp"
#include "src/Dialect/Crt/CrtOps.hpp"

#include "mlir/IR/MLIRContext.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

#include "src/Dialect/ONNX/DialectBuilder.hpp"
#include "src/Dialect/ONNX/ONNXOps.hpp"
#include "src/Dialect/ONNX/ONNXOpsHelper.hpp"
#include "src/Pass/Passes.hpp"
#include "src/Transform/ONNX/ConstPropHelper.hpp"

//===----------------------------------------------------------------------===//
// Functions to add lowering patterns for frontend operations.
//===----------------------------------------------------------------------===//

namespace onnx_mlir {

//===----------------------------------------------------------------------===//
// Check for valid crt types.
//===----------------------------------------------------------------------===//

inline bool isCrtSignedInt(mlir::Type type) {
  mlir::IntegerType intType = type.dyn_cast<mlir::IntegerType>();
  std::set<unsigned> intWidth{32};
  // ANCHOR
  // std::set<unsigned> intWidth{8, 16, 32, 48, 64};
  return intType && intType.isSigned() &&
         (intWidth.find(intType.getWidth()) != intWidth.end());
}

inline bool isCrtFloat(mlir::Type type) {
  // ANCHOR
  return type.isa<mlir::Float32Type>();
  // return type.isa<mlir::BFloat16Type, mlir::Float16Type, mlir::Float32Type>();
}

void populateLoweringONNXToCrtPattern(mlir::ConversionTarget &,
    mlir::RewritePatternSet &, mlir::TypeConverter &, mlir::MLIRContext *);
} // namespace onnx_mlir
