
// RUN: onnx-mlir-opt --shape-inference --convert-onnx-to-crt %s -split-input-file | FileCheck %s

module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> attributes {input_names = ["data"], output_names = ["resnetv15_dense0_fwd"]} {
// CHECK-LABEL:  func @main_graph
    %0 = "onnx.Constant"() : () -> tensor<1000x512xf32>
    %1 = "onnx.Constant"() : () -> tensor<1000xf32>
    %2 = "onnx.Constant"() : () -> tensor<64x3x7x7xf32>
    %3 = "onnx.Constant"() : () -> tensor<64xf32>
    %4 = "onnx.Constant"() : () -> tensor<64x64x3x3xf32>
    %5 = "onnx.Constant"() : () -> tensor<64xf32>
    %6 = "onnx.Constant"() : () -> tensor<64x64x3x3xf32>
    %7 = "onnx.Constant"() : () -> tensor<64xf32>
    %8 = "onnx.Constant"() : () -> tensor<64x64x3x3xf32>
    %9 = "onnx.Constant"() : () -> tensor<64xf32>
    %10 = "onnx.Constant"() : () -> tensor<64x64x3x3xf32>
    %11 = "onnx.Constant"() : () -> tensor<64xf32>
    %12 = "onnx.Constant"() : () -> tensor<128x64x1x1xf32>
    %13 = "onnx.Constant"() : () -> tensor<128xf32>
    %14 = "onnx.Constant"() : () -> tensor<128x64x3x3xf32>
    %15 = "onnx.Constant"() : () -> tensor<128xf32>
    %16 = "onnx.Constant"() : () -> tensor<128x128x3x3xf32>
    %17 = "onnx.Constant"() : () -> tensor<128xf32>
    %18 = "onnx.Constant"() : () -> tensor<128x128x3x3xf32>
    %19 = "onnx.Constant"() : () -> tensor<128xf32>
    %20 = "onnx.Constant"() : () -> tensor<128x128x3x3xf32>
    %21 = "onnx.Constant"() : () -> tensor<128xf32>
    %22 = "onnx.Constant"() : () -> tensor<256x128x1x1xf32>
    %23 = "onnx.Constant"() : () -> tensor<256xf32>
    %24 = "onnx.Constant"() : () -> tensor<256x128x3x3xf32>
    %25 = "onnx.Constant"() : () -> tensor<256xf32>
    %26 = "onnx.Constant"() : () -> tensor<256x256x3x3xf32>
    %27 = "onnx.Constant"() : () -> tensor<256xf32>
    %28 = "onnx.Constant"() : () -> tensor<256x256x3x3xf32>
    %29 = "onnx.Constant"() : () -> tensor<256xf32>
    %30 = "onnx.Constant"() : () -> tensor<256x256x3x3xf32>
    %31 = "onnx.Constant"() : () -> tensor<256xf32>
    %32 = "onnx.Constant"() : () -> tensor<512x256x1x1xf32>
    %33 = "onnx.Constant"() : () -> tensor<512xf32>
    %34 = "onnx.Constant"() : () -> tensor<512x256x3x3xf32>
    %35 = "onnx.Constant"() : () -> tensor<512xf32>
    %36 = "onnx.Constant"() : () -> tensor<512x512x3x3xf32>
    %37 = "onnx.Constant"() : () -> tensor<512xf32>
    %38 = "onnx.Constant"() : () -> tensor<512x512x3x3xf32>
    %39 = "onnx.Constant"() : () -> tensor<512xf32>
    %40 = "onnx.Constant"() : () -> tensor<512x512x3x3xf32>
    %41 = "onnx.Constant"() : () -> tensor<512xf32>
    %42 = "onnx.Conv"(%arg0, %2, %3) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 7], onnx_node_name = "resnetv15_conv0_fwd", pads = [3, 3, 3, 3], strides = [2, 2]} : (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
    %43 = "onnx.Relu"(%42) {onnx_node_name = "resnetv15_relu0_fwd"} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %44 = "onnx.MaxPoolSingleOut"(%43) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_pool0_fwd", pads = [1, 1, 1, 1], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x64x112x112xf32>) -> tensor<1x64x56x56xf32>
    %45 = "onnx.Conv"(%44, %4, %5) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage1_conv0_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x64x56x56xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>) -> tensor<1x64x56x56xf32>
    %46 = "onnx.Relu"(%45) {onnx_node_name = "resnetv15_stage1_relu0_fwd"} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %47 = "onnx.Conv"(%46, %6, %7) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage1_conv1_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x64x56x56xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>) -> tensor<1x64x56x56xf32>
    %48 = "onnx.Add"(%44, %47) {onnx_node_name = "resnetv15_stage1__plus0"} : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %49 = "onnx.Relu"(%48) {onnx_node_name = "resnetv15_stage1_activation0"} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %50 = "onnx.Conv"(%49, %8, %9) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage1_conv2_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x64x56x56xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>) -> tensor<1x64x56x56xf32>
    %51 = "onnx.Relu"(%50) {onnx_node_name = "resnetv15_stage1_relu1_fwd"} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %52 = "onnx.Conv"(%51, %10, %11) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage1_conv3_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x64x56x56xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>) -> tensor<1x64x56x56xf32>
    %53 = "onnx.Add"(%49, %52) {onnx_node_name = "resnetv15_stage1__plus1"} : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %54 = "onnx.Relu"(%53) {onnx_node_name = "resnetv15_stage1_activation1"} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %55 = "onnx.Conv"(%54, %12, %13) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 1], onnx_node_name = "resnetv15_stage2_conv2_fwd", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x64x56x56xf32>, tensor<128x64x1x1xf32>, tensor<128xf32>) -> tensor<1x128x28x28xf32>
    %56 = "onnx.Conv"(%54, %14, %15) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage2_conv0_fwd", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x64x56x56xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>) -> tensor<1x128x28x28xf32>
    %57 = "onnx.Relu"(%56) {onnx_node_name = "resnetv15_stage2_relu0_fwd"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %58 = "onnx.Conv"(%57, %16, %17) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage2_conv1_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>) -> tensor<1x128x28x28xf32>
    %59 = "onnx.Add"(%55, %58) {onnx_node_name = "resnetv15_stage2__plus0"} : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %60 = "onnx.Relu"(%59) {onnx_node_name = "resnetv15_stage2_activation0"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %61 = "onnx.Conv"(%60, %18, %19) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage2_conv3_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>) -> tensor<1x128x28x28xf32>
    %62 = "onnx.Relu"(%61) {onnx_node_name = "resnetv15_stage2_relu1_fwd"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %63 = "onnx.Conv"(%62, %20, %21) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage2_conv4_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>) -> tensor<1x128x28x28xf32>
    %64 = "onnx.Add"(%60, %63) {onnx_node_name = "resnetv15_stage2__plus1"} : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %65 = "onnx.Relu"(%64) {onnx_node_name = "resnetv15_stage2_activation1"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %66 = "onnx.Conv"(%65, %22, %23) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 1], onnx_node_name = "resnetv15_stage3_conv2_fwd", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x128x28x28xf32>, tensor<256x128x1x1xf32>, tensor<256xf32>) -> tensor<1x256x14x14xf32>
    %67 = "onnx.Conv"(%65, %24, %25) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage3_conv0_fwd", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x128x28x28xf32>, tensor<256x128x3x3xf32>, tensor<256xf32>) -> tensor<1x256x14x14xf32>
    %68 = "onnx.Relu"(%67) {onnx_node_name = "resnetv15_stage3_relu0_fwd"} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %69 = "onnx.Conv"(%68, %26, %27) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage3_conv1_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x256x14x14xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>) -> tensor<1x256x14x14xf32>
    %70 = "onnx.Add"(%66, %69) {onnx_node_name = "resnetv15_stage3__plus0"} : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %71 = "onnx.Relu"(%70) {onnx_node_name = "resnetv15_stage3_activation0"} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %72 = "onnx.Conv"(%71, %28, %29) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage3_conv3_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x256x14x14xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>) -> tensor<1x256x14x14xf32>
    %73 = "onnx.Relu"(%72) {onnx_node_name = "resnetv15_stage3_relu1_fwd"} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %74 = "onnx.Conv"(%73, %30, %31) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage3_conv4_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x256x14x14xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>) -> tensor<1x256x14x14xf32>
    %75 = "onnx.Add"(%71, %74) {onnx_node_name = "resnetv15_stage3__plus1"} : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %76 = "onnx.Relu"(%75) {onnx_node_name = "resnetv15_stage3_activation1"} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %77 = "onnx.Conv"(%76, %32, %33) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 1], onnx_node_name = "resnetv15_stage4_conv2_fwd", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x256x14x14xf32>, tensor<512x256x1x1xf32>, tensor<512xf32>) -> tensor<1x512x7x7xf32>
    %78 = "onnx.Conv"(%76, %34, %35) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage4_conv0_fwd", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x256x14x14xf32>, tensor<512x256x3x3xf32>, tensor<512xf32>) -> tensor<1x512x7x7xf32>
    %79 = "onnx.Relu"(%78) {onnx_node_name = "resnetv15_stage4_relu0_fwd"} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %80 = "onnx.Conv"(%79, %36, %37) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage4_conv1_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x7x7xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x7x7xf32>
    %81 = "onnx.Add"(%77, %80) {onnx_node_name = "resnetv15_stage4__plus0"} : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %82 = "onnx.Relu"(%81) {onnx_node_name = "resnetv15_stage4_activation0"} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %83 = "onnx.Conv"(%82, %38, %39) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage4_conv3_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x7x7xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x7x7xf32>
    %84 = "onnx.Relu"(%83) {onnx_node_name = "resnetv15_stage4_relu1_fwd"} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %85 = "onnx.Conv"(%84, %40, %41) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "resnetv15_stage4_conv4_fwd", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x7x7xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x7x7xf32>
    %86 = "onnx.Add"(%82, %85) {onnx_node_name = "resnetv15_stage4__plus1"} : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %87 = "onnx.Relu"(%86) {onnx_node_name = "resnetv15_stage4_activation1"} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %88 = "onnx.ReduceMean"(%87) {axes = [2, 3], keepdims = 1 : si64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x1x1xf32>
    %89 = "onnx.Flatten"(%88) {axis = 1 : si64, onnx_node_name = "flatten_170"} : (tensor<1x512x1x1xf32>) -> tensor<1x512xf32>
    %90 = "onnx.Gemm"(%89, %0, %1) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "resnetv15_dense0_fwd", transA = 0 : si64, transB = 1 : si64} : (tensor<1x512xf32>, tensor<1000x512xf32>, tensor<1000xf32>) -> tensor<1x1000xf32>
    return %90 : tensor<1x1000xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
