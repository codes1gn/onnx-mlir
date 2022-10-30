#ifndef DIALECT_CRT_CRTOPS_H
#define DIALECT_CRT_CRTOPS_H

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"

#include "src/Dialect/Crt/CrtDialect.hpp"

#define GET_OP_CLASSES
#include "src/Dialect/Crt/CrtOps.hpp.inc"

#endif // DIALECT_CRT_CRTOPS_H
