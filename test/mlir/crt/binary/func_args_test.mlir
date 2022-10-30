// RUN: onnx-mlir-opt %s -split-input-file | FileCheck %s

// this test covers the error check that should be reported while parsing the IR

// CHECK-LABEL: func.func @crt_func.func_arg_test
// basic op with scalar args and none return
func.func @crt_func.func_arg_test(%self: none, %arg0: tensor<f32>, %arg1: tensor<f32>) {
  // CHECK: crt.add %arg1, %arg2 : (tensor<f32>, tensor<f32>) -> tensor<f32>
  %0 = crt.add %arg0, %arg1 : (tensor<f32>, tensor<f32>) -> tensor<f32>
  return
}

// CHECK-LABEL: func.func @crt_func.func_arg_test_with_ret
// basic op with scalar args and none return
func.func @crt_func.func_arg_test_with_ret(%self: none, %arg0: tensor<f32>, %arg1: tensor<f32>) -> tensor<f32>{
  // CHECK: crt.add %arg1, %arg2 : (tensor<f32>, tensor<f32>) -> tensor<f32>
  %0 = crt.add %arg0, %arg1 : (tensor<f32>, tensor<f32>) -> tensor<f32>
  return %0 : tensor<f32>
}


// CHECK-LABEL: func.func @forward
func.func @forward(%self: none, %a: tensor<2x3xf32>, %b: tensor<2x3xf32>) -> tensor<2x3xf32> {
  // CHECK: %0 = crt.add %arg1, %arg2 : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
  %c = crt.add %a, %b : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
  return %c : tensor<2x3xf32>
}
