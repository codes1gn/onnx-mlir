// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

func.func @test_conv(%arg0 : tensor<1x3x224x224xf32>, %arg1 : tensor<64x3x7x7xf32>, %arg2 : tensor<64xf32>) -> tensor<1x64x112x112xf32> {
  %42 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 7], onnx_node_name = "resnetv15_conv0_fwd", pads = [3, 3, 3, 3], strides = [2, 2]} : (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
  "func.return"(%42) : (tensor<1x64x112x112xf32>) -> ()
// CHECK-LABEL:  func @test_conv
// CHECK-SAME:   ([[PARAM_0_:%.+]]: tensor<1x3x224x224xf32>, [[PARAM_1_:%.+]]: tensor<64x3x7x7xf32>, [[PARAM_2_:%.+]]: tensor<64xf32>) -> tensor<1x64x112x112xf32> {
// CHECK-NEXT:      [[VAR_0_:%.+]] = crt.convadd [[PARAM_0_]], [[PARAM_1_]], [[PARAM_2_]] : (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
// CHECK-NEXT:      return [[VAR_0_]] : tensor<1x64x112x112xf32>
// CHECK-NEXT:    }
}

