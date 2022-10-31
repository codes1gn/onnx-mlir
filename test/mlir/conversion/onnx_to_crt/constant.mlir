// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

func.func @test_constant() -> tensor<512xf32> {
  %37 = "onnx.Constant"() {value = dense<1.0> : tensor<512xf32>} : () -> tensor<512xf32>
  "func.return"(%37) : (tensor<512xf32>) -> ()
// CHECK-LABEL:  func @test_constant
// CHECK-SAME:      () -> tensor<512xf32> {
// CHECK-NEXT:      [[VAR_0_:%.+]] = crt.constant : () -> tensor<512xf32>
// CHECK-NEXT:      return [[VAR_0_]] : tensor<512xf32>
// CHECK-NEXT:    }
}

