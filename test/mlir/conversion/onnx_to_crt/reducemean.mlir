// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

func.func @test_reducemean(%arg0 : tensor<1x512x7x7xf32>) -> tensor<1x512x1x1xf32> {
  %0 = "onnx.ReduceMean"(%arg0) {axes = [2, 3], keepdims = 1 : si64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x1x1xf32>
  "func.return"(%0) : (tensor<1x512x1x1xf32>) -> ()
// CHECK-LABEL:  func @test_reducemean
// CHECK-SAME:   ([[PARAM_0_:%.+]]: tensor<1x512x7x7xf32>) -> tensor<1x512x1x1xf32> {
// CHECK-NEXT:      [[VAR_0_:%.+]] = crt.reducemean [[PARAM_0_]] : (tensor<1x512x7x7xf32>) -> tensor<1x512x1x1xf32>
// CHECK-NEXT:      return [[VAR_0_]] : tensor<1x512x1x1xf32>
// CHECK-NEXT:    }
}

