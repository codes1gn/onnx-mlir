// RUN: RAP=test-pack-all onnx-mlir-opt %s --raptor-auto-parallel -split-input-file | FileCheck %s

// CHECK-LABEL: func.func @crt_identity_test_shapedtensor_ret
func.func @crt_identity_test_shapedtensor_ret(%arg0: tensor<17x16xf32>) -> tensor<17x16xf32>{
  // CHECK: %3 = crt.pblock %arg0 : (tensor<17x16xf32>) -> tensor<17x16xf32> {
  %0 = crt.exp %arg0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  %1 = crt.identity %0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  // CHECK: crt.identity %0 : (tensor<17x16xf32>) -> tensor<17x16xf32>
  %2 = crt.exp %1: (tensor<17x16xf32>) -> tensor<17x16xf32>
  %3 = crt.relu %2: (tensor<17x16xf32>) -> tensor<17x16xf32>
  // CHECK: }
  return %3 : tensor<17x16xf32>
}

