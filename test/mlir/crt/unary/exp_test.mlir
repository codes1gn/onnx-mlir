// RUN: onnx-mlir-opt %s -split-input-file | FileCheck %s


// CHECK-LABEL: func.func @crt_exp_test_scalar_noret
//func.func @crt_exp_test_scalar_noret(%arg0: tensor<f32>) {
func.func @crt_exp_test_scalar_noret(%arg0: tensor<f32>, %arg1: none) {
  // CHECK: crt.exp %arg0 : (tensor<f32>) -> tensor<f32>
  %0 = crt.exp %arg0: (tensor<f32>) -> tensor<f32>
  return
}

// CHECK-LABEL: func.func @crt_exp_test_scalar_ret
func.func @crt_exp_test_scalar_ret(%arg0: tensor<f32>) -> tensor<f32>{
  // CHECK: crt.exp %arg0 : (tensor<f32>) -> tensor<f32>
  %0 = crt.exp %arg0: (tensor<f32>) -> tensor<f32>
  return %0 : tensor<f32>
}


// CHECK-LABEL: func.func @crt_exp_test_tensor_noret
func.func @crt_exp_test_tensor_noret(%arg0: tensor<?xf32>) {
  // CHECK: crt.exp %arg0 : (tensor<?xf32>) -> tensor<?xf32>
  %0 = crt.exp %arg0: (tensor<?xf32>) -> tensor<?xf32>
  return
}

// CHECK-LABEL: func.func @crt_exp_test_tensor_ret
func.func @crt_exp_test_tensor_ret(%arg0: tensor<?xf32>) -> tensor<?xf32>{
  // CHECK: crt.exp %arg0 : (tensor<?xf32>) -> tensor<?xf32>
  %0 = crt.exp %arg0: (tensor<?xf32>) -> tensor<?xf32>
  return %0 : tensor<?xf32>
}


// CHECK-LABEL: func.func @crt_exp_test_shapedtensor_noret
func.func @crt_exp_test_shapedtensor_noret(%arg0: tensor<31xf32>) {
  // CHECK: crt.exp %arg0 : (tensor<31xf32>) -> tensor<31xf32>
  %0 = crt.exp %arg0: (tensor<31xf32>) -> tensor<31xf32>
  return
}

// CHECK-LABEL: func.func @crt_exp_test_shapedtensor_ret
func.func @crt_exp_test_shapedtensor_ret(%arg0: tensor<17x16xf32>) -> tensor<17x16xf32>{
  // CHECK: crt.exp %arg0 : (tensor<17x16xf32>) -> tensor<17x16xf32>
  %0 = crt.exp %arg0: (tensor<17x16xf32>) -> tensor<17x16xf32>
  return %0 : tensor<17x16xf32>
}

