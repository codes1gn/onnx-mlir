// RUN: onnx-mlir-opt %s -split-input-file | FileCheck %s

// CHECK-LABEL: func.func @crt_identity_test_shapedtensor_ret
func.func @crt_identity_test_shapedtensor_ret(%arg0: tensor<17x16xf32>) -> tensor<17x16xf32>{
  // CHECK: crt.identity %arg0 : (tensor<17x16xf32>) -> tensor<17x16xf32>
  %0 = crt.identity %arg0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  %1 = crt.pblock %0: (tensor<17x16xf32>) -> tensor<17x16xf32> {
    %1 = crt.identity %0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  }
  %2 = crt.pblock %1: (tensor<17x16xf32>) -> tensor<17x16xf32> {
    %2 = crt.identity %1: (tensor<17x16xf32>) -> tensor<17x16xf32>
  }
  %3 = crt.identity %2: (tensor<17x16xf32>) -> tensor<17x16xf32>
  return %3 : tensor<17x16xf32>
}

