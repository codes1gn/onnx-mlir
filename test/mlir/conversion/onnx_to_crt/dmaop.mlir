// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

func.func @test_reshape(%arg0 : tensor<1x1x14x14xf32>, %arg1 : tensor<2xi64>) -> tensor<1x196xf32> {
  %0 = "onnx.Reshape"(%arg0, %arg1) {onnx_node_name = "Reshape_2"} : (tensor<1x1x14x14xf32>, tensor<2xi64>) -> tensor<1x196xf32>
  "func.return"(%0) : (tensor<1x196xf32>) -> ()
// CHECK-LABEL:  func @test_reshape
// CHECK-SAME:   ([[PARAM_0_:%.+]]: tensor<1x1x14x14xf32>, [[PARAM_1_:%.+]]: tensor<2xi64>) -> tensor<1x196xf32> {
// CHECK-NEXT:      [[VAR_0_:%.+]] = crt.reshape [[PARAM_0_]], [[PARAM_1_]] : (tensor<1x1x14x14xf32>, tensor<2xi64>) -> tensor<1x196xf32>
// CHECK-NEXT:      return [[VAR_0_]] : tensor<1x196xf32>
// CHECK-NEXT:    }
}
