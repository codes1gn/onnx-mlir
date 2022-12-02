module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> attributes {input_names = ["input"], output_names = ["output"]} {
    %0 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x3x3x3xf32>} : () -> tensor<64x3x3x3xf32>
    %1 = "onnx.Constant"() {value = dense<[4.033880e-01, 0.377794236, 0.464361578, -0.322763681, 0.393955648, -0.395323515, 0.395097047, -0.54956907, 0.269286543, -0.760219336, -0.350779444, 0.233436123, -1.32394505, -0.169350624, 0.393790275, -0.102575585, 0.0460329093, -0.699501872, 0.154948026, 0.562807381, 0.301138252, 0.342529386, 0.10733296, 0.465052843, 0.129477516, 0.0788267702, -4.919180e-02, -0.563774407, 0.146509483, -0.389048874, -0.0714546889, 0.0648796186, 0.276825309, 0.327947408, 0.568236947, -1.26402223, -0.836808264, -0.948499381, 0.1357712, 0.272675514, 0.184078753, -0.532540858, 0.350742251, -0.0826831087, -1.02482617, -0.691168666, -0.771106482, 0.261226833, 0.403328925, -0.480187327, -0.306566268, 0.580741405, -1.33254874, 0.484384984, -0.816025733, 0.238587961, 0.229982078, 0.497897446, 5.553070e-01, 0.523024738, -0.218155116, 0.0117012085, -0.551603198, 0.21083267]> : tensor<64xf32>} : () -> tensor<64xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x64x3x3xf32>} : () -> tensor<64x64x3x3xf32>
    %3 = "onnx.Constant"() {value = dense<[0.0020260897, -0.0902432203, 0.616379499, -8.175160e-02, 0.245019659, -0.048750937, 0.130690396, -0.0290053468, -0.142924666, 0.30679211, -0.0399293639, -0.25241372, 0.0998805239, -0.232570082, 0.0352992676, -0.0903884693, 0.113845222, -0.0306546185, -0.0108158262, -0.0215200279, 0.0554184839, 0.138204232, 0.036169827, -0.451080382, 0.00561535219, -0.0245935619, -0.429628521, -0.145807907, 0.381331176, -0.0358830765, 0.118426241, -0.352731079, -0.0238689445, -0.023453461, 0.649945199, -0.063430339, -0.0152043607, -0.228467062, 0.0940590202, -0.505316794, 0.190647244, 0.0944450497, 0.340632379, -0.0832608938, 0.192419052, -0.195278883, -0.0420725085, -0.160635665, 0.396408319, 0.206776872, 0.18119289, -0.119761363, -0.0724127144, -0.123964503, 0.131318539, 0.104338229, 0.546948493, 0.520800471, 0.0508974679, -0.827750623, 0.437156588, -0.373438746, -0.326407492, -0.121306151]> : tensor<64xf32>} : () -> tensor<64xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x64x3x3xf32>} : () -> tensor<128x64x3x3xf32>
    %5 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x3x3xf32>} : () -> tensor<128x128x3x3xf32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x128x3x3xf32>} : () -> tensor<256x128x3x3xf32>
    %9 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256xf32>} : () -> tensor<256xf32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x256x3x3xf32>} : () -> tensor<256x256x3x3xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256xf32>} : () -> tensor<256xf32>
    %12 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x256x3x3xf32>} : () -> tensor<256x256x3x3xf32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256xf32>} : () -> tensor<256xf32>
    %14 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x256x3x3xf32>} : () -> tensor<512x256x3x3xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %17 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %18 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %19 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %21 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %24 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x25088xf32>} : () -> tensor<4096x25088xf32>
    %27 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x4096xf32>} : () -> tensor<4096x4096xf32>
    %29 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %30 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000x4096xf32>} : () -> tensor<1000x4096xf32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %32 = "onnx.Conv"(%arg0, %0, %1) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_0", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x3x224x224xf32>, tensor<64x3x3x3xf32>, tensor<64xf32>) -> tensor<1x64x224x224xf32>
    %33 = "onnx.Relu"(%32) {onnx_node_name = "Relu_1"} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %34 = "onnx.Conv"(%33, %2, %3) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_2", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x64x224x224xf32>, tensor<64x64x3x3xf32>, tensor<64xf32>) -> tensor<1x64x224x224xf32>
    %35 = "onnx.Relu"(%34) {onnx_node_name = "Relu_3"} : (tensor<1x64x224x224xf32>) -> tensor<1x64x224x224xf32>
    %36 = "onnx.MaxPoolSingleOut"(%35) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "MaxPool_4", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x64x224x224xf32>) -> tensor<1x64x112x112xf32>
    %37 = "onnx.Conv"(%36, %4, %5) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_5", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x64x112x112xf32>, tensor<128x64x3x3xf32>, tensor<128xf32>) -> tensor<1x128x112x112xf32>
    %38 = "onnx.Relu"(%37) {onnx_node_name = "Relu_6"} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %39 = "onnx.Conv"(%38, %6, %7) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_7", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x112x112xf32>, tensor<128x128x3x3xf32>, tensor<128xf32>) -> tensor<1x128x112x112xf32>
    %40 = "onnx.Relu"(%39) {onnx_node_name = "Relu_8"} : (tensor<1x128x112x112xf32>) -> tensor<1x128x112x112xf32>
    %41 = "onnx.MaxPoolSingleOut"(%40) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "MaxPool_9", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x128x112x112xf32>) -> tensor<1x128x56x56xf32>
    %42 = "onnx.Conv"(%41, %8, %9) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_10", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<256x128x3x3xf32>, tensor<256xf32>) -> tensor<1x256x56x56xf32>
    %43 = "onnx.Relu"(%42) {onnx_node_name = "Relu_11"} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %44 = "onnx.Conv"(%43, %10, %11) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_12", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x256x56x56xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>) -> tensor<1x256x56x56xf32>
    %45 = "onnx.Relu"(%44) {onnx_node_name = "Relu_13"} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %46 = "onnx.Conv"(%45, %12, %13) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_14", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x256x56x56xf32>, tensor<256x256x3x3xf32>, tensor<256xf32>) -> tensor<1x256x56x56xf32>
    %47 = "onnx.Relu"(%46) {onnx_node_name = "Relu_15"} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %48 = "onnx.MaxPoolSingleOut"(%47) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "MaxPool_16", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x256x56x56xf32>) -> tensor<1x256x28x28xf32>
    %49 = "onnx.Conv"(%48, %14, %15) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_17", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x256x28x28xf32>, tensor<512x256x3x3xf32>, tensor<512xf32>) -> tensor<1x512x28x28xf32>
    %50 = "onnx.Relu"(%49) {onnx_node_name = "Relu_18"} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %51 = "onnx.Conv"(%50, %16, %17) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_19", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x28x28xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x28x28xf32>
    %52 = "onnx.Relu"(%51) {onnx_node_name = "Relu_20"} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %53 = "onnx.Conv"(%52, %18, %19) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_21", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x28x28xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x28x28xf32>
    %54 = "onnx.Relu"(%53) {onnx_node_name = "Relu_22"} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %55 = "onnx.MaxPoolSingleOut"(%54) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "MaxPool_23", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x512x28x28xf32>) -> tensor<1x512x14x14xf32>
    %56 = "onnx.Conv"(%55, %20, %21) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_24", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x14x14xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x14x14xf32>
    %57 = "onnx.Relu"(%56) {onnx_node_name = "Relu_25"} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %58 = "onnx.Conv"(%57, %22, %23) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_26", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x14x14xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x14x14xf32>
    %59 = "onnx.Relu"(%58) {onnx_node_name = "Relu_27"} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %60 = "onnx.Conv"(%59, %24, %25) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_28", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x512x14x14xf32>, tensor<512x512x3x3xf32>, tensor<512xf32>) -> tensor<1x512x14x14xf32>
    %61 = "onnx.Relu"(%60) {onnx_node_name = "Relu_29"} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %62 = "onnx.MaxPoolSingleOut"(%61) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "MaxPool_30", pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x512x14x14xf32>) -> tensor<1x512x7x7xf32>
    %63 = "onnx.AveragePool"(%62) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [1, 1], onnx_node_name = "AveragePool_31", strides = [1, 1]} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %64 = "onnx.Flatten"(%63) {axis = 1 : si64, onnx_node_name = "Flatten_32"} : (tensor<1x512x7x7xf32>) -> tensor<1x25088xf32>
    %65 = "onnx.Gemm"(%64, %26, %27) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_33", transA = 0 : si64, transB = 1 : si64} : (tensor<1x25088xf32>, tensor<4096x25088xf32>, tensor<4096xf32>) -> tensor<1x4096xf32>
    %66 = "onnx.Relu"(%65) {onnx_node_name = "Relu_34"} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %67 = "onnx.Gemm"(%66, %28, %29) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_35", transA = 0 : si64, transB = 1 : si64} : (tensor<1x4096xf32>, tensor<4096x4096xf32>, tensor<4096xf32>) -> tensor<1x4096xf32>
    %68 = "onnx.Relu"(%67) {onnx_node_name = "Relu_36"} : (tensor<1x4096xf32>) -> tensor<1x4096xf32>
    %69 = "onnx.Gemm"(%68, %30, %31) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_37", transA = 0 : si64, transB = 1 : si64} : (tensor<1x4096xf32>, tensor<1000x4096xf32>, tensor<1000xf32>) -> tensor<1x1000xf32>
    return %69 : tensor<1x1000xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
