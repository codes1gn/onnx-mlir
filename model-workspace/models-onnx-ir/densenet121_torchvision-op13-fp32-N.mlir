module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> attributes {input_names = ["input"], output_names = ["output"]} {
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %3 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %5 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x256x1x1xf32>} : () -> tensor<128x256x1x1xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %9 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %12 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %14 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %17 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %18 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %19 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x512x1x1xf32>} : () -> tensor<256x512x1x1xf32>
    %21 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %24 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %27 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %29 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %30 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %32 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %33 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %34 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %35 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %36 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %37 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %38 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %39 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %40 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %41 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %42 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %43 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %44 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %45 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1024x1x1xf32>} : () -> tensor<512x1024x1x1xf32>
    %46 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %47 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %48 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %49 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %50 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %51 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %52 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %53 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %54 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %55 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %56 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %57 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %58 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %59 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %60 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %61 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x128x3x3xf32>} : () -> tensor<32x128x3x3xf32>
    %62 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000x1024xf32>} : () -> tensor<1000x1024xf32>
    %63 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %64 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x3x7x7xf32>} : () -> tensor<64x3x7x7xf32>
    %65 = "onnx.Constant"() {value = dense<[0.0954766721, 0.0401740782, 0.033964932, 0.0843562185, 0.0738225132, 0.0584377535, 0.0420899913, 0.0321952403, -1.3154272E-7, 0.0685673133, 0.0708844363, 0.065111354, 0.0414732546, 0.126315504, 0.171281472, -1.23873932E-7, 0.0414272696, 0.264912069, 0.193410859, 0.0379265584, 0.0430556126, 3.811160e-02, 0.0273683667, 0.198468149, 0.0345053151, 0.148404583, 0.104761675, 0.03779893, 0.0488879643, 0.0469693914, -8.367990e-02, 0.213000774, 0.17426151, 0.124230318, 0.0893096923, 0.0310361926, 0.0257440303, 0.0330256633, 0.195432693, 0.0289952774, 0.0334751047, 0.194670483, 0.132353663, 0.0392723866, 0.0744598955, 0.0586149059, 0.0374237932, 0.127922177, 0.0673577264, 0.0586432777, 0.0448888838, 0.0593128242, 0.0315713212, 0.0470822789, 0.0313891135, 0.12965776, 0.0372733399, 0.0563362613, 0.0420354083, 0.123085685, 0.0318712816, 3.147260e-02, 0.0385076851, 0.183189109]> : tensor<64xf32>} : () -> tensor<64xf32>
    %66 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x64x1x1xf32>} : () -> tensor<128x64x1x1xf32>
    %67 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x96x1x1xf32>} : () -> tensor<128x96x1x1xf32>
    %68 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x1x1xf32>} : () -> tensor<128x128x1x1xf32>
    %69 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x160x1x1xf32>} : () -> tensor<128x160x1x1xf32>
    %70 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x192x1x1xf32>} : () -> tensor<128x192x1x1xf32>
    %71 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x224x1x1xf32>} : () -> tensor<128x224x1x1xf32>
    %72 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x128x1x1xf32>} : () -> tensor<128x128x1x1xf32>
    %73 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x160x1x1xf32>} : () -> tensor<128x160x1x1xf32>
    %74 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x192x1x1xf32>} : () -> tensor<128x192x1x1xf32>
    %75 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x224x1x1xf32>} : () -> tensor<128x224x1x1xf32>
    %76 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x256x1x1xf32>} : () -> tensor<128x256x1x1xf32>
    %77 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x288x1x1xf32>} : () -> tensor<128x288x1x1xf32>
    %78 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x320x1x1xf32>} : () -> tensor<128x320x1x1xf32>
    %79 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x352x1x1xf32>} : () -> tensor<128x352x1x1xf32>
    %80 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x384x1x1xf32>} : () -> tensor<128x384x1x1xf32>
    %81 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x416x1x1xf32>} : () -> tensor<128x416x1x1xf32>
    %82 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x448x1x1xf32>} : () -> tensor<128x448x1x1xf32>
    %83 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x480x1x1xf32>} : () -> tensor<128x480x1x1xf32>
    %84 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x256x1x1xf32>} : () -> tensor<128x256x1x1xf32>
    %85 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x288x1x1xf32>} : () -> tensor<128x288x1x1xf32>
    %86 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x320x1x1xf32>} : () -> tensor<128x320x1x1xf32>
    %87 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x352x1x1xf32>} : () -> tensor<128x352x1x1xf32>
    %88 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x384x1x1xf32>} : () -> tensor<128x384x1x1xf32>
    %89 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x416x1x1xf32>} : () -> tensor<128x416x1x1xf32>
    %90 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x448x1x1xf32>} : () -> tensor<128x448x1x1xf32>
    %91 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x480x1x1xf32>} : () -> tensor<128x480x1x1xf32>
    %92 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x512x1x1xf32>} : () -> tensor<128x512x1x1xf32>
    %93 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x544x1x1xf32>} : () -> tensor<128x544x1x1xf32>
    %94 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x576x1x1xf32>} : () -> tensor<128x576x1x1xf32>
    %95 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x608x1x1xf32>} : () -> tensor<128x608x1x1xf32>
    %96 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x640x1x1xf32>} : () -> tensor<128x640x1x1xf32>
    %97 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x672x1x1xf32>} : () -> tensor<128x672x1x1xf32>
    %98 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x704x1x1xf32>} : () -> tensor<128x704x1x1xf32>
    %99 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x736x1x1xf32>} : () -> tensor<128x736x1x1xf32>
    %100 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x768x1x1xf32>} : () -> tensor<128x768x1x1xf32>
    %101 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x800x1x1xf32>} : () -> tensor<128x800x1x1xf32>
    %102 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x832x1x1xf32>} : () -> tensor<128x832x1x1xf32>
    %103 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x864x1x1xf32>} : () -> tensor<128x864x1x1xf32>
    %104 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x896x1x1xf32>} : () -> tensor<128x896x1x1xf32>
    %105 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x928x1x1xf32>} : () -> tensor<128x928x1x1xf32>
    %106 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x960x1x1xf32>} : () -> tensor<128x960x1x1xf32>
    %107 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x992x1x1xf32>} : () -> tensor<128x992x1x1xf32>
    %108 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x512x1x1xf32>} : () -> tensor<128x512x1x1xf32>
    %109 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x544x1x1xf32>} : () -> tensor<128x544x1x1xf32>
    %110 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x576x1x1xf32>} : () -> tensor<128x576x1x1xf32>
    %111 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x608x1x1xf32>} : () -> tensor<128x608x1x1xf32>
    %112 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x640x1x1xf32>} : () -> tensor<128x640x1x1xf32>
    %113 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x672x1x1xf32>} : () -> tensor<128x672x1x1xf32>
    %114 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x704x1x1xf32>} : () -> tensor<128x704x1x1xf32>
    %115 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x736x1x1xf32>} : () -> tensor<128x736x1x1xf32>
    %116 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x768x1x1xf32>} : () -> tensor<128x768x1x1xf32>
    %117 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x800x1x1xf32>} : () -> tensor<128x800x1x1xf32>
    %118 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x832x1x1xf32>} : () -> tensor<128x832x1x1xf32>
    %119 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x864x1x1xf32>} : () -> tensor<128x864x1x1xf32>
    %120 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x896x1x1xf32>} : () -> tensor<128x896x1x1xf32>
    %121 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x928x1x1xf32>} : () -> tensor<128x928x1x1xf32>
    %122 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x960x1x1xf32>} : () -> tensor<128x960x1x1xf32>
    %123 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x992x1x1xf32>} : () -> tensor<128x992x1x1xf32>
    %124 = "onnx.Conv"(%arg0, %64, %65) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 7], onnx_node_name = "Conv_0", pads = [3, 3, 3, 3], strides = [2, 2]} : (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
    %125 = "onnx.Relu"(%124) {onnx_node_name = "Relu_1"} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %126 = "onnx.MaxPoolSingleOut"(%125) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], onnx_node_name = "MaxPool_2", pads = [1, 1, 1, 1], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x64x112x112xf32>) -> tensor<1x64x56x56xf32>
    %127 = "onnx.Concat"(%126) {axis = 1 : si64, onnx_node_name = "Concat_3"} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %128 = "onnx.Constant"() {value = dense<[[[11.6892796]], [[4.53634501]], [[7.39521074]], [[7.27564812]], [[4.64358711]], [[6.19684076]], [[2.59986864E-5]], [[7.22274208]], [[3.55926786E-5]], [[7.83067798]], [[8.51364803]], [[1.14596939]], [[4.5394721]], [[0.683662415]], [[1.06889069]], [[8.00976864E-7]], [[7.43943262]], [[4.70958952E-8]], [[5.15714073]], [[8.90024471]], [[8.11454296]], [[8.17086124]], [[8.19720554]], [[7.490830e-09]], [[3.92417299E-8]], [[1.46890759]], [[5.53578779E-4]], [[9.05536746]], [[7.51300478]], [[6.1017909]], [[2.12097549]], [[2.35289352E-8]], [[3.13935189E-9]], [[0.809074521]], [[9.84169387]], [[4.42619324]], [[9.96486663]], [[8.85020542]], [[0.733466744]], [[9.68193531]], [[7.36616898]], [[2.6238407E-4]], [[0.94071865]], [[6.42675781]], [[1.13998735]], [[8.32621288]], [[8.21137142]], [[1.83713293]], [[9.228520e+00]], [[8.74590206]], [[3.0766356]], [[4.39045763]], [[7.71397352]], [[8.34531402]], [[8.15929698]], [[1.50924993]], [[9.36340236]], [[4.40537214]], [[8.51048564]], [[0.594300687]], [[9.62524318]], [[9.71533107]], [[7.80308199]], [[7.950860e-01]]]> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %129 = "onnx.Mul"(%127, %128) : (tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %130 = "onnx.Constant"() {value = dense<[[[-1.0485841]], [[-8.539570e-02]], [[-1.517960e-01]], [[-0.210508525]], [[-0.279511511]], [[-2.627010e-01]], [[-5.21759503E-5]], [[-0.116886944]], [[-6.7788541E-8]], [[-0.126144499]], [[-0.517272174]], [[-0.0365305021]], [[-0.172658056]], [[-0.0242010597]], [[-0.0120957075]], [[-1.55661795E-8]], [[-0.514289081]], [[-1.59553949E-7]], [[-1.11478233]], [[-0.218560904]], [[-0.212965906]], [[-0.183855027]], [[-0.166788474]], [[-5.37303713E-8]], [[-3.02389616E-8]], [[-0.0833927989]], [[-0.00116034178]], [[-0.219891548]], [[-0.213314205]], [[-0.305463672]], [[-3.209060e-01]], [[-7.13725469E-8]], [[-7.9037985E-9]], [[-0.120528862]], [[-0.820684731]], [[-0.103146568]], [[-0.160768703]], [[-0.173888505]], [[-0.0145310117]], [[-0.171164542]], [[-0.130512714]], [[-0.00111440662]], [[-0.303956747]], [[-0.15334785]], [[0.0039090761]], [[-0.230128318]], [[-0.192852795]], [[-0.171310008]], [[-0.436436146]], [[-0.131603852]], [[-0.215577364]], [[-0.277962983]], [[-0.168633536]], [[-0.26301676]], [[-0.144895345]], [[-0.112316526]], [[-0.223576695]], [[-0.231791869]], [[-0.272347659]], [[-0.0485988148]], [[-0.183140814]], [[-0.188633934]], [[-0.148012251]], [[-0.235206172]]]> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %131 = "onnx.Add"(%129, %130) : (tensor<1x64x56x56xf32>, tensor<64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %132 = "onnx.Relu"(%131) {onnx_node_name = "Relu_5"} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %133 = "onnx.Dim"(%132) {axis = 0 : si64} : (tensor<1x64x56x56xf32>) -> tensor<1xi64>
    %134 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %135 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %136 = "onnx.Concat"(%133, %134, %135) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %137 = "onnx.Reshape"(%132, %136) {allowzero = 0 : si64} : (tensor<1x64x56x56xf32>, tensor<3xi64>) -> tensor<1x64x?xf32>
    %138 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %139 = "onnx.Reshape"(%66, %138) {allowzero = 0 : si64} : (tensor<128x64x1x1xf32>, tensor<2xi64>) -> tensor<128x64xf32>
    %140 = "onnx.MatMul"(%139, %137) : (tensor<128x64xf32>, tensor<1x64x?xf32>) -> tensor<1x128x?xf32>
    %141 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %142 = "onnx.Add"(%140, %141) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %143 = "onnx.Dim"(%132) {axis = 0 : si64} : (tensor<1x64x56x56xf32>) -> tensor<1xi64>
    %144 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %145 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %146 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %147 = "onnx.Concat"(%143, %146, %144, %145) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %148 = "onnx.Reshape"(%142, %147) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %149 = "onnx.Relu"(%148) {onnx_node_name = "Relu_7"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %150 = "onnx.Conv"(%149, %1, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_8", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x56x56xf32>
    %151 = "onnx.Concat"(%126, %150) {axis = 1 : si64, onnx_node_name = "Concat_9"} : (tensor<1x64x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x96x56x56xf32>
    %152 = "onnx.Constant"() {value = dense<[[[6.46187686]], [[8.76598358]], [[2.55633068]], [[6.34727335]], [[1.75716329]], [[1.92042458]], [[1.20291018]], [[7.50253963]], [[1.8410874E-5]], [[5.34487057]], [[2.92041516]], [[0.969825565]], [[9.215220e+00]], [[0.961667895]], [[2.66503692]], [[9.77311719E-6]], [[7.40338039]], [[-1.47218668]], [[0.679185569]], [[4.61254692]], [[6.60908603]], [[8.21489715]], [[8.0283165]], [[-1.20490861]], [[10.867486]], [[1.5101763]], [[0.774183273]], [[4.38203049]], [[6.23299742]], [[8.91781902]], [[1.28825271]], [[1.20281363]], [[2.55104256]], [[-2.02764773]], [[4.4696722]], [[8.3797121]], [[6.13494968]], [[6.4294529]], [[0.405762345]], [[6.75588274]], [[8.29045772]], [[0.41028583]], [[-2.57729459]], [[8.17056656]], [[0.97791934]], [[8.65771198]], [[7.03511477]], [[4.21845245]], [[4.32091665]], [[5.00695229]], [[2.9397893]], [[10.5395517]], [[8.50381088]], [[4.72403336]], [[6.84033632]], [[-4.55388165]], [[5.62064028]], [[10.4773092]], [[4.24561262]], [[1.46742558]], [[6.59477091]], [[4.76936722]], [[6.08412123]], [[0.818724036]], [[0.519533277]], [[1.05055976]], [[0.720307826]], [[0.931162596]], [[1.08799851]], [[5.739850e-01]], [[1.10581362]], [[0.430791378]], [[0.419466823]], [[0.519306302]], [[0.502445877]], [[0.763017594]], [[0.548114657]], [[0.345668018]], [[0.554474771]], [[1.1978029]], [[1.04198718]], [[0.436703384]], [[0.604393899]], [[0.474091291]], [[1.16075182]], [[0.804222822]], [[1.02960062]], [[0.79319328]], [[0.523637772]], [[0.423219949]], [[0.791175365]], [[0.865986764]], [[0.476929277]], [[1.37596238]], [[0.54526037]], [[0.476053417]]]> : tensor<96x1x1xf32>} : () -> tensor<96x1x1xf32>
    %153 = "onnx.Mul"(%151, %152) : (tensor<1x96x56x56xf32>, tensor<96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %154 = "onnx.Constant"() {value = dense<[[[-0.595897138]], [[-0.199460909]], [[-0.090461336]], [[-0.292226404]], [[-0.140789866]], [[-0.108072698]], [[-0.169308051]], [[-0.15318574]], [[1.39468757E-8]], [[-0.395378768]], [[-0.185095236]], [[-0.107703544]], [[-0.248739421]], [[-0.13657403]], [[-0.146974921]], [[-3.60013885E-8]], [[-0.126971751]], [[0.369037598]], [[-0.130006328]], [[-0.1314518]], [[-0.220807537]], [[-0.254927337]], [[-0.134888887]], [[0.239716277]], [[-0.279142439]], [[-0.174768418]], [[-0.0163080376]], [[-0.155355722]], [[-0.198194861]], [[-0.260576695]], [[-0.219986737]], [[-0.168376222]], [[-0.31210652]], [[0.68238306]], [[-0.351031154]], [[-0.136824116]], [[-0.13647677]], [[-0.15810819]], [[-0.0533176139]], [[-1.471270e-01]], [[-0.194079816]], [[-0.189336896]], [[0.855149328]], [[-0.268835396]], [[-0.10248071]], [[-0.329984367]], [[-0.182476297]], [[-0.385051787]], [[-0.274500698]], [[-0.198960304]], [[-6.771880e-02]], [[-0.416073292]], [[-0.212256953]], [[-0.19077611]], [[-0.14473936]], [[1.05878127]], [[-0.180195287]], [[-0.394159675]], [[-1.366470e-01]], [[-0.0675908923]], [[-0.164278328]], [[-0.143147156]], [[-0.157926574]], [[-0.190741882]], [[0.529187083]], [[0.0739547312]], [[0.0891401842]], [[-0.0326570794]], [[0.377718031]], [[-0.0672008321]], [[-0.040206816]], [[-5.506890e-02]], [[-0.0837010368]], [[-0.0623854584]], [[0.191766232]], [[0.515365422]], [[-0.0526901633]], [[-0.023295721]], [[0.0391182899]], [[-0.0111500993]], [[-0.300890326]], [[0.0159648862]], [[0.524944901]], [[0.116763286]], [[-0.331817478]], [[0.637087762]], [[0.721311092]], [[0.0349656977]], [[-0.100316934]], [[-0.0372446179]], [[0.142288029]], [[0.288051605]], [[-0.0996354445]], [[1.01566529]], [[-0.0397267081]], [[-0.0245948806]]]> : tensor<96x1x1xf32>} : () -> tensor<96x1x1xf32>
    %155 = "onnx.Add"(%153, %154) : (tensor<1x96x56x56xf32>, tensor<96x1x1xf32>) -> tensor<1x96x56x56xf32>
    %156 = "onnx.Relu"(%155) {onnx_node_name = "Relu_11"} : (tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %157 = "onnx.Dim"(%156) {axis = 0 : si64} : (tensor<1x96x56x56xf32>) -> tensor<1xi64>
    %158 = "onnx.Constant"() {value = dense<96> : tensor<1xi64>} : () -> tensor<1xi64>
    %159 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %160 = "onnx.Concat"(%157, %158, %159) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %161 = "onnx.Reshape"(%156, %160) {allowzero = 0 : si64} : (tensor<1x96x56x56xf32>, tensor<3xi64>) -> tensor<1x96x?xf32>
    %162 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %163 = "onnx.Reshape"(%67, %162) {allowzero = 0 : si64} : (tensor<128x96x1x1xf32>, tensor<2xi64>) -> tensor<128x96xf32>
    %164 = "onnx.MatMul"(%163, %161) : (tensor<128x96xf32>, tensor<1x96x?xf32>) -> tensor<1x128x?xf32>
    %165 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %166 = "onnx.Add"(%164, %165) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %167 = "onnx.Dim"(%156) {axis = 0 : si64} : (tensor<1x96x56x56xf32>) -> tensor<1xi64>
    %168 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %169 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %170 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %171 = "onnx.Concat"(%167, %170, %168, %169) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %172 = "onnx.Reshape"(%166, %171) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %173 = "onnx.Relu"(%172) {onnx_node_name = "Relu_13"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %174 = "onnx.Conv"(%173, %2, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_14", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x56x56xf32>
    %175 = "onnx.Concat"(%126, %150, %174) {axis = 1 : si64, onnx_node_name = "Concat_15"} : (tensor<1x64x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x128x56x56xf32>
    %176 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %177 = "onnx.Mul"(%175, %176) : (tensor<1x128x56x56xf32>, tensor<128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %178 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %179 = "onnx.Add"(%177, %178) : (tensor<1x128x56x56xf32>, tensor<128x1x1xf32>) -> tensor<1x128x56x56xf32>
    %180 = "onnx.Relu"(%179) {onnx_node_name = "Relu_17"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %181 = "onnx.Dim"(%180) {axis = 0 : si64} : (tensor<1x128x56x56xf32>) -> tensor<1xi64>
    %182 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %183 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %184 = "onnx.Concat"(%181, %182, %183) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %185 = "onnx.Reshape"(%180, %184) {allowzero = 0 : si64} : (tensor<1x128x56x56xf32>, tensor<3xi64>) -> tensor<1x128x?xf32>
    %186 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %187 = "onnx.Reshape"(%68, %186) {allowzero = 0 : si64} : (tensor<128x128x1x1xf32>, tensor<2xi64>) -> tensor<128x128xf32>
    %188 = "onnx.MatMul"(%187, %185) : (tensor<128x128xf32>, tensor<1x128x?xf32>) -> tensor<1x128x?xf32>
    %189 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %190 = "onnx.Add"(%188, %189) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %191 = "onnx.Dim"(%180) {axis = 0 : si64} : (tensor<1x128x56x56xf32>) -> tensor<1xi64>
    %192 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %193 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %194 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %195 = "onnx.Concat"(%191, %194, %192, %193) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %196 = "onnx.Reshape"(%190, %195) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %197 = "onnx.Relu"(%196) {onnx_node_name = "Relu_19"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %198 = "onnx.Conv"(%197, %3, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_20", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x56x56xf32>
    %199 = "onnx.Concat"(%126, %150, %174, %198) {axis = 1 : si64, onnx_node_name = "Concat_21"} : (tensor<1x64x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x160x56x56xf32>
    %200 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x1x1xf32>} : () -> tensor<160x1x1xf32>
    %201 = "onnx.Mul"(%199, %200) : (tensor<1x160x56x56xf32>, tensor<160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %202 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x1x1xf32>} : () -> tensor<160x1x1xf32>
    %203 = "onnx.Add"(%201, %202) : (tensor<1x160x56x56xf32>, tensor<160x1x1xf32>) -> tensor<1x160x56x56xf32>
    %204 = "onnx.Relu"(%203) {onnx_node_name = "Relu_23"} : (tensor<1x160x56x56xf32>) -> tensor<1x160x56x56xf32>
    %205 = "onnx.Dim"(%204) {axis = 0 : si64} : (tensor<1x160x56x56xf32>) -> tensor<1xi64>
    %206 = "onnx.Constant"() {value = dense<160> : tensor<1xi64>} : () -> tensor<1xi64>
    %207 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %208 = "onnx.Concat"(%205, %206, %207) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %209 = "onnx.Reshape"(%204, %208) {allowzero = 0 : si64} : (tensor<1x160x56x56xf32>, tensor<3xi64>) -> tensor<1x160x?xf32>
    %210 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %211 = "onnx.Reshape"(%69, %210) {allowzero = 0 : si64} : (tensor<128x160x1x1xf32>, tensor<2xi64>) -> tensor<128x160xf32>
    %212 = "onnx.MatMul"(%211, %209) : (tensor<128x160xf32>, tensor<1x160x?xf32>) -> tensor<1x128x?xf32>
    %213 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %214 = "onnx.Add"(%212, %213) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %215 = "onnx.Dim"(%204) {axis = 0 : si64} : (tensor<1x160x56x56xf32>) -> tensor<1xi64>
    %216 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %217 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %218 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %219 = "onnx.Concat"(%215, %218, %216, %217) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %220 = "onnx.Reshape"(%214, %219) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %221 = "onnx.Relu"(%220) {onnx_node_name = "Relu_25"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %222 = "onnx.Conv"(%221, %4, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_26", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x56x56xf32>
    %223 = "onnx.Concat"(%126, %150, %174, %198, %222) {axis = 1 : si64, onnx_node_name = "Concat_27"} : (tensor<1x64x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x192x56x56xf32>
    %224 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x1xf32>} : () -> tensor<192x1x1xf32>
    %225 = "onnx.Mul"(%223, %224) : (tensor<1x192x56x56xf32>, tensor<192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %226 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x1xf32>} : () -> tensor<192x1x1xf32>
    %227 = "onnx.Add"(%225, %226) : (tensor<1x192x56x56xf32>, tensor<192x1x1xf32>) -> tensor<1x192x56x56xf32>
    %228 = "onnx.Relu"(%227) {onnx_node_name = "Relu_29"} : (tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %229 = "onnx.Dim"(%228) {axis = 0 : si64} : (tensor<1x192x56x56xf32>) -> tensor<1xi64>
    %230 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %231 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %232 = "onnx.Concat"(%229, %230, %231) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %233 = "onnx.Reshape"(%228, %232) {allowzero = 0 : si64} : (tensor<1x192x56x56xf32>, tensor<3xi64>) -> tensor<1x192x?xf32>
    %234 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %235 = "onnx.Reshape"(%70, %234) {allowzero = 0 : si64} : (tensor<128x192x1x1xf32>, tensor<2xi64>) -> tensor<128x192xf32>
    %236 = "onnx.MatMul"(%235, %233) : (tensor<128x192xf32>, tensor<1x192x?xf32>) -> tensor<1x128x?xf32>
    %237 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %238 = "onnx.Add"(%236, %237) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %239 = "onnx.Dim"(%228) {axis = 0 : si64} : (tensor<1x192x56x56xf32>) -> tensor<1xi64>
    %240 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %241 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %242 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %243 = "onnx.Concat"(%239, %242, %240, %241) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %244 = "onnx.Reshape"(%238, %243) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %245 = "onnx.Relu"(%244) {onnx_node_name = "Relu_31"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %246 = "onnx.Conv"(%245, %5, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_32", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x56x56xf32>
    %247 = "onnx.Concat"(%126, %150, %174, %198, %222, %246) {axis = 1 : si64, onnx_node_name = "Concat_33"} : (tensor<1x64x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x224x56x56xf32>
    %248 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<224x1x1xf32>} : () -> tensor<224x1x1xf32>
    %249 = "onnx.Mul"(%247, %248) : (tensor<1x224x56x56xf32>, tensor<224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %250 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<224x1x1xf32>} : () -> tensor<224x1x1xf32>
    %251 = "onnx.Add"(%249, %250) : (tensor<1x224x56x56xf32>, tensor<224x1x1xf32>) -> tensor<1x224x56x56xf32>
    %252 = "onnx.Relu"(%251) {onnx_node_name = "Relu_35"} : (tensor<1x224x56x56xf32>) -> tensor<1x224x56x56xf32>
    %253 = "onnx.Dim"(%252) {axis = 0 : si64} : (tensor<1x224x56x56xf32>) -> tensor<1xi64>
    %254 = "onnx.Constant"() {value = dense<224> : tensor<1xi64>} : () -> tensor<1xi64>
    %255 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %256 = "onnx.Concat"(%253, %254, %255) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %257 = "onnx.Reshape"(%252, %256) {allowzero = 0 : si64} : (tensor<1x224x56x56xf32>, tensor<3xi64>) -> tensor<1x224x?xf32>
    %258 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %259 = "onnx.Reshape"(%71, %258) {allowzero = 0 : si64} : (tensor<128x224x1x1xf32>, tensor<2xi64>) -> tensor<128x224xf32>
    %260 = "onnx.MatMul"(%259, %257) : (tensor<128x224xf32>, tensor<1x224x?xf32>) -> tensor<1x128x?xf32>
    %261 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %262 = "onnx.Add"(%260, %261) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %263 = "onnx.Dim"(%252) {axis = 0 : si64} : (tensor<1x224x56x56xf32>) -> tensor<1xi64>
    %264 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %265 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %266 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %267 = "onnx.Concat"(%263, %266, %264, %265) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %268 = "onnx.Reshape"(%262, %267) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %269 = "onnx.Relu"(%268) {onnx_node_name = "Relu_37"} : (tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %270 = "onnx.Conv"(%269, %6, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_38", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x56x56xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x56x56xf32>
    %271 = "onnx.Concat"(%126, %150, %174, %198, %222, %246, %270) {axis = 1 : si64, onnx_node_name = "Concat_39"} : (tensor<1x64x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>, tensor<1x32x56x56xf32>) -> tensor<1x256x56x56xf32>
    %272 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %273 = "onnx.Mul"(%271, %272) : (tensor<1x256x56x56xf32>, tensor<256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %274 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %275 = "onnx.Add"(%273, %274) : (tensor<1x256x56x56xf32>, tensor<256x1x1xf32>) -> tensor<1x256x56x56xf32>
    %276 = "onnx.Relu"(%275) {onnx_node_name = "Relu_41"} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %277 = "onnx.Dim"(%276) {axis = 0 : si64} : (tensor<1x256x56x56xf32>) -> tensor<1xi64>
    %278 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %279 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %280 = "onnx.Concat"(%277, %278, %279) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %281 = "onnx.Reshape"(%276, %280) {allowzero = 0 : si64} : (tensor<1x256x56x56xf32>, tensor<3xi64>) -> tensor<1x256x?xf32>
    %282 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %283 = "onnx.Reshape"(%7, %282) {allowzero = 0 : si64} : (tensor<128x256x1x1xf32>, tensor<2xi64>) -> tensor<128x256xf32>
    %284 = "onnx.MatMul"(%283, %281) : (tensor<128x256xf32>, tensor<1x256x?xf32>) -> tensor<1x128x?xf32>
    %285 = "onnx.Dim"(%276) {axis = 0 : si64} : (tensor<1x256x56x56xf32>) -> tensor<1xi64>
    %286 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %287 = "onnx.Constant"() {value = dense<56> : tensor<1xi64>} : () -> tensor<1xi64>
    %288 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %289 = "onnx.Concat"(%285, %288, %286, %287) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %290 = "onnx.Reshape"(%284, %289) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x56x56xf32>
    %291 = "onnx.AveragePool"(%290) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "AveragePool_45", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x128x56x56xf32>) -> tensor<1x128x28x28xf32>
    %292 = "onnx.Concat"(%291) {axis = 1 : si64, onnx_node_name = "Concat_46"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %293 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %294 = "onnx.Mul"(%292, %293) : (tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %295 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %296 = "onnx.Add"(%294, %295) : (tensor<1x128x28x28xf32>, tensor<128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %297 = "onnx.Relu"(%296) {onnx_node_name = "Relu_48"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %298 = "onnx.Dim"(%297) {axis = 0 : si64} : (tensor<1x128x28x28xf32>) -> tensor<1xi64>
    %299 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %300 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %301 = "onnx.Concat"(%298, %299, %300) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %302 = "onnx.Reshape"(%297, %301) {allowzero = 0 : si64} : (tensor<1x128x28x28xf32>, tensor<3xi64>) -> tensor<1x128x?xf32>
    %303 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %304 = "onnx.Reshape"(%72, %303) {allowzero = 0 : si64} : (tensor<128x128x1x1xf32>, tensor<2xi64>) -> tensor<128x128xf32>
    %305 = "onnx.MatMul"(%304, %302) : (tensor<128x128xf32>, tensor<1x128x?xf32>) -> tensor<1x128x?xf32>
    %306 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %307 = "onnx.Add"(%305, %306) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %308 = "onnx.Dim"(%297) {axis = 0 : si64} : (tensor<1x128x28x28xf32>) -> tensor<1xi64>
    %309 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %310 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %311 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %312 = "onnx.Concat"(%308, %311, %309, %310) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %313 = "onnx.Reshape"(%307, %312) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %314 = "onnx.Relu"(%313) {onnx_node_name = "Relu_50"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %315 = "onnx.Conv"(%314, %8, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_51", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %316 = "onnx.Concat"(%291, %315) {axis = 1 : si64, onnx_node_name = "Concat_52"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x160x28x28xf32>
    %317 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x1x1xf32>} : () -> tensor<160x1x1xf32>
    %318 = "onnx.Mul"(%316, %317) : (tensor<1x160x28x28xf32>, tensor<160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %319 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x1x1xf32>} : () -> tensor<160x1x1xf32>
    %320 = "onnx.Add"(%318, %319) : (tensor<1x160x28x28xf32>, tensor<160x1x1xf32>) -> tensor<1x160x28x28xf32>
    %321 = "onnx.Relu"(%320) {onnx_node_name = "Relu_54"} : (tensor<1x160x28x28xf32>) -> tensor<1x160x28x28xf32>
    %322 = "onnx.Dim"(%321) {axis = 0 : si64} : (tensor<1x160x28x28xf32>) -> tensor<1xi64>
    %323 = "onnx.Constant"() {value = dense<160> : tensor<1xi64>} : () -> tensor<1xi64>
    %324 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %325 = "onnx.Concat"(%322, %323, %324) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %326 = "onnx.Reshape"(%321, %325) {allowzero = 0 : si64} : (tensor<1x160x28x28xf32>, tensor<3xi64>) -> tensor<1x160x?xf32>
    %327 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %328 = "onnx.Reshape"(%73, %327) {allowzero = 0 : si64} : (tensor<128x160x1x1xf32>, tensor<2xi64>) -> tensor<128x160xf32>
    %329 = "onnx.MatMul"(%328, %326) : (tensor<128x160xf32>, tensor<1x160x?xf32>) -> tensor<1x128x?xf32>
    %330 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %331 = "onnx.Add"(%329, %330) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %332 = "onnx.Dim"(%321) {axis = 0 : si64} : (tensor<1x160x28x28xf32>) -> tensor<1xi64>
    %333 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %334 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %335 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %336 = "onnx.Concat"(%332, %335, %333, %334) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %337 = "onnx.Reshape"(%331, %336) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %338 = "onnx.Relu"(%337) {onnx_node_name = "Relu_56"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %339 = "onnx.Conv"(%338, %9, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_57", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %340 = "onnx.Concat"(%291, %315, %339) {axis = 1 : si64, onnx_node_name = "Concat_58"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x192x28x28xf32>
    %341 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x1xf32>} : () -> tensor<192x1x1xf32>
    %342 = "onnx.Mul"(%340, %341) : (tensor<1x192x28x28xf32>, tensor<192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %343 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x1xf32>} : () -> tensor<192x1x1xf32>
    %344 = "onnx.Add"(%342, %343) : (tensor<1x192x28x28xf32>, tensor<192x1x1xf32>) -> tensor<1x192x28x28xf32>
    %345 = "onnx.Relu"(%344) {onnx_node_name = "Relu_60"} : (tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %346 = "onnx.Dim"(%345) {axis = 0 : si64} : (tensor<1x192x28x28xf32>) -> tensor<1xi64>
    %347 = "onnx.Constant"() {value = dense<192> : tensor<1xi64>} : () -> tensor<1xi64>
    %348 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %349 = "onnx.Concat"(%346, %347, %348) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %350 = "onnx.Reshape"(%345, %349) {allowzero = 0 : si64} : (tensor<1x192x28x28xf32>, tensor<3xi64>) -> tensor<1x192x?xf32>
    %351 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %352 = "onnx.Reshape"(%74, %351) {allowzero = 0 : si64} : (tensor<128x192x1x1xf32>, tensor<2xi64>) -> tensor<128x192xf32>
    %353 = "onnx.MatMul"(%352, %350) : (tensor<128x192xf32>, tensor<1x192x?xf32>) -> tensor<1x128x?xf32>
    %354 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %355 = "onnx.Add"(%353, %354) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %356 = "onnx.Dim"(%345) {axis = 0 : si64} : (tensor<1x192x28x28xf32>) -> tensor<1xi64>
    %357 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %358 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %359 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %360 = "onnx.Concat"(%356, %359, %357, %358) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %361 = "onnx.Reshape"(%355, %360) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %362 = "onnx.Relu"(%361) {onnx_node_name = "Relu_62"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %363 = "onnx.Conv"(%362, %10, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_63", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %364 = "onnx.Concat"(%291, %315, %339, %363) {axis = 1 : si64, onnx_node_name = "Concat_64"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x224x28x28xf32>
    %365 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<224x1x1xf32>} : () -> tensor<224x1x1xf32>
    %366 = "onnx.Mul"(%364, %365) : (tensor<1x224x28x28xf32>, tensor<224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %367 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<224x1x1xf32>} : () -> tensor<224x1x1xf32>
    %368 = "onnx.Add"(%366, %367) : (tensor<1x224x28x28xf32>, tensor<224x1x1xf32>) -> tensor<1x224x28x28xf32>
    %369 = "onnx.Relu"(%368) {onnx_node_name = "Relu_66"} : (tensor<1x224x28x28xf32>) -> tensor<1x224x28x28xf32>
    %370 = "onnx.Dim"(%369) {axis = 0 : si64} : (tensor<1x224x28x28xf32>) -> tensor<1xi64>
    %371 = "onnx.Constant"() {value = dense<224> : tensor<1xi64>} : () -> tensor<1xi64>
    %372 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %373 = "onnx.Concat"(%370, %371, %372) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %374 = "onnx.Reshape"(%369, %373) {allowzero = 0 : si64} : (tensor<1x224x28x28xf32>, tensor<3xi64>) -> tensor<1x224x?xf32>
    %375 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %376 = "onnx.Reshape"(%75, %375) {allowzero = 0 : si64} : (tensor<128x224x1x1xf32>, tensor<2xi64>) -> tensor<128x224xf32>
    %377 = "onnx.MatMul"(%376, %374) : (tensor<128x224xf32>, tensor<1x224x?xf32>) -> tensor<1x128x?xf32>
    %378 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %379 = "onnx.Add"(%377, %378) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %380 = "onnx.Dim"(%369) {axis = 0 : si64} : (tensor<1x224x28x28xf32>) -> tensor<1xi64>
    %381 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %382 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %383 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %384 = "onnx.Concat"(%380, %383, %381, %382) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %385 = "onnx.Reshape"(%379, %384) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %386 = "onnx.Relu"(%385) {onnx_node_name = "Relu_68"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %387 = "onnx.Conv"(%386, %11, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_69", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %388 = "onnx.Concat"(%291, %315, %339, %363, %387) {axis = 1 : si64, onnx_node_name = "Concat_70"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x256x28x28xf32>
    %389 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %390 = "onnx.Mul"(%388, %389) : (tensor<1x256x28x28xf32>, tensor<256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %391 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %392 = "onnx.Add"(%390, %391) : (tensor<1x256x28x28xf32>, tensor<256x1x1xf32>) -> tensor<1x256x28x28xf32>
    %393 = "onnx.Relu"(%392) {onnx_node_name = "Relu_72"} : (tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %394 = "onnx.Dim"(%393) {axis = 0 : si64} : (tensor<1x256x28x28xf32>) -> tensor<1xi64>
    %395 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %396 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %397 = "onnx.Concat"(%394, %395, %396) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %398 = "onnx.Reshape"(%393, %397) {allowzero = 0 : si64} : (tensor<1x256x28x28xf32>, tensor<3xi64>) -> tensor<1x256x?xf32>
    %399 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %400 = "onnx.Reshape"(%76, %399) {allowzero = 0 : si64} : (tensor<128x256x1x1xf32>, tensor<2xi64>) -> tensor<128x256xf32>
    %401 = "onnx.MatMul"(%400, %398) : (tensor<128x256xf32>, tensor<1x256x?xf32>) -> tensor<1x128x?xf32>
    %402 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %403 = "onnx.Add"(%401, %402) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %404 = "onnx.Dim"(%393) {axis = 0 : si64} : (tensor<1x256x28x28xf32>) -> tensor<1xi64>
    %405 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %406 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %407 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %408 = "onnx.Concat"(%404, %407, %405, %406) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %409 = "onnx.Reshape"(%403, %408) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %410 = "onnx.Relu"(%409) {onnx_node_name = "Relu_74"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %411 = "onnx.Conv"(%410, %12, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_75", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %412 = "onnx.Concat"(%291, %315, %339, %363, %387, %411) {axis = 1 : si64, onnx_node_name = "Concat_76"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x288x28x28xf32>
    %413 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<288x1x1xf32>} : () -> tensor<288x1x1xf32>
    %414 = "onnx.Mul"(%412, %413) : (tensor<1x288x28x28xf32>, tensor<288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %415 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<288x1x1xf32>} : () -> tensor<288x1x1xf32>
    %416 = "onnx.Add"(%414, %415) : (tensor<1x288x28x28xf32>, tensor<288x1x1xf32>) -> tensor<1x288x28x28xf32>
    %417 = "onnx.Relu"(%416) {onnx_node_name = "Relu_78"} : (tensor<1x288x28x28xf32>) -> tensor<1x288x28x28xf32>
    %418 = "onnx.Dim"(%417) {axis = 0 : si64} : (tensor<1x288x28x28xf32>) -> tensor<1xi64>
    %419 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %420 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %421 = "onnx.Concat"(%418, %419, %420) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %422 = "onnx.Reshape"(%417, %421) {allowzero = 0 : si64} : (tensor<1x288x28x28xf32>, tensor<3xi64>) -> tensor<1x288x?xf32>
    %423 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %424 = "onnx.Reshape"(%77, %423) {allowzero = 0 : si64} : (tensor<128x288x1x1xf32>, tensor<2xi64>) -> tensor<128x288xf32>
    %425 = "onnx.MatMul"(%424, %422) : (tensor<128x288xf32>, tensor<1x288x?xf32>) -> tensor<1x128x?xf32>
    %426 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %427 = "onnx.Add"(%425, %426) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %428 = "onnx.Dim"(%417) {axis = 0 : si64} : (tensor<1x288x28x28xf32>) -> tensor<1xi64>
    %429 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %430 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %431 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %432 = "onnx.Concat"(%428, %431, %429, %430) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %433 = "onnx.Reshape"(%427, %432) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %434 = "onnx.Relu"(%433) {onnx_node_name = "Relu_80"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %435 = "onnx.Conv"(%434, %13, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_81", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %436 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435) {axis = 1 : si64, onnx_node_name = "Concat_82"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x320x28x28xf32>
    %437 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x1x1xf32>} : () -> tensor<320x1x1xf32>
    %438 = "onnx.Mul"(%436, %437) : (tensor<1x320x28x28xf32>, tensor<320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %439 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x1x1xf32>} : () -> tensor<320x1x1xf32>
    %440 = "onnx.Add"(%438, %439) : (tensor<1x320x28x28xf32>, tensor<320x1x1xf32>) -> tensor<1x320x28x28xf32>
    %441 = "onnx.Relu"(%440) {onnx_node_name = "Relu_84"} : (tensor<1x320x28x28xf32>) -> tensor<1x320x28x28xf32>
    %442 = "onnx.Dim"(%441) {axis = 0 : si64} : (tensor<1x320x28x28xf32>) -> tensor<1xi64>
    %443 = "onnx.Constant"() {value = dense<320> : tensor<1xi64>} : () -> tensor<1xi64>
    %444 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %445 = "onnx.Concat"(%442, %443, %444) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %446 = "onnx.Reshape"(%441, %445) {allowzero = 0 : si64} : (tensor<1x320x28x28xf32>, tensor<3xi64>) -> tensor<1x320x?xf32>
    %447 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %448 = "onnx.Reshape"(%78, %447) {allowzero = 0 : si64} : (tensor<128x320x1x1xf32>, tensor<2xi64>) -> tensor<128x320xf32>
    %449 = "onnx.MatMul"(%448, %446) : (tensor<128x320xf32>, tensor<1x320x?xf32>) -> tensor<1x128x?xf32>
    %450 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %451 = "onnx.Add"(%449, %450) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %452 = "onnx.Dim"(%441) {axis = 0 : si64} : (tensor<1x320x28x28xf32>) -> tensor<1xi64>
    %453 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %454 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %455 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %456 = "onnx.Concat"(%452, %455, %453, %454) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %457 = "onnx.Reshape"(%451, %456) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %458 = "onnx.Relu"(%457) {onnx_node_name = "Relu_86"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %459 = "onnx.Conv"(%458, %14, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_87", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %460 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435, %459) {axis = 1 : si64, onnx_node_name = "Concat_88"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x352x28x28xf32>
    %461 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<352x1x1xf32>} : () -> tensor<352x1x1xf32>
    %462 = "onnx.Mul"(%460, %461) : (tensor<1x352x28x28xf32>, tensor<352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %463 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<352x1x1xf32>} : () -> tensor<352x1x1xf32>
    %464 = "onnx.Add"(%462, %463) : (tensor<1x352x28x28xf32>, tensor<352x1x1xf32>) -> tensor<1x352x28x28xf32>
    %465 = "onnx.Relu"(%464) {onnx_node_name = "Relu_90"} : (tensor<1x352x28x28xf32>) -> tensor<1x352x28x28xf32>
    %466 = "onnx.Dim"(%465) {axis = 0 : si64} : (tensor<1x352x28x28xf32>) -> tensor<1xi64>
    %467 = "onnx.Constant"() {value = dense<352> : tensor<1xi64>} : () -> tensor<1xi64>
    %468 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %469 = "onnx.Concat"(%466, %467, %468) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %470 = "onnx.Reshape"(%465, %469) {allowzero = 0 : si64} : (tensor<1x352x28x28xf32>, tensor<3xi64>) -> tensor<1x352x?xf32>
    %471 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %472 = "onnx.Reshape"(%79, %471) {allowzero = 0 : si64} : (tensor<128x352x1x1xf32>, tensor<2xi64>) -> tensor<128x352xf32>
    %473 = "onnx.MatMul"(%472, %470) : (tensor<128x352xf32>, tensor<1x352x?xf32>) -> tensor<1x128x?xf32>
    %474 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %475 = "onnx.Add"(%473, %474) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %476 = "onnx.Dim"(%465) {axis = 0 : si64} : (tensor<1x352x28x28xf32>) -> tensor<1xi64>
    %477 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %478 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %479 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %480 = "onnx.Concat"(%476, %479, %477, %478) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %481 = "onnx.Reshape"(%475, %480) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %482 = "onnx.Relu"(%481) {onnx_node_name = "Relu_92"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %483 = "onnx.Conv"(%482, %15, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_93", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %484 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435, %459, %483) {axis = 1 : si64, onnx_node_name = "Concat_94"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x384x28x28xf32>
    %485 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x1xf32>} : () -> tensor<384x1x1xf32>
    %486 = "onnx.Mul"(%484, %485) : (tensor<1x384x28x28xf32>, tensor<384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %487 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x1xf32>} : () -> tensor<384x1x1xf32>
    %488 = "onnx.Add"(%486, %487) : (tensor<1x384x28x28xf32>, tensor<384x1x1xf32>) -> tensor<1x384x28x28xf32>
    %489 = "onnx.Relu"(%488) {onnx_node_name = "Relu_96"} : (tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %490 = "onnx.Dim"(%489) {axis = 0 : si64} : (tensor<1x384x28x28xf32>) -> tensor<1xi64>
    %491 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %492 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %493 = "onnx.Concat"(%490, %491, %492) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %494 = "onnx.Reshape"(%489, %493) {allowzero = 0 : si64} : (tensor<1x384x28x28xf32>, tensor<3xi64>) -> tensor<1x384x?xf32>
    %495 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %496 = "onnx.Reshape"(%80, %495) {allowzero = 0 : si64} : (tensor<128x384x1x1xf32>, tensor<2xi64>) -> tensor<128x384xf32>
    %497 = "onnx.MatMul"(%496, %494) : (tensor<128x384xf32>, tensor<1x384x?xf32>) -> tensor<1x128x?xf32>
    %498 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %499 = "onnx.Add"(%497, %498) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %500 = "onnx.Dim"(%489) {axis = 0 : si64} : (tensor<1x384x28x28xf32>) -> tensor<1xi64>
    %501 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %502 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %503 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %504 = "onnx.Concat"(%500, %503, %501, %502) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %505 = "onnx.Reshape"(%499, %504) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %506 = "onnx.Relu"(%505) {onnx_node_name = "Relu_98"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %507 = "onnx.Conv"(%506, %16, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_99", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %508 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435, %459, %483, %507) {axis = 1 : si64, onnx_node_name = "Concat_100"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x416x28x28xf32>
    %509 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<416x1x1xf32>} : () -> tensor<416x1x1xf32>
    %510 = "onnx.Mul"(%508, %509) : (tensor<1x416x28x28xf32>, tensor<416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %511 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<416x1x1xf32>} : () -> tensor<416x1x1xf32>
    %512 = "onnx.Add"(%510, %511) : (tensor<1x416x28x28xf32>, tensor<416x1x1xf32>) -> tensor<1x416x28x28xf32>
    %513 = "onnx.Relu"(%512) {onnx_node_name = "Relu_102"} : (tensor<1x416x28x28xf32>) -> tensor<1x416x28x28xf32>
    %514 = "onnx.Dim"(%513) {axis = 0 : si64} : (tensor<1x416x28x28xf32>) -> tensor<1xi64>
    %515 = "onnx.Constant"() {value = dense<416> : tensor<1xi64>} : () -> tensor<1xi64>
    %516 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %517 = "onnx.Concat"(%514, %515, %516) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %518 = "onnx.Reshape"(%513, %517) {allowzero = 0 : si64} : (tensor<1x416x28x28xf32>, tensor<3xi64>) -> tensor<1x416x?xf32>
    %519 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %520 = "onnx.Reshape"(%81, %519) {allowzero = 0 : si64} : (tensor<128x416x1x1xf32>, tensor<2xi64>) -> tensor<128x416xf32>
    %521 = "onnx.MatMul"(%520, %518) : (tensor<128x416xf32>, tensor<1x416x?xf32>) -> tensor<1x128x?xf32>
    %522 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %523 = "onnx.Add"(%521, %522) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %524 = "onnx.Dim"(%513) {axis = 0 : si64} : (tensor<1x416x28x28xf32>) -> tensor<1xi64>
    %525 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %526 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %527 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %528 = "onnx.Concat"(%524, %527, %525, %526) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %529 = "onnx.Reshape"(%523, %528) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %530 = "onnx.Relu"(%529) {onnx_node_name = "Relu_104"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %531 = "onnx.Conv"(%530, %17, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_105", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %532 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435, %459, %483, %507, %531) {axis = 1 : si64, onnx_node_name = "Concat_106"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x448x28x28xf32>
    %533 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<448x1x1xf32>} : () -> tensor<448x1x1xf32>
    %534 = "onnx.Mul"(%532, %533) : (tensor<1x448x28x28xf32>, tensor<448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %535 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<448x1x1xf32>} : () -> tensor<448x1x1xf32>
    %536 = "onnx.Add"(%534, %535) : (tensor<1x448x28x28xf32>, tensor<448x1x1xf32>) -> tensor<1x448x28x28xf32>
    %537 = "onnx.Relu"(%536) {onnx_node_name = "Relu_108"} : (tensor<1x448x28x28xf32>) -> tensor<1x448x28x28xf32>
    %538 = "onnx.Dim"(%537) {axis = 0 : si64} : (tensor<1x448x28x28xf32>) -> tensor<1xi64>
    %539 = "onnx.Constant"() {value = dense<448> : tensor<1xi64>} : () -> tensor<1xi64>
    %540 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %541 = "onnx.Concat"(%538, %539, %540) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %542 = "onnx.Reshape"(%537, %541) {allowzero = 0 : si64} : (tensor<1x448x28x28xf32>, tensor<3xi64>) -> tensor<1x448x?xf32>
    %543 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %544 = "onnx.Reshape"(%82, %543) {allowzero = 0 : si64} : (tensor<128x448x1x1xf32>, tensor<2xi64>) -> tensor<128x448xf32>
    %545 = "onnx.MatMul"(%544, %542) : (tensor<128x448xf32>, tensor<1x448x?xf32>) -> tensor<1x128x?xf32>
    %546 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %547 = "onnx.Add"(%545, %546) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %548 = "onnx.Dim"(%537) {axis = 0 : si64} : (tensor<1x448x28x28xf32>) -> tensor<1xi64>
    %549 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %550 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %551 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %552 = "onnx.Concat"(%548, %551, %549, %550) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %553 = "onnx.Reshape"(%547, %552) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %554 = "onnx.Relu"(%553) {onnx_node_name = "Relu_110"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %555 = "onnx.Conv"(%554, %18, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_111", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %556 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435, %459, %483, %507, %531, %555) {axis = 1 : si64, onnx_node_name = "Concat_112"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x480x28x28xf32>
    %557 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<480x1x1xf32>} : () -> tensor<480x1x1xf32>
    %558 = "onnx.Mul"(%556, %557) : (tensor<1x480x28x28xf32>, tensor<480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %559 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<480x1x1xf32>} : () -> tensor<480x1x1xf32>
    %560 = "onnx.Add"(%558, %559) : (tensor<1x480x28x28xf32>, tensor<480x1x1xf32>) -> tensor<1x480x28x28xf32>
    %561 = "onnx.Relu"(%560) {onnx_node_name = "Relu_114"} : (tensor<1x480x28x28xf32>) -> tensor<1x480x28x28xf32>
    %562 = "onnx.Dim"(%561) {axis = 0 : si64} : (tensor<1x480x28x28xf32>) -> tensor<1xi64>
    %563 = "onnx.Constant"() {value = dense<480> : tensor<1xi64>} : () -> tensor<1xi64>
    %564 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %565 = "onnx.Concat"(%562, %563, %564) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %566 = "onnx.Reshape"(%561, %565) {allowzero = 0 : si64} : (tensor<1x480x28x28xf32>, tensor<3xi64>) -> tensor<1x480x?xf32>
    %567 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %568 = "onnx.Reshape"(%83, %567) {allowzero = 0 : si64} : (tensor<128x480x1x1xf32>, tensor<2xi64>) -> tensor<128x480xf32>
    %569 = "onnx.MatMul"(%568, %566) : (tensor<128x480xf32>, tensor<1x480x?xf32>) -> tensor<1x128x?xf32>
    %570 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %571 = "onnx.Add"(%569, %570) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %572 = "onnx.Dim"(%561) {axis = 0 : si64} : (tensor<1x480x28x28xf32>) -> tensor<1xi64>
    %573 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %574 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %575 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %576 = "onnx.Concat"(%572, %575, %573, %574) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %577 = "onnx.Reshape"(%571, %576) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x28x28xf32>
    %578 = "onnx.Relu"(%577) {onnx_node_name = "Relu_116"} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %579 = "onnx.Conv"(%578, %19, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_117", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x28x28xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x28x28xf32>
    %580 = "onnx.Concat"(%291, %315, %339, %363, %387, %411, %435, %459, %483, %507, %531, %555, %579) {axis = 1 : si64, onnx_node_name = "Concat_118"} : (tensor<1x128x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x512x28x28xf32>
    %581 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %582 = "onnx.Mul"(%580, %581) : (tensor<1x512x28x28xf32>, tensor<512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %583 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %584 = "onnx.Add"(%582, %583) : (tensor<1x512x28x28xf32>, tensor<512x1x1xf32>) -> tensor<1x512x28x28xf32>
    %585 = "onnx.Relu"(%584) {onnx_node_name = "Relu_120"} : (tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %586 = "onnx.Dim"(%585) {axis = 0 : si64} : (tensor<1x512x28x28xf32>) -> tensor<1xi64>
    %587 = "onnx.Constant"() {value = dense<512> : tensor<1xi64>} : () -> tensor<1xi64>
    %588 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %589 = "onnx.Concat"(%586, %587, %588) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %590 = "onnx.Reshape"(%585, %589) {allowzero = 0 : si64} : (tensor<1x512x28x28xf32>, tensor<3xi64>) -> tensor<1x512x?xf32>
    %591 = "onnx.Constant"() {value = dense<[256, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %592 = "onnx.Reshape"(%20, %591) {allowzero = 0 : si64} : (tensor<256x512x1x1xf32>, tensor<2xi64>) -> tensor<256x512xf32>
    %593 = "onnx.MatMul"(%592, %590) : (tensor<256x512xf32>, tensor<1x512x?xf32>) -> tensor<1x256x?xf32>
    %594 = "onnx.Dim"(%585) {axis = 0 : si64} : (tensor<1x512x28x28xf32>) -> tensor<1xi64>
    %595 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %596 = "onnx.Constant"() {value = dense<28> : tensor<1xi64>} : () -> tensor<1xi64>
    %597 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %598 = "onnx.Concat"(%594, %597, %595, %596) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %599 = "onnx.Reshape"(%593, %598) {allowzero = 0 : si64} : (tensor<1x256x?xf32>, tensor<4xi64>) -> tensor<1x256x28x28xf32>
    %600 = "onnx.AveragePool"(%599) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "AveragePool_124", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x256x28x28xf32>) -> tensor<1x256x14x14xf32>
    %601 = "onnx.Concat"(%600) {axis = 1 : si64, onnx_node_name = "Concat_125"} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %602 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %603 = "onnx.Mul"(%601, %602) : (tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %604 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %605 = "onnx.Add"(%603, %604) : (tensor<1x256x14x14xf32>, tensor<256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %606 = "onnx.Relu"(%605) {onnx_node_name = "Relu_127"} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %607 = "onnx.Dim"(%606) {axis = 0 : si64} : (tensor<1x256x14x14xf32>) -> tensor<1xi64>
    %608 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %609 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %610 = "onnx.Concat"(%607, %608, %609) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %611 = "onnx.Reshape"(%606, %610) {allowzero = 0 : si64} : (tensor<1x256x14x14xf32>, tensor<3xi64>) -> tensor<1x256x?xf32>
    %612 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %613 = "onnx.Reshape"(%84, %612) {allowzero = 0 : si64} : (tensor<128x256x1x1xf32>, tensor<2xi64>) -> tensor<128x256xf32>
    %614 = "onnx.MatMul"(%613, %611) : (tensor<128x256xf32>, tensor<1x256x?xf32>) -> tensor<1x128x?xf32>
    %615 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %616 = "onnx.Add"(%614, %615) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %617 = "onnx.Dim"(%606) {axis = 0 : si64} : (tensor<1x256x14x14xf32>) -> tensor<1xi64>
    %618 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %619 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %620 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %621 = "onnx.Concat"(%617, %620, %618, %619) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %622 = "onnx.Reshape"(%616, %621) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %623 = "onnx.Relu"(%622) {onnx_node_name = "Relu_129"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %624 = "onnx.Conv"(%623, %21, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_130", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %625 = "onnx.Concat"(%600, %624) {axis = 1 : si64, onnx_node_name = "Concat_131"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x288x14x14xf32>
    %626 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<288x1x1xf32>} : () -> tensor<288x1x1xf32>
    %627 = "onnx.Mul"(%625, %626) : (tensor<1x288x14x14xf32>, tensor<288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %628 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<288x1x1xf32>} : () -> tensor<288x1x1xf32>
    %629 = "onnx.Add"(%627, %628) : (tensor<1x288x14x14xf32>, tensor<288x1x1xf32>) -> tensor<1x288x14x14xf32>
    %630 = "onnx.Relu"(%629) {onnx_node_name = "Relu_133"} : (tensor<1x288x14x14xf32>) -> tensor<1x288x14x14xf32>
    %631 = "onnx.Dim"(%630) {axis = 0 : si64} : (tensor<1x288x14x14xf32>) -> tensor<1xi64>
    %632 = "onnx.Constant"() {value = dense<288> : tensor<1xi64>} : () -> tensor<1xi64>
    %633 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %634 = "onnx.Concat"(%631, %632, %633) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %635 = "onnx.Reshape"(%630, %634) {allowzero = 0 : si64} : (tensor<1x288x14x14xf32>, tensor<3xi64>) -> tensor<1x288x?xf32>
    %636 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %637 = "onnx.Reshape"(%85, %636) {allowzero = 0 : si64} : (tensor<128x288x1x1xf32>, tensor<2xi64>) -> tensor<128x288xf32>
    %638 = "onnx.MatMul"(%637, %635) : (tensor<128x288xf32>, tensor<1x288x?xf32>) -> tensor<1x128x?xf32>
    %639 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %640 = "onnx.Add"(%638, %639) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %641 = "onnx.Dim"(%630) {axis = 0 : si64} : (tensor<1x288x14x14xf32>) -> tensor<1xi64>
    %642 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %643 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %644 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %645 = "onnx.Concat"(%641, %644, %642, %643) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %646 = "onnx.Reshape"(%640, %645) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %647 = "onnx.Relu"(%646) {onnx_node_name = "Relu_135"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %648 = "onnx.Conv"(%647, %22, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_136", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %649 = "onnx.Concat"(%600, %624, %648) {axis = 1 : si64, onnx_node_name = "Concat_137"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x320x14x14xf32>
    %650 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x1x1xf32>} : () -> tensor<320x1x1xf32>
    %651 = "onnx.Mul"(%649, %650) : (tensor<1x320x14x14xf32>, tensor<320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %652 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x1x1xf32>} : () -> tensor<320x1x1xf32>
    %653 = "onnx.Add"(%651, %652) : (tensor<1x320x14x14xf32>, tensor<320x1x1xf32>) -> tensor<1x320x14x14xf32>
    %654 = "onnx.Relu"(%653) {onnx_node_name = "Relu_139"} : (tensor<1x320x14x14xf32>) -> tensor<1x320x14x14xf32>
    %655 = "onnx.Dim"(%654) {axis = 0 : si64} : (tensor<1x320x14x14xf32>) -> tensor<1xi64>
    %656 = "onnx.Constant"() {value = dense<320> : tensor<1xi64>} : () -> tensor<1xi64>
    %657 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %658 = "onnx.Concat"(%655, %656, %657) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %659 = "onnx.Reshape"(%654, %658) {allowzero = 0 : si64} : (tensor<1x320x14x14xf32>, tensor<3xi64>) -> tensor<1x320x?xf32>
    %660 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %661 = "onnx.Reshape"(%86, %660) {allowzero = 0 : si64} : (tensor<128x320x1x1xf32>, tensor<2xi64>) -> tensor<128x320xf32>
    %662 = "onnx.MatMul"(%661, %659) : (tensor<128x320xf32>, tensor<1x320x?xf32>) -> tensor<1x128x?xf32>
    %663 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %664 = "onnx.Add"(%662, %663) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %665 = "onnx.Dim"(%654) {axis = 0 : si64} : (tensor<1x320x14x14xf32>) -> tensor<1xi64>
    %666 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %667 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %668 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %669 = "onnx.Concat"(%665, %668, %666, %667) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %670 = "onnx.Reshape"(%664, %669) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %671 = "onnx.Relu"(%670) {onnx_node_name = "Relu_141"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %672 = "onnx.Conv"(%671, %23, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_142", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %673 = "onnx.Concat"(%600, %624, %648, %672) {axis = 1 : si64, onnx_node_name = "Concat_143"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x352x14x14xf32>
    %674 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<352x1x1xf32>} : () -> tensor<352x1x1xf32>
    %675 = "onnx.Mul"(%673, %674) : (tensor<1x352x14x14xf32>, tensor<352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %676 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<352x1x1xf32>} : () -> tensor<352x1x1xf32>
    %677 = "onnx.Add"(%675, %676) : (tensor<1x352x14x14xf32>, tensor<352x1x1xf32>) -> tensor<1x352x14x14xf32>
    %678 = "onnx.Relu"(%677) {onnx_node_name = "Relu_145"} : (tensor<1x352x14x14xf32>) -> tensor<1x352x14x14xf32>
    %679 = "onnx.Dim"(%678) {axis = 0 : si64} : (tensor<1x352x14x14xf32>) -> tensor<1xi64>
    %680 = "onnx.Constant"() {value = dense<352> : tensor<1xi64>} : () -> tensor<1xi64>
    %681 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %682 = "onnx.Concat"(%679, %680, %681) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %683 = "onnx.Reshape"(%678, %682) {allowzero = 0 : si64} : (tensor<1x352x14x14xf32>, tensor<3xi64>) -> tensor<1x352x?xf32>
    %684 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %685 = "onnx.Reshape"(%87, %684) {allowzero = 0 : si64} : (tensor<128x352x1x1xf32>, tensor<2xi64>) -> tensor<128x352xf32>
    %686 = "onnx.MatMul"(%685, %683) : (tensor<128x352xf32>, tensor<1x352x?xf32>) -> tensor<1x128x?xf32>
    %687 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %688 = "onnx.Add"(%686, %687) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %689 = "onnx.Dim"(%678) {axis = 0 : si64} : (tensor<1x352x14x14xf32>) -> tensor<1xi64>
    %690 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %691 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %692 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %693 = "onnx.Concat"(%689, %692, %690, %691) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %694 = "onnx.Reshape"(%688, %693) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %695 = "onnx.Relu"(%694) {onnx_node_name = "Relu_147"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %696 = "onnx.Conv"(%695, %24, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_148", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %697 = "onnx.Concat"(%600, %624, %648, %672, %696) {axis = 1 : si64, onnx_node_name = "Concat_149"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x384x14x14xf32>
    %698 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x1xf32>} : () -> tensor<384x1x1xf32>
    %699 = "onnx.Mul"(%697, %698) : (tensor<1x384x14x14xf32>, tensor<384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %700 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x1xf32>} : () -> tensor<384x1x1xf32>
    %701 = "onnx.Add"(%699, %700) : (tensor<1x384x14x14xf32>, tensor<384x1x1xf32>) -> tensor<1x384x14x14xf32>
    %702 = "onnx.Relu"(%701) {onnx_node_name = "Relu_151"} : (tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %703 = "onnx.Dim"(%702) {axis = 0 : si64} : (tensor<1x384x14x14xf32>) -> tensor<1xi64>
    %704 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %705 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %706 = "onnx.Concat"(%703, %704, %705) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %707 = "onnx.Reshape"(%702, %706) {allowzero = 0 : si64} : (tensor<1x384x14x14xf32>, tensor<3xi64>) -> tensor<1x384x?xf32>
    %708 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %709 = "onnx.Reshape"(%88, %708) {allowzero = 0 : si64} : (tensor<128x384x1x1xf32>, tensor<2xi64>) -> tensor<128x384xf32>
    %710 = "onnx.MatMul"(%709, %707) : (tensor<128x384xf32>, tensor<1x384x?xf32>) -> tensor<1x128x?xf32>
    %711 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %712 = "onnx.Add"(%710, %711) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %713 = "onnx.Dim"(%702) {axis = 0 : si64} : (tensor<1x384x14x14xf32>) -> tensor<1xi64>
    %714 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %715 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %716 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %717 = "onnx.Concat"(%713, %716, %714, %715) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %718 = "onnx.Reshape"(%712, %717) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %719 = "onnx.Relu"(%718) {onnx_node_name = "Relu_153"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %720 = "onnx.Conv"(%719, %25, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_154", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %721 = "onnx.Concat"(%600, %624, %648, %672, %696, %720) {axis = 1 : si64, onnx_node_name = "Concat_155"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x416x14x14xf32>
    %722 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<416x1x1xf32>} : () -> tensor<416x1x1xf32>
    %723 = "onnx.Mul"(%721, %722) : (tensor<1x416x14x14xf32>, tensor<416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %724 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<416x1x1xf32>} : () -> tensor<416x1x1xf32>
    %725 = "onnx.Add"(%723, %724) : (tensor<1x416x14x14xf32>, tensor<416x1x1xf32>) -> tensor<1x416x14x14xf32>
    %726 = "onnx.Relu"(%725) {onnx_node_name = "Relu_157"} : (tensor<1x416x14x14xf32>) -> tensor<1x416x14x14xf32>
    %727 = "onnx.Dim"(%726) {axis = 0 : si64} : (tensor<1x416x14x14xf32>) -> tensor<1xi64>
    %728 = "onnx.Constant"() {value = dense<416> : tensor<1xi64>} : () -> tensor<1xi64>
    %729 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %730 = "onnx.Concat"(%727, %728, %729) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %731 = "onnx.Reshape"(%726, %730) {allowzero = 0 : si64} : (tensor<1x416x14x14xf32>, tensor<3xi64>) -> tensor<1x416x?xf32>
    %732 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %733 = "onnx.Reshape"(%89, %732) {allowzero = 0 : si64} : (tensor<128x416x1x1xf32>, tensor<2xi64>) -> tensor<128x416xf32>
    %734 = "onnx.MatMul"(%733, %731) : (tensor<128x416xf32>, tensor<1x416x?xf32>) -> tensor<1x128x?xf32>
    %735 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %736 = "onnx.Add"(%734, %735) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %737 = "onnx.Dim"(%726) {axis = 0 : si64} : (tensor<1x416x14x14xf32>) -> tensor<1xi64>
    %738 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %739 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %740 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %741 = "onnx.Concat"(%737, %740, %738, %739) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %742 = "onnx.Reshape"(%736, %741) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %743 = "onnx.Relu"(%742) {onnx_node_name = "Relu_159"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %744 = "onnx.Conv"(%743, %26, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_160", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %745 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744) {axis = 1 : si64, onnx_node_name = "Concat_161"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x448x14x14xf32>
    %746 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<448x1x1xf32>} : () -> tensor<448x1x1xf32>
    %747 = "onnx.Mul"(%745, %746) : (tensor<1x448x14x14xf32>, tensor<448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %748 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<448x1x1xf32>} : () -> tensor<448x1x1xf32>
    %749 = "onnx.Add"(%747, %748) : (tensor<1x448x14x14xf32>, tensor<448x1x1xf32>) -> tensor<1x448x14x14xf32>
    %750 = "onnx.Relu"(%749) {onnx_node_name = "Relu_163"} : (tensor<1x448x14x14xf32>) -> tensor<1x448x14x14xf32>
    %751 = "onnx.Dim"(%750) {axis = 0 : si64} : (tensor<1x448x14x14xf32>) -> tensor<1xi64>
    %752 = "onnx.Constant"() {value = dense<448> : tensor<1xi64>} : () -> tensor<1xi64>
    %753 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %754 = "onnx.Concat"(%751, %752, %753) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %755 = "onnx.Reshape"(%750, %754) {allowzero = 0 : si64} : (tensor<1x448x14x14xf32>, tensor<3xi64>) -> tensor<1x448x?xf32>
    %756 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %757 = "onnx.Reshape"(%90, %756) {allowzero = 0 : si64} : (tensor<128x448x1x1xf32>, tensor<2xi64>) -> tensor<128x448xf32>
    %758 = "onnx.MatMul"(%757, %755) : (tensor<128x448xf32>, tensor<1x448x?xf32>) -> tensor<1x128x?xf32>
    %759 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %760 = "onnx.Add"(%758, %759) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %761 = "onnx.Dim"(%750) {axis = 0 : si64} : (tensor<1x448x14x14xf32>) -> tensor<1xi64>
    %762 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %763 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %764 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %765 = "onnx.Concat"(%761, %764, %762, %763) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %766 = "onnx.Reshape"(%760, %765) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %767 = "onnx.Relu"(%766) {onnx_node_name = "Relu_165"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %768 = "onnx.Conv"(%767, %27, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_166", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %769 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768) {axis = 1 : si64, onnx_node_name = "Concat_167"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x480x14x14xf32>
    %770 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<480x1x1xf32>} : () -> tensor<480x1x1xf32>
    %771 = "onnx.Mul"(%769, %770) : (tensor<1x480x14x14xf32>, tensor<480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %772 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<480x1x1xf32>} : () -> tensor<480x1x1xf32>
    %773 = "onnx.Add"(%771, %772) : (tensor<1x480x14x14xf32>, tensor<480x1x1xf32>) -> tensor<1x480x14x14xf32>
    %774 = "onnx.Relu"(%773) {onnx_node_name = "Relu_169"} : (tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %775 = "onnx.Dim"(%774) {axis = 0 : si64} : (tensor<1x480x14x14xf32>) -> tensor<1xi64>
    %776 = "onnx.Constant"() {value = dense<480> : tensor<1xi64>} : () -> tensor<1xi64>
    %777 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %778 = "onnx.Concat"(%775, %776, %777) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %779 = "onnx.Reshape"(%774, %778) {allowzero = 0 : si64} : (tensor<1x480x14x14xf32>, tensor<3xi64>) -> tensor<1x480x?xf32>
    %780 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %781 = "onnx.Reshape"(%91, %780) {allowzero = 0 : si64} : (tensor<128x480x1x1xf32>, tensor<2xi64>) -> tensor<128x480xf32>
    %782 = "onnx.MatMul"(%781, %779) : (tensor<128x480xf32>, tensor<1x480x?xf32>) -> tensor<1x128x?xf32>
    %783 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %784 = "onnx.Add"(%782, %783) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %785 = "onnx.Dim"(%774) {axis = 0 : si64} : (tensor<1x480x14x14xf32>) -> tensor<1xi64>
    %786 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %787 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %788 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %789 = "onnx.Concat"(%785, %788, %786, %787) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %790 = "onnx.Reshape"(%784, %789) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %791 = "onnx.Relu"(%790) {onnx_node_name = "Relu_171"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %792 = "onnx.Conv"(%791, %28, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_172", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %793 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792) {axis = 1 : si64, onnx_node_name = "Concat_173"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x512x14x14xf32>
    %794 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %795 = "onnx.Mul"(%793, %794) : (tensor<1x512x14x14xf32>, tensor<512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %796 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %797 = "onnx.Add"(%795, %796) : (tensor<1x512x14x14xf32>, tensor<512x1x1xf32>) -> tensor<1x512x14x14xf32>
    %798 = "onnx.Relu"(%797) {onnx_node_name = "Relu_175"} : (tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %799 = "onnx.Dim"(%798) {axis = 0 : si64} : (tensor<1x512x14x14xf32>) -> tensor<1xi64>
    %800 = "onnx.Constant"() {value = dense<512> : tensor<1xi64>} : () -> tensor<1xi64>
    %801 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %802 = "onnx.Concat"(%799, %800, %801) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %803 = "onnx.Reshape"(%798, %802) {allowzero = 0 : si64} : (tensor<1x512x14x14xf32>, tensor<3xi64>) -> tensor<1x512x?xf32>
    %804 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %805 = "onnx.Reshape"(%92, %804) {allowzero = 0 : si64} : (tensor<128x512x1x1xf32>, tensor<2xi64>) -> tensor<128x512xf32>
    %806 = "onnx.MatMul"(%805, %803) : (tensor<128x512xf32>, tensor<1x512x?xf32>) -> tensor<1x128x?xf32>
    %807 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %808 = "onnx.Add"(%806, %807) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %809 = "onnx.Dim"(%798) {axis = 0 : si64} : (tensor<1x512x14x14xf32>) -> tensor<1xi64>
    %810 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %811 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %812 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %813 = "onnx.Concat"(%809, %812, %810, %811) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %814 = "onnx.Reshape"(%808, %813) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %815 = "onnx.Relu"(%814) {onnx_node_name = "Relu_177"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %816 = "onnx.Conv"(%815, %29, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_178", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %817 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816) {axis = 1 : si64, onnx_node_name = "Concat_179"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x544x14x14xf32>
    %818 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<544x1x1xf32>} : () -> tensor<544x1x1xf32>
    %819 = "onnx.Mul"(%817, %818) : (tensor<1x544x14x14xf32>, tensor<544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %820 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<544x1x1xf32>} : () -> tensor<544x1x1xf32>
    %821 = "onnx.Add"(%819, %820) : (tensor<1x544x14x14xf32>, tensor<544x1x1xf32>) -> tensor<1x544x14x14xf32>
    %822 = "onnx.Relu"(%821) {onnx_node_name = "Relu_181"} : (tensor<1x544x14x14xf32>) -> tensor<1x544x14x14xf32>
    %823 = "onnx.Dim"(%822) {axis = 0 : si64} : (tensor<1x544x14x14xf32>) -> tensor<1xi64>
    %824 = "onnx.Constant"() {value = dense<544> : tensor<1xi64>} : () -> tensor<1xi64>
    %825 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %826 = "onnx.Concat"(%823, %824, %825) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %827 = "onnx.Reshape"(%822, %826) {allowzero = 0 : si64} : (tensor<1x544x14x14xf32>, tensor<3xi64>) -> tensor<1x544x?xf32>
    %828 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %829 = "onnx.Reshape"(%93, %828) {allowzero = 0 : si64} : (tensor<128x544x1x1xf32>, tensor<2xi64>) -> tensor<128x544xf32>
    %830 = "onnx.MatMul"(%829, %827) : (tensor<128x544xf32>, tensor<1x544x?xf32>) -> tensor<1x128x?xf32>
    %831 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %832 = "onnx.Add"(%830, %831) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %833 = "onnx.Dim"(%822) {axis = 0 : si64} : (tensor<1x544x14x14xf32>) -> tensor<1xi64>
    %834 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %835 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %836 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %837 = "onnx.Concat"(%833, %836, %834, %835) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %838 = "onnx.Reshape"(%832, %837) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %839 = "onnx.Relu"(%838) {onnx_node_name = "Relu_183"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %840 = "onnx.Conv"(%839, %30, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_184", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %841 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840) {axis = 1 : si64, onnx_node_name = "Concat_185"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x576x14x14xf32>
    %842 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x1xf32>} : () -> tensor<576x1x1xf32>
    %843 = "onnx.Mul"(%841, %842) : (tensor<1x576x14x14xf32>, tensor<576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %844 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x1xf32>} : () -> tensor<576x1x1xf32>
    %845 = "onnx.Add"(%843, %844) : (tensor<1x576x14x14xf32>, tensor<576x1x1xf32>) -> tensor<1x576x14x14xf32>
    %846 = "onnx.Relu"(%845) {onnx_node_name = "Relu_187"} : (tensor<1x576x14x14xf32>) -> tensor<1x576x14x14xf32>
    %847 = "onnx.Dim"(%846) {axis = 0 : si64} : (tensor<1x576x14x14xf32>) -> tensor<1xi64>
    %848 = "onnx.Constant"() {value = dense<576> : tensor<1xi64>} : () -> tensor<1xi64>
    %849 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %850 = "onnx.Concat"(%847, %848, %849) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %851 = "onnx.Reshape"(%846, %850) {allowzero = 0 : si64} : (tensor<1x576x14x14xf32>, tensor<3xi64>) -> tensor<1x576x?xf32>
    %852 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %853 = "onnx.Reshape"(%94, %852) {allowzero = 0 : si64} : (tensor<128x576x1x1xf32>, tensor<2xi64>) -> tensor<128x576xf32>
    %854 = "onnx.MatMul"(%853, %851) : (tensor<128x576xf32>, tensor<1x576x?xf32>) -> tensor<1x128x?xf32>
    %855 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %856 = "onnx.Add"(%854, %855) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %857 = "onnx.Dim"(%846) {axis = 0 : si64} : (tensor<1x576x14x14xf32>) -> tensor<1xi64>
    %858 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %859 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %860 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %861 = "onnx.Concat"(%857, %860, %858, %859) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %862 = "onnx.Reshape"(%856, %861) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %863 = "onnx.Relu"(%862) {onnx_node_name = "Relu_189"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %864 = "onnx.Conv"(%863, %31, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_190", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %865 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864) {axis = 1 : si64, onnx_node_name = "Concat_191"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x608x14x14xf32>
    %866 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<608x1x1xf32>} : () -> tensor<608x1x1xf32>
    %867 = "onnx.Mul"(%865, %866) : (tensor<1x608x14x14xf32>, tensor<608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %868 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<608x1x1xf32>} : () -> tensor<608x1x1xf32>
    %869 = "onnx.Add"(%867, %868) : (tensor<1x608x14x14xf32>, tensor<608x1x1xf32>) -> tensor<1x608x14x14xf32>
    %870 = "onnx.Relu"(%869) {onnx_node_name = "Relu_193"} : (tensor<1x608x14x14xf32>) -> tensor<1x608x14x14xf32>
    %871 = "onnx.Dim"(%870) {axis = 0 : si64} : (tensor<1x608x14x14xf32>) -> tensor<1xi64>
    %872 = "onnx.Constant"() {value = dense<608> : tensor<1xi64>} : () -> tensor<1xi64>
    %873 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %874 = "onnx.Concat"(%871, %872, %873) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %875 = "onnx.Reshape"(%870, %874) {allowzero = 0 : si64} : (tensor<1x608x14x14xf32>, tensor<3xi64>) -> tensor<1x608x?xf32>
    %876 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %877 = "onnx.Reshape"(%95, %876) {allowzero = 0 : si64} : (tensor<128x608x1x1xf32>, tensor<2xi64>) -> tensor<128x608xf32>
    %878 = "onnx.MatMul"(%877, %875) : (tensor<128x608xf32>, tensor<1x608x?xf32>) -> tensor<1x128x?xf32>
    %879 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %880 = "onnx.Add"(%878, %879) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %881 = "onnx.Dim"(%870) {axis = 0 : si64} : (tensor<1x608x14x14xf32>) -> tensor<1xi64>
    %882 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %883 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %884 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %885 = "onnx.Concat"(%881, %884, %882, %883) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %886 = "onnx.Reshape"(%880, %885) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %887 = "onnx.Relu"(%886) {onnx_node_name = "Relu_195"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %888 = "onnx.Conv"(%887, %32, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_196", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %889 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888) {axis = 1 : si64, onnx_node_name = "Concat_197"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x640x14x14xf32>
    %890 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<640x1x1xf32>} : () -> tensor<640x1x1xf32>
    %891 = "onnx.Mul"(%889, %890) : (tensor<1x640x14x14xf32>, tensor<640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %892 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<640x1x1xf32>} : () -> tensor<640x1x1xf32>
    %893 = "onnx.Add"(%891, %892) : (tensor<1x640x14x14xf32>, tensor<640x1x1xf32>) -> tensor<1x640x14x14xf32>
    %894 = "onnx.Relu"(%893) {onnx_node_name = "Relu_199"} : (tensor<1x640x14x14xf32>) -> tensor<1x640x14x14xf32>
    %895 = "onnx.Dim"(%894) {axis = 0 : si64} : (tensor<1x640x14x14xf32>) -> tensor<1xi64>
    %896 = "onnx.Constant"() {value = dense<640> : tensor<1xi64>} : () -> tensor<1xi64>
    %897 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %898 = "onnx.Concat"(%895, %896, %897) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %899 = "onnx.Reshape"(%894, %898) {allowzero = 0 : si64} : (tensor<1x640x14x14xf32>, tensor<3xi64>) -> tensor<1x640x?xf32>
    %900 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %901 = "onnx.Reshape"(%96, %900) {allowzero = 0 : si64} : (tensor<128x640x1x1xf32>, tensor<2xi64>) -> tensor<128x640xf32>
    %902 = "onnx.MatMul"(%901, %899) : (tensor<128x640xf32>, tensor<1x640x?xf32>) -> tensor<1x128x?xf32>
    %903 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %904 = "onnx.Add"(%902, %903) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %905 = "onnx.Dim"(%894) {axis = 0 : si64} : (tensor<1x640x14x14xf32>) -> tensor<1xi64>
    %906 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %907 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %908 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %909 = "onnx.Concat"(%905, %908, %906, %907) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %910 = "onnx.Reshape"(%904, %909) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %911 = "onnx.Relu"(%910) {onnx_node_name = "Relu_201"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %912 = "onnx.Conv"(%911, %33, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_202", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %913 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912) {axis = 1 : si64, onnx_node_name = "Concat_203"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x672x14x14xf32>
    %914 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<672x1x1xf32>} : () -> tensor<672x1x1xf32>
    %915 = "onnx.Mul"(%913, %914) : (tensor<1x672x14x14xf32>, tensor<672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %916 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<672x1x1xf32>} : () -> tensor<672x1x1xf32>
    %917 = "onnx.Add"(%915, %916) : (tensor<1x672x14x14xf32>, tensor<672x1x1xf32>) -> tensor<1x672x14x14xf32>
    %918 = "onnx.Relu"(%917) {onnx_node_name = "Relu_205"} : (tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %919 = "onnx.Dim"(%918) {axis = 0 : si64} : (tensor<1x672x14x14xf32>) -> tensor<1xi64>
    %920 = "onnx.Constant"() {value = dense<672> : tensor<1xi64>} : () -> tensor<1xi64>
    %921 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %922 = "onnx.Concat"(%919, %920, %921) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %923 = "onnx.Reshape"(%918, %922) {allowzero = 0 : si64} : (tensor<1x672x14x14xf32>, tensor<3xi64>) -> tensor<1x672x?xf32>
    %924 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %925 = "onnx.Reshape"(%97, %924) {allowzero = 0 : si64} : (tensor<128x672x1x1xf32>, tensor<2xi64>) -> tensor<128x672xf32>
    %926 = "onnx.MatMul"(%925, %923) : (tensor<128x672xf32>, tensor<1x672x?xf32>) -> tensor<1x128x?xf32>
    %927 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %928 = "onnx.Add"(%926, %927) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %929 = "onnx.Dim"(%918) {axis = 0 : si64} : (tensor<1x672x14x14xf32>) -> tensor<1xi64>
    %930 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %931 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %932 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %933 = "onnx.Concat"(%929, %932, %930, %931) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %934 = "onnx.Reshape"(%928, %933) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %935 = "onnx.Relu"(%934) {onnx_node_name = "Relu_207"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %936 = "onnx.Conv"(%935, %34, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_208", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %937 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936) {axis = 1 : si64, onnx_node_name = "Concat_209"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x704x14x14xf32>
    %938 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<704x1x1xf32>} : () -> tensor<704x1x1xf32>
    %939 = "onnx.Mul"(%937, %938) : (tensor<1x704x14x14xf32>, tensor<704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %940 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<704x1x1xf32>} : () -> tensor<704x1x1xf32>
    %941 = "onnx.Add"(%939, %940) : (tensor<1x704x14x14xf32>, tensor<704x1x1xf32>) -> tensor<1x704x14x14xf32>
    %942 = "onnx.Relu"(%941) {onnx_node_name = "Relu_211"} : (tensor<1x704x14x14xf32>) -> tensor<1x704x14x14xf32>
    %943 = "onnx.Dim"(%942) {axis = 0 : si64} : (tensor<1x704x14x14xf32>) -> tensor<1xi64>
    %944 = "onnx.Constant"() {value = dense<704> : tensor<1xi64>} : () -> tensor<1xi64>
    %945 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %946 = "onnx.Concat"(%943, %944, %945) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %947 = "onnx.Reshape"(%942, %946) {allowzero = 0 : si64} : (tensor<1x704x14x14xf32>, tensor<3xi64>) -> tensor<1x704x?xf32>
    %948 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %949 = "onnx.Reshape"(%98, %948) {allowzero = 0 : si64} : (tensor<128x704x1x1xf32>, tensor<2xi64>) -> tensor<128x704xf32>
    %950 = "onnx.MatMul"(%949, %947) : (tensor<128x704xf32>, tensor<1x704x?xf32>) -> tensor<1x128x?xf32>
    %951 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %952 = "onnx.Add"(%950, %951) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %953 = "onnx.Dim"(%942) {axis = 0 : si64} : (tensor<1x704x14x14xf32>) -> tensor<1xi64>
    %954 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %955 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %956 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %957 = "onnx.Concat"(%953, %956, %954, %955) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %958 = "onnx.Reshape"(%952, %957) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %959 = "onnx.Relu"(%958) {onnx_node_name = "Relu_213"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %960 = "onnx.Conv"(%959, %35, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_214", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %961 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960) {axis = 1 : si64, onnx_node_name = "Concat_215"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x736x14x14xf32>
    %962 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<736x1x1xf32>} : () -> tensor<736x1x1xf32>
    %963 = "onnx.Mul"(%961, %962) : (tensor<1x736x14x14xf32>, tensor<736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %964 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<736x1x1xf32>} : () -> tensor<736x1x1xf32>
    %965 = "onnx.Add"(%963, %964) : (tensor<1x736x14x14xf32>, tensor<736x1x1xf32>) -> tensor<1x736x14x14xf32>
    %966 = "onnx.Relu"(%965) {onnx_node_name = "Relu_217"} : (tensor<1x736x14x14xf32>) -> tensor<1x736x14x14xf32>
    %967 = "onnx.Dim"(%966) {axis = 0 : si64} : (tensor<1x736x14x14xf32>) -> tensor<1xi64>
    %968 = "onnx.Constant"() {value = dense<736> : tensor<1xi64>} : () -> tensor<1xi64>
    %969 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %970 = "onnx.Concat"(%967, %968, %969) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %971 = "onnx.Reshape"(%966, %970) {allowzero = 0 : si64} : (tensor<1x736x14x14xf32>, tensor<3xi64>) -> tensor<1x736x?xf32>
    %972 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %973 = "onnx.Reshape"(%99, %972) {allowzero = 0 : si64} : (tensor<128x736x1x1xf32>, tensor<2xi64>) -> tensor<128x736xf32>
    %974 = "onnx.MatMul"(%973, %971) : (tensor<128x736xf32>, tensor<1x736x?xf32>) -> tensor<1x128x?xf32>
    %975 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %976 = "onnx.Add"(%974, %975) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %977 = "onnx.Dim"(%966) {axis = 0 : si64} : (tensor<1x736x14x14xf32>) -> tensor<1xi64>
    %978 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %979 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %980 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %981 = "onnx.Concat"(%977, %980, %978, %979) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %982 = "onnx.Reshape"(%976, %981) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %983 = "onnx.Relu"(%982) {onnx_node_name = "Relu_219"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %984 = "onnx.Conv"(%983, %36, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_220", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %985 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984) {axis = 1 : si64, onnx_node_name = "Concat_221"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x768x14x14xf32>
    %986 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x1x1xf32>} : () -> tensor<768x1x1xf32>
    %987 = "onnx.Mul"(%985, %986) : (tensor<1x768x14x14xf32>, tensor<768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %988 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x1x1xf32>} : () -> tensor<768x1x1xf32>
    %989 = "onnx.Add"(%987, %988) : (tensor<1x768x14x14xf32>, tensor<768x1x1xf32>) -> tensor<1x768x14x14xf32>
    %990 = "onnx.Relu"(%989) {onnx_node_name = "Relu_223"} : (tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %991 = "onnx.Dim"(%990) {axis = 0 : si64} : (tensor<1x768x14x14xf32>) -> tensor<1xi64>
    %992 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %993 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %994 = "onnx.Concat"(%991, %992, %993) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %995 = "onnx.Reshape"(%990, %994) {allowzero = 0 : si64} : (tensor<1x768x14x14xf32>, tensor<3xi64>) -> tensor<1x768x?xf32>
    %996 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %997 = "onnx.Reshape"(%100, %996) {allowzero = 0 : si64} : (tensor<128x768x1x1xf32>, tensor<2xi64>) -> tensor<128x768xf32>
    %998 = "onnx.MatMul"(%997, %995) : (tensor<128x768xf32>, tensor<1x768x?xf32>) -> tensor<1x128x?xf32>
    %999 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1000 = "onnx.Add"(%998, %999) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1001 = "onnx.Dim"(%990) {axis = 0 : si64} : (tensor<1x768x14x14xf32>) -> tensor<1xi64>
    %1002 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1003 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1004 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1005 = "onnx.Concat"(%1001, %1004, %1002, %1003) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1006 = "onnx.Reshape"(%1000, %1005) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1007 = "onnx.Relu"(%1006) {onnx_node_name = "Relu_225"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1008 = "onnx.Conv"(%1007, %37, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_226", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1009 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008) {axis = 1 : si64, onnx_node_name = "Concat_227"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x800x14x14xf32>
    %1010 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<800x1x1xf32>} : () -> tensor<800x1x1xf32>
    %1011 = "onnx.Mul"(%1009, %1010) : (tensor<1x800x14x14xf32>, tensor<800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %1012 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<800x1x1xf32>} : () -> tensor<800x1x1xf32>
    %1013 = "onnx.Add"(%1011, %1012) : (tensor<1x800x14x14xf32>, tensor<800x1x1xf32>) -> tensor<1x800x14x14xf32>
    %1014 = "onnx.Relu"(%1013) {onnx_node_name = "Relu_229"} : (tensor<1x800x14x14xf32>) -> tensor<1x800x14x14xf32>
    %1015 = "onnx.Dim"(%1014) {axis = 0 : si64} : (tensor<1x800x14x14xf32>) -> tensor<1xi64>
    %1016 = "onnx.Constant"() {value = dense<800> : tensor<1xi64>} : () -> tensor<1xi64>
    %1017 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1018 = "onnx.Concat"(%1015, %1016, %1017) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1019 = "onnx.Reshape"(%1014, %1018) {allowzero = 0 : si64} : (tensor<1x800x14x14xf32>, tensor<3xi64>) -> tensor<1x800x?xf32>
    %1020 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1021 = "onnx.Reshape"(%101, %1020) {allowzero = 0 : si64} : (tensor<128x800x1x1xf32>, tensor<2xi64>) -> tensor<128x800xf32>
    %1022 = "onnx.MatMul"(%1021, %1019) : (tensor<128x800xf32>, tensor<1x800x?xf32>) -> tensor<1x128x?xf32>
    %1023 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1024 = "onnx.Add"(%1022, %1023) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1025 = "onnx.Dim"(%1014) {axis = 0 : si64} : (tensor<1x800x14x14xf32>) -> tensor<1xi64>
    %1026 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1027 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1028 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1029 = "onnx.Concat"(%1025, %1028, %1026, %1027) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1030 = "onnx.Reshape"(%1024, %1029) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1031 = "onnx.Relu"(%1030) {onnx_node_name = "Relu_231"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1032 = "onnx.Conv"(%1031, %38, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_232", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1033 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032) {axis = 1 : si64, onnx_node_name = "Concat_233"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x832x14x14xf32>
    %1034 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<832x1x1xf32>} : () -> tensor<832x1x1xf32>
    %1035 = "onnx.Mul"(%1033, %1034) : (tensor<1x832x14x14xf32>, tensor<832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %1036 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<832x1x1xf32>} : () -> tensor<832x1x1xf32>
    %1037 = "onnx.Add"(%1035, %1036) : (tensor<1x832x14x14xf32>, tensor<832x1x1xf32>) -> tensor<1x832x14x14xf32>
    %1038 = "onnx.Relu"(%1037) {onnx_node_name = "Relu_235"} : (tensor<1x832x14x14xf32>) -> tensor<1x832x14x14xf32>
    %1039 = "onnx.Dim"(%1038) {axis = 0 : si64} : (tensor<1x832x14x14xf32>) -> tensor<1xi64>
    %1040 = "onnx.Constant"() {value = dense<832> : tensor<1xi64>} : () -> tensor<1xi64>
    %1041 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1042 = "onnx.Concat"(%1039, %1040, %1041) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1043 = "onnx.Reshape"(%1038, %1042) {allowzero = 0 : si64} : (tensor<1x832x14x14xf32>, tensor<3xi64>) -> tensor<1x832x?xf32>
    %1044 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1045 = "onnx.Reshape"(%102, %1044) {allowzero = 0 : si64} : (tensor<128x832x1x1xf32>, tensor<2xi64>) -> tensor<128x832xf32>
    %1046 = "onnx.MatMul"(%1045, %1043) : (tensor<128x832xf32>, tensor<1x832x?xf32>) -> tensor<1x128x?xf32>
    %1047 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1048 = "onnx.Add"(%1046, %1047) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1049 = "onnx.Dim"(%1038) {axis = 0 : si64} : (tensor<1x832x14x14xf32>) -> tensor<1xi64>
    %1050 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1051 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1052 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1053 = "onnx.Concat"(%1049, %1052, %1050, %1051) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1054 = "onnx.Reshape"(%1048, %1053) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1055 = "onnx.Relu"(%1054) {onnx_node_name = "Relu_237"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1056 = "onnx.Conv"(%1055, %39, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_238", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1057 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032, %1056) {axis = 1 : si64, onnx_node_name = "Concat_239"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x864x14x14xf32>
    %1058 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<864x1x1xf32>} : () -> tensor<864x1x1xf32>
    %1059 = "onnx.Mul"(%1057, %1058) : (tensor<1x864x14x14xf32>, tensor<864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %1060 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<864x1x1xf32>} : () -> tensor<864x1x1xf32>
    %1061 = "onnx.Add"(%1059, %1060) : (tensor<1x864x14x14xf32>, tensor<864x1x1xf32>) -> tensor<1x864x14x14xf32>
    %1062 = "onnx.Relu"(%1061) {onnx_node_name = "Relu_241"} : (tensor<1x864x14x14xf32>) -> tensor<1x864x14x14xf32>
    %1063 = "onnx.Dim"(%1062) {axis = 0 : si64} : (tensor<1x864x14x14xf32>) -> tensor<1xi64>
    %1064 = "onnx.Constant"() {value = dense<864> : tensor<1xi64>} : () -> tensor<1xi64>
    %1065 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1066 = "onnx.Concat"(%1063, %1064, %1065) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1067 = "onnx.Reshape"(%1062, %1066) {allowzero = 0 : si64} : (tensor<1x864x14x14xf32>, tensor<3xi64>) -> tensor<1x864x?xf32>
    %1068 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1069 = "onnx.Reshape"(%103, %1068) {allowzero = 0 : si64} : (tensor<128x864x1x1xf32>, tensor<2xi64>) -> tensor<128x864xf32>
    %1070 = "onnx.MatMul"(%1069, %1067) : (tensor<128x864xf32>, tensor<1x864x?xf32>) -> tensor<1x128x?xf32>
    %1071 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1072 = "onnx.Add"(%1070, %1071) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1073 = "onnx.Dim"(%1062) {axis = 0 : si64} : (tensor<1x864x14x14xf32>) -> tensor<1xi64>
    %1074 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1075 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1076 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1077 = "onnx.Concat"(%1073, %1076, %1074, %1075) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1078 = "onnx.Reshape"(%1072, %1077) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1079 = "onnx.Relu"(%1078) {onnx_node_name = "Relu_243"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1080 = "onnx.Conv"(%1079, %40, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_244", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1081 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032, %1056, %1080) {axis = 1 : si64, onnx_node_name = "Concat_245"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x896x14x14xf32>
    %1082 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<896x1x1xf32>} : () -> tensor<896x1x1xf32>
    %1083 = "onnx.Mul"(%1081, %1082) : (tensor<1x896x14x14xf32>, tensor<896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %1084 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<896x1x1xf32>} : () -> tensor<896x1x1xf32>
    %1085 = "onnx.Add"(%1083, %1084) : (tensor<1x896x14x14xf32>, tensor<896x1x1xf32>) -> tensor<1x896x14x14xf32>
    %1086 = "onnx.Relu"(%1085) {onnx_node_name = "Relu_247"} : (tensor<1x896x14x14xf32>) -> tensor<1x896x14x14xf32>
    %1087 = "onnx.Dim"(%1086) {axis = 0 : si64} : (tensor<1x896x14x14xf32>) -> tensor<1xi64>
    %1088 = "onnx.Constant"() {value = dense<896> : tensor<1xi64>} : () -> tensor<1xi64>
    %1089 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1090 = "onnx.Concat"(%1087, %1088, %1089) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1091 = "onnx.Reshape"(%1086, %1090) {allowzero = 0 : si64} : (tensor<1x896x14x14xf32>, tensor<3xi64>) -> tensor<1x896x?xf32>
    %1092 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1093 = "onnx.Reshape"(%104, %1092) {allowzero = 0 : si64} : (tensor<128x896x1x1xf32>, tensor<2xi64>) -> tensor<128x896xf32>
    %1094 = "onnx.MatMul"(%1093, %1091) : (tensor<128x896xf32>, tensor<1x896x?xf32>) -> tensor<1x128x?xf32>
    %1095 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1096 = "onnx.Add"(%1094, %1095) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1097 = "onnx.Dim"(%1086) {axis = 0 : si64} : (tensor<1x896x14x14xf32>) -> tensor<1xi64>
    %1098 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1099 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1100 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1101 = "onnx.Concat"(%1097, %1100, %1098, %1099) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1102 = "onnx.Reshape"(%1096, %1101) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1103 = "onnx.Relu"(%1102) {onnx_node_name = "Relu_249"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1104 = "onnx.Conv"(%1103, %41, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_250", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1105 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032, %1056, %1080, %1104) {axis = 1 : si64, onnx_node_name = "Concat_251"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x928x14x14xf32>
    %1106 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<928x1x1xf32>} : () -> tensor<928x1x1xf32>
    %1107 = "onnx.Mul"(%1105, %1106) : (tensor<1x928x14x14xf32>, tensor<928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %1108 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<928x1x1xf32>} : () -> tensor<928x1x1xf32>
    %1109 = "onnx.Add"(%1107, %1108) : (tensor<1x928x14x14xf32>, tensor<928x1x1xf32>) -> tensor<1x928x14x14xf32>
    %1110 = "onnx.Relu"(%1109) {onnx_node_name = "Relu_253"} : (tensor<1x928x14x14xf32>) -> tensor<1x928x14x14xf32>
    %1111 = "onnx.Dim"(%1110) {axis = 0 : si64} : (tensor<1x928x14x14xf32>) -> tensor<1xi64>
    %1112 = "onnx.Constant"() {value = dense<928> : tensor<1xi64>} : () -> tensor<1xi64>
    %1113 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1114 = "onnx.Concat"(%1111, %1112, %1113) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1115 = "onnx.Reshape"(%1110, %1114) {allowzero = 0 : si64} : (tensor<1x928x14x14xf32>, tensor<3xi64>) -> tensor<1x928x?xf32>
    %1116 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1117 = "onnx.Reshape"(%105, %1116) {allowzero = 0 : si64} : (tensor<128x928x1x1xf32>, tensor<2xi64>) -> tensor<128x928xf32>
    %1118 = "onnx.MatMul"(%1117, %1115) : (tensor<128x928xf32>, tensor<1x928x?xf32>) -> tensor<1x128x?xf32>
    %1119 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1120 = "onnx.Add"(%1118, %1119) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1121 = "onnx.Dim"(%1110) {axis = 0 : si64} : (tensor<1x928x14x14xf32>) -> tensor<1xi64>
    %1122 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1123 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1124 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1125 = "onnx.Concat"(%1121, %1124, %1122, %1123) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1126 = "onnx.Reshape"(%1120, %1125) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1127 = "onnx.Relu"(%1126) {onnx_node_name = "Relu_255"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1128 = "onnx.Conv"(%1127, %42, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_256", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1129 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032, %1056, %1080, %1104, %1128) {axis = 1 : si64, onnx_node_name = "Concat_257"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x960x14x14xf32>
    %1130 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x1xf32>} : () -> tensor<960x1x1xf32>
    %1131 = "onnx.Mul"(%1129, %1130) : (tensor<1x960x14x14xf32>, tensor<960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %1132 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x1xf32>} : () -> tensor<960x1x1xf32>
    %1133 = "onnx.Add"(%1131, %1132) : (tensor<1x960x14x14xf32>, tensor<960x1x1xf32>) -> tensor<1x960x14x14xf32>
    %1134 = "onnx.Relu"(%1133) {onnx_node_name = "Relu_259"} : (tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %1135 = "onnx.Dim"(%1134) {axis = 0 : si64} : (tensor<1x960x14x14xf32>) -> tensor<1xi64>
    %1136 = "onnx.Constant"() {value = dense<960> : tensor<1xi64>} : () -> tensor<1xi64>
    %1137 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1138 = "onnx.Concat"(%1135, %1136, %1137) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1139 = "onnx.Reshape"(%1134, %1138) {allowzero = 0 : si64} : (tensor<1x960x14x14xf32>, tensor<3xi64>) -> tensor<1x960x?xf32>
    %1140 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1141 = "onnx.Reshape"(%106, %1140) {allowzero = 0 : si64} : (tensor<128x960x1x1xf32>, tensor<2xi64>) -> tensor<128x960xf32>
    %1142 = "onnx.MatMul"(%1141, %1139) : (tensor<128x960xf32>, tensor<1x960x?xf32>) -> tensor<1x128x?xf32>
    %1143 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1144 = "onnx.Add"(%1142, %1143) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1145 = "onnx.Dim"(%1134) {axis = 0 : si64} : (tensor<1x960x14x14xf32>) -> tensor<1xi64>
    %1146 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1147 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1148 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1149 = "onnx.Concat"(%1145, %1148, %1146, %1147) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1150 = "onnx.Reshape"(%1144, %1149) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1151 = "onnx.Relu"(%1150) {onnx_node_name = "Relu_261"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1152 = "onnx.Conv"(%1151, %43, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_262", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1153 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032, %1056, %1080, %1104, %1128, %1152) {axis = 1 : si64, onnx_node_name = "Concat_263"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x992x14x14xf32>
    %1154 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<992x1x1xf32>} : () -> tensor<992x1x1xf32>
    %1155 = "onnx.Mul"(%1153, %1154) : (tensor<1x992x14x14xf32>, tensor<992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %1156 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<992x1x1xf32>} : () -> tensor<992x1x1xf32>
    %1157 = "onnx.Add"(%1155, %1156) : (tensor<1x992x14x14xf32>, tensor<992x1x1xf32>) -> tensor<1x992x14x14xf32>
    %1158 = "onnx.Relu"(%1157) {onnx_node_name = "Relu_265"} : (tensor<1x992x14x14xf32>) -> tensor<1x992x14x14xf32>
    %1159 = "onnx.Dim"(%1158) {axis = 0 : si64} : (tensor<1x992x14x14xf32>) -> tensor<1xi64>
    %1160 = "onnx.Constant"() {value = dense<992> : tensor<1xi64>} : () -> tensor<1xi64>
    %1161 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1162 = "onnx.Concat"(%1159, %1160, %1161) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1163 = "onnx.Reshape"(%1158, %1162) {allowzero = 0 : si64} : (tensor<1x992x14x14xf32>, tensor<3xi64>) -> tensor<1x992x?xf32>
    %1164 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1165 = "onnx.Reshape"(%107, %1164) {allowzero = 0 : si64} : (tensor<128x992x1x1xf32>, tensor<2xi64>) -> tensor<128x992xf32>
    %1166 = "onnx.MatMul"(%1165, %1163) : (tensor<128x992xf32>, tensor<1x992x?xf32>) -> tensor<1x128x?xf32>
    %1167 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1168 = "onnx.Add"(%1166, %1167) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1169 = "onnx.Dim"(%1158) {axis = 0 : si64} : (tensor<1x992x14x14xf32>) -> tensor<1xi64>
    %1170 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1171 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1172 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1173 = "onnx.Concat"(%1169, %1172, %1170, %1171) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1174 = "onnx.Reshape"(%1168, %1173) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x14x14xf32>
    %1175 = "onnx.Relu"(%1174) {onnx_node_name = "Relu_267"} : (tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %1176 = "onnx.Conv"(%1175, %44, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_268", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x14x14xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x14x14xf32>
    %1177 = "onnx.Concat"(%600, %624, %648, %672, %696, %720, %744, %768, %792, %816, %840, %864, %888, %912, %936, %960, %984, %1008, %1032, %1056, %1080, %1104, %1128, %1152, %1176) {axis = 1 : si64, onnx_node_name = "Concat_269"} : (tensor<1x256x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>, tensor<1x32x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1178 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %1179 = "onnx.Mul"(%1177, %1178) : (tensor<1x1024x14x14xf32>, tensor<1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1180 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %1181 = "onnx.Add"(%1179, %1180) : (tensor<1x1024x14x14xf32>, tensor<1024x1x1xf32>) -> tensor<1x1024x14x14xf32>
    %1182 = "onnx.Relu"(%1181) {onnx_node_name = "Relu_271"} : (tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %1183 = "onnx.Dim"(%1182) {axis = 0 : si64} : (tensor<1x1024x14x14xf32>) -> tensor<1xi64>
    %1184 = "onnx.Constant"() {value = dense<1024> : tensor<1xi64>} : () -> tensor<1xi64>
    %1185 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1186 = "onnx.Concat"(%1183, %1184, %1185) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1187 = "onnx.Reshape"(%1182, %1186) {allowzero = 0 : si64} : (tensor<1x1024x14x14xf32>, tensor<3xi64>) -> tensor<1x1024x?xf32>
    %1188 = "onnx.Constant"() {value = dense<[512, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1189 = "onnx.Reshape"(%45, %1188) {allowzero = 0 : si64} : (tensor<512x1024x1x1xf32>, tensor<2xi64>) -> tensor<512x1024xf32>
    %1190 = "onnx.MatMul"(%1189, %1187) : (tensor<512x1024xf32>, tensor<1x1024x?xf32>) -> tensor<1x512x?xf32>
    %1191 = "onnx.Dim"(%1182) {axis = 0 : si64} : (tensor<1x1024x14x14xf32>) -> tensor<1xi64>
    %1192 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1193 = "onnx.Constant"() {value = dense<14> : tensor<1xi64>} : () -> tensor<1xi64>
    %1194 = "onnx.Constant"() {value = dense<512> : tensor<1xi64>} : () -> tensor<1xi64>
    %1195 = "onnx.Concat"(%1191, %1194, %1192, %1193) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1196 = "onnx.Reshape"(%1190, %1195) {allowzero = 0 : si64} : (tensor<1x512x?xf32>, tensor<4xi64>) -> tensor<1x512x14x14xf32>
    %1197 = "onnx.AveragePool"(%1196) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [2, 2], onnx_node_name = "AveragePool_275", pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x512x14x14xf32>) -> tensor<1x512x7x7xf32>
    %1198 = "onnx.Concat"(%1197) {axis = 1 : si64, onnx_node_name = "Concat_276"} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1199 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %1200 = "onnx.Mul"(%1198, %1199) : (tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %1201 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %1202 = "onnx.Add"(%1200, %1201) : (tensor<1x512x7x7xf32>, tensor<512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %1203 = "onnx.Relu"(%1202) {onnx_node_name = "Relu_278"} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %1204 = "onnx.Dim"(%1203) {axis = 0 : si64} : (tensor<1x512x7x7xf32>) -> tensor<1xi64>
    %1205 = "onnx.Constant"() {value = dense<512> : tensor<1xi64>} : () -> tensor<1xi64>
    %1206 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1207 = "onnx.Concat"(%1204, %1205, %1206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1208 = "onnx.Reshape"(%1203, %1207) {allowzero = 0 : si64} : (tensor<1x512x7x7xf32>, tensor<3xi64>) -> tensor<1x512x?xf32>
    %1209 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1210 = "onnx.Reshape"(%108, %1209) {allowzero = 0 : si64} : (tensor<128x512x1x1xf32>, tensor<2xi64>) -> tensor<128x512xf32>
    %1211 = "onnx.MatMul"(%1210, %1208) : (tensor<128x512xf32>, tensor<1x512x?xf32>) -> tensor<1x128x?xf32>
    %1212 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1213 = "onnx.Add"(%1211, %1212) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1214 = "onnx.Dim"(%1203) {axis = 0 : si64} : (tensor<1x512x7x7xf32>) -> tensor<1xi64>
    %1215 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1216 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1217 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1218 = "onnx.Concat"(%1214, %1217, %1215, %1216) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1219 = "onnx.Reshape"(%1213, %1218) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1220 = "onnx.Relu"(%1219) {onnx_node_name = "Relu_280"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1221 = "onnx.Conv"(%1220, %46, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_281", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1222 = "onnx.Concat"(%1197, %1221) {axis = 1 : si64, onnx_node_name = "Concat_282"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x544x7x7xf32>
    %1223 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<544x1x1xf32>} : () -> tensor<544x1x1xf32>
    %1224 = "onnx.Mul"(%1222, %1223) : (tensor<1x544x7x7xf32>, tensor<544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %1225 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<544x1x1xf32>} : () -> tensor<544x1x1xf32>
    %1226 = "onnx.Add"(%1224, %1225) : (tensor<1x544x7x7xf32>, tensor<544x1x1xf32>) -> tensor<1x544x7x7xf32>
    %1227 = "onnx.Relu"(%1226) {onnx_node_name = "Relu_284"} : (tensor<1x544x7x7xf32>) -> tensor<1x544x7x7xf32>
    %1228 = "onnx.Dim"(%1227) {axis = 0 : si64} : (tensor<1x544x7x7xf32>) -> tensor<1xi64>
    %1229 = "onnx.Constant"() {value = dense<544> : tensor<1xi64>} : () -> tensor<1xi64>
    %1230 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1231 = "onnx.Concat"(%1228, %1229, %1230) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1232 = "onnx.Reshape"(%1227, %1231) {allowzero = 0 : si64} : (tensor<1x544x7x7xf32>, tensor<3xi64>) -> tensor<1x544x?xf32>
    %1233 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1234 = "onnx.Reshape"(%109, %1233) {allowzero = 0 : si64} : (tensor<128x544x1x1xf32>, tensor<2xi64>) -> tensor<128x544xf32>
    %1235 = "onnx.MatMul"(%1234, %1232) : (tensor<128x544xf32>, tensor<1x544x?xf32>) -> tensor<1x128x?xf32>
    %1236 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1237 = "onnx.Add"(%1235, %1236) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1238 = "onnx.Dim"(%1227) {axis = 0 : si64} : (tensor<1x544x7x7xf32>) -> tensor<1xi64>
    %1239 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1240 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1241 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1242 = "onnx.Concat"(%1238, %1241, %1239, %1240) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1243 = "onnx.Reshape"(%1237, %1242) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1244 = "onnx.Relu"(%1243) {onnx_node_name = "Relu_286"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1245 = "onnx.Conv"(%1244, %47, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_287", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1246 = "onnx.Concat"(%1197, %1221, %1245) {axis = 1 : si64, onnx_node_name = "Concat_288"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x576x7x7xf32>
    %1247 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x1xf32>} : () -> tensor<576x1x1xf32>
    %1248 = "onnx.Mul"(%1246, %1247) : (tensor<1x576x7x7xf32>, tensor<576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %1249 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x1xf32>} : () -> tensor<576x1x1xf32>
    %1250 = "onnx.Add"(%1248, %1249) : (tensor<1x576x7x7xf32>, tensor<576x1x1xf32>) -> tensor<1x576x7x7xf32>
    %1251 = "onnx.Relu"(%1250) {onnx_node_name = "Relu_290"} : (tensor<1x576x7x7xf32>) -> tensor<1x576x7x7xf32>
    %1252 = "onnx.Dim"(%1251) {axis = 0 : si64} : (tensor<1x576x7x7xf32>) -> tensor<1xi64>
    %1253 = "onnx.Constant"() {value = dense<576> : tensor<1xi64>} : () -> tensor<1xi64>
    %1254 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1255 = "onnx.Concat"(%1252, %1253, %1254) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1256 = "onnx.Reshape"(%1251, %1255) {allowzero = 0 : si64} : (tensor<1x576x7x7xf32>, tensor<3xi64>) -> tensor<1x576x?xf32>
    %1257 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1258 = "onnx.Reshape"(%110, %1257) {allowzero = 0 : si64} : (tensor<128x576x1x1xf32>, tensor<2xi64>) -> tensor<128x576xf32>
    %1259 = "onnx.MatMul"(%1258, %1256) : (tensor<128x576xf32>, tensor<1x576x?xf32>) -> tensor<1x128x?xf32>
    %1260 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1261 = "onnx.Add"(%1259, %1260) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1262 = "onnx.Dim"(%1251) {axis = 0 : si64} : (tensor<1x576x7x7xf32>) -> tensor<1xi64>
    %1263 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1264 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1265 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1266 = "onnx.Concat"(%1262, %1265, %1263, %1264) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1267 = "onnx.Reshape"(%1261, %1266) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1268 = "onnx.Relu"(%1267) {onnx_node_name = "Relu_292"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1269 = "onnx.Conv"(%1268, %48, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_293", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1270 = "onnx.Concat"(%1197, %1221, %1245, %1269) {axis = 1 : si64, onnx_node_name = "Concat_294"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x608x7x7xf32>
    %1271 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<608x1x1xf32>} : () -> tensor<608x1x1xf32>
    %1272 = "onnx.Mul"(%1270, %1271) : (tensor<1x608x7x7xf32>, tensor<608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %1273 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<608x1x1xf32>} : () -> tensor<608x1x1xf32>
    %1274 = "onnx.Add"(%1272, %1273) : (tensor<1x608x7x7xf32>, tensor<608x1x1xf32>) -> tensor<1x608x7x7xf32>
    %1275 = "onnx.Relu"(%1274) {onnx_node_name = "Relu_296"} : (tensor<1x608x7x7xf32>) -> tensor<1x608x7x7xf32>
    %1276 = "onnx.Dim"(%1275) {axis = 0 : si64} : (tensor<1x608x7x7xf32>) -> tensor<1xi64>
    %1277 = "onnx.Constant"() {value = dense<608> : tensor<1xi64>} : () -> tensor<1xi64>
    %1278 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1279 = "onnx.Concat"(%1276, %1277, %1278) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1280 = "onnx.Reshape"(%1275, %1279) {allowzero = 0 : si64} : (tensor<1x608x7x7xf32>, tensor<3xi64>) -> tensor<1x608x?xf32>
    %1281 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1282 = "onnx.Reshape"(%111, %1281) {allowzero = 0 : si64} : (tensor<128x608x1x1xf32>, tensor<2xi64>) -> tensor<128x608xf32>
    %1283 = "onnx.MatMul"(%1282, %1280) : (tensor<128x608xf32>, tensor<1x608x?xf32>) -> tensor<1x128x?xf32>
    %1284 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1285 = "onnx.Add"(%1283, %1284) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1286 = "onnx.Dim"(%1275) {axis = 0 : si64} : (tensor<1x608x7x7xf32>) -> tensor<1xi64>
    %1287 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1288 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1289 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1290 = "onnx.Concat"(%1286, %1289, %1287, %1288) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1291 = "onnx.Reshape"(%1285, %1290) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1292 = "onnx.Relu"(%1291) {onnx_node_name = "Relu_298"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1293 = "onnx.Conv"(%1292, %49, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_299", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1294 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293) {axis = 1 : si64, onnx_node_name = "Concat_300"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x640x7x7xf32>
    %1295 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<640x1x1xf32>} : () -> tensor<640x1x1xf32>
    %1296 = "onnx.Mul"(%1294, %1295) : (tensor<1x640x7x7xf32>, tensor<640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %1297 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<640x1x1xf32>} : () -> tensor<640x1x1xf32>
    %1298 = "onnx.Add"(%1296, %1297) : (tensor<1x640x7x7xf32>, tensor<640x1x1xf32>) -> tensor<1x640x7x7xf32>
    %1299 = "onnx.Relu"(%1298) {onnx_node_name = "Relu_302"} : (tensor<1x640x7x7xf32>) -> tensor<1x640x7x7xf32>
    %1300 = "onnx.Dim"(%1299) {axis = 0 : si64} : (tensor<1x640x7x7xf32>) -> tensor<1xi64>
    %1301 = "onnx.Constant"() {value = dense<640> : tensor<1xi64>} : () -> tensor<1xi64>
    %1302 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1303 = "onnx.Concat"(%1300, %1301, %1302) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1304 = "onnx.Reshape"(%1299, %1303) {allowzero = 0 : si64} : (tensor<1x640x7x7xf32>, tensor<3xi64>) -> tensor<1x640x?xf32>
    %1305 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1306 = "onnx.Reshape"(%112, %1305) {allowzero = 0 : si64} : (tensor<128x640x1x1xf32>, tensor<2xi64>) -> tensor<128x640xf32>
    %1307 = "onnx.MatMul"(%1306, %1304) : (tensor<128x640xf32>, tensor<1x640x?xf32>) -> tensor<1x128x?xf32>
    %1308 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1309 = "onnx.Add"(%1307, %1308) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1310 = "onnx.Dim"(%1299) {axis = 0 : si64} : (tensor<1x640x7x7xf32>) -> tensor<1xi64>
    %1311 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1312 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1313 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1314 = "onnx.Concat"(%1310, %1313, %1311, %1312) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1315 = "onnx.Reshape"(%1309, %1314) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1316 = "onnx.Relu"(%1315) {onnx_node_name = "Relu_304"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1317 = "onnx.Conv"(%1316, %50, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_305", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1318 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317) {axis = 1 : si64, onnx_node_name = "Concat_306"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x672x7x7xf32>
    %1319 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<672x1x1xf32>} : () -> tensor<672x1x1xf32>
    %1320 = "onnx.Mul"(%1318, %1319) : (tensor<1x672x7x7xf32>, tensor<672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %1321 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<672x1x1xf32>} : () -> tensor<672x1x1xf32>
    %1322 = "onnx.Add"(%1320, %1321) : (tensor<1x672x7x7xf32>, tensor<672x1x1xf32>) -> tensor<1x672x7x7xf32>
    %1323 = "onnx.Relu"(%1322) {onnx_node_name = "Relu_308"} : (tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %1324 = "onnx.Dim"(%1323) {axis = 0 : si64} : (tensor<1x672x7x7xf32>) -> tensor<1xi64>
    %1325 = "onnx.Constant"() {value = dense<672> : tensor<1xi64>} : () -> tensor<1xi64>
    %1326 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1327 = "onnx.Concat"(%1324, %1325, %1326) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1328 = "onnx.Reshape"(%1323, %1327) {allowzero = 0 : si64} : (tensor<1x672x7x7xf32>, tensor<3xi64>) -> tensor<1x672x?xf32>
    %1329 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1330 = "onnx.Reshape"(%113, %1329) {allowzero = 0 : si64} : (tensor<128x672x1x1xf32>, tensor<2xi64>) -> tensor<128x672xf32>
    %1331 = "onnx.MatMul"(%1330, %1328) : (tensor<128x672xf32>, tensor<1x672x?xf32>) -> tensor<1x128x?xf32>
    %1332 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1333 = "onnx.Add"(%1331, %1332) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1334 = "onnx.Dim"(%1323) {axis = 0 : si64} : (tensor<1x672x7x7xf32>) -> tensor<1xi64>
    %1335 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1336 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1337 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1338 = "onnx.Concat"(%1334, %1337, %1335, %1336) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1339 = "onnx.Reshape"(%1333, %1338) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1340 = "onnx.Relu"(%1339) {onnx_node_name = "Relu_310"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1341 = "onnx.Conv"(%1340, %51, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_311", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1342 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341) {axis = 1 : si64, onnx_node_name = "Concat_312"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x704x7x7xf32>
    %1343 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<704x1x1xf32>} : () -> tensor<704x1x1xf32>
    %1344 = "onnx.Mul"(%1342, %1343) : (tensor<1x704x7x7xf32>, tensor<704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %1345 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<704x1x1xf32>} : () -> tensor<704x1x1xf32>
    %1346 = "onnx.Add"(%1344, %1345) : (tensor<1x704x7x7xf32>, tensor<704x1x1xf32>) -> tensor<1x704x7x7xf32>
    %1347 = "onnx.Relu"(%1346) {onnx_node_name = "Relu_314"} : (tensor<1x704x7x7xf32>) -> tensor<1x704x7x7xf32>
    %1348 = "onnx.Dim"(%1347) {axis = 0 : si64} : (tensor<1x704x7x7xf32>) -> tensor<1xi64>
    %1349 = "onnx.Constant"() {value = dense<704> : tensor<1xi64>} : () -> tensor<1xi64>
    %1350 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1351 = "onnx.Concat"(%1348, %1349, %1350) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1352 = "onnx.Reshape"(%1347, %1351) {allowzero = 0 : si64} : (tensor<1x704x7x7xf32>, tensor<3xi64>) -> tensor<1x704x?xf32>
    %1353 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1354 = "onnx.Reshape"(%114, %1353) {allowzero = 0 : si64} : (tensor<128x704x1x1xf32>, tensor<2xi64>) -> tensor<128x704xf32>
    %1355 = "onnx.MatMul"(%1354, %1352) : (tensor<128x704xf32>, tensor<1x704x?xf32>) -> tensor<1x128x?xf32>
    %1356 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1357 = "onnx.Add"(%1355, %1356) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1358 = "onnx.Dim"(%1347) {axis = 0 : si64} : (tensor<1x704x7x7xf32>) -> tensor<1xi64>
    %1359 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1360 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1361 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1362 = "onnx.Concat"(%1358, %1361, %1359, %1360) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1363 = "onnx.Reshape"(%1357, %1362) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1364 = "onnx.Relu"(%1363) {onnx_node_name = "Relu_316"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1365 = "onnx.Conv"(%1364, %52, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_317", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1366 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365) {axis = 1 : si64, onnx_node_name = "Concat_318"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x736x7x7xf32>
    %1367 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<736x1x1xf32>} : () -> tensor<736x1x1xf32>
    %1368 = "onnx.Mul"(%1366, %1367) : (tensor<1x736x7x7xf32>, tensor<736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %1369 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<736x1x1xf32>} : () -> tensor<736x1x1xf32>
    %1370 = "onnx.Add"(%1368, %1369) : (tensor<1x736x7x7xf32>, tensor<736x1x1xf32>) -> tensor<1x736x7x7xf32>
    %1371 = "onnx.Relu"(%1370) {onnx_node_name = "Relu_320"} : (tensor<1x736x7x7xf32>) -> tensor<1x736x7x7xf32>
    %1372 = "onnx.Dim"(%1371) {axis = 0 : si64} : (tensor<1x736x7x7xf32>) -> tensor<1xi64>
    %1373 = "onnx.Constant"() {value = dense<736> : tensor<1xi64>} : () -> tensor<1xi64>
    %1374 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1375 = "onnx.Concat"(%1372, %1373, %1374) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1376 = "onnx.Reshape"(%1371, %1375) {allowzero = 0 : si64} : (tensor<1x736x7x7xf32>, tensor<3xi64>) -> tensor<1x736x?xf32>
    %1377 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1378 = "onnx.Reshape"(%115, %1377) {allowzero = 0 : si64} : (tensor<128x736x1x1xf32>, tensor<2xi64>) -> tensor<128x736xf32>
    %1379 = "onnx.MatMul"(%1378, %1376) : (tensor<128x736xf32>, tensor<1x736x?xf32>) -> tensor<1x128x?xf32>
    %1380 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1381 = "onnx.Add"(%1379, %1380) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1382 = "onnx.Dim"(%1371) {axis = 0 : si64} : (tensor<1x736x7x7xf32>) -> tensor<1xi64>
    %1383 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1384 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1385 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1386 = "onnx.Concat"(%1382, %1385, %1383, %1384) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1387 = "onnx.Reshape"(%1381, %1386) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1388 = "onnx.Relu"(%1387) {onnx_node_name = "Relu_322"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1389 = "onnx.Conv"(%1388, %53, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_323", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1390 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389) {axis = 1 : si64, onnx_node_name = "Concat_324"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x768x7x7xf32>
    %1391 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x1x1xf32>} : () -> tensor<768x1x1xf32>
    %1392 = "onnx.Mul"(%1390, %1391) : (tensor<1x768x7x7xf32>, tensor<768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1393 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x1x1xf32>} : () -> tensor<768x1x1xf32>
    %1394 = "onnx.Add"(%1392, %1393) : (tensor<1x768x7x7xf32>, tensor<768x1x1xf32>) -> tensor<1x768x7x7xf32>
    %1395 = "onnx.Relu"(%1394) {onnx_node_name = "Relu_326"} : (tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %1396 = "onnx.Dim"(%1395) {axis = 0 : si64} : (tensor<1x768x7x7xf32>) -> tensor<1xi64>
    %1397 = "onnx.Constant"() {value = dense<768> : tensor<1xi64>} : () -> tensor<1xi64>
    %1398 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1399 = "onnx.Concat"(%1396, %1397, %1398) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1400 = "onnx.Reshape"(%1395, %1399) {allowzero = 0 : si64} : (tensor<1x768x7x7xf32>, tensor<3xi64>) -> tensor<1x768x?xf32>
    %1401 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1402 = "onnx.Reshape"(%116, %1401) {allowzero = 0 : si64} : (tensor<128x768x1x1xf32>, tensor<2xi64>) -> tensor<128x768xf32>
    %1403 = "onnx.MatMul"(%1402, %1400) : (tensor<128x768xf32>, tensor<1x768x?xf32>) -> tensor<1x128x?xf32>
    %1404 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1405 = "onnx.Add"(%1403, %1404) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1406 = "onnx.Dim"(%1395) {axis = 0 : si64} : (tensor<1x768x7x7xf32>) -> tensor<1xi64>
    %1407 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1408 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1409 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1410 = "onnx.Concat"(%1406, %1409, %1407, %1408) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1411 = "onnx.Reshape"(%1405, %1410) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1412 = "onnx.Relu"(%1411) {onnx_node_name = "Relu_328"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1413 = "onnx.Conv"(%1412, %54, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_329", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1414 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413) {axis = 1 : si64, onnx_node_name = "Concat_330"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x800x7x7xf32>
    %1415 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<800x1x1xf32>} : () -> tensor<800x1x1xf32>
    %1416 = "onnx.Mul"(%1414, %1415) : (tensor<1x800x7x7xf32>, tensor<800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1417 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<800x1x1xf32>} : () -> tensor<800x1x1xf32>
    %1418 = "onnx.Add"(%1416, %1417) : (tensor<1x800x7x7xf32>, tensor<800x1x1xf32>) -> tensor<1x800x7x7xf32>
    %1419 = "onnx.Relu"(%1418) {onnx_node_name = "Relu_332"} : (tensor<1x800x7x7xf32>) -> tensor<1x800x7x7xf32>
    %1420 = "onnx.Dim"(%1419) {axis = 0 : si64} : (tensor<1x800x7x7xf32>) -> tensor<1xi64>
    %1421 = "onnx.Constant"() {value = dense<800> : tensor<1xi64>} : () -> tensor<1xi64>
    %1422 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1423 = "onnx.Concat"(%1420, %1421, %1422) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1424 = "onnx.Reshape"(%1419, %1423) {allowzero = 0 : si64} : (tensor<1x800x7x7xf32>, tensor<3xi64>) -> tensor<1x800x?xf32>
    %1425 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1426 = "onnx.Reshape"(%117, %1425) {allowzero = 0 : si64} : (tensor<128x800x1x1xf32>, tensor<2xi64>) -> tensor<128x800xf32>
    %1427 = "onnx.MatMul"(%1426, %1424) : (tensor<128x800xf32>, tensor<1x800x?xf32>) -> tensor<1x128x?xf32>
    %1428 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1429 = "onnx.Add"(%1427, %1428) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1430 = "onnx.Dim"(%1419) {axis = 0 : si64} : (tensor<1x800x7x7xf32>) -> tensor<1xi64>
    %1431 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1432 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1433 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1434 = "onnx.Concat"(%1430, %1433, %1431, %1432) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1435 = "onnx.Reshape"(%1429, %1434) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1436 = "onnx.Relu"(%1435) {onnx_node_name = "Relu_334"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1437 = "onnx.Conv"(%1436, %55, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_335", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1438 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437) {axis = 1 : si64, onnx_node_name = "Concat_336"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x832x7x7xf32>
    %1439 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<832x1x1xf32>} : () -> tensor<832x1x1xf32>
    %1440 = "onnx.Mul"(%1438, %1439) : (tensor<1x832x7x7xf32>, tensor<832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1441 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<832x1x1xf32>} : () -> tensor<832x1x1xf32>
    %1442 = "onnx.Add"(%1440, %1441) : (tensor<1x832x7x7xf32>, tensor<832x1x1xf32>) -> tensor<1x832x7x7xf32>
    %1443 = "onnx.Relu"(%1442) {onnx_node_name = "Relu_338"} : (tensor<1x832x7x7xf32>) -> tensor<1x832x7x7xf32>
    %1444 = "onnx.Dim"(%1443) {axis = 0 : si64} : (tensor<1x832x7x7xf32>) -> tensor<1xi64>
    %1445 = "onnx.Constant"() {value = dense<832> : tensor<1xi64>} : () -> tensor<1xi64>
    %1446 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1447 = "onnx.Concat"(%1444, %1445, %1446) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1448 = "onnx.Reshape"(%1443, %1447) {allowzero = 0 : si64} : (tensor<1x832x7x7xf32>, tensor<3xi64>) -> tensor<1x832x?xf32>
    %1449 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1450 = "onnx.Reshape"(%118, %1449) {allowzero = 0 : si64} : (tensor<128x832x1x1xf32>, tensor<2xi64>) -> tensor<128x832xf32>
    %1451 = "onnx.MatMul"(%1450, %1448) : (tensor<128x832xf32>, tensor<1x832x?xf32>) -> tensor<1x128x?xf32>
    %1452 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1453 = "onnx.Add"(%1451, %1452) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1454 = "onnx.Dim"(%1443) {axis = 0 : si64} : (tensor<1x832x7x7xf32>) -> tensor<1xi64>
    %1455 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1456 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1457 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1458 = "onnx.Concat"(%1454, %1457, %1455, %1456) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1459 = "onnx.Reshape"(%1453, %1458) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1460 = "onnx.Relu"(%1459) {onnx_node_name = "Relu_340"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1461 = "onnx.Conv"(%1460, %56, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_341", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1462 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437, %1461) {axis = 1 : si64, onnx_node_name = "Concat_342"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x864x7x7xf32>
    %1463 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<864x1x1xf32>} : () -> tensor<864x1x1xf32>
    %1464 = "onnx.Mul"(%1462, %1463) : (tensor<1x864x7x7xf32>, tensor<864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1465 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<864x1x1xf32>} : () -> tensor<864x1x1xf32>
    %1466 = "onnx.Add"(%1464, %1465) : (tensor<1x864x7x7xf32>, tensor<864x1x1xf32>) -> tensor<1x864x7x7xf32>
    %1467 = "onnx.Relu"(%1466) {onnx_node_name = "Relu_344"} : (tensor<1x864x7x7xf32>) -> tensor<1x864x7x7xf32>
    %1468 = "onnx.Dim"(%1467) {axis = 0 : si64} : (tensor<1x864x7x7xf32>) -> tensor<1xi64>
    %1469 = "onnx.Constant"() {value = dense<864> : tensor<1xi64>} : () -> tensor<1xi64>
    %1470 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1471 = "onnx.Concat"(%1468, %1469, %1470) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1472 = "onnx.Reshape"(%1467, %1471) {allowzero = 0 : si64} : (tensor<1x864x7x7xf32>, tensor<3xi64>) -> tensor<1x864x?xf32>
    %1473 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1474 = "onnx.Reshape"(%119, %1473) {allowzero = 0 : si64} : (tensor<128x864x1x1xf32>, tensor<2xi64>) -> tensor<128x864xf32>
    %1475 = "onnx.MatMul"(%1474, %1472) : (tensor<128x864xf32>, tensor<1x864x?xf32>) -> tensor<1x128x?xf32>
    %1476 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1477 = "onnx.Add"(%1475, %1476) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1478 = "onnx.Dim"(%1467) {axis = 0 : si64} : (tensor<1x864x7x7xf32>) -> tensor<1xi64>
    %1479 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1480 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1481 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1482 = "onnx.Concat"(%1478, %1481, %1479, %1480) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1483 = "onnx.Reshape"(%1477, %1482) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1484 = "onnx.Relu"(%1483) {onnx_node_name = "Relu_346"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1485 = "onnx.Conv"(%1484, %57, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_347", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1486 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437, %1461, %1485) {axis = 1 : si64, onnx_node_name = "Concat_348"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x896x7x7xf32>
    %1487 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<896x1x1xf32>} : () -> tensor<896x1x1xf32>
    %1488 = "onnx.Mul"(%1486, %1487) : (tensor<1x896x7x7xf32>, tensor<896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1489 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<896x1x1xf32>} : () -> tensor<896x1x1xf32>
    %1490 = "onnx.Add"(%1488, %1489) : (tensor<1x896x7x7xf32>, tensor<896x1x1xf32>) -> tensor<1x896x7x7xf32>
    %1491 = "onnx.Relu"(%1490) {onnx_node_name = "Relu_350"} : (tensor<1x896x7x7xf32>) -> tensor<1x896x7x7xf32>
    %1492 = "onnx.Dim"(%1491) {axis = 0 : si64} : (tensor<1x896x7x7xf32>) -> tensor<1xi64>
    %1493 = "onnx.Constant"() {value = dense<896> : tensor<1xi64>} : () -> tensor<1xi64>
    %1494 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1495 = "onnx.Concat"(%1492, %1493, %1494) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1496 = "onnx.Reshape"(%1491, %1495) {allowzero = 0 : si64} : (tensor<1x896x7x7xf32>, tensor<3xi64>) -> tensor<1x896x?xf32>
    %1497 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1498 = "onnx.Reshape"(%120, %1497) {allowzero = 0 : si64} : (tensor<128x896x1x1xf32>, tensor<2xi64>) -> tensor<128x896xf32>
    %1499 = "onnx.MatMul"(%1498, %1496) : (tensor<128x896xf32>, tensor<1x896x?xf32>) -> tensor<1x128x?xf32>
    %1500 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1501 = "onnx.Add"(%1499, %1500) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1502 = "onnx.Dim"(%1491) {axis = 0 : si64} : (tensor<1x896x7x7xf32>) -> tensor<1xi64>
    %1503 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1504 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1505 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1506 = "onnx.Concat"(%1502, %1505, %1503, %1504) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1507 = "onnx.Reshape"(%1501, %1506) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1508 = "onnx.Relu"(%1507) {onnx_node_name = "Relu_352"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1509 = "onnx.Conv"(%1508, %58, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_353", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1510 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437, %1461, %1485, %1509) {axis = 1 : si64, onnx_node_name = "Concat_354"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x928x7x7xf32>
    %1511 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<928x1x1xf32>} : () -> tensor<928x1x1xf32>
    %1512 = "onnx.Mul"(%1510, %1511) : (tensor<1x928x7x7xf32>, tensor<928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1513 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<928x1x1xf32>} : () -> tensor<928x1x1xf32>
    %1514 = "onnx.Add"(%1512, %1513) : (tensor<1x928x7x7xf32>, tensor<928x1x1xf32>) -> tensor<1x928x7x7xf32>
    %1515 = "onnx.Relu"(%1514) {onnx_node_name = "Relu_356"} : (tensor<1x928x7x7xf32>) -> tensor<1x928x7x7xf32>
    %1516 = "onnx.Dim"(%1515) {axis = 0 : si64} : (tensor<1x928x7x7xf32>) -> tensor<1xi64>
    %1517 = "onnx.Constant"() {value = dense<928> : tensor<1xi64>} : () -> tensor<1xi64>
    %1518 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1519 = "onnx.Concat"(%1516, %1517, %1518) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1520 = "onnx.Reshape"(%1515, %1519) {allowzero = 0 : si64} : (tensor<1x928x7x7xf32>, tensor<3xi64>) -> tensor<1x928x?xf32>
    %1521 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1522 = "onnx.Reshape"(%121, %1521) {allowzero = 0 : si64} : (tensor<128x928x1x1xf32>, tensor<2xi64>) -> tensor<128x928xf32>
    %1523 = "onnx.MatMul"(%1522, %1520) : (tensor<128x928xf32>, tensor<1x928x?xf32>) -> tensor<1x128x?xf32>
    %1524 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1525 = "onnx.Add"(%1523, %1524) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1526 = "onnx.Dim"(%1515) {axis = 0 : si64} : (tensor<1x928x7x7xf32>) -> tensor<1xi64>
    %1527 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1528 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1529 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1530 = "onnx.Concat"(%1526, %1529, %1527, %1528) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1531 = "onnx.Reshape"(%1525, %1530) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1532 = "onnx.Relu"(%1531) {onnx_node_name = "Relu_358"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1533 = "onnx.Conv"(%1532, %59, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_359", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1534 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437, %1461, %1485, %1509, %1533) {axis = 1 : si64, onnx_node_name = "Concat_360"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x960x7x7xf32>
    %1535 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x1xf32>} : () -> tensor<960x1x1xf32>
    %1536 = "onnx.Mul"(%1534, %1535) : (tensor<1x960x7x7xf32>, tensor<960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1537 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x1xf32>} : () -> tensor<960x1x1xf32>
    %1538 = "onnx.Add"(%1536, %1537) : (tensor<1x960x7x7xf32>, tensor<960x1x1xf32>) -> tensor<1x960x7x7xf32>
    %1539 = "onnx.Relu"(%1538) {onnx_node_name = "Relu_362"} : (tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %1540 = "onnx.Dim"(%1539) {axis = 0 : si64} : (tensor<1x960x7x7xf32>) -> tensor<1xi64>
    %1541 = "onnx.Constant"() {value = dense<960> : tensor<1xi64>} : () -> tensor<1xi64>
    %1542 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1543 = "onnx.Concat"(%1540, %1541, %1542) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1544 = "onnx.Reshape"(%1539, %1543) {allowzero = 0 : si64} : (tensor<1x960x7x7xf32>, tensor<3xi64>) -> tensor<1x960x?xf32>
    %1545 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1546 = "onnx.Reshape"(%122, %1545) {allowzero = 0 : si64} : (tensor<128x960x1x1xf32>, tensor<2xi64>) -> tensor<128x960xf32>
    %1547 = "onnx.MatMul"(%1546, %1544) : (tensor<128x960xf32>, tensor<1x960x?xf32>) -> tensor<1x128x?xf32>
    %1548 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1549 = "onnx.Add"(%1547, %1548) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1550 = "onnx.Dim"(%1539) {axis = 0 : si64} : (tensor<1x960x7x7xf32>) -> tensor<1xi64>
    %1551 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1552 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1553 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1554 = "onnx.Concat"(%1550, %1553, %1551, %1552) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1555 = "onnx.Reshape"(%1549, %1554) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1556 = "onnx.Relu"(%1555) {onnx_node_name = "Relu_364"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1557 = "onnx.Conv"(%1556, %60, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_365", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1558 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437, %1461, %1485, %1509, %1533, %1557) {axis = 1 : si64, onnx_node_name = "Concat_366"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x992x7x7xf32>
    %1559 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<992x1x1xf32>} : () -> tensor<992x1x1xf32>
    %1560 = "onnx.Mul"(%1558, %1559) : (tensor<1x992x7x7xf32>, tensor<992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1561 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<992x1x1xf32>} : () -> tensor<992x1x1xf32>
    %1562 = "onnx.Add"(%1560, %1561) : (tensor<1x992x7x7xf32>, tensor<992x1x1xf32>) -> tensor<1x992x7x7xf32>
    %1563 = "onnx.Relu"(%1562) {onnx_node_name = "Relu_368"} : (tensor<1x992x7x7xf32>) -> tensor<1x992x7x7xf32>
    %1564 = "onnx.Dim"(%1563) {axis = 0 : si64} : (tensor<1x992x7x7xf32>) -> tensor<1xi64>
    %1565 = "onnx.Constant"() {value = dense<992> : tensor<1xi64>} : () -> tensor<1xi64>
    %1566 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1567 = "onnx.Concat"(%1564, %1565, %1566) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1568 = "onnx.Reshape"(%1563, %1567) {allowzero = 0 : si64} : (tensor<1x992x7x7xf32>, tensor<3xi64>) -> tensor<1x992x?xf32>
    %1569 = "onnx.Constant"() {value = dense<[128, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1570 = "onnx.Reshape"(%123, %1569) {allowzero = 0 : si64} : (tensor<128x992x1x1xf32>, tensor<2xi64>) -> tensor<128x992xf32>
    %1571 = "onnx.MatMul"(%1570, %1568) : (tensor<128x992xf32>, tensor<1x992x?xf32>) -> tensor<1x128x?xf32>
    %1572 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x128x1xf32>} : () -> tensor<1x128x1xf32>
    %1573 = "onnx.Add"(%1571, %1572) : (tensor<1x128x?xf32>, tensor<1x128x1xf32>) -> tensor<1x128x?xf32>
    %1574 = "onnx.Dim"(%1563) {axis = 0 : si64} : (tensor<1x992x7x7xf32>) -> tensor<1xi64>
    %1575 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1576 = "onnx.Constant"() {value = dense<7> : tensor<1xi64>} : () -> tensor<1xi64>
    %1577 = "onnx.Constant"() {value = dense<128> : tensor<1xi64>} : () -> tensor<1xi64>
    %1578 = "onnx.Concat"(%1574, %1577, %1575, %1576) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1579 = "onnx.Reshape"(%1573, %1578) {allowzero = 0 : si64} : (tensor<1x128x?xf32>, tensor<4xi64>) -> tensor<1x128x7x7xf32>
    %1580 = "onnx.Relu"(%1579) {onnx_node_name = "Relu_370"} : (tensor<1x128x7x7xf32>) -> tensor<1x128x7x7xf32>
    %1581 = "onnx.Conv"(%1580, %61, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_371", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x128x7x7xf32>, tensor<32x128x3x3xf32>, none) -> tensor<1x32x7x7xf32>
    %1582 = "onnx.Concat"(%1197, %1221, %1245, %1269, %1293, %1317, %1341, %1365, %1389, %1413, %1437, %1461, %1485, %1509, %1533, %1557, %1581) {axis = 1 : si64, onnx_node_name = "Concat_372"} : (tensor<1x512x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>, tensor<1x32x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %1583 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %1584 = "onnx.Mul"(%1582, %1583) : (tensor<1x1024x7x7xf32>, tensor<1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1585 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1x1xf32>} : () -> tensor<1024x1x1xf32>
    %1586 = "onnx.Add"(%1584, %1585) : (tensor<1x1024x7x7xf32>, tensor<1024x1x1xf32>) -> tensor<1x1024x7x7xf32>
    %1587 = "onnx.Relu"(%1586) {onnx_node_name = "Relu_374"} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %1588 = "onnx.ReduceMean"(%1587) {axes = [2, 3], keepdims = 1 : si64} : (tensor<1x1024x7x7xf32>) -> tensor<1x1024x1x1xf32>
    %1589 = "onnx.Flatten"(%1588) {axis = 1 : si64, onnx_node_name = "Flatten_376"} : (tensor<1x1024x1x1xf32>) -> tensor<1x1024xf32>
    %1590 = "onnx.Gemm"(%1589, %62, %63) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_377", transA = 0 : si64, transB = 1 : si64} : (tensor<1x1024xf32>, tensor<1000x1024xf32>, tensor<1000xf32>) -> tensor<1x1000xf32>
    return %1590 : tensor<1x1000xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
