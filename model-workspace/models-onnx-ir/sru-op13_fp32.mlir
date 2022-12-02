module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<1x28x28xf32>) -> tensor<?x10xf32> attributes {input_names = ["Placeholder:0"], output_names = ["Softmax:0"]} {
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %3 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x384xf32>} : () -> tensor<128x384xf32>
    %5 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128xf32>} : () -> tensor<128xf32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<28x384xf32>} : () -> tensor<28x384xf32>
    %8 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %9 = "onnx.Constant"() {value = dense<[0, 128]> : tensor<2xi64>} : () -> tensor<2xi64>
    %10 = "onnx.Constant"() {value = dense<0> : tensor<2xi64>} : () -> tensor<2xi64>
    %11 = "onnx.Constant"() {value = dense<[9223372036854775807, 128]> : tensor<2xi64>} : () -> tensor<2xi64>
    %12 = "onnx.Constant"() {value = dense<[9223372036854775807, 256]> : tensor<2xi64>} : () -> tensor<2xi64>
    %13 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %14 = "onnx.Constant"() {value = dense<[0.282647729, -0.666800737, 0.655130267, 0.48540327, 1.4380765, 1.29160631, 0.00453929696, 0.93725878, -0.0861823708, 0.736010491]> : tensor<10xf32>} : () -> tensor<10xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<128x10xf32>} : () -> tensor<128x10xf32>
    %16:28 = "onnx.Split"(%arg0, %0) {axis = 1 : si64, onnx_node_name = "unstack"} : (tensor<1x28x28xf32>, none) -> (tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>, tensor<?x1x28xf32>)
    %17 = "onnx.Squeeze"(%16#1, %13) {onnx_node_name = "unstack__9"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %18 = "onnx.MatMul"(%17, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %19:3 = "onnx.Split"(%18, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %20 = "onnx.Add"(%19#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %21 = "onnx.Sigmoid"(%20) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %22 = "onnx.Add"(%19#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %23 = "onnx.Sigmoid"(%22) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %24 = "onnx.Sub"(%1, %23) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %25 = "onnx.Mul"(%24, %19#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %26 = "onnx.Squeeze"(%16#0, %13) {onnx_node_name = "unstack__7"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %27 = "onnx.MatMul"(%26, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %28:3 = "onnx.Split"(%27, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %29 = "onnx.Add"(%28#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %30 = "onnx.Sigmoid"(%29) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %31 = "onnx.Add"(%28#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %32 = "onnx.Sigmoid"(%31) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %33 = "onnx.Sub"(%1, %32) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %34 = "onnx.Mul"(%33, %28#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %35 = "onnx.Dim"(%26) {axis = 0 : si64} : (tensor<?x28xf32>) -> tensor<1xi64>
    %36 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %37 = "onnx.Concat"(%35, %36) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %38 = "onnx.Expand"(%8, %37) {onnx_node_name = "rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros"} : (tensor<f32>, tensor<2xi64>) -> tensor<?x?xf32>
    %39 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %40 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %41 = "onnx.Slice"(%38, %9, %12, %39, %40) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/Slice"} : (tensor<?x?xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x?xf32>
    %42 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %43 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %44 = "onnx.Slice"(%38, %10, %11, %42, %43) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/Slice"} : (tensor<?x?xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x?xf32>
    %45 = "onnx.Mul"(%32, %44) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x?xf32>) -> tensor<?x128xf32>
    %46 = "onnx.Add"(%45, %34) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %47 = "onnx.Tanh"(%46) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %48 = "onnx.Mul"(%30, %47) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %49 = "onnx.MatMul"(%48, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %50:3 = "onnx.Split"(%49, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %51 = "onnx.Add"(%50#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %52 = "onnx.Sigmoid"(%51) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %53 = "onnx.Sub"(%1, %52) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %54 = "onnx.Mul"(%53, %50#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %55 = "onnx.Mul"(%52, %41) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x?xf32>) -> tensor<?x128xf32>
    %56 = "onnx.Add"(%55, %54) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %57 = "onnx.Concat"(%46, %56) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %58 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %59 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %60 = "onnx.Slice"(%57, %9, %12, %58, %59) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %61 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %62 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %63 = "onnx.Slice"(%57, %10, %11, %61, %62) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %64 = "onnx.Mul"(%23, %63) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %65 = "onnx.Add"(%64, %25) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %66 = "onnx.Tanh"(%65) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %67 = "onnx.Mul"(%21, %66) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_1/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %68 = "onnx.MatMul"(%67, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %69:3 = "onnx.Split"(%68, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %70 = "onnx.Add"(%69#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %71 = "onnx.Sigmoid"(%70) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %72 = "onnx.Sub"(%1, %71) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %73 = "onnx.Mul"(%72, %69#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %74 = "onnx.Mul"(%71, %60) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %75 = "onnx.Add"(%74, %73) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_1/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %76 = "onnx.Concat"(%65, %75) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %77 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %78 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %79 = "onnx.Slice"(%76, %9, %12, %77, %78) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %80 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %81 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %82 = "onnx.Slice"(%76, %10, %11, %80, %81) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %83 = "onnx.Squeeze"(%16#27, %13) {onnx_node_name = "unstack__61"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %84 = "onnx.MatMul"(%83, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %85:3 = "onnx.Split"(%84, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %86 = "onnx.Add"(%85#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %87 = "onnx.Sigmoid"(%86) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %88 = "onnx.Add"(%85#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %89 = "onnx.Sigmoid"(%88) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %90 = "onnx.Sub"(%1, %89) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %91 = "onnx.Mul"(%90, %85#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %92 = "onnx.Squeeze"(%16#26, %13) {onnx_node_name = "unstack__59"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %93 = "onnx.MatMul"(%92, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %94:3 = "onnx.Split"(%93, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %95 = "onnx.Add"(%94#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %96 = "onnx.Sigmoid"(%95) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %97 = "onnx.Add"(%94#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %98 = "onnx.Sigmoid"(%97) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %99 = "onnx.Sub"(%1, %98) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %100 = "onnx.Mul"(%99, %94#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %101 = "onnx.Squeeze"(%16#25, %13) {onnx_node_name = "unstack__57"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %102 = "onnx.MatMul"(%101, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %103:3 = "onnx.Split"(%102, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %104 = "onnx.Add"(%103#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %105 = "onnx.Sigmoid"(%104) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %106 = "onnx.Add"(%103#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %107 = "onnx.Sigmoid"(%106) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %108 = "onnx.Sub"(%1, %107) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %109 = "onnx.Mul"(%108, %103#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %110 = "onnx.Squeeze"(%16#24, %13) {onnx_node_name = "unstack__55"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %111 = "onnx.MatMul"(%110, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %112:3 = "onnx.Split"(%111, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %113 = "onnx.Add"(%112#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %114 = "onnx.Sigmoid"(%113) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %115 = "onnx.Add"(%112#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %116 = "onnx.Sigmoid"(%115) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %117 = "onnx.Sub"(%1, %116) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %118 = "onnx.Mul"(%117, %112#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %119 = "onnx.Squeeze"(%16#23, %13) {onnx_node_name = "unstack__53"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %120 = "onnx.MatMul"(%119, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %121:3 = "onnx.Split"(%120, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %122 = "onnx.Add"(%121#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %123 = "onnx.Sigmoid"(%122) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %124 = "onnx.Add"(%121#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %125 = "onnx.Sigmoid"(%124) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %126 = "onnx.Sub"(%1, %125) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %127 = "onnx.Mul"(%126, %121#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %128 = "onnx.Squeeze"(%16#22, %13) {onnx_node_name = "unstack__51"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %129 = "onnx.MatMul"(%128, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %130:3 = "onnx.Split"(%129, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %131 = "onnx.Add"(%130#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %132 = "onnx.Sigmoid"(%131) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %133 = "onnx.Add"(%130#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %134 = "onnx.Sigmoid"(%133) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %135 = "onnx.Sub"(%1, %134) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %136 = "onnx.Mul"(%135, %130#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %137 = "onnx.Squeeze"(%16#21, %13) {onnx_node_name = "unstack__49"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %138 = "onnx.MatMul"(%137, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %139:3 = "onnx.Split"(%138, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %140 = "onnx.Add"(%139#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %141 = "onnx.Sigmoid"(%140) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %142 = "onnx.Add"(%139#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %143 = "onnx.Sigmoid"(%142) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %144 = "onnx.Sub"(%1, %143) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %145 = "onnx.Mul"(%144, %139#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %146 = "onnx.Squeeze"(%16#20, %13) {onnx_node_name = "unstack__47"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %147 = "onnx.MatMul"(%146, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %148:3 = "onnx.Split"(%147, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %149 = "onnx.Add"(%148#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %150 = "onnx.Sigmoid"(%149) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %151 = "onnx.Add"(%148#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %152 = "onnx.Sigmoid"(%151) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %153 = "onnx.Sub"(%1, %152) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %154 = "onnx.Mul"(%153, %148#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %155 = "onnx.Squeeze"(%16#19, %13) {onnx_node_name = "unstack__45"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %156 = "onnx.MatMul"(%155, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %157:3 = "onnx.Split"(%156, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %158 = "onnx.Add"(%157#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %159 = "onnx.Sigmoid"(%158) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %160 = "onnx.Add"(%157#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %161 = "onnx.Sigmoid"(%160) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %162 = "onnx.Sub"(%1, %161) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %163 = "onnx.Mul"(%162, %157#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %164 = "onnx.Squeeze"(%16#18, %13) {onnx_node_name = "unstack__43"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %165 = "onnx.MatMul"(%164, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %166:3 = "onnx.Split"(%165, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %167 = "onnx.Add"(%166#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %168 = "onnx.Sigmoid"(%167) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %169 = "onnx.Add"(%166#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %170 = "onnx.Sigmoid"(%169) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %171 = "onnx.Sub"(%1, %170) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %172 = "onnx.Mul"(%171, %166#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %173 = "onnx.Squeeze"(%16#17, %13) {onnx_node_name = "unstack__41"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %174 = "onnx.MatMul"(%173, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %175:3 = "onnx.Split"(%174, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %176 = "onnx.Add"(%175#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %177 = "onnx.Sigmoid"(%176) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %178 = "onnx.Add"(%175#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %179 = "onnx.Sigmoid"(%178) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %180 = "onnx.Sub"(%1, %179) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %181 = "onnx.Mul"(%180, %175#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %182 = "onnx.Squeeze"(%16#16, %13) {onnx_node_name = "unstack__39"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %183 = "onnx.MatMul"(%182, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %184:3 = "onnx.Split"(%183, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %185 = "onnx.Add"(%184#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %186 = "onnx.Sigmoid"(%185) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %187 = "onnx.Add"(%184#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %188 = "onnx.Sigmoid"(%187) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %189 = "onnx.Sub"(%1, %188) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %190 = "onnx.Mul"(%189, %184#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %191 = "onnx.Squeeze"(%16#15, %13) {onnx_node_name = "unstack__37"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %192 = "onnx.MatMul"(%191, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %193:3 = "onnx.Split"(%192, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %194 = "onnx.Add"(%193#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %195 = "onnx.Sigmoid"(%194) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %196 = "onnx.Add"(%193#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %197 = "onnx.Sigmoid"(%196) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %198 = "onnx.Sub"(%1, %197) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %199 = "onnx.Mul"(%198, %193#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %200 = "onnx.Squeeze"(%16#14, %13) {onnx_node_name = "unstack__35"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %201 = "onnx.MatMul"(%200, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %202:3 = "onnx.Split"(%201, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %203 = "onnx.Add"(%202#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %204 = "onnx.Sigmoid"(%203) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %205 = "onnx.Add"(%202#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %206 = "onnx.Sigmoid"(%205) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %207 = "onnx.Sub"(%1, %206) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %208 = "onnx.Mul"(%207, %202#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %209 = "onnx.Squeeze"(%16#13, %13) {onnx_node_name = "unstack__33"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %210 = "onnx.MatMul"(%209, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %211:3 = "onnx.Split"(%210, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %212 = "onnx.Add"(%211#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %213 = "onnx.Sigmoid"(%212) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %214 = "onnx.Add"(%211#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %215 = "onnx.Sigmoid"(%214) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %216 = "onnx.Sub"(%1, %215) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %217 = "onnx.Mul"(%216, %211#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %218 = "onnx.Squeeze"(%16#12, %13) {onnx_node_name = "unstack__31"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %219 = "onnx.MatMul"(%218, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %220:3 = "onnx.Split"(%219, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %221 = "onnx.Add"(%220#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %222 = "onnx.Sigmoid"(%221) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %223 = "onnx.Add"(%220#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %224 = "onnx.Sigmoid"(%223) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %225 = "onnx.Sub"(%1, %224) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %226 = "onnx.Mul"(%225, %220#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %227 = "onnx.Squeeze"(%16#11, %13) {onnx_node_name = "unstack__29"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %228 = "onnx.MatMul"(%227, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %229:3 = "onnx.Split"(%228, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %230 = "onnx.Add"(%229#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %231 = "onnx.Sigmoid"(%230) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %232 = "onnx.Add"(%229#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %233 = "onnx.Sigmoid"(%232) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %234 = "onnx.Sub"(%1, %233) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %235 = "onnx.Mul"(%234, %229#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %236 = "onnx.Squeeze"(%16#10, %13) {onnx_node_name = "unstack__27"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %237 = "onnx.MatMul"(%236, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %238:3 = "onnx.Split"(%237, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %239 = "onnx.Add"(%238#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %240 = "onnx.Sigmoid"(%239) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %241 = "onnx.Add"(%238#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %242 = "onnx.Sigmoid"(%241) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %243 = "onnx.Sub"(%1, %242) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %244 = "onnx.Mul"(%243, %238#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %245 = "onnx.Squeeze"(%16#9, %13) {onnx_node_name = "unstack__25"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %246 = "onnx.MatMul"(%245, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %247:3 = "onnx.Split"(%246, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %248 = "onnx.Add"(%247#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %249 = "onnx.Sigmoid"(%248) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %250 = "onnx.Add"(%247#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %251 = "onnx.Sigmoid"(%250) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %252 = "onnx.Sub"(%1, %251) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %253 = "onnx.Mul"(%252, %247#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %254 = "onnx.Squeeze"(%16#8, %13) {onnx_node_name = "unstack__23"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %255 = "onnx.MatMul"(%254, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %256:3 = "onnx.Split"(%255, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %257 = "onnx.Add"(%256#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %258 = "onnx.Sigmoid"(%257) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %259 = "onnx.Add"(%256#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %260 = "onnx.Sigmoid"(%259) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %261 = "onnx.Sub"(%1, %260) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %262 = "onnx.Mul"(%261, %256#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %263 = "onnx.Squeeze"(%16#7, %13) {onnx_node_name = "unstack__21"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %264 = "onnx.MatMul"(%263, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %265:3 = "onnx.Split"(%264, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %266 = "onnx.Add"(%265#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %267 = "onnx.Sigmoid"(%266) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %268 = "onnx.Add"(%265#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %269 = "onnx.Sigmoid"(%268) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %270 = "onnx.Sub"(%1, %269) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %271 = "onnx.Mul"(%270, %265#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %272 = "onnx.Squeeze"(%16#6, %13) {onnx_node_name = "unstack__19"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %273 = "onnx.MatMul"(%272, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %274:3 = "onnx.Split"(%273, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %275 = "onnx.Add"(%274#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %276 = "onnx.Sigmoid"(%275) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %277 = "onnx.Add"(%274#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %278 = "onnx.Sigmoid"(%277) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %279 = "onnx.Sub"(%1, %278) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %280 = "onnx.Mul"(%279, %274#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %281 = "onnx.Squeeze"(%16#5, %13) {onnx_node_name = "unstack__17"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %282 = "onnx.MatMul"(%281, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %283:3 = "onnx.Split"(%282, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %284 = "onnx.Add"(%283#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %285 = "onnx.Sigmoid"(%284) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %286 = "onnx.Add"(%283#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %287 = "onnx.Sigmoid"(%286) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %288 = "onnx.Sub"(%1, %287) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %289 = "onnx.Mul"(%288, %283#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %290 = "onnx.Squeeze"(%16#4, %13) {onnx_node_name = "unstack__15"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %291 = "onnx.MatMul"(%290, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %292:3 = "onnx.Split"(%291, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %293 = "onnx.Add"(%292#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %294 = "onnx.Sigmoid"(%293) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %295 = "onnx.Add"(%292#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %296 = "onnx.Sigmoid"(%295) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %297 = "onnx.Sub"(%1, %296) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %298 = "onnx.Mul"(%297, %292#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %299 = "onnx.Squeeze"(%16#3, %13) {onnx_node_name = "unstack__13"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %300 = "onnx.MatMul"(%299, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %301:3 = "onnx.Split"(%300, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %302 = "onnx.Add"(%301#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %303 = "onnx.Sigmoid"(%302) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %304 = "onnx.Add"(%301#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %305 = "onnx.Sigmoid"(%304) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %306 = "onnx.Sub"(%1, %305) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %307 = "onnx.Mul"(%306, %301#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %308 = "onnx.Squeeze"(%16#2, %13) {onnx_node_name = "unstack__11"} : (tensor<?x1x28xf32>, tensor<1xi64>) -> tensor<?x28xf32>
    %309 = "onnx.MatMul"(%308, %7) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/MatMul"} : (tensor<?x28xf32>, tensor<28x384xf32>) -> tensor<?x384xf32>
    %310:3 = "onnx.Split"(%309, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %311 = "onnx.Add"(%310#2, %5) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %312 = "onnx.Sigmoid"(%311) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %313 = "onnx.Add"(%310#1, %6) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %314 = "onnx.Sigmoid"(%313) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %315 = "onnx.Sub"(%1, %314) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %316 = "onnx.Mul"(%315, %310#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %317 = "onnx.Mul"(%314, %82) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %318 = "onnx.Add"(%317, %316) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %319 = "onnx.Tanh"(%318) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %320 = "onnx.Mul"(%312, %319) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_2/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %321 = "onnx.MatMul"(%320, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %322:3 = "onnx.Split"(%321, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %323 = "onnx.Add"(%322#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %324 = "onnx.Sigmoid"(%323) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %325 = "onnx.Sub"(%1, %324) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %326 = "onnx.Mul"(%325, %322#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %327 = "onnx.Mul"(%324, %79) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %328 = "onnx.Add"(%327, %326) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_2/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %329 = "onnx.Concat"(%318, %328) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %330 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %331 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %332 = "onnx.Slice"(%329, %9, %12, %330, %331) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %333 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %334 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %335 = "onnx.Slice"(%329, %10, %11, %333, %334) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %336 = "onnx.Mul"(%305, %335) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %337 = "onnx.Add"(%336, %307) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %338 = "onnx.Tanh"(%337) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %339 = "onnx.Mul"(%303, %338) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_3/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %340 = "onnx.MatMul"(%339, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %341:3 = "onnx.Split"(%340, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %342 = "onnx.Add"(%341#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %343 = "onnx.Sigmoid"(%342) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %344 = "onnx.Sub"(%1, %343) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %345 = "onnx.Mul"(%344, %341#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %346 = "onnx.Mul"(%343, %332) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %347 = "onnx.Add"(%346, %345) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_3/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %348 = "onnx.Concat"(%337, %347) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_3"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %349 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %350 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %351 = "onnx.Slice"(%348, %9, %12, %349, %350) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %352 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %353 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %354 = "onnx.Slice"(%348, %10, %11, %352, %353) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %355 = "onnx.Mul"(%296, %354) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %356 = "onnx.Add"(%355, %298) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %357 = "onnx.Tanh"(%356) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %358 = "onnx.Mul"(%294, %357) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_4/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %359 = "onnx.MatMul"(%358, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %360:3 = "onnx.Split"(%359, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %361 = "onnx.Add"(%360#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %362 = "onnx.Sigmoid"(%361) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %363 = "onnx.Sub"(%1, %362) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %364 = "onnx.Mul"(%363, %360#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %365 = "onnx.Mul"(%362, %351) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %366 = "onnx.Add"(%365, %364) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_4/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %367 = "onnx.Concat"(%356, %366) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_4"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %368 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %369 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %370 = "onnx.Slice"(%367, %9, %12, %368, %369) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %371 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %372 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %373 = "onnx.Slice"(%367, %10, %11, %371, %372) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %374 = "onnx.Mul"(%287, %373) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %375 = "onnx.Add"(%374, %289) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %376 = "onnx.Tanh"(%375) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %377 = "onnx.Mul"(%285, %376) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_5/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %378 = "onnx.MatMul"(%377, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %379:3 = "onnx.Split"(%378, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %380 = "onnx.Add"(%379#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %381 = "onnx.Sigmoid"(%380) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %382 = "onnx.Sub"(%1, %381) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %383 = "onnx.Mul"(%382, %379#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %384 = "onnx.Mul"(%381, %370) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %385 = "onnx.Add"(%384, %383) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_5/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %386 = "onnx.Concat"(%375, %385) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_5"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %387 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %388 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %389 = "onnx.Slice"(%386, %9, %12, %387, %388) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %390 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %391 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %392 = "onnx.Slice"(%386, %10, %11, %390, %391) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %393 = "onnx.Mul"(%278, %392) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %394 = "onnx.Add"(%393, %280) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %395 = "onnx.Tanh"(%394) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %396 = "onnx.Mul"(%276, %395) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_6/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %397 = "onnx.MatMul"(%396, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %398:3 = "onnx.Split"(%397, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %399 = "onnx.Add"(%398#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %400 = "onnx.Sigmoid"(%399) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %401 = "onnx.Sub"(%1, %400) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %402 = "onnx.Mul"(%401, %398#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %403 = "onnx.Mul"(%400, %389) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %404 = "onnx.Add"(%403, %402) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_6/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %405 = "onnx.Concat"(%394, %404) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_6"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %406 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %407 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %408 = "onnx.Slice"(%405, %9, %12, %406, %407) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %409 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %410 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %411 = "onnx.Slice"(%405, %10, %11, %409, %410) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %412 = "onnx.Mul"(%269, %411) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %413 = "onnx.Add"(%412, %271) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %414 = "onnx.Tanh"(%413) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %415 = "onnx.Mul"(%267, %414) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_7/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %416 = "onnx.MatMul"(%415, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %417:3 = "onnx.Split"(%416, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %418 = "onnx.Add"(%417#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %419 = "onnx.Sigmoid"(%418) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %420 = "onnx.Sub"(%1, %419) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %421 = "onnx.Mul"(%420, %417#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %422 = "onnx.Mul"(%419, %408) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %423 = "onnx.Add"(%422, %421) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_7/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %424 = "onnx.Concat"(%413, %423) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_7"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %425 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %426 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %427 = "onnx.Slice"(%424, %9, %12, %425, %426) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %428 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %429 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %430 = "onnx.Slice"(%424, %10, %11, %428, %429) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %431 = "onnx.Mul"(%260, %430) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %432 = "onnx.Add"(%431, %262) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %433 = "onnx.Tanh"(%432) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %434 = "onnx.Mul"(%258, %433) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_8/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %435 = "onnx.MatMul"(%434, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %436:3 = "onnx.Split"(%435, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %437 = "onnx.Add"(%436#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %438 = "onnx.Sigmoid"(%437) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %439 = "onnx.Sub"(%1, %438) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %440 = "onnx.Mul"(%439, %436#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %441 = "onnx.Mul"(%438, %427) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %442 = "onnx.Add"(%441, %440) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_8/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %443 = "onnx.Concat"(%432, %442) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_8"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %444 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %445 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %446 = "onnx.Slice"(%443, %9, %12, %444, %445) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %447 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %448 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %449 = "onnx.Slice"(%443, %10, %11, %447, %448) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %450 = "onnx.Mul"(%251, %449) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %451 = "onnx.Add"(%450, %253) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %452 = "onnx.Tanh"(%451) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %453 = "onnx.Mul"(%249, %452) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_9/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %454 = "onnx.MatMul"(%453, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %455:3 = "onnx.Split"(%454, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %456 = "onnx.Add"(%455#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %457 = "onnx.Sigmoid"(%456) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %458 = "onnx.Sub"(%1, %457) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %459 = "onnx.Mul"(%458, %455#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %460 = "onnx.Mul"(%457, %446) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %461 = "onnx.Add"(%460, %459) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_9/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %462 = "onnx.Concat"(%451, %461) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_9"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %463 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %464 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %465 = "onnx.Slice"(%462, %9, %12, %463, %464) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %466 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %467 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %468 = "onnx.Slice"(%462, %10, %11, %466, %467) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %469 = "onnx.Mul"(%242, %468) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %470 = "onnx.Add"(%469, %244) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %471 = "onnx.Tanh"(%470) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %472 = "onnx.Mul"(%240, %471) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_10/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %473 = "onnx.MatMul"(%472, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %474:3 = "onnx.Split"(%473, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %475 = "onnx.Add"(%474#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %476 = "onnx.Sigmoid"(%475) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %477 = "onnx.Sub"(%1, %476) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %478 = "onnx.Mul"(%477, %474#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %479 = "onnx.Mul"(%476, %465) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %480 = "onnx.Add"(%479, %478) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_10/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %481 = "onnx.Concat"(%470, %480) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_10"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %482 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %483 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %484 = "onnx.Slice"(%481, %9, %12, %482, %483) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %485 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %486 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %487 = "onnx.Slice"(%481, %10, %11, %485, %486) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %488 = "onnx.Mul"(%233, %487) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %489 = "onnx.Add"(%488, %235) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %490 = "onnx.Tanh"(%489) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %491 = "onnx.Mul"(%231, %490) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_11/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %492 = "onnx.MatMul"(%491, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %493:3 = "onnx.Split"(%492, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %494 = "onnx.Add"(%493#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %495 = "onnx.Sigmoid"(%494) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %496 = "onnx.Sub"(%1, %495) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %497 = "onnx.Mul"(%496, %493#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %498 = "onnx.Mul"(%495, %484) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %499 = "onnx.Add"(%498, %497) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_11/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %500 = "onnx.Concat"(%489, %499) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_11"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %501 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %502 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %503 = "onnx.Slice"(%500, %9, %12, %501, %502) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %504 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %505 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %506 = "onnx.Slice"(%500, %10, %11, %504, %505) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %507 = "onnx.Mul"(%224, %506) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %508 = "onnx.Add"(%507, %226) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %509 = "onnx.Tanh"(%508) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %510 = "onnx.Mul"(%222, %509) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_12/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %511 = "onnx.MatMul"(%510, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %512:3 = "onnx.Split"(%511, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %513 = "onnx.Add"(%512#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %514 = "onnx.Sigmoid"(%513) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %515 = "onnx.Sub"(%1, %514) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %516 = "onnx.Mul"(%515, %512#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %517 = "onnx.Mul"(%514, %503) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %518 = "onnx.Add"(%517, %516) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_12/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %519 = "onnx.Concat"(%508, %518) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_12"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %520 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %521 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %522 = "onnx.Slice"(%519, %9, %12, %520, %521) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %523 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %524 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %525 = "onnx.Slice"(%519, %10, %11, %523, %524) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %526 = "onnx.Mul"(%215, %525) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %527 = "onnx.Add"(%526, %217) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %528 = "onnx.Tanh"(%527) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %529 = "onnx.Mul"(%213, %528) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_13/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %530 = "onnx.MatMul"(%529, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %531:3 = "onnx.Split"(%530, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %532 = "onnx.Add"(%531#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %533 = "onnx.Sigmoid"(%532) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %534 = "onnx.Sub"(%1, %533) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %535 = "onnx.Mul"(%534, %531#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %536 = "onnx.Mul"(%533, %522) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %537 = "onnx.Add"(%536, %535) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_13/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %538 = "onnx.Concat"(%527, %537) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_13"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %539 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %540 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %541 = "onnx.Slice"(%538, %9, %12, %539, %540) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %542 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %543 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %544 = "onnx.Slice"(%538, %10, %11, %542, %543) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %545 = "onnx.Mul"(%206, %544) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %546 = "onnx.Add"(%545, %208) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %547 = "onnx.Tanh"(%546) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %548 = "onnx.Mul"(%204, %547) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_14/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %549 = "onnx.MatMul"(%548, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %550:3 = "onnx.Split"(%549, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %551 = "onnx.Add"(%550#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %552 = "onnx.Sigmoid"(%551) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %553 = "onnx.Sub"(%1, %552) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %554 = "onnx.Mul"(%553, %550#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %555 = "onnx.Mul"(%552, %541) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %556 = "onnx.Add"(%555, %554) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_14/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %557 = "onnx.Concat"(%546, %556) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_14"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %558 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %559 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %560 = "onnx.Slice"(%557, %9, %12, %558, %559) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %561 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %562 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %563 = "onnx.Slice"(%557, %10, %11, %561, %562) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %564 = "onnx.Mul"(%197, %563) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %565 = "onnx.Add"(%564, %199) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %566 = "onnx.Tanh"(%565) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %567 = "onnx.Mul"(%195, %566) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_15/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %568 = "onnx.MatMul"(%567, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %569:3 = "onnx.Split"(%568, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %570 = "onnx.Add"(%569#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %571 = "onnx.Sigmoid"(%570) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %572 = "onnx.Sub"(%1, %571) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %573 = "onnx.Mul"(%572, %569#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %574 = "onnx.Mul"(%571, %560) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %575 = "onnx.Add"(%574, %573) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_15/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %576 = "onnx.Concat"(%565, %575) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_15"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %577 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %578 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %579 = "onnx.Slice"(%576, %9, %12, %577, %578) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %580 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %581 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %582 = "onnx.Slice"(%576, %10, %11, %580, %581) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %583 = "onnx.Mul"(%188, %582) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %584 = "onnx.Add"(%583, %190) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %585 = "onnx.Tanh"(%584) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %586 = "onnx.Mul"(%186, %585) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_16/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %587 = "onnx.MatMul"(%586, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %588:3 = "onnx.Split"(%587, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %589 = "onnx.Add"(%588#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %590 = "onnx.Sigmoid"(%589) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %591 = "onnx.Sub"(%1, %590) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %592 = "onnx.Mul"(%591, %588#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %593 = "onnx.Mul"(%590, %579) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %594 = "onnx.Add"(%593, %592) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_16/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %595 = "onnx.Concat"(%584, %594) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_16"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %596 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %597 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %598 = "onnx.Slice"(%595, %9, %12, %596, %597) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %599 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %600 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %601 = "onnx.Slice"(%595, %10, %11, %599, %600) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %602 = "onnx.Mul"(%179, %601) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %603 = "onnx.Add"(%602, %181) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %604 = "onnx.Tanh"(%603) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %605 = "onnx.Mul"(%177, %604) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_17/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %606 = "onnx.MatMul"(%605, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %607:3 = "onnx.Split"(%606, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %608 = "onnx.Add"(%607#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %609 = "onnx.Sigmoid"(%608) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %610 = "onnx.Sub"(%1, %609) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %611 = "onnx.Mul"(%610, %607#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %612 = "onnx.Mul"(%609, %598) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %613 = "onnx.Add"(%612, %611) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_17/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %614 = "onnx.Concat"(%603, %613) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_17"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %615 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %616 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %617 = "onnx.Slice"(%614, %9, %12, %615, %616) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %618 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %619 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %620 = "onnx.Slice"(%614, %10, %11, %618, %619) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %621 = "onnx.Mul"(%170, %620) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %622 = "onnx.Add"(%621, %172) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %623 = "onnx.Tanh"(%622) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %624 = "onnx.Mul"(%168, %623) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_18/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %625 = "onnx.MatMul"(%624, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %626:3 = "onnx.Split"(%625, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %627 = "onnx.Add"(%626#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %628 = "onnx.Sigmoid"(%627) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %629 = "onnx.Sub"(%1, %628) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %630 = "onnx.Mul"(%629, %626#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %631 = "onnx.Mul"(%628, %617) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %632 = "onnx.Add"(%631, %630) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_18/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %633 = "onnx.Concat"(%622, %632) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_18"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %634 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %635 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %636 = "onnx.Slice"(%633, %9, %12, %634, %635) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %637 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %638 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %639 = "onnx.Slice"(%633, %10, %11, %637, %638) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %640 = "onnx.Mul"(%161, %639) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %641 = "onnx.Add"(%640, %163) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %642 = "onnx.Tanh"(%641) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %643 = "onnx.Mul"(%159, %642) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_19/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %644 = "onnx.MatMul"(%643, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %645:3 = "onnx.Split"(%644, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %646 = "onnx.Add"(%645#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %647 = "onnx.Sigmoid"(%646) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %648 = "onnx.Sub"(%1, %647) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %649 = "onnx.Mul"(%648, %645#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %650 = "onnx.Mul"(%647, %636) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %651 = "onnx.Add"(%650, %649) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_19/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %652 = "onnx.Concat"(%641, %651) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_19"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %653 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %654 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %655 = "onnx.Slice"(%652, %9, %12, %653, %654) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %656 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %657 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %658 = "onnx.Slice"(%652, %10, %11, %656, %657) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %659 = "onnx.Mul"(%152, %658) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %660 = "onnx.Add"(%659, %154) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %661 = "onnx.Tanh"(%660) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %662 = "onnx.Mul"(%150, %661) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_20/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %663 = "onnx.MatMul"(%662, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %664:3 = "onnx.Split"(%663, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %665 = "onnx.Add"(%664#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %666 = "onnx.Sigmoid"(%665) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %667 = "onnx.Sub"(%1, %666) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %668 = "onnx.Mul"(%667, %664#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %669 = "onnx.Mul"(%666, %655) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %670 = "onnx.Add"(%669, %668) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_20/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %671 = "onnx.Concat"(%660, %670) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_20"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %672 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %673 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %674 = "onnx.Slice"(%671, %9, %12, %672, %673) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %675 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %676 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %677 = "onnx.Slice"(%671, %10, %11, %675, %676) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %678 = "onnx.Mul"(%143, %677) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %679 = "onnx.Add"(%678, %145) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %680 = "onnx.Tanh"(%679) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %681 = "onnx.Mul"(%141, %680) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_21/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %682 = "onnx.MatMul"(%681, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %683:3 = "onnx.Split"(%682, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %684 = "onnx.Add"(%683#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %685 = "onnx.Sigmoid"(%684) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %686 = "onnx.Sub"(%1, %685) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %687 = "onnx.Mul"(%686, %683#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %688 = "onnx.Mul"(%685, %674) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %689 = "onnx.Add"(%688, %687) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_21/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %690 = "onnx.Concat"(%679, %689) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_21"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %691 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %692 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %693 = "onnx.Slice"(%690, %9, %12, %691, %692) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %694 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %695 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %696 = "onnx.Slice"(%690, %10, %11, %694, %695) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %697 = "onnx.Mul"(%134, %696) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %698 = "onnx.Add"(%697, %136) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %699 = "onnx.Tanh"(%698) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %700 = "onnx.Mul"(%132, %699) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_22/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %701 = "onnx.MatMul"(%700, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %702:3 = "onnx.Split"(%701, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %703 = "onnx.Add"(%702#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %704 = "onnx.Sigmoid"(%703) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %705 = "onnx.Sub"(%1, %704) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %706 = "onnx.Mul"(%705, %702#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %707 = "onnx.Mul"(%704, %693) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %708 = "onnx.Add"(%707, %706) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_22/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %709 = "onnx.Concat"(%698, %708) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_22"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %710 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %711 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %712 = "onnx.Slice"(%709, %9, %12, %710, %711) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %713 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %714 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %715 = "onnx.Slice"(%709, %10, %11, %713, %714) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %716 = "onnx.Mul"(%125, %715) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %717 = "onnx.Add"(%716, %127) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %718 = "onnx.Tanh"(%717) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %719 = "onnx.Mul"(%123, %718) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_23/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %720 = "onnx.MatMul"(%719, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %721:3 = "onnx.Split"(%720, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %722 = "onnx.Add"(%721#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %723 = "onnx.Sigmoid"(%722) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %724 = "onnx.Sub"(%1, %723) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %725 = "onnx.Mul"(%724, %721#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %726 = "onnx.Mul"(%723, %712) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %727 = "onnx.Add"(%726, %725) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_23/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %728 = "onnx.Concat"(%717, %727) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_23"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %729 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %730 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %731 = "onnx.Slice"(%728, %9, %12, %729, %730) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %732 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %733 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %734 = "onnx.Slice"(%728, %10, %11, %732, %733) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %735 = "onnx.Mul"(%116, %734) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %736 = "onnx.Add"(%735, %118) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %737 = "onnx.Tanh"(%736) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %738 = "onnx.Mul"(%114, %737) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_24/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %739 = "onnx.MatMul"(%738, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %740:3 = "onnx.Split"(%739, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %741 = "onnx.Add"(%740#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %742 = "onnx.Sigmoid"(%741) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %743 = "onnx.Sub"(%1, %742) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %744 = "onnx.Mul"(%743, %740#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %745 = "onnx.Mul"(%742, %731) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %746 = "onnx.Add"(%745, %744) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_24/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %747 = "onnx.Concat"(%736, %746) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_24"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %748 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %749 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %750 = "onnx.Slice"(%747, %9, %12, %748, %749) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %751 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %752 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %753 = "onnx.Slice"(%747, %10, %11, %751, %752) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %754 = "onnx.Mul"(%107, %753) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %755 = "onnx.Add"(%754, %109) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %756 = "onnx.Tanh"(%755) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %757 = "onnx.Mul"(%105, %756) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_25/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %758 = "onnx.MatMul"(%757, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %759:3 = "onnx.Split"(%758, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %760 = "onnx.Add"(%759#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %761 = "onnx.Sigmoid"(%760) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %762 = "onnx.Sub"(%1, %761) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %763 = "onnx.Mul"(%762, %759#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %764 = "onnx.Mul"(%761, %750) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %765 = "onnx.Add"(%764, %763) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_25/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %766 = "onnx.Concat"(%755, %765) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_25"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %767 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %768 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %769 = "onnx.Slice"(%766, %9, %12, %767, %768) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %770 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %771 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %772 = "onnx.Slice"(%766, %10, %11, %770, %771) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %773 = "onnx.Mul"(%98, %772) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %774 = "onnx.Add"(%773, %100) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %775 = "onnx.Tanh"(%774) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %776 = "onnx.Mul"(%96, %775) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_26/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %777 = "onnx.MatMul"(%776, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %778:3 = "onnx.Split"(%777, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %779 = "onnx.Add"(%778#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %780 = "onnx.Sigmoid"(%779) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %781 = "onnx.Sub"(%1, %780) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %782 = "onnx.Mul"(%781, %778#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %783 = "onnx.Mul"(%780, %769) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %784 = "onnx.Add"(%783, %782) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_26/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %785 = "onnx.Concat"(%774, %784) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/concat_26"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x256xf32>
    %786 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %787 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %788 = "onnx.Slice"(%785, %9, %12, %786, %787) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %789 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %790 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %791 = "onnx.Slice"(%785, %10, %11, %789, %790) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/Slice"} : (tensor<?x256xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<?x128xf32>
    %792 = "onnx.Mul"(%89, %791) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %793 = "onnx.Add"(%792, %91) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %794 = "onnx.Tanh"(%793) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %795 = "onnx.Mul"(%87, %794) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_0_27/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %796 = "onnx.MatMul"(%795, %4) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/MatMul"} : (tensor<?x128xf32>, tensor<128x384xf32>) -> tensor<?x384xf32>
    %797:3 = "onnx.Split"(%796, %0) {axis = 1 : si64, onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/split"} : (tensor<?x384xf32>, none) -> (tensor<?x128xf32>, tensor<?x128xf32>, tensor<?x128xf32>)
    %798 = "onnx.Add"(%797#2, %2) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/add_1"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %799 = "onnx.Sigmoid"(%798) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/Sigmoid_1"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %800 = "onnx.Sub"(%1, %799) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/sub_1"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %801 = "onnx.Mul"(%800, %795) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/mul_3"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %802 = "onnx.Add"(%797#1, %3) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/add"} : (tensor<?x128xf32>, tensor<128xf32>) -> tensor<?x128xf32>
    %803 = "onnx.Sigmoid"(%802) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/Sigmoid"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %804 = "onnx.Sub"(%1, %803) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/sub"} : (tensor<f32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %805 = "onnx.Mul"(%804, %797#0) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/mul_1"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %806 = "onnx.Mul"(%803, %788) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/mul"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %807 = "onnx.Add"(%806, %805) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/add_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %808 = "onnx.Tanh"(%807) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/Tanh"} : (tensor<?x128xf32>) -> tensor<?x128xf32>
    %809 = "onnx.Mul"(%799, %808) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/mul_2"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %810 = "onnx.Add"(%809, %801) {onnx_node_name = "rnn/rnn/multi_rnn_cell/cell_1_27/SRUCell/add_3"} : (tensor<?x128xf32>, tensor<?x128xf32>) -> tensor<?x128xf32>
    %811 = "onnx.Gemm"(%810, %15, %14) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<?x128xf32>, tensor<128x10xf32>, tensor<10xf32>) -> tensor<?x10xf32>
    %812 = "onnx.Softmax"(%811) {axis = -1 : si64, onnx_node_name = "Softmax", onnx_opset = 13 : si64} : (tensor<?x10xf32>) -> tensor<?x10xf32>
    return %812 : tensor<?x10xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
