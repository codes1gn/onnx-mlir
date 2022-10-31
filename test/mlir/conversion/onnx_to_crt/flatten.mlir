// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

func.func @test_flatten(%arg0 : tensor<1x512x1x1xf32>) -> tensor<1x512xf32> {
  %0 = "onnx.Flatten"(%arg0) {axis = 1 : si64, onnx_node_name = "flatten_170"} : (tensor<1x512x1x1xf32>) -> tensor<1x512xf32>
  "func.return"(%0) : (tensor<1x512xf32>) -> ()
// CHECK-LABEL:  func @test_flatten
// CHECK-SAME:   ([[PARAM_0_:%.+]]: tensor<1x512x1x1xf32>) -> tensor<1x512xf32> {
// CHECK-NEXT:      [[VAR_0_:%.+]] = crt.flatten [[PARAM_0_]] : (tensor<1x512x1x1xf32>) -> tensor<1x512xf32>
// CHECK-NEXT:      return [[VAR_0_]] : tensor<1x512xf32>
// CHECK-NEXT:    }
}

