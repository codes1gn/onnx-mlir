//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "src/Dialect/Crt/CrtDialect.hpp"
#include "src/Dialect/Crt/CrtOps.hpp"

using namespace mlir;
// using namespace mlir::crt;

// Code for CRT_Dialect class
// TODO not this line originally missed, dialect cpp has inc, hpp has inc,
// ops has cpp.inc and hpp.#include "
//
// normally, hpp not inc', compile error
// cpp not inc, link error
// "
#include "src/Dialect/Crt/CrtDialect.cpp.inc"


void CrtDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "src/Dialect/Crt/CrtOps.cpp.inc"
      >();
}
