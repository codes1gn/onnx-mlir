// RUN: RAP=test-pack-all onnx-mlir-opt %s --raptor-auto-parallel -split-input-file | FileCheck %s

// CHECK-LABEL: func.func @crt_identity_test_shapedtensor_ret
func.func @crt_identity_test_shapedtensor_ret(%arg0: tensor<17x16xf32>) -> tensor<17x16xf32>{
  // CHECK: %3 = crt.pblock %arg0 : (tensor<17x16xf32>) -> tensor<17x16xf32> {
  %0 = crt.exp %arg0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  // CHECK: crt.exp %arg0 : (tensor<17x16xf32>) -> tensor<17x16xf32>
  %1 = crt.exp %0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  // CHECK: }
  return %1 : tensor<17x16xf32>
}

