module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<1x384xi64>, %arg1: tensor<1x384xi64>) -> tensor<?x?x512xf32> attributes {input_names = ["input_ids", "attention_mask"], output_names = ["encoder_output"]} {
    %0 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<65001x512xf32>} : () -> tensor<65001x512xf32>
    %1 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %3 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %5 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %9 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %12 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %14 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %17 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %18 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %19 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %21 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %24 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %27 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %29 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %30 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %32 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %33 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %34 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %35 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %36 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %37 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %38 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %39 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %40 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %41 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %42 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %43 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %44 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %45 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %46 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %47 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %48 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048xf32>} : () -> tensor<2048xf32>
    %49 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %50 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %51 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %52 = "onnx.Constant"() {value = dense<0> : tensor<i64>} : () -> tensor<i64>
    %53 = "onnx.Constant"() {value = dense<1> : tensor<i64>} : () -> tensor<i64>
    %54 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %55 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %56 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %57 = "onnx.Constant"() {value = dense<8> : tensor<1xi64>} : () -> tensor<1xi64>
    %58 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %59 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %60 = "onnx.Constant"() {value = dense<512> : tensor<1xi64>} : () -> tensor<1xi64>
    %61 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %62 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x2048xf32>} : () -> tensor<512x2048xf32>
    %63 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048x512xf32>} : () -> tensor<2048x512xf32>
    %64 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %65 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %66 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %67 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %68 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x2048xf32>} : () -> tensor<512x2048xf32>
    %69 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048x512xf32>} : () -> tensor<2048x512xf32>
    %70 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %71 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %72 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %73 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %74 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x2048xf32>} : () -> tensor<512x2048xf32>
    %75 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048x512xf32>} : () -> tensor<2048x512xf32>
    %76 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %77 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %78 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %79 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %80 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x2048xf32>} : () -> tensor<512x2048xf32>
    %81 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048x512xf32>} : () -> tensor<2048x512xf32>
    %82 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %83 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %84 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %85 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %86 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x2048xf32>} : () -> tensor<512x2048xf32>
    %87 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048x512xf32>} : () -> tensor<2048x512xf32>
    %88 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %89 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %90 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %91 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x512xf32>} : () -> tensor<512x512xf32>
    %92 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x2048xf32>} : () -> tensor<512x2048xf32>
    %93 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2048x512xf32>} : () -> tensor<2048x512xf32>
    %94 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %95 = "onnx.Constant"() {value = dense<22.6274166> : tensor<f32>} : () -> tensor<f32>
    %96 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %97 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %98 = "onnx.Constant"() {value = dense<-3.40282347E+38> : tensor<f32>} : () -> tensor<f32>
    %99 = "onnx.Constant"() {value = dense<1.250000e-01> : tensor<f32>} : () -> tensor<f32>
    %100 = "onnx.Constant"() {value = dense<8> : tensor<i64>} : () -> tensor<i64>
    %101 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %102 = "onnx.Constant"() {value = dense<9.99999974E-6> : tensor<f32>} : () -> tensor<f32>
    %103 = "onnx.Constant"() {value = dense<1> : tensor<4xi64>} : () -> tensor<4xi64>
    %104 = "onnx.Constant"() {value = dense<-1> : tensor<4xi64>} : () -> tensor<4xi64>
    %105 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<1x384xi64>) -> tensor<1xi64>
    %106 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %107 = "onnx.Squeeze"(%105, %106) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %108 = "onnx.Concat"(%51, %105) {axis = 0 : si64, onnx_node_name = "Concat_5"} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %109 = "onnx.Reshape"(%arg0, %108) {allowzero = 0 : si64, onnx_node_name = "Reshape_6"} : (tensor<1x384xi64>, tensor<2xi64>) -> tensor<1x384xi64>
    %110 = "onnx.Gather"(%0, %109) {axis = 0 : si64, onnx_node_name = "Gather_7"} : (tensor<65001x512xf32>, tensor<1x384xi64>) -> tensor<1x384x512xf32>
    %111 = "onnx.Mul"(%110, %95) {onnx_node_name = "Mul_9"} : (tensor<1x384x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %112 = "onnx.Add"(%107, %52) {onnx_node_name = "Add_11"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %113 = "onnx.Range"(%52, %112, %53) {onnx_node_name = "Range_13"} : (tensor<i64>, tensor<i64>, tensor<i64>) -> tensor<?xi64>
    %114 = "onnx.Gather"(%1, %113) {axis = 0 : si64, onnx_node_name = "Gather_14"} : (tensor<512x512xf32>, tensor<?xi64>) -> tensor<?x512xf32>
    %115 = "onnx.Add"(%111, %114) {onnx_node_name = "Add_15"} : (tensor<?x?x512xf32>, tensor<?x512xf32>) -> tensor<?x?x512xf32>
    %116 = "onnx.Dim"(%arg1) {axis = 0 : si64} : (tensor<1x384xi64>) -> tensor<1xi64>
    %117 = "onnx.Dim"(%arg1) {axis = 1 : si64} : (tensor<1x384xi64>) -> tensor<1xi64>
    %118 = "onnx.Unsqueeze"(%arg1, %54) {onnx_node_name = "Unsqueeze_23"} : (tensor<1x384xi64>, tensor<1xi64>) -> tensor<?x1x?xi64>
    %119 = "onnx.Unsqueeze"(%118, %96) {onnx_node_name = "Unsqueeze_25"} : (tensor<?x1x?xi64>, tensor<1xi64>) -> tensor<?x1x1x?xi64>
    %120 = "onnx.Concat"(%116, %54, %117, %117) {axis = 0 : si64, onnx_node_name = "Concat_32"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %121 = "onnx.Reshape"(%120, %51) {allowzero = 0 : si64, onnx_node_name = "Reshape_34"} : (tensor<4xi64>, tensor<1xi64>) -> tensor<4xi64>
    %122 = "onnx.Equal"(%121, %104) {onnx_node_name = "Equal_39"} : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi1>
    %123 = "onnx.Where"(%122, %103, %121) {onnx_node_name = "Where_40"} : (tensor<4xi1>, tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>
    %124 = "onnx.Expand"(%119, %123) {onnx_node_name = "Expand_41"} : (tensor<?x1x1x?xi64>, tensor<4xi64>) -> tensor<?x?x?x?xi64>
    %125 = "onnx.Cast"(%124) {onnx_node_name = "Cast_42", to = f32} : (tensor<?x?x?x?xi64>) -> tensor<?x?x?x?xf32>
    %126 = "onnx.Sub"(%97, %125) {onnx_node_name = "Sub_44"} : (tensor<f32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    %127 = "onnx.Cast"(%126) {onnx_node_name = "Cast_45", to = i1} : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xi1>
    %128 = "onnx.Where"(%127, %98, %126) {onnx_node_name = "Where_48"} : (tensor<?x?x?x?xi1>, tensor<f32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    %129 = "onnx.Dim"(%115) {axis = 0 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %130 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %131 = "onnx.Squeeze"(%129, %130) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %132 = "onnx.Dim"(%115) {axis = 1 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %133 = "onnx.MatMul"(%115, %55) {onnx_node_name = "MatMul_55"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %134 = "onnx.Add"(%133, %4) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %135 = "onnx.Mul"(%134, %99) {onnx_node_name = "Mul_58"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %136 = "onnx.MatMul"(%115, %56) {onnx_node_name = "MatMul_59"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %137 = "onnx.Add"(%136, %2) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %138 = "onnx.Concat"(%129, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_63"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %139 = "onnx.Reshape"(%137, %138) {allowzero = 0 : si64, onnx_node_name = "Reshape_64"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %140 = "onnx.Transpose"(%139) {onnx_node_name = "Transpose_65", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %141 = "onnx.MatMul"(%115, %59) {onnx_node_name = "MatMul_66"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %142 = "onnx.Add"(%141, %3) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %143 = "onnx.Concat"(%129, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_70"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %144 = "onnx.Reshape"(%142, %143) {allowzero = 0 : si64, onnx_node_name = "Reshape_71"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %145 = "onnx.Transpose"(%144) {onnx_node_name = "Transpose_72", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %146 = "onnx.Mul"(%131, %100) {onnx_node_name = "Mul_74"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %147 = "onnx.Concat"(%129, %132, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_79"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %148 = "onnx.Reshape"(%135, %147) {allowzero = 0 : si64, onnx_node_name = "Reshape_80"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %149 = "onnx.Transpose"(%148) {onnx_node_name = "Transpose_81", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %150 = "onnx.Unsqueeze"(%146, %94) {onnx_node_name = "Unsqueeze_83"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %151 = "onnx.Concat"(%150, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_84"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %152 = "onnx.Reshape"(%149, %151) {allowzero = 0 : si64, onnx_node_name = "Reshape_85"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %153 = "onnx.Unsqueeze"(%146, %94) {onnx_node_name = "Unsqueeze_87"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %154 = "onnx.Concat"(%153, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_88"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %155 = "onnx.Reshape"(%140, %154) {allowzero = 0 : si64, onnx_node_name = "Reshape_89"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %156 = "onnx.Unsqueeze"(%146, %94) {onnx_node_name = "Unsqueeze_91"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %157 = "onnx.Concat"(%156, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_92"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %158 = "onnx.Reshape"(%145, %157) {allowzero = 0 : si64, onnx_node_name = "Reshape_93"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %159 = "onnx.Dim"(%155) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %160 = "onnx.Transpose"(%155) {onnx_node_name = "Transpose_97", perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %161 = "onnx.MatMul"(%152, %160) {onnx_node_name = "MatMul_98"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %162 = "onnx.Concat"(%129, %57, %132, %159) {axis = 0 : si64, onnx_node_name = "Concat_105"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %163 = "onnx.Reshape"(%161, %162) {allowzero = 0 : si64, onnx_node_name = "Reshape_106"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x?xf32>
    %164 = "onnx.Add"(%163, %128) {onnx_node_name = "Add_107"} : (tensor<?x8x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x8x?x?xf32>
    %165 = "onnx.Mul"(%131, %100) {onnx_node_name = "Mul_109"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %166 = "onnx.Unsqueeze"(%165, %94) {onnx_node_name = "Unsqueeze_111"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %167 = "onnx.Concat"(%166, %132, %159) {axis = 0 : si64, onnx_node_name = "Concat_116"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %168 = "onnx.Reshape"(%164, %167) {allowzero = 0 : si64, onnx_node_name = "Reshape_117"} : (tensor<?x8x?x?xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %169 = "onnx.Softmax"(%168) {axis = -1 : si64, onnx_node_name = "Softmax_118", onnx_opset = 13 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %170 = "onnx.MatMul"(%169, %158) {onnx_node_name = "MatMul_119"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %171 = "onnx.Concat"(%129, %57, %132, %58) {axis = 0 : si64, onnx_node_name = "Concat_124"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %172 = "onnx.Reshape"(%170, %171) {allowzero = 0 : si64, onnx_node_name = "Reshape_125"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x64xf32>
    %173 = "onnx.Transpose"(%172) {onnx_node_name = "Transpose_126", perm = [0, 2, 1, 3]} : (tensor<?x8x?x64xf32>) -> tensor<?x?x8x64xf32>
    %174 = "onnx.Concat"(%129, %132, %60) {axis = 0 : si64, onnx_node_name = "Concat_131"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %175 = "onnx.Reshape"(%173, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_132"} : (tensor<?x?x8x64xf32>, tensor<3xi64>) -> tensor<?x?x512xf32>
    %176 = "onnx.MatMul"(%175, %61) {onnx_node_name = "MatMul_133"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %177 = "onnx.Add"(%115, %176) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %178 = "onnx.Add"(%177, %5) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %179 = "onnx.ReduceMean"(%178) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_136"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %180 = "onnx.Sub"(%178, %179) {onnx_node_name = "Sub_137"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %181 = "onnx.Pow"(%180, %101) {onnx_node_name = "Pow_139"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %182 = "onnx.ReduceMean"(%181) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_140"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %183 = "onnx.Add"(%182, %102) {onnx_node_name = "Add_142"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %184 = "onnx.Sqrt"(%183) {onnx_node_name = "Sqrt_143"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %185 = "onnx.Div"(%180, %184) {onnx_node_name = "Div_144"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %186 = "onnx.Mul"(%185, %6) {onnx_node_name = "Mul_145"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %187 = "onnx.Add"(%186, %7) {onnx_node_name = "Add_146"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %188 = "onnx.MatMul"(%187, %62) {onnx_node_name = "MatMul_147"} : (tensor<?x?x512xf32>, tensor<512x2048xf32>) -> tensor<?x?x2048xf32>
    %189 = "onnx.Add"(%188, %8) : (tensor<?x?x2048xf32>, tensor<2048xf32>) -> tensor<?x?x2048xf32>
    %190 = "onnx.Sigmoid"(%189) {onnx_node_name = "Sigmoid_149"} : (tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %191 = "onnx.Mul"(%189, %190) {onnx_node_name = "Mul_150"} : (tensor<?x?x2048xf32>, tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %192 = "onnx.MatMul"(%191, %63) {onnx_node_name = "MatMul_151"} : (tensor<?x?x2048xf32>, tensor<2048x512xf32>) -> tensor<?x?x512xf32>
    %193 = "onnx.Add"(%186, %192) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %194 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %195 = "onnx.Add"(%193, %194) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %196 = "onnx.ReduceMean"(%195) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_154"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %197 = "onnx.Sub"(%195, %196) {onnx_node_name = "Sub_155"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %198 = "onnx.Pow"(%197, %101) {onnx_node_name = "Pow_157"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %199 = "onnx.ReduceMean"(%198) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_158"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %200 = "onnx.Add"(%199, %102) {onnx_node_name = "Add_160"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %201 = "onnx.Sqrt"(%200) {onnx_node_name = "Sqrt_161"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %202 = "onnx.Div"(%197, %201) {onnx_node_name = "Div_162"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %203 = "onnx.Mul"(%202, %9) {onnx_node_name = "Mul_163"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %204 = "onnx.Add"(%203, %10) {onnx_node_name = "Add_164"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %205 = "onnx.Dim"(%204) {axis = 0 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %206 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %207 = "onnx.Squeeze"(%205, %206) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %208 = "onnx.Dim"(%204) {axis = 1 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %209 = "onnx.MatMul"(%204, %64) {onnx_node_name = "MatMul_171"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %210 = "onnx.Add"(%209, %13) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %211 = "onnx.Mul"(%210, %99) {onnx_node_name = "Mul_174"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %212 = "onnx.MatMul"(%204, %65) {onnx_node_name = "MatMul_175"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %213 = "onnx.Add"(%212, %11) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %214 = "onnx.Concat"(%205, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_179"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %215 = "onnx.Reshape"(%213, %214) {allowzero = 0 : si64, onnx_node_name = "Reshape_180"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %216 = "onnx.Transpose"(%215) {onnx_node_name = "Transpose_181", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %217 = "onnx.MatMul"(%204, %66) {onnx_node_name = "MatMul_182"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %218 = "onnx.Add"(%217, %12) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %219 = "onnx.Concat"(%205, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_186"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %220 = "onnx.Reshape"(%218, %219) {allowzero = 0 : si64, onnx_node_name = "Reshape_187"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %221 = "onnx.Transpose"(%220) {onnx_node_name = "Transpose_188", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %222 = "onnx.Mul"(%207, %100) {onnx_node_name = "Mul_190"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %223 = "onnx.Concat"(%205, %208, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_195"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %224 = "onnx.Reshape"(%211, %223) {allowzero = 0 : si64, onnx_node_name = "Reshape_196"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %225 = "onnx.Transpose"(%224) {onnx_node_name = "Transpose_197", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %226 = "onnx.Unsqueeze"(%222, %94) {onnx_node_name = "Unsqueeze_199"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %227 = "onnx.Concat"(%226, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_200"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %228 = "onnx.Reshape"(%225, %227) {allowzero = 0 : si64, onnx_node_name = "Reshape_201"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %229 = "onnx.Unsqueeze"(%222, %94) {onnx_node_name = "Unsqueeze_203"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %230 = "onnx.Concat"(%229, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_204"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %231 = "onnx.Reshape"(%216, %230) {allowzero = 0 : si64, onnx_node_name = "Reshape_205"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %232 = "onnx.Unsqueeze"(%222, %94) {onnx_node_name = "Unsqueeze_207"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %233 = "onnx.Concat"(%232, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_208"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %234 = "onnx.Reshape"(%221, %233) {allowzero = 0 : si64, onnx_node_name = "Reshape_209"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %235 = "onnx.Dim"(%231) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %236 = "onnx.Transpose"(%231) {onnx_node_name = "Transpose_213", perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %237 = "onnx.MatMul"(%228, %236) {onnx_node_name = "MatMul_214"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %238 = "onnx.Concat"(%205, %57, %208, %235) {axis = 0 : si64, onnx_node_name = "Concat_221"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %239 = "onnx.Reshape"(%237, %238) {allowzero = 0 : si64, onnx_node_name = "Reshape_222"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x?xf32>
    %240 = "onnx.Add"(%239, %128) {onnx_node_name = "Add_223"} : (tensor<?x8x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x8x?x?xf32>
    %241 = "onnx.Mul"(%207, %100) {onnx_node_name = "Mul_225"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %242 = "onnx.Unsqueeze"(%241, %94) {onnx_node_name = "Unsqueeze_227"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %243 = "onnx.Concat"(%242, %208, %235) {axis = 0 : si64, onnx_node_name = "Concat_232"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %244 = "onnx.Reshape"(%240, %243) {allowzero = 0 : si64, onnx_node_name = "Reshape_233"} : (tensor<?x8x?x?xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %245 = "onnx.Softmax"(%244) {axis = -1 : si64, onnx_node_name = "Softmax_234", onnx_opset = 13 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %246 = "onnx.MatMul"(%245, %234) {onnx_node_name = "MatMul_235"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %247 = "onnx.Concat"(%205, %57, %208, %58) {axis = 0 : si64, onnx_node_name = "Concat_240"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %248 = "onnx.Reshape"(%246, %247) {allowzero = 0 : si64, onnx_node_name = "Reshape_241"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x64xf32>
    %249 = "onnx.Transpose"(%248) {onnx_node_name = "Transpose_242", perm = [0, 2, 1, 3]} : (tensor<?x8x?x64xf32>) -> tensor<?x?x8x64xf32>
    %250 = "onnx.Concat"(%205, %208, %60) {axis = 0 : si64, onnx_node_name = "Concat_247"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %251 = "onnx.Reshape"(%249, %250) {allowzero = 0 : si64, onnx_node_name = "Reshape_248"} : (tensor<?x?x8x64xf32>, tensor<3xi64>) -> tensor<?x?x512xf32>
    %252 = "onnx.MatMul"(%251, %67) {onnx_node_name = "MatMul_249"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %253 = "onnx.Add"(%203, %252) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %254 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %255 = "onnx.Add"(%253, %254) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %256 = "onnx.ReduceMean"(%255) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_252"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %257 = "onnx.Sub"(%255, %256) {onnx_node_name = "Sub_253"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %258 = "onnx.Pow"(%257, %101) {onnx_node_name = "Pow_255"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %259 = "onnx.ReduceMean"(%258) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_256"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %260 = "onnx.Add"(%259, %102) {onnx_node_name = "Add_258"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %261 = "onnx.Sqrt"(%260) {onnx_node_name = "Sqrt_259"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %262 = "onnx.Div"(%257, %261) {onnx_node_name = "Div_260"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %263 = "onnx.Mul"(%262, %14) {onnx_node_name = "Mul_261"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %264 = "onnx.Add"(%263, %15) {onnx_node_name = "Add_262"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %265 = "onnx.MatMul"(%264, %68) {onnx_node_name = "MatMul_263"} : (tensor<?x?x512xf32>, tensor<512x2048xf32>) -> tensor<?x?x2048xf32>
    %266 = "onnx.Add"(%265, %16) : (tensor<?x?x2048xf32>, tensor<2048xf32>) -> tensor<?x?x2048xf32>
    %267 = "onnx.Sigmoid"(%266) {onnx_node_name = "Sigmoid_265"} : (tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %268 = "onnx.Mul"(%266, %267) {onnx_node_name = "Mul_266"} : (tensor<?x?x2048xf32>, tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %269 = "onnx.MatMul"(%268, %69) {onnx_node_name = "MatMul_267"} : (tensor<?x?x2048xf32>, tensor<2048x512xf32>) -> tensor<?x?x512xf32>
    %270 = "onnx.Add"(%263, %269) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %271 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %272 = "onnx.Add"(%270, %271) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %273 = "onnx.ReduceMean"(%272) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_270"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %274 = "onnx.Sub"(%272, %273) {onnx_node_name = "Sub_271"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %275 = "onnx.Pow"(%274, %101) {onnx_node_name = "Pow_273"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %276 = "onnx.ReduceMean"(%275) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_274"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %277 = "onnx.Add"(%276, %102) {onnx_node_name = "Add_276"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %278 = "onnx.Sqrt"(%277) {onnx_node_name = "Sqrt_277"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %279 = "onnx.Div"(%274, %278) {onnx_node_name = "Div_278"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %280 = "onnx.Mul"(%279, %17) {onnx_node_name = "Mul_279"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %281 = "onnx.Add"(%280, %18) {onnx_node_name = "Add_280"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %282 = "onnx.Dim"(%281) {axis = 0 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %283 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %284 = "onnx.Squeeze"(%282, %283) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %285 = "onnx.Dim"(%281) {axis = 1 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %286 = "onnx.MatMul"(%281, %70) {onnx_node_name = "MatMul_287"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %287 = "onnx.Add"(%286, %21) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %288 = "onnx.Mul"(%287, %99) {onnx_node_name = "Mul_290"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %289 = "onnx.MatMul"(%281, %71) {onnx_node_name = "MatMul_291"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %290 = "onnx.Add"(%289, %19) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %291 = "onnx.Concat"(%282, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_295"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %292 = "onnx.Reshape"(%290, %291) {allowzero = 0 : si64, onnx_node_name = "Reshape_296"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %293 = "onnx.Transpose"(%292) {onnx_node_name = "Transpose_297", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %294 = "onnx.MatMul"(%281, %72) {onnx_node_name = "MatMul_298"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %295 = "onnx.Add"(%294, %20) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %296 = "onnx.Concat"(%282, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_302"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %297 = "onnx.Reshape"(%295, %296) {allowzero = 0 : si64, onnx_node_name = "Reshape_303"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %298 = "onnx.Transpose"(%297) {onnx_node_name = "Transpose_304", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %299 = "onnx.Mul"(%284, %100) {onnx_node_name = "Mul_306"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %300 = "onnx.Concat"(%282, %285, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_311"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %301 = "onnx.Reshape"(%288, %300) {allowzero = 0 : si64, onnx_node_name = "Reshape_312"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %302 = "onnx.Transpose"(%301) {onnx_node_name = "Transpose_313", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %303 = "onnx.Unsqueeze"(%299, %94) {onnx_node_name = "Unsqueeze_315"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %304 = "onnx.Concat"(%303, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_316"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %305 = "onnx.Reshape"(%302, %304) {allowzero = 0 : si64, onnx_node_name = "Reshape_317"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %306 = "onnx.Unsqueeze"(%299, %94) {onnx_node_name = "Unsqueeze_319"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %307 = "onnx.Concat"(%306, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_320"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %308 = "onnx.Reshape"(%293, %307) {allowzero = 0 : si64, onnx_node_name = "Reshape_321"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %309 = "onnx.Unsqueeze"(%299, %94) {onnx_node_name = "Unsqueeze_323"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %310 = "onnx.Concat"(%309, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_324"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %311 = "onnx.Reshape"(%298, %310) {allowzero = 0 : si64, onnx_node_name = "Reshape_325"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %312 = "onnx.Dim"(%308) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %313 = "onnx.Transpose"(%308) {onnx_node_name = "Transpose_329", perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %314 = "onnx.MatMul"(%305, %313) {onnx_node_name = "MatMul_330"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %315 = "onnx.Concat"(%282, %57, %285, %312) {axis = 0 : si64, onnx_node_name = "Concat_337"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %316 = "onnx.Reshape"(%314, %315) {allowzero = 0 : si64, onnx_node_name = "Reshape_338"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x?xf32>
    %317 = "onnx.Add"(%316, %128) {onnx_node_name = "Add_339"} : (tensor<?x8x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x8x?x?xf32>
    %318 = "onnx.Mul"(%284, %100) {onnx_node_name = "Mul_341"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %319 = "onnx.Unsqueeze"(%318, %94) {onnx_node_name = "Unsqueeze_343"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %320 = "onnx.Concat"(%319, %285, %312) {axis = 0 : si64, onnx_node_name = "Concat_348"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %321 = "onnx.Reshape"(%317, %320) {allowzero = 0 : si64, onnx_node_name = "Reshape_349"} : (tensor<?x8x?x?xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %322 = "onnx.Softmax"(%321) {axis = -1 : si64, onnx_node_name = "Softmax_350", onnx_opset = 13 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %323 = "onnx.MatMul"(%322, %311) {onnx_node_name = "MatMul_351"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %324 = "onnx.Concat"(%282, %57, %285, %58) {axis = 0 : si64, onnx_node_name = "Concat_356"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %325 = "onnx.Reshape"(%323, %324) {allowzero = 0 : si64, onnx_node_name = "Reshape_357"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x64xf32>
    %326 = "onnx.Transpose"(%325) {onnx_node_name = "Transpose_358", perm = [0, 2, 1, 3]} : (tensor<?x8x?x64xf32>) -> tensor<?x?x8x64xf32>
    %327 = "onnx.Concat"(%282, %285, %60) {axis = 0 : si64, onnx_node_name = "Concat_363"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %328 = "onnx.Reshape"(%326, %327) {allowzero = 0 : si64, onnx_node_name = "Reshape_364"} : (tensor<?x?x8x64xf32>, tensor<3xi64>) -> tensor<?x?x512xf32>
    %329 = "onnx.MatMul"(%328, %73) {onnx_node_name = "MatMul_365"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %330 = "onnx.Add"(%280, %329) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %331 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %332 = "onnx.Add"(%330, %331) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %333 = "onnx.ReduceMean"(%332) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_368"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %334 = "onnx.Sub"(%332, %333) {onnx_node_name = "Sub_369"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %335 = "onnx.Pow"(%334, %101) {onnx_node_name = "Pow_371"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %336 = "onnx.ReduceMean"(%335) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_372"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %337 = "onnx.Add"(%336, %102) {onnx_node_name = "Add_374"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %338 = "onnx.Sqrt"(%337) {onnx_node_name = "Sqrt_375"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %339 = "onnx.Div"(%334, %338) {onnx_node_name = "Div_376"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %340 = "onnx.Mul"(%339, %22) {onnx_node_name = "Mul_377"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %341 = "onnx.Add"(%340, %23) {onnx_node_name = "Add_378"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %342 = "onnx.MatMul"(%341, %74) {onnx_node_name = "MatMul_379"} : (tensor<?x?x512xf32>, tensor<512x2048xf32>) -> tensor<?x?x2048xf32>
    %343 = "onnx.Add"(%342, %24) : (tensor<?x?x2048xf32>, tensor<2048xf32>) -> tensor<?x?x2048xf32>
    %344 = "onnx.Sigmoid"(%343) {onnx_node_name = "Sigmoid_381"} : (tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %345 = "onnx.Mul"(%343, %344) {onnx_node_name = "Mul_382"} : (tensor<?x?x2048xf32>, tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %346 = "onnx.MatMul"(%345, %75) {onnx_node_name = "MatMul_383"} : (tensor<?x?x2048xf32>, tensor<2048x512xf32>) -> tensor<?x?x512xf32>
    %347 = "onnx.Add"(%340, %346) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %348 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %349 = "onnx.Add"(%347, %348) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %350 = "onnx.ReduceMean"(%349) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_386"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %351 = "onnx.Sub"(%349, %350) {onnx_node_name = "Sub_387"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %352 = "onnx.Pow"(%351, %101) {onnx_node_name = "Pow_389"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %353 = "onnx.ReduceMean"(%352) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_390"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %354 = "onnx.Add"(%353, %102) {onnx_node_name = "Add_392"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %355 = "onnx.Sqrt"(%354) {onnx_node_name = "Sqrt_393"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %356 = "onnx.Div"(%351, %355) {onnx_node_name = "Div_394"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %357 = "onnx.Mul"(%356, %25) {onnx_node_name = "Mul_395"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %358 = "onnx.Add"(%357, %26) {onnx_node_name = "Add_396"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %359 = "onnx.Dim"(%358) {axis = 0 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %360 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %361 = "onnx.Squeeze"(%359, %360) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %362 = "onnx.Dim"(%358) {axis = 1 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %363 = "onnx.MatMul"(%358, %76) {onnx_node_name = "MatMul_403"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %364 = "onnx.Add"(%363, %29) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %365 = "onnx.Mul"(%364, %99) {onnx_node_name = "Mul_406"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %366 = "onnx.MatMul"(%358, %77) {onnx_node_name = "MatMul_407"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %367 = "onnx.Add"(%366, %27) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %368 = "onnx.Concat"(%359, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_411"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %369 = "onnx.Reshape"(%367, %368) {allowzero = 0 : si64, onnx_node_name = "Reshape_412"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %370 = "onnx.Transpose"(%369) {onnx_node_name = "Transpose_413", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %371 = "onnx.MatMul"(%358, %78) {onnx_node_name = "MatMul_414"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %372 = "onnx.Add"(%371, %28) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %373 = "onnx.Concat"(%359, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_418"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %374 = "onnx.Reshape"(%372, %373) {allowzero = 0 : si64, onnx_node_name = "Reshape_419"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %375 = "onnx.Transpose"(%374) {onnx_node_name = "Transpose_420", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %376 = "onnx.Mul"(%361, %100) {onnx_node_name = "Mul_422"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %377 = "onnx.Concat"(%359, %362, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_427"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %378 = "onnx.Reshape"(%365, %377) {allowzero = 0 : si64, onnx_node_name = "Reshape_428"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %379 = "onnx.Transpose"(%378) {onnx_node_name = "Transpose_429", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %380 = "onnx.Unsqueeze"(%376, %94) {onnx_node_name = "Unsqueeze_431"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %381 = "onnx.Concat"(%380, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_432"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %382 = "onnx.Reshape"(%379, %381) {allowzero = 0 : si64, onnx_node_name = "Reshape_433"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %383 = "onnx.Unsqueeze"(%376, %94) {onnx_node_name = "Unsqueeze_435"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %384 = "onnx.Concat"(%383, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_436"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %385 = "onnx.Reshape"(%370, %384) {allowzero = 0 : si64, onnx_node_name = "Reshape_437"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %386 = "onnx.Unsqueeze"(%376, %94) {onnx_node_name = "Unsqueeze_439"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %387 = "onnx.Concat"(%386, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_440"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %388 = "onnx.Reshape"(%375, %387) {allowzero = 0 : si64, onnx_node_name = "Reshape_441"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %389 = "onnx.Dim"(%385) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %390 = "onnx.Transpose"(%385) {onnx_node_name = "Transpose_445", perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %391 = "onnx.MatMul"(%382, %390) {onnx_node_name = "MatMul_446"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %392 = "onnx.Concat"(%359, %57, %362, %389) {axis = 0 : si64, onnx_node_name = "Concat_453"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %393 = "onnx.Reshape"(%391, %392) {allowzero = 0 : si64, onnx_node_name = "Reshape_454"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x?xf32>
    %394 = "onnx.Add"(%393, %128) {onnx_node_name = "Add_455"} : (tensor<?x8x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x8x?x?xf32>
    %395 = "onnx.Mul"(%361, %100) {onnx_node_name = "Mul_457"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %396 = "onnx.Unsqueeze"(%395, %94) {onnx_node_name = "Unsqueeze_459"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %397 = "onnx.Concat"(%396, %362, %389) {axis = 0 : si64, onnx_node_name = "Concat_464"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %398 = "onnx.Reshape"(%394, %397) {allowzero = 0 : si64, onnx_node_name = "Reshape_465"} : (tensor<?x8x?x?xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %399 = "onnx.Softmax"(%398) {axis = -1 : si64, onnx_node_name = "Softmax_466", onnx_opset = 13 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %400 = "onnx.MatMul"(%399, %388) {onnx_node_name = "MatMul_467"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %401 = "onnx.Concat"(%359, %57, %362, %58) {axis = 0 : si64, onnx_node_name = "Concat_472"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %402 = "onnx.Reshape"(%400, %401) {allowzero = 0 : si64, onnx_node_name = "Reshape_473"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x64xf32>
    %403 = "onnx.Transpose"(%402) {onnx_node_name = "Transpose_474", perm = [0, 2, 1, 3]} : (tensor<?x8x?x64xf32>) -> tensor<?x?x8x64xf32>
    %404 = "onnx.Concat"(%359, %362, %60) {axis = 0 : si64, onnx_node_name = "Concat_479"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %405 = "onnx.Reshape"(%403, %404) {allowzero = 0 : si64, onnx_node_name = "Reshape_480"} : (tensor<?x?x8x64xf32>, tensor<3xi64>) -> tensor<?x?x512xf32>
    %406 = "onnx.MatMul"(%405, %79) {onnx_node_name = "MatMul_481"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %407 = "onnx.Add"(%357, %406) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %408 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %409 = "onnx.Add"(%407, %408) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %410 = "onnx.ReduceMean"(%409) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_484"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %411 = "onnx.Sub"(%409, %410) {onnx_node_name = "Sub_485"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %412 = "onnx.Pow"(%411, %101) {onnx_node_name = "Pow_487"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %413 = "onnx.ReduceMean"(%412) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_488"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %414 = "onnx.Add"(%413, %102) {onnx_node_name = "Add_490"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %415 = "onnx.Sqrt"(%414) {onnx_node_name = "Sqrt_491"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %416 = "onnx.Div"(%411, %415) {onnx_node_name = "Div_492"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %417 = "onnx.Mul"(%416, %30) {onnx_node_name = "Mul_493"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %418 = "onnx.Add"(%417, %31) {onnx_node_name = "Add_494"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %419 = "onnx.MatMul"(%418, %80) {onnx_node_name = "MatMul_495"} : (tensor<?x?x512xf32>, tensor<512x2048xf32>) -> tensor<?x?x2048xf32>
    %420 = "onnx.Add"(%419, %32) : (tensor<?x?x2048xf32>, tensor<2048xf32>) -> tensor<?x?x2048xf32>
    %421 = "onnx.Sigmoid"(%420) {onnx_node_name = "Sigmoid_497"} : (tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %422 = "onnx.Mul"(%420, %421) {onnx_node_name = "Mul_498"} : (tensor<?x?x2048xf32>, tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %423 = "onnx.MatMul"(%422, %81) {onnx_node_name = "MatMul_499"} : (tensor<?x?x2048xf32>, tensor<2048x512xf32>) -> tensor<?x?x512xf32>
    %424 = "onnx.Add"(%417, %423) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %425 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %426 = "onnx.Add"(%424, %425) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %427 = "onnx.ReduceMean"(%426) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_502"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %428 = "onnx.Sub"(%426, %427) {onnx_node_name = "Sub_503"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %429 = "onnx.Pow"(%428, %101) {onnx_node_name = "Pow_505"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %430 = "onnx.ReduceMean"(%429) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_506"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %431 = "onnx.Add"(%430, %102) {onnx_node_name = "Add_508"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %432 = "onnx.Sqrt"(%431) {onnx_node_name = "Sqrt_509"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %433 = "onnx.Div"(%428, %432) {onnx_node_name = "Div_510"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %434 = "onnx.Mul"(%433, %33) {onnx_node_name = "Mul_511"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %435 = "onnx.Add"(%434, %34) {onnx_node_name = "Add_512"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %436 = "onnx.Dim"(%435) {axis = 0 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %437 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %438 = "onnx.Squeeze"(%436, %437) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %439 = "onnx.Dim"(%435) {axis = 1 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %440 = "onnx.MatMul"(%435, %82) {onnx_node_name = "MatMul_519"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %441 = "onnx.Add"(%440, %37) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %442 = "onnx.Mul"(%441, %99) {onnx_node_name = "Mul_522"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %443 = "onnx.MatMul"(%435, %83) {onnx_node_name = "MatMul_523"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %444 = "onnx.Add"(%443, %35) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %445 = "onnx.Concat"(%436, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_527"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %446 = "onnx.Reshape"(%444, %445) {allowzero = 0 : si64, onnx_node_name = "Reshape_528"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %447 = "onnx.Transpose"(%446) {onnx_node_name = "Transpose_529", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %448 = "onnx.MatMul"(%435, %84) {onnx_node_name = "MatMul_530"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %449 = "onnx.Add"(%448, %36) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %450 = "onnx.Concat"(%436, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_534"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %451 = "onnx.Reshape"(%449, %450) {allowzero = 0 : si64, onnx_node_name = "Reshape_535"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %452 = "onnx.Transpose"(%451) {onnx_node_name = "Transpose_536", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %453 = "onnx.Mul"(%438, %100) {onnx_node_name = "Mul_538"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %454 = "onnx.Concat"(%436, %439, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_543"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %455 = "onnx.Reshape"(%442, %454) {allowzero = 0 : si64, onnx_node_name = "Reshape_544"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %456 = "onnx.Transpose"(%455) {onnx_node_name = "Transpose_545", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %457 = "onnx.Unsqueeze"(%453, %94) {onnx_node_name = "Unsqueeze_547"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %458 = "onnx.Concat"(%457, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_548"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %459 = "onnx.Reshape"(%456, %458) {allowzero = 0 : si64, onnx_node_name = "Reshape_549"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %460 = "onnx.Unsqueeze"(%453, %94) {onnx_node_name = "Unsqueeze_551"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %461 = "onnx.Concat"(%460, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_552"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %462 = "onnx.Reshape"(%447, %461) {allowzero = 0 : si64, onnx_node_name = "Reshape_553"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %463 = "onnx.Unsqueeze"(%453, %94) {onnx_node_name = "Unsqueeze_555"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %464 = "onnx.Concat"(%463, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_556"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %465 = "onnx.Reshape"(%452, %464) {allowzero = 0 : si64, onnx_node_name = "Reshape_557"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %466 = "onnx.Dim"(%462) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %467 = "onnx.Transpose"(%462) {onnx_node_name = "Transpose_561", perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %468 = "onnx.MatMul"(%459, %467) {onnx_node_name = "MatMul_562"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %469 = "onnx.Concat"(%436, %57, %439, %466) {axis = 0 : si64, onnx_node_name = "Concat_569"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %470 = "onnx.Reshape"(%468, %469) {allowzero = 0 : si64, onnx_node_name = "Reshape_570"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x?xf32>
    %471 = "onnx.Add"(%470, %128) {onnx_node_name = "Add_571"} : (tensor<?x8x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x8x?x?xf32>
    %472 = "onnx.Mul"(%438, %100) {onnx_node_name = "Mul_573"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %473 = "onnx.Unsqueeze"(%472, %94) {onnx_node_name = "Unsqueeze_575"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %474 = "onnx.Concat"(%473, %439, %466) {axis = 0 : si64, onnx_node_name = "Concat_580"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %475 = "onnx.Reshape"(%471, %474) {allowzero = 0 : si64, onnx_node_name = "Reshape_581"} : (tensor<?x8x?x?xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %476 = "onnx.Softmax"(%475) {axis = -1 : si64, onnx_node_name = "Softmax_582", onnx_opset = 13 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %477 = "onnx.MatMul"(%476, %465) {onnx_node_name = "MatMul_583"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %478 = "onnx.Concat"(%436, %57, %439, %58) {axis = 0 : si64, onnx_node_name = "Concat_588"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %479 = "onnx.Reshape"(%477, %478) {allowzero = 0 : si64, onnx_node_name = "Reshape_589"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x64xf32>
    %480 = "onnx.Transpose"(%479) {onnx_node_name = "Transpose_590", perm = [0, 2, 1, 3]} : (tensor<?x8x?x64xf32>) -> tensor<?x?x8x64xf32>
    %481 = "onnx.Concat"(%436, %439, %60) {axis = 0 : si64, onnx_node_name = "Concat_595"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %482 = "onnx.Reshape"(%480, %481) {allowzero = 0 : si64, onnx_node_name = "Reshape_596"} : (tensor<?x?x8x64xf32>, tensor<3xi64>) -> tensor<?x?x512xf32>
    %483 = "onnx.MatMul"(%482, %85) {onnx_node_name = "MatMul_597"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %484 = "onnx.Add"(%434, %483) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %485 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %486 = "onnx.Add"(%484, %485) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %487 = "onnx.ReduceMean"(%486) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_600"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %488 = "onnx.Sub"(%486, %487) {onnx_node_name = "Sub_601"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %489 = "onnx.Pow"(%488, %101) {onnx_node_name = "Pow_603"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %490 = "onnx.ReduceMean"(%489) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_604"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %491 = "onnx.Add"(%490, %102) {onnx_node_name = "Add_606"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %492 = "onnx.Sqrt"(%491) {onnx_node_name = "Sqrt_607"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %493 = "onnx.Div"(%488, %492) {onnx_node_name = "Div_608"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %494 = "onnx.Mul"(%493, %38) {onnx_node_name = "Mul_609"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %495 = "onnx.Add"(%494, %39) {onnx_node_name = "Add_610"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %496 = "onnx.MatMul"(%495, %86) {onnx_node_name = "MatMul_611"} : (tensor<?x?x512xf32>, tensor<512x2048xf32>) -> tensor<?x?x2048xf32>
    %497 = "onnx.Add"(%496, %40) : (tensor<?x?x2048xf32>, tensor<2048xf32>) -> tensor<?x?x2048xf32>
    %498 = "onnx.Sigmoid"(%497) {onnx_node_name = "Sigmoid_613"} : (tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %499 = "onnx.Mul"(%497, %498) {onnx_node_name = "Mul_614"} : (tensor<?x?x2048xf32>, tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %500 = "onnx.MatMul"(%499, %87) {onnx_node_name = "MatMul_615"} : (tensor<?x?x2048xf32>, tensor<2048x512xf32>) -> tensor<?x?x512xf32>
    %501 = "onnx.Add"(%494, %500) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %502 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %503 = "onnx.Add"(%501, %502) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %504 = "onnx.ReduceMean"(%503) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_618"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %505 = "onnx.Sub"(%503, %504) {onnx_node_name = "Sub_619"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %506 = "onnx.Pow"(%505, %101) {onnx_node_name = "Pow_621"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %507 = "onnx.ReduceMean"(%506) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_622"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %508 = "onnx.Add"(%507, %102) {onnx_node_name = "Add_624"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %509 = "onnx.Sqrt"(%508) {onnx_node_name = "Sqrt_625"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %510 = "onnx.Div"(%505, %509) {onnx_node_name = "Div_626"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %511 = "onnx.Mul"(%510, %41) {onnx_node_name = "Mul_627"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %512 = "onnx.Add"(%511, %42) {onnx_node_name = "Add_628"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %513 = "onnx.Dim"(%512) {axis = 0 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %514 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %515 = "onnx.Squeeze"(%513, %514) : (tensor<1xi64>, tensor<1xi64>) -> tensor<i64>
    %516 = "onnx.Dim"(%512) {axis = 1 : si64} : (tensor<?x?x512xf32>) -> tensor<1xi64>
    %517 = "onnx.MatMul"(%512, %88) {onnx_node_name = "MatMul_635"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %518 = "onnx.Add"(%517, %45) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %519 = "onnx.Mul"(%518, %99) {onnx_node_name = "Mul_638"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %520 = "onnx.MatMul"(%512, %89) {onnx_node_name = "MatMul_639"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %521 = "onnx.Add"(%520, %43) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %522 = "onnx.Concat"(%513, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_643"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %523 = "onnx.Reshape"(%521, %522) {allowzero = 0 : si64, onnx_node_name = "Reshape_644"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %524 = "onnx.Transpose"(%523) {onnx_node_name = "Transpose_645", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %525 = "onnx.MatMul"(%512, %90) {onnx_node_name = "MatMul_646"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %526 = "onnx.Add"(%525, %44) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %527 = "onnx.Concat"(%513, %51, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_650"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %528 = "onnx.Reshape"(%526, %527) {allowzero = 0 : si64, onnx_node_name = "Reshape_651"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %529 = "onnx.Transpose"(%528) {onnx_node_name = "Transpose_652", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %530 = "onnx.Mul"(%515, %100) {onnx_node_name = "Mul_654"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %531 = "onnx.Concat"(%513, %516, %57, %58) {axis = 0 : si64, onnx_node_name = "Concat_659"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %532 = "onnx.Reshape"(%519, %531) {allowzero = 0 : si64, onnx_node_name = "Reshape_660"} : (tensor<?x?x512xf32>, tensor<4xi64>) -> tensor<?x?x8x64xf32>
    %533 = "onnx.Transpose"(%532) {onnx_node_name = "Transpose_661", perm = [0, 2, 1, 3]} : (tensor<?x?x8x64xf32>) -> tensor<?x8x?x64xf32>
    %534 = "onnx.Unsqueeze"(%530, %94) {onnx_node_name = "Unsqueeze_663"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %535 = "onnx.Concat"(%534, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_664"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %536 = "onnx.Reshape"(%533, %535) {allowzero = 0 : si64, onnx_node_name = "Reshape_665"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %537 = "onnx.Unsqueeze"(%530, %94) {onnx_node_name = "Unsqueeze_667"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %538 = "onnx.Concat"(%537, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_668"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %539 = "onnx.Reshape"(%524, %538) {allowzero = 0 : si64, onnx_node_name = "Reshape_669"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %540 = "onnx.Unsqueeze"(%530, %94) {onnx_node_name = "Unsqueeze_671"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %541 = "onnx.Concat"(%540, %51, %58) {axis = 0 : si64, onnx_node_name = "Concat_672"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %542 = "onnx.Reshape"(%529, %541) {allowzero = 0 : si64, onnx_node_name = "Reshape_673"} : (tensor<?x8x?x64xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %543 = "onnx.Dim"(%539) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %544 = "onnx.Transpose"(%539) {onnx_node_name = "Transpose_677", perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %545 = "onnx.MatMul"(%536, %544) {onnx_node_name = "MatMul_678"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %546 = "onnx.Concat"(%513, %57, %516, %543) {axis = 0 : si64, onnx_node_name = "Concat_685"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %547 = "onnx.Reshape"(%545, %546) {allowzero = 0 : si64, onnx_node_name = "Reshape_686"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x?xf32>
    %548 = "onnx.Add"(%547, %128) {onnx_node_name = "Add_687"} : (tensor<?x8x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x8x?x?xf32>
    %549 = "onnx.Mul"(%515, %100) {onnx_node_name = "Mul_689"} : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %550 = "onnx.Unsqueeze"(%549, %94) {onnx_node_name = "Unsqueeze_691"} : (tensor<i64>, tensor<1xi64>) -> tensor<1xi64>
    %551 = "onnx.Concat"(%550, %516, %543) {axis = 0 : si64, onnx_node_name = "Concat_696"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %552 = "onnx.Reshape"(%548, %551) {allowzero = 0 : si64, onnx_node_name = "Reshape_697"} : (tensor<?x8x?x?xf32>, tensor<3xi64>) -> tensor<?x?x?xf32>
    %553 = "onnx.Softmax"(%552) {axis = -1 : si64, onnx_node_name = "Softmax_698", onnx_opset = 13 : si64} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %554 = "onnx.MatMul"(%553, %542) {onnx_node_name = "MatMul_699"} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %555 = "onnx.Concat"(%513, %57, %516, %58) {axis = 0 : si64, onnx_node_name = "Concat_704"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %556 = "onnx.Reshape"(%554, %555) {allowzero = 0 : si64, onnx_node_name = "Reshape_705"} : (tensor<?x?x?xf32>, tensor<4xi64>) -> tensor<?x8x?x64xf32>
    %557 = "onnx.Transpose"(%556) {onnx_node_name = "Transpose_706", perm = [0, 2, 1, 3]} : (tensor<?x8x?x64xf32>) -> tensor<?x?x8x64xf32>
    %558 = "onnx.Concat"(%513, %516, %60) {axis = 0 : si64, onnx_node_name = "Concat_711"} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %559 = "onnx.Reshape"(%557, %558) {allowzero = 0 : si64, onnx_node_name = "Reshape_712"} : (tensor<?x?x8x64xf32>, tensor<3xi64>) -> tensor<?x?x512xf32>
    %560 = "onnx.MatMul"(%559, %91) {onnx_node_name = "MatMul_713"} : (tensor<?x?x512xf32>, tensor<512x512xf32>) -> tensor<?x?x512xf32>
    %561 = "onnx.Add"(%511, %560) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %562 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %563 = "onnx.Add"(%561, %562) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %564 = "onnx.ReduceMean"(%563) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_716"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %565 = "onnx.Sub"(%563, %564) {onnx_node_name = "Sub_717"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %566 = "onnx.Pow"(%565, %101) {onnx_node_name = "Pow_719"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %567 = "onnx.ReduceMean"(%566) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_720"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %568 = "onnx.Add"(%567, %102) {onnx_node_name = "Add_722"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %569 = "onnx.Sqrt"(%568) {onnx_node_name = "Sqrt_723"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %570 = "onnx.Div"(%565, %569) {onnx_node_name = "Div_724"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %571 = "onnx.Mul"(%570, %46) {onnx_node_name = "Mul_725"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %572 = "onnx.Add"(%571, %47) {onnx_node_name = "Add_726"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %573 = "onnx.MatMul"(%572, %92) {onnx_node_name = "MatMul_727"} : (tensor<?x?x512xf32>, tensor<512x2048xf32>) -> tensor<?x?x2048xf32>
    %574 = "onnx.Add"(%573, %48) : (tensor<?x?x2048xf32>, tensor<2048xf32>) -> tensor<?x?x2048xf32>
    %575 = "onnx.Sigmoid"(%574) {onnx_node_name = "Sigmoid_729"} : (tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %576 = "onnx.Mul"(%574, %575) {onnx_node_name = "Mul_730"} : (tensor<?x?x2048xf32>, tensor<?x?x2048xf32>) -> tensor<?x?x2048xf32>
    %577 = "onnx.MatMul"(%576, %93) {onnx_node_name = "MatMul_731"} : (tensor<?x?x2048xf32>, tensor<2048x512xf32>) -> tensor<?x?x512xf32>
    %578 = "onnx.Add"(%571, %577) : (tensor<?x?x512xf32>, tensor<?x?x512xf32>) -> tensor<?x?x512xf32>
    %579 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512xf32>} : () -> tensor<512xf32>
    %580 = "onnx.Add"(%578, %579) : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %581 = "onnx.ReduceMean"(%580) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_734"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %582 = "onnx.Sub"(%580, %581) {onnx_node_name = "Sub_735"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %583 = "onnx.Pow"(%582, %101) {onnx_node_name = "Pow_737"} : (tensor<?x?x512xf32>, tensor<f32>) -> tensor<?x?x512xf32>
    %584 = "onnx.ReduceMean"(%583) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_738"} : (tensor<?x?x512xf32>) -> tensor<?x?x1xf32>
    %585 = "onnx.Add"(%584, %102) {onnx_node_name = "Add_740"} : (tensor<?x?x1xf32>, tensor<f32>) -> tensor<?x?x1xf32>
    %586 = "onnx.Sqrt"(%585) {onnx_node_name = "Sqrt_741"} : (tensor<?x?x1xf32>) -> tensor<?x?x1xf32>
    %587 = "onnx.Div"(%582, %586) {onnx_node_name = "Div_742"} : (tensor<?x?x512xf32>, tensor<?x?x1xf32>) -> tensor<?x?x512xf32>
    %588 = "onnx.Mul"(%587, %49) {onnx_node_name = "Mul_743"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    %589 = "onnx.Add"(%588, %50) {onnx_node_name = "Add_744"} : (tensor<?x?x512xf32>, tensor<512xf32>) -> tensor<?x?x512xf32>
    return %589 : tensor<?x?x512xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
