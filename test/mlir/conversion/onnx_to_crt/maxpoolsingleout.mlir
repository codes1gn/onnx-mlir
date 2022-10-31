// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

func.func @test_maxpool(%arg0 : tensor<1x64x112x112xf32>) -> tensor<1x64x56x56xf32> {
  %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_pool0_fwd", pads = [1, 1, 1, 1], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x64x112x112xf32>) -> tensor<1x64x56x56xf32>
  "func.return"(%0) : (tensor<1x64x56x56xf32>) -> ()
// CHECK-LABEL:  func @test_maxpool
// CHECK-SAME:   ([[PARAM_0_:%.+]]: tensor<1x64x112x112xf32>) -> tensor<1x64x56x56xf32> {
// CHECK-NEXT:      [[VAR_0_:%.+]] = crt.maxpool [[PARAM_0_]] : (tensor<1x64x112x112xf32>) -> tensor<1x64x56x56xf32>
// CHECK-NEXT:      return [[VAR_0_]] : tensor<1x64x56x56xf32>
// CHECK-NEXT:    }
}
