module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> attributes {input_names = ["input"], output_names = ["output"]} {
    %0 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000x1280xf32>} : () -> tensor<1000x1280xf32>
    %1 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1000xf32>} : () -> tensor<1000xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x3x3x3xf32>} : () -> tensor<32x3x3x3xf32>
    %3 = "onnx.Constant"() {value = dense<[-8.599730e-02, 0.560411274, 0.348930985, 0.28295204, 0.967753171, 0.652543604, 0.49507159, 0.568947434, 0.617724597, 1.1074674E-4, -0.335959584, 0.958215057, 0.446063846, -0.371221632, -3.36437428E-4, 0.00633317837, -0.0415116511, -0.0181182344, 0.34100008, 0.100486755, -0.264608026, 0.497580558, 0.413815796, -0.0154052218, -0.48738268, 0.510827184, -0.302491188, 0.639285624, -0.121834084, -0.0693915486, 0.3928698, 0.270579666]> : tensor<32xf32>} : () -> tensor<32xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x1x3x3xf32>} : () -> tensor<32x1x3x3xf32>
    %5 = "onnx.Constant"() {value = dense<[-0.0118963569, 0.93304044, 0.00959587097, 0.418227226, 0.261094362, 0.837611079, 0.873585463, 0.409204483, 3.73148608, -0.00466901483, 0.333401263, 0.326424628, 0.808532595, -0.412330955, -0.00567122735, -0.00552821811, 8.330520e-03, 0.0136085181, 0.00787018239, 0.0779734626, -0.287649542, 1.56298876, 0.878986835, 0.0012245276, 0.75949639, -0.280076623, -0.365501821, 0.879585862, 0.673719525, 0.321320176, 0.970255672, -0.202976912]> : tensor<32xf32>} : () -> tensor<32xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<16x32x1x1xf32>} : () -> tensor<16x32x1x1xf32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x16x1x1xf32>} : () -> tensor<96x16x1x1xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x1x3x3xf32>} : () -> tensor<96x1x3x3xf32>
    %9 = "onnx.Constant"() {value = dense<[0.339799821, 0.386817545, -0.114061631, 0.00871241092, 0.0814113542, 0.0908111631, 0.961598575, -0.169949472, 0.0306495726, 0.0109931678, -3.697510e-02, 0.452199876, 0.0152431242, -0.577805102, -0.0681673288, 0.409225076, -9.20113176E-4, -0.674713551, 0.286789924, 1.05927813, -0.185000598, 0.00779682584, -0.0484486558, -0.0193073619, 0.0268862732, 0.0316640586, -0.204785213, -4.95355576E-4, -0.579226196, 0.00681330357, 0.443700761, -0.414300174, -0.209845111, 0.816021621, 1.26440454, -0.0662781671, 0.520994902, 0.453051299, 0.0369525813, 0.0207338482, 0.459211946, -0.488756925, 0.132209241, -0.21964848, -1.284720e-01, 0.032789588, 0.68676424, -0.0102520939, -0.035490226, 0.122633107, 0.015412217, 0.958005428, 0.514053762, -0.0145100355, 0.745968818, -0.0362179503, 0.0105580986, 1.6044662, -0.0214601755, 0.258605123, 0.00351472199, 0.0190545768, 0.0205621663, 0.768934309, 0.422662467, 0.051073961, 0.0904530882, 0.438530147, 0.17918773, 0.0281989053, -0.261270344, 0.363233626, 0.164261773, 0.572021604, -0.0329753049, 0.764113545, 0.213818938, 0.4470478, 0.0544539094, 9.952930e-02, 0.3805179, 0.056346342, 0.455441475, 0.0123670697, 0.464877665, 0.0379303396, -0.11293266, 0.0323329866, 0.296289802, -0.0328335688, 0.00312607875, 0.451298088, 1.54810703, 0.0174859241, 0.870234906, 0.043289274]> : tensor<96xf32>} : () -> tensor<96xf32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<24x96x1x1xf32>} : () -> tensor<24x96x1x1xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<144x24x1x1xf32>} : () -> tensor<144x24x1x1xf32>
    %12 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<144x1x3x3xf32>} : () -> tensor<144x1x3x3xf32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<144xf32>} : () -> tensor<144xf32>
    %14 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<24x144x1x1xf32>} : () -> tensor<24x144x1x1xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<144x24x1x1xf32>} : () -> tensor<144x24x1x1xf32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<144x1x3x3xf32>} : () -> tensor<144x1x3x3xf32>
    %17 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<144xf32>} : () -> tensor<144xf32>
    %18 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x144x1x1xf32>} : () -> tensor<32x144x1x1xf32>
    %19 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x32x1x1xf32>} : () -> tensor<192x32x1x1xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x3x3xf32>} : () -> tensor<192x1x3x3xf32>
    %21 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x192x1x1xf32>} : () -> tensor<32x192x1x1xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x32x1x1xf32>} : () -> tensor<192x32x1x1xf32>
    %24 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x3x3xf32>} : () -> tensor<192x1x3x3xf32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<32x192x1x1xf32>} : () -> tensor<32x192x1x1xf32>
    %27 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x32x1x1xf32>} : () -> tensor<192x32x1x1xf32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192x1x3x3xf32>} : () -> tensor<192x1x3x3xf32>
    %29 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<192xf32>} : () -> tensor<192xf32>
    %30 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x192x1x1xf32>} : () -> tensor<64x192x1x1xf32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x64x1x1xf32>} : () -> tensor<384x64x1x1xf32>
    %32 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x3x3xf32>} : () -> tensor<384x1x3x3xf32>
    %33 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %34 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x384x1x1xf32>} : () -> tensor<64x384x1x1xf32>
    %35 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x64x1x1xf32>} : () -> tensor<384x64x1x1xf32>
    %36 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x3x3xf32>} : () -> tensor<384x1x3x3xf32>
    %37 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %38 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x384x1x1xf32>} : () -> tensor<64x384x1x1xf32>
    %39 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x64x1x1xf32>} : () -> tensor<384x64x1x1xf32>
    %40 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x3x3xf32>} : () -> tensor<384x1x3x3xf32>
    %41 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %42 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<64x384x1x1xf32>} : () -> tensor<64x384x1x1xf32>
    %43 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x64x1x1xf32>} : () -> tensor<384x64x1x1xf32>
    %44 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384x1x3x3xf32>} : () -> tensor<384x1x3x3xf32>
    %45 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<384xf32>} : () -> tensor<384xf32>
    %46 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x384x1x1xf32>} : () -> tensor<96x384x1x1xf32>
    %47 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x96x1x1xf32>} : () -> tensor<576x96x1x1xf32>
    %48 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x3x3xf32>} : () -> tensor<576x1x3x3xf32>
    %49 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576xf32>} : () -> tensor<576xf32>
    %50 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x576x1x1xf32>} : () -> tensor<96x576x1x1xf32>
    %51 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x96x1x1xf32>} : () -> tensor<576x96x1x1xf32>
    %52 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x3x3xf32>} : () -> tensor<576x1x3x3xf32>
    %53 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576xf32>} : () -> tensor<576xf32>
    %54 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<96x576x1x1xf32>} : () -> tensor<96x576x1x1xf32>
    %55 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x96x1x1xf32>} : () -> tensor<576x96x1x1xf32>
    %56 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576x1x3x3xf32>} : () -> tensor<576x1x3x3xf32>
    %57 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<576xf32>} : () -> tensor<576xf32>
    %58 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x576x1x1xf32>} : () -> tensor<160x576x1x1xf32>
    %59 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x160x1x1xf32>} : () -> tensor<960x160x1x1xf32>
    %60 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x3x3xf32>} : () -> tensor<960x1x3x3xf32>
    %61 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960xf32>} : () -> tensor<960xf32>
    %62 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x960x1x1xf32>} : () -> tensor<160x960x1x1xf32>
    %63 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x160x1x1xf32>} : () -> tensor<960x160x1x1xf32>
    %64 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x3x3xf32>} : () -> tensor<960x1x3x3xf32>
    %65 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960xf32>} : () -> tensor<960xf32>
    %66 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<160x960x1x1xf32>} : () -> tensor<160x960x1x1xf32>
    %67 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x160x1x1xf32>} : () -> tensor<960x160x1x1xf32>
    %68 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960x1x3x3xf32>} : () -> tensor<960x1x3x3xf32>
    %69 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<960xf32>} : () -> tensor<960xf32>
    %70 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<320x960x1x1xf32>} : () -> tensor<320x960x1x1xf32>
    %71 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1280x320x1x1xf32>} : () -> tensor<1280x320x1x1xf32>
    %72 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %73 = "onnx.Constant"() {value = dense<6.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %74 = "onnx.Constant"() {value = dense<[1, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %75 = "onnx.Conv"(%arg0, %2, %3) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_0", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x3x224x224xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<1x32x112x112xf32>
    %76 = "onnx.Clip"(%75, %72, %73) {onnx_node_name = "Clip_3"} : (tensor<1x32x112x112xf32>, tensor<f32>, tensor<f32>) -> tensor<1x32x112x112xf32>
    %77 = "onnx.Conv"(%76, %4, %5) {auto_pad = "NOTSET", dilations = [1, 1], group = 32 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_4", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x32x112x112xf32>, tensor<32x1x3x3xf32>, tensor<32xf32>) -> tensor<1x32x112x112xf32>
    %78 = "onnx.Clip"(%77, %72, %73) {onnx_node_name = "Clip_7"} : (tensor<1x32x112x112xf32>, tensor<f32>, tensor<f32>) -> tensor<1x32x112x112xf32>
    %79 = "onnx.Constant"() {value = dense<[1, 32, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %80 = "onnx.Reshape"(%78, %79) {allowzero = 0 : si64} : (tensor<1x32x112x112xf32>, tensor<3xi64>) -> tensor<1x32x12544xf32>
    %81 = "onnx.Constant"() {value = dense<[16, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %82 = "onnx.Reshape"(%6, %81) {allowzero = 0 : si64} : (tensor<16x32x1x1xf32>, tensor<2xi64>) -> tensor<16x32xf32>
    %83 = "onnx.MatMul"(%82, %80) : (tensor<16x32xf32>, tensor<1x32x12544xf32>) -> tensor<1x16x12544xf32>
    %84 = "onnx.Constant"() {value = dense<[[[-2.14129257], [0.427362442], [-1.28207529], [1.03522277], [-0.101213448], [-0.462517053], [-0.66123563], [-1.79533494], [-0.838829994], [-1.65666711], [1.61357224], [-0.426707566], [-0.719091117], [-0.171038985], [1.63712561], [1.41761291]]]> : tensor<1x16x1xf32>} : () -> tensor<1x16x1xf32>
    %85 = "onnx.Add"(%83, %84) : (tensor<1x16x12544xf32>, tensor<1x16x1xf32>) -> tensor<1x16x12544xf32>
    %86 = "onnx.Constant"() {value = dense<[1, 16, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %87 = "onnx.Reshape"(%85, %86) {allowzero = 0 : si64} : (tensor<1x16x12544xf32>, tensor<3xi64>) -> tensor<1x16x12544xf32>
    %88 = "onnx.Constant"() {value = dense<[96, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %89 = "onnx.Reshape"(%7, %88) {allowzero = 0 : si64} : (tensor<96x16x1x1xf32>, tensor<2xi64>) -> tensor<96x16xf32>
    %90 = "onnx.MatMul"(%89, %87) : (tensor<96x16xf32>, tensor<1x16x12544xf32>) -> tensor<1x96x12544xf32>
    %91 = "onnx.Constant"() {value = dense<[[[0.015736647], [-0.0122318398], [0.241696075], [0.365651369], [0.27891928], [0.169614762], [0.0858008638], [0.068652615], [-0.0477199107], [0.148687765], [-0.0597807951], [0.0512037762], [0.202936158], [0.229770929], [0.206169158], [0.0128684472], [-0.047105521], [3.044120e-01], [0.0823320969], [0.348535031], [0.410935074], [0.147782162], [0.271358192], [0.294153959], [0.080138579], [-0.00139879948], [0.0969965904], [-0.334245056], [0.276296169], [0.2410734], [-0.00897832308], [0.23318249], [0.163605407], [0.0219101701], [-0.00752037065], [0.171798453], [0.117130749], [9.455080e-02], [0.275884151], [0.0785715729], [0.0275196284], [0.218593881], [2.704530e-01], [0.233984038], [0.168996274], [0.00358690415], [0.22214216], [0.176705107], [0.228817374], [0.191060156], [-0.456945449], [-0.0675708503], [0.0697045177], [7.18506577E-4], [-0.0718825757], [0.250251681], [-0.00576993171], [0.727864385], [0.252973497], [-0.00184829847], [2.31430036E-4], [-0.0124519672], [0.242549688], [0.259746909], [-0.027695233], [0.233290881], [0.340119392], [-0.00415590126], [-0.00596484728], [0.0966486484], [0.153153077], [0.176205963], [0.352701962], [0.0341422632], [0.204751894], [0.171977967], [0.0570623353], [0.0552253388], [0.373981327], [0.116757587], [-0.0414563045], [0.113469481], [0.0389416963], [0.0222724061], [0.0770989805], [-0.0551170446], [0.217861012], [0.0271535143], [0.0717327892], [0.157872796], [0.243506089], [-0.0740555599], [0.0124762217], [-0.067239061], [0.295325965], [0.134654835]]]> : tensor<1x96x1xf32>} : () -> tensor<1x96x1xf32>
    %92 = "onnx.Add"(%90, %91) : (tensor<1x96x12544xf32>, tensor<1x96x1xf32>) -> tensor<1x96x12544xf32>
    %93 = "onnx.Constant"() {value = dense<[1, 96, 112, 112]> : tensor<4xi64>} : () -> tensor<4xi64>
    %94 = "onnx.Reshape"(%92, %93) {allowzero = 0 : si64} : (tensor<1x96x12544xf32>, tensor<4xi64>) -> tensor<1x96x112x112xf32>
    %95 = "onnx.Clip"(%94, %72, %73) {onnx_node_name = "Clip_12"} : (tensor<1x96x112x112xf32>, tensor<f32>, tensor<f32>) -> tensor<1x96x112x112xf32>
    %96 = "onnx.Conv"(%95, %8, %9) {auto_pad = "NOTSET", dilations = [1, 1], group = 96 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_13", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x96x112x112xf32>, tensor<96x1x3x3xf32>, tensor<96xf32>) -> tensor<1x96x56x56xf32>
    %97 = "onnx.Clip"(%96, %72, %73) {onnx_node_name = "Clip_16"} : (tensor<1x96x56x56xf32>, tensor<f32>, tensor<f32>) -> tensor<1x96x56x56xf32>
    %98 = "onnx.Constant"() {value = dense<[1, 96, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %99 = "onnx.Reshape"(%97, %98) {allowzero = 0 : si64} : (tensor<1x96x56x56xf32>, tensor<3xi64>) -> tensor<1x96x3136xf32>
    %100 = "onnx.Constant"() {value = dense<[24, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %101 = "onnx.Reshape"(%10, %100) {allowzero = 0 : si64} : (tensor<24x96x1x1xf32>, tensor<2xi64>) -> tensor<24x96xf32>
    %102 = "onnx.MatMul"(%101, %99) : (tensor<24x96xf32>, tensor<1x96x3136xf32>) -> tensor<1x24x3136xf32>
    %103 = "onnx.Constant"() {value = dense<[[[-1.16592777], [0.508587539], [-0.700759172], [-0.192763671], [-0.0988526716], [-7.304510e-01], [-0.424635828], [0.185565576], [-0.195798963], [4.646170e-03], [0.0237745438], [0.4067083], [0.137660772], [1.80242395], [1.30564117], [0.820607483], [0.19949612], [-0.193921283], [-0.484991491], [0.131076843], [0.345178485], [0.280959755], [0.149545476], [0.128093213]]]> : tensor<1x24x1xf32>} : () -> tensor<1x24x1xf32>
    %104 = "onnx.Add"(%102, %103) : (tensor<1x24x3136xf32>, tensor<1x24x1xf32>) -> tensor<1x24x3136xf32>
    %105 = "onnx.Constant"() {value = dense<[1, 24, 56, 56]> : tensor<4xi64>} : () -> tensor<4xi64>
    %106 = "onnx.Reshape"(%104, %105) {allowzero = 0 : si64} : (tensor<1x24x3136xf32>, tensor<4xi64>) -> tensor<1x24x56x56xf32>
    %107 = "onnx.Constant"() {value = dense<[1, 24, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %108 = "onnx.Reshape"(%104, %107) {allowzero = 0 : si64} : (tensor<1x24x3136xf32>, tensor<3xi64>) -> tensor<1x24x3136xf32>
    %109 = "onnx.Constant"() {value = dense<[144, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %110 = "onnx.Reshape"(%11, %109) {allowzero = 0 : si64} : (tensor<144x24x1x1xf32>, tensor<2xi64>) -> tensor<144x24xf32>
    %111 = "onnx.MatMul"(%110, %108) : (tensor<144x24xf32>, tensor<1x24x3136xf32>) -> tensor<1x144x3136xf32>
    %112 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x144x1xf32>} : () -> tensor<1x144x1xf32>
    %113 = "onnx.Add"(%111, %112) : (tensor<1x144x3136xf32>, tensor<1x144x1xf32>) -> tensor<1x144x3136xf32>
    %114 = "onnx.Constant"() {value = dense<[1, 144, 56, 56]> : tensor<4xi64>} : () -> tensor<4xi64>
    %115 = "onnx.Reshape"(%113, %114) {allowzero = 0 : si64} : (tensor<1x144x3136xf32>, tensor<4xi64>) -> tensor<1x144x56x56xf32>
    %116 = "onnx.Clip"(%115, %72, %73) {onnx_node_name = "Clip_21"} : (tensor<1x144x56x56xf32>, tensor<f32>, tensor<f32>) -> tensor<1x144x56x56xf32>
    %117 = "onnx.Conv"(%116, %12, %13) {auto_pad = "NOTSET", dilations = [1, 1], group = 144 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_22", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x144x56x56xf32>, tensor<144x1x3x3xf32>, tensor<144xf32>) -> tensor<1x144x56x56xf32>
    %118 = "onnx.Clip"(%117, %72, %73) {onnx_node_name = "Clip_25"} : (tensor<1x144x56x56xf32>, tensor<f32>, tensor<f32>) -> tensor<1x144x56x56xf32>
    %119 = "onnx.Constant"() {value = dense<[1, 144, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %120 = "onnx.Reshape"(%118, %119) {allowzero = 0 : si64} : (tensor<1x144x56x56xf32>, tensor<3xi64>) -> tensor<1x144x3136xf32>
    %121 = "onnx.Constant"() {value = dense<[24, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %122 = "onnx.Reshape"(%14, %121) {allowzero = 0 : si64} : (tensor<24x144x1x1xf32>, tensor<2xi64>) -> tensor<24x144xf32>
    %123 = "onnx.MatMul"(%122, %120) : (tensor<24x144xf32>, tensor<1x144x3136xf32>) -> tensor<1x24x3136xf32>
    %124 = "onnx.Constant"() {value = dense<[[[-1.40366936], [-1.04824638], [0.088204354], [-0.184319302], [-1.25106037], [1.05488634], [0.795661866], [0.0893875285], [0.0983389317], [-0.0816686302], [-2.2345469], [-0.631540358], [0.622250378], [-1.19855881], [0.149125174], [-0.343593627], [0.37321654], [-0.54398638], [-0.511233747], [0.344412684], [0.940928698], [0.846296072], [-2.03487062], [1.28450716]]]> : tensor<1x24x1xf32>} : () -> tensor<1x24x1xf32>
    %125 = "onnx.Add"(%123, %124) : (tensor<1x24x3136xf32>, tensor<1x24x1xf32>) -> tensor<1x24x3136xf32>
    %126 = "onnx.Constant"() {value = dense<[1, 24, 56, 56]> : tensor<4xi64>} : () -> tensor<4xi64>
    %127 = "onnx.Reshape"(%125, %126) {allowzero = 0 : si64} : (tensor<1x24x3136xf32>, tensor<4xi64>) -> tensor<1x24x56x56xf32>
    %128 = "onnx.Add"(%106, %127) {onnx_node_name = "Add_27"} : (tensor<1x24x56x56xf32>, tensor<1x24x56x56xf32>) -> tensor<1x24x56x56xf32>
    %129 = "onnx.Constant"() {value = dense<[1, 24, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %130 = "onnx.Reshape"(%128, %129) {allowzero = 0 : si64} : (tensor<1x24x56x56xf32>, tensor<3xi64>) -> tensor<1x24x3136xf32>
    %131 = "onnx.Constant"() {value = dense<[144, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %132 = "onnx.Reshape"(%15, %131) {allowzero = 0 : si64} : (tensor<144x24x1x1xf32>, tensor<2xi64>) -> tensor<144x24xf32>
    %133 = "onnx.MatMul"(%132, %130) : (tensor<144x24xf32>, tensor<1x24x3136xf32>) -> tensor<1x144x3136xf32>
    %134 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x144x1xf32>} : () -> tensor<1x144x1xf32>
    %135 = "onnx.Add"(%133, %134) : (tensor<1x144x3136xf32>, tensor<1x144x1xf32>) -> tensor<1x144x3136xf32>
    %136 = "onnx.Constant"() {value = dense<[1, 144, 56, 56]> : tensor<4xi64>} : () -> tensor<4xi64>
    %137 = "onnx.Reshape"(%135, %136) {allowzero = 0 : si64} : (tensor<1x144x3136xf32>, tensor<4xi64>) -> tensor<1x144x56x56xf32>
    %138 = "onnx.Clip"(%137, %72, %73) {onnx_node_name = "Clip_31"} : (tensor<1x144x56x56xf32>, tensor<f32>, tensor<f32>) -> tensor<1x144x56x56xf32>
    %139 = "onnx.Conv"(%138, %16, %17) {auto_pad = "NOTSET", dilations = [1, 1], group = 144 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_32", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x144x56x56xf32>, tensor<144x1x3x3xf32>, tensor<144xf32>) -> tensor<1x144x28x28xf32>
    %140 = "onnx.Clip"(%139, %72, %73) {onnx_node_name = "Clip_35"} : (tensor<1x144x28x28xf32>, tensor<f32>, tensor<f32>) -> tensor<1x144x28x28xf32>
    %141 = "onnx.Constant"() {value = dense<[1, 144, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %142 = "onnx.Reshape"(%140, %141) {allowzero = 0 : si64} : (tensor<1x144x28x28xf32>, tensor<3xi64>) -> tensor<1x144x784xf32>
    %143 = "onnx.Constant"() {value = dense<[32, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %144 = "onnx.Reshape"(%18, %143) {allowzero = 0 : si64} : (tensor<32x144x1x1xf32>, tensor<2xi64>) -> tensor<32x144xf32>
    %145 = "onnx.MatMul"(%144, %142) : (tensor<32x144xf32>, tensor<1x144x784xf32>) -> tensor<1x32x784xf32>
    %146 = "onnx.Constant"() {value = dense<[[[0.854901373], [0.544159532], [-0.586054504], [0.720825254], [0.126296371], [-1.51321709], [-0.257176608], [-0.195751682], [0.0343370549], [-1.68740177], [0.735887885], [1.36562073], [0.62512058], [0.868092477], [0.0593926646], [-0.53375417], [0.681088686], [-0.100225918], [0.563351512], [-0.296895325], [-0.161900684], [0.408336043], [-0.534162462], [0.392070174], [-0.772112608], [0.998306035], [-0.174626276], [-1.13957059], [0.278383225], [-0.956210732], [-0.640421748], [-0.173083067]]]> : tensor<1x32x1xf32>} : () -> tensor<1x32x1xf32>
    %147 = "onnx.Add"(%145, %146) : (tensor<1x32x784xf32>, tensor<1x32x1xf32>) -> tensor<1x32x784xf32>
    %148 = "onnx.Constant"() {value = dense<[1, 32, 28, 28]> : tensor<4xi64>} : () -> tensor<4xi64>
    %149 = "onnx.Reshape"(%147, %148) {allowzero = 0 : si64} : (tensor<1x32x784xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %150 = "onnx.Constant"() {value = dense<[1, 32, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %151 = "onnx.Reshape"(%147, %150) {allowzero = 0 : si64} : (tensor<1x32x784xf32>, tensor<3xi64>) -> tensor<1x32x784xf32>
    %152 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %153 = "onnx.Reshape"(%19, %152) {allowzero = 0 : si64} : (tensor<192x32x1x1xf32>, tensor<2xi64>) -> tensor<192x32xf32>
    %154 = "onnx.MatMul"(%153, %151) : (tensor<192x32xf32>, tensor<1x32x784xf32>) -> tensor<1x192x784xf32>
    %155 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %156 = "onnx.Add"(%154, %155) : (tensor<1x192x784xf32>, tensor<1x192x1xf32>) -> tensor<1x192x784xf32>
    %157 = "onnx.Constant"() {value = dense<[1, 192, 28, 28]> : tensor<4xi64>} : () -> tensor<4xi64>
    %158 = "onnx.Reshape"(%156, %157) {allowzero = 0 : si64} : (tensor<1x192x784xf32>, tensor<4xi64>) -> tensor<1x192x28x28xf32>
    %159 = "onnx.Clip"(%158, %72, %73) {onnx_node_name = "Clip_40"} : (tensor<1x192x28x28xf32>, tensor<f32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %160 = "onnx.Conv"(%159, %20, %21) {auto_pad = "NOTSET", dilations = [1, 1], group = 192 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_41", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x192x28x28xf32>, tensor<192x1x3x3xf32>, tensor<192xf32>) -> tensor<1x192x28x28xf32>
    %161 = "onnx.Clip"(%160, %72, %73) {onnx_node_name = "Clip_44"} : (tensor<1x192x28x28xf32>, tensor<f32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %162 = "onnx.Constant"() {value = dense<[1, 192, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %163 = "onnx.Reshape"(%161, %162) {allowzero = 0 : si64} : (tensor<1x192x28x28xf32>, tensor<3xi64>) -> tensor<1x192x784xf32>
    %164 = "onnx.Constant"() {value = dense<[32, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %165 = "onnx.Reshape"(%22, %164) {allowzero = 0 : si64} : (tensor<32x192x1x1xf32>, tensor<2xi64>) -> tensor<32x192xf32>
    %166 = "onnx.MatMul"(%165, %163) : (tensor<32x192xf32>, tensor<1x192x784xf32>) -> tensor<1x32x784xf32>
    %167 = "onnx.Constant"() {value = dense<[[[0.0703407526], [0.219166711], [-0.406687677], [0.673486769], [-0.240191028], [-0.0485398211], [0.160037875], [-0.37159875], [-0.517014325], [0.0964984074], [0.105219498], [-0.196943551], [-0.419996589], [-0.526302874], [0.0181347057], [-0.37082088], [0.383804888], [-0.18361406], [0.141812921], [0.472186774], [0.766105771], [-0.356729031], [0.220875874], [-0.482946128], [0.09790425], [-0.158214375], [-0.452587575], [0.505009115], [0.521878898], [-0.164287969], [-0.230394766], [0.169507116]]]> : tensor<1x32x1xf32>} : () -> tensor<1x32x1xf32>
    %168 = "onnx.Add"(%166, %167) : (tensor<1x32x784xf32>, tensor<1x32x1xf32>) -> tensor<1x32x784xf32>
    %169 = "onnx.Constant"() {value = dense<[1, 32, 28, 28]> : tensor<4xi64>} : () -> tensor<4xi64>
    %170 = "onnx.Reshape"(%168, %169) {allowzero = 0 : si64} : (tensor<1x32x784xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %171 = "onnx.Add"(%149, %170) {onnx_node_name = "Add_46"} : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %172 = "onnx.Constant"() {value = dense<[1, 32, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %173 = "onnx.Reshape"(%171, %172) {allowzero = 0 : si64} : (tensor<1x32x28x28xf32>, tensor<3xi64>) -> tensor<1x32x784xf32>
    %174 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %175 = "onnx.Reshape"(%23, %174) {allowzero = 0 : si64} : (tensor<192x32x1x1xf32>, tensor<2xi64>) -> tensor<192x32xf32>
    %176 = "onnx.MatMul"(%175, %173) : (tensor<192x32xf32>, tensor<1x32x784xf32>) -> tensor<1x192x784xf32>
    %177 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %178 = "onnx.Add"(%176, %177) : (tensor<1x192x784xf32>, tensor<1x192x1xf32>) -> tensor<1x192x784xf32>
    %179 = "onnx.Constant"() {value = dense<[1, 192, 28, 28]> : tensor<4xi64>} : () -> tensor<4xi64>
    %180 = "onnx.Reshape"(%178, %179) {allowzero = 0 : si64} : (tensor<1x192x784xf32>, tensor<4xi64>) -> tensor<1x192x28x28xf32>
    %181 = "onnx.Clip"(%180, %72, %73) {onnx_node_name = "Clip_50"} : (tensor<1x192x28x28xf32>, tensor<f32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %182 = "onnx.Conv"(%181, %24, %25) {auto_pad = "NOTSET", dilations = [1, 1], group = 192 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_51", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x192x28x28xf32>, tensor<192x1x3x3xf32>, tensor<192xf32>) -> tensor<1x192x28x28xf32>
    %183 = "onnx.Clip"(%182, %72, %73) {onnx_node_name = "Clip_54"} : (tensor<1x192x28x28xf32>, tensor<f32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %184 = "onnx.Constant"() {value = dense<[1, 192, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %185 = "onnx.Reshape"(%183, %184) {allowzero = 0 : si64} : (tensor<1x192x28x28xf32>, tensor<3xi64>) -> tensor<1x192x784xf32>
    %186 = "onnx.Constant"() {value = dense<[32, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %187 = "onnx.Reshape"(%26, %186) {allowzero = 0 : si64} : (tensor<32x192x1x1xf32>, tensor<2xi64>) -> tensor<32x192xf32>
    %188 = "onnx.MatMul"(%187, %185) : (tensor<32x192xf32>, tensor<1x192x784xf32>) -> tensor<1x32x784xf32>
    %189 = "onnx.Constant"() {value = dense<[[[-0.398155361], [0.0571820177], [-0.259419203], [0.222134948], [0.262926757], [0.291617543], [-0.387821764], [0.214979962], [-0.0251581687], [0.598335683], [0.230831355], [0.147144124], [0.169230521], [0.24095045], [0.275291502], [-0.55514276], [-0.611526668], [-0.51010865], [8.918300e-02], [0.79379177], [0.317058235], [0.197646365], [-0.0711203441], [0.234607637], [-0.0847203806], [-0.619301259], [-0.372341961], [0.395178288], [-0.307882607], [-0.494707942], [0.485098273], [-0.327360302]]]> : tensor<1x32x1xf32>} : () -> tensor<1x32x1xf32>
    %190 = "onnx.Add"(%188, %189) : (tensor<1x32x784xf32>, tensor<1x32x1xf32>) -> tensor<1x32x784xf32>
    %191 = "onnx.Constant"() {value = dense<[1, 32, 28, 28]> : tensor<4xi64>} : () -> tensor<4xi64>
    %192 = "onnx.Reshape"(%190, %191) {allowzero = 0 : si64} : (tensor<1x32x784xf32>, tensor<4xi64>) -> tensor<1x32x28x28xf32>
    %193 = "onnx.Add"(%171, %192) {onnx_node_name = "Add_56"} : (tensor<1x32x28x28xf32>, tensor<1x32x28x28xf32>) -> tensor<1x32x28x28xf32>
    %194 = "onnx.Constant"() {value = dense<[1, 32, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %195 = "onnx.Reshape"(%193, %194) {allowzero = 0 : si64} : (tensor<1x32x28x28xf32>, tensor<3xi64>) -> tensor<1x32x784xf32>
    %196 = "onnx.Constant"() {value = dense<[192, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %197 = "onnx.Reshape"(%27, %196) {allowzero = 0 : si64} : (tensor<192x32x1x1xf32>, tensor<2xi64>) -> tensor<192x32xf32>
    %198 = "onnx.MatMul"(%197, %195) : (tensor<192x32xf32>, tensor<1x32x784xf32>) -> tensor<1x192x784xf32>
    %199 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x192x1xf32>} : () -> tensor<1x192x1xf32>
    %200 = "onnx.Add"(%198, %199) : (tensor<1x192x784xf32>, tensor<1x192x1xf32>) -> tensor<1x192x784xf32>
    %201 = "onnx.Constant"() {value = dense<[1, 192, 28, 28]> : tensor<4xi64>} : () -> tensor<4xi64>
    %202 = "onnx.Reshape"(%200, %201) {allowzero = 0 : si64} : (tensor<1x192x784xf32>, tensor<4xi64>) -> tensor<1x192x28x28xf32>
    %203 = "onnx.Clip"(%202, %72, %73) {onnx_node_name = "Clip_60"} : (tensor<1x192x28x28xf32>, tensor<f32>, tensor<f32>) -> tensor<1x192x28x28xf32>
    %204 = "onnx.Conv"(%203, %28, %29) {auto_pad = "NOTSET", dilations = [1, 1], group = 192 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_61", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x192x28x28xf32>, tensor<192x1x3x3xf32>, tensor<192xf32>) -> tensor<1x192x14x14xf32>
    %205 = "onnx.Clip"(%204, %72, %73) {onnx_node_name = "Clip_64"} : (tensor<1x192x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x192x14x14xf32>
    %206 = "onnx.Constant"() {value = dense<[1, 192, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %207 = "onnx.Reshape"(%205, %206) {allowzero = 0 : si64} : (tensor<1x192x14x14xf32>, tensor<3xi64>) -> tensor<1x192x196xf32>
    %208 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %209 = "onnx.Reshape"(%30, %208) {allowzero = 0 : si64} : (tensor<64x192x1x1xf32>, tensor<2xi64>) -> tensor<64x192xf32>
    %210 = "onnx.MatMul"(%209, %207) : (tensor<64x192xf32>, tensor<1x192x196xf32>) -> tensor<1x64x196xf32>
    %211 = "onnx.Constant"() {value = dense<[[[-0.470010459], [-0.142344952], [-0.819534242], [-0.0687910169], [-5.965640e-01], [-0.0957439765], [0.118857406], [-0.866209566], [-0.0450451411], [1.8917495], [-1.33955669], [1.11825883], [0.0654140189], [-0.490166396], [0.405704767], [0.116329551], [-0.214272961], [-0.303736567], [-0.151917458], [-0.29242453], [-0.0482454263], [-0.924530088], [0.713110089], [0.436695784], [0.124723427], [-0.156043679], [0.759794652], [-7.572010e-01], [0.189941764], [-1.02898526], [0.150700942], [0.269328833], [1.10728061], [0.462070853], [0.297282875], [-0.0956620797], [-0.0999738872], [-0.0350527875], [-1.1398201], [-0.149738073], [1.12428308], [0.82890731], [-0.715142071], [-0.83245486], [-7.368020e-01], [-0.02046513], [0.203510582], [-0.38978225], [0.727617502], [0.383830398], [0.554249048], [0.185163826], [1.2474519], [0.534422815], [0.906912386], [-0.0138812056], [0.951962113], [-1.13586724], [0.218353167], [-0.282234102], [-0.254486769], [0.537195861], [1.01096857], [-0.175619319]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %212 = "onnx.Add"(%210, %211) : (tensor<1x64x196xf32>, tensor<1x64x1xf32>) -> tensor<1x64x196xf32>
    %213 = "onnx.Constant"() {value = dense<[1, 64, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %214 = "onnx.Reshape"(%212, %213) {allowzero = 0 : si64} : (tensor<1x64x196xf32>, tensor<4xi64>) -> tensor<1x64x14x14xf32>
    %215 = "onnx.Constant"() {value = dense<[1, 64, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %216 = "onnx.Reshape"(%212, %215) {allowzero = 0 : si64} : (tensor<1x64x196xf32>, tensor<3xi64>) -> tensor<1x64x196xf32>
    %217 = "onnx.Constant"() {value = dense<[384, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %218 = "onnx.Reshape"(%31, %217) {allowzero = 0 : si64} : (tensor<384x64x1x1xf32>, tensor<2xi64>) -> tensor<384x64xf32>
    %219 = "onnx.MatMul"(%218, %216) : (tensor<384x64xf32>, tensor<1x64x196xf32>) -> tensor<1x384x196xf32>
    %220 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %221 = "onnx.Add"(%219, %220) : (tensor<1x384x196xf32>, tensor<1x384x1xf32>) -> tensor<1x384x196xf32>
    %222 = "onnx.Constant"() {value = dense<[1, 384, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %223 = "onnx.Reshape"(%221, %222) {allowzero = 0 : si64} : (tensor<1x384x196xf32>, tensor<4xi64>) -> tensor<1x384x14x14xf32>
    %224 = "onnx.Clip"(%223, %72, %73) {onnx_node_name = "Clip_69"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %225 = "onnx.Conv"(%224, %32, %33) {auto_pad = "NOTSET", dilations = [1, 1], group = 384 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_70", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x384x14x14xf32>, tensor<384x1x3x3xf32>, tensor<384xf32>) -> tensor<1x384x14x14xf32>
    %226 = "onnx.Clip"(%225, %72, %73) {onnx_node_name = "Clip_73"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %227 = "onnx.Constant"() {value = dense<[1, 384, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %228 = "onnx.Reshape"(%226, %227) {allowzero = 0 : si64} : (tensor<1x384x14x14xf32>, tensor<3xi64>) -> tensor<1x384x196xf32>
    %229 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %230 = "onnx.Reshape"(%34, %229) {allowzero = 0 : si64} : (tensor<64x384x1x1xf32>, tensor<2xi64>) -> tensor<64x384xf32>
    %231 = "onnx.MatMul"(%230, %228) : (tensor<64x384xf32>, tensor<1x384x196xf32>) -> tensor<1x64x196xf32>
    %232 = "onnx.Constant"() {value = dense<[[[-3.095460e-01], [-0.156861052], [0.0903323516], [0.24233824], [-0.148235247], [0.00928378477], [0.0243042447], [-0.504634798], [-0.304522127], [0.030413812], [-0.268695921], [0.131256148], [0.0848725587], [-0.0773073509], [0.0664818808], [0.259265542], [0.271261662], [0.0758923963], [0.310854137], [-0.264610469], [-0.175874799], [-5.177700e-01], [0.00789105333], [0.470939279], [0.141065121], [-0.241005689], [0.969989955], [-0.157859027], [0.171984643], [0.109875202], [0.38698256], [0.681094527], [-0.111599669], [0.15098314], [-1.1447587], [-0.463799715], [0.580787122], [-0.0499558188], [0.132863209], [-0.2723912], [-0.100176468], [-0.33063668], [0.27447781], [-0.0923578515], [0.513858736], [0.133097008], [0.0104047284], [0.7604689], [0.175039589], [0.168465212], [-0.0937080457], [0.284760684], [1.434010e-01], [-0.217660457], [-0.345468163], [0.425661951], [0.390958369], [-0.0819698274], [0.267721146], [0.78752768], [0.819425463], [-0.605763197], [-2.22226925E-4], [-0.279855728]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %233 = "onnx.Add"(%231, %232) : (tensor<1x64x196xf32>, tensor<1x64x1xf32>) -> tensor<1x64x196xf32>
    %234 = "onnx.Constant"() {value = dense<[1, 64, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %235 = "onnx.Reshape"(%233, %234) {allowzero = 0 : si64} : (tensor<1x64x196xf32>, tensor<4xi64>) -> tensor<1x64x14x14xf32>
    %236 = "onnx.Add"(%214, %235) {onnx_node_name = "Add_75"} : (tensor<1x64x14x14xf32>, tensor<1x64x14x14xf32>) -> tensor<1x64x14x14xf32>
    %237 = "onnx.Constant"() {value = dense<[1, 64, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %238 = "onnx.Reshape"(%236, %237) {allowzero = 0 : si64} : (tensor<1x64x14x14xf32>, tensor<3xi64>) -> tensor<1x64x196xf32>
    %239 = "onnx.Constant"() {value = dense<[384, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %240 = "onnx.Reshape"(%35, %239) {allowzero = 0 : si64} : (tensor<384x64x1x1xf32>, tensor<2xi64>) -> tensor<384x64xf32>
    %241 = "onnx.MatMul"(%240, %238) : (tensor<384x64xf32>, tensor<1x64x196xf32>) -> tensor<1x384x196xf32>
    %242 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %243 = "onnx.Add"(%241, %242) : (tensor<1x384x196xf32>, tensor<1x384x1xf32>) -> tensor<1x384x196xf32>
    %244 = "onnx.Constant"() {value = dense<[1, 384, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %245 = "onnx.Reshape"(%243, %244) {allowzero = 0 : si64} : (tensor<1x384x196xf32>, tensor<4xi64>) -> tensor<1x384x14x14xf32>
    %246 = "onnx.Clip"(%245, %72, %73) {onnx_node_name = "Clip_79"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %247 = "onnx.Conv"(%246, %36, %37) {auto_pad = "NOTSET", dilations = [1, 1], group = 384 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_80", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x384x14x14xf32>, tensor<384x1x3x3xf32>, tensor<384xf32>) -> tensor<1x384x14x14xf32>
    %248 = "onnx.Clip"(%247, %72, %73) {onnx_node_name = "Clip_83"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %249 = "onnx.Constant"() {value = dense<[1, 384, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %250 = "onnx.Reshape"(%248, %249) {allowzero = 0 : si64} : (tensor<1x384x14x14xf32>, tensor<3xi64>) -> tensor<1x384x196xf32>
    %251 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %252 = "onnx.Reshape"(%38, %251) {allowzero = 0 : si64} : (tensor<64x384x1x1xf32>, tensor<2xi64>) -> tensor<64x384xf32>
    %253 = "onnx.MatMul"(%252, %250) : (tensor<64x384xf32>, tensor<1x384x196xf32>) -> tensor<1x64x196xf32>
    %254 = "onnx.Constant"() {value = dense<[[[0.295837104], [0.137481317], [-0.328437269], [-0.149835706], [-0.288980156], [-0.282114983], [0.261268824], [0.0775041282], [-0.438075751], [0.0806204081], [0.162052885], [-0.263293475], [-0.105700172], [-0.305523455], [0.0725003555], [0.292876661], [0.159452662], [-0.308397532], [0.349740803], [0.0592937283], [0.287631452], [0.465437174], [0.280987531], [-0.0447355732], [0.214147553], [-0.103643365], [0.164688379], [-0.0208639931], [0.0268335752], [0.0107020969], [0.0124235982], [-0.0802164748], [-0.028963957], [-0.419728577], [0.159120694], [-0.222015783], [-0.19321464], [-0.429041803], [0.12375477], [0.335142881], [-0.170849979], [-0.238491237], [0.187111065], [0.194206417], [0.169629768], [0.19829762], [-0.0748143569], [0.335972816], [-0.223284572], [0.00808794051], [0.0466213562], [-3.938550e-01], [-0.299397498], [-0.0796600207], [-0.0295354258], [0.0178043749], [0.0132302446], [0.0504813306], [-0.200829476], [-0.239075974], [0.943293035], [0.373977184], [0.242894441], [-0.185667977]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %255 = "onnx.Add"(%253, %254) : (tensor<1x64x196xf32>, tensor<1x64x1xf32>) -> tensor<1x64x196xf32>
    %256 = "onnx.Constant"() {value = dense<[1, 64, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %257 = "onnx.Reshape"(%255, %256) {allowzero = 0 : si64} : (tensor<1x64x196xf32>, tensor<4xi64>) -> tensor<1x64x14x14xf32>
    %258 = "onnx.Add"(%236, %257) {onnx_node_name = "Add_85"} : (tensor<1x64x14x14xf32>, tensor<1x64x14x14xf32>) -> tensor<1x64x14x14xf32>
    %259 = "onnx.Constant"() {value = dense<[1, 64, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %260 = "onnx.Reshape"(%258, %259) {allowzero = 0 : si64} : (tensor<1x64x14x14xf32>, tensor<3xi64>) -> tensor<1x64x196xf32>
    %261 = "onnx.Constant"() {value = dense<[384, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %262 = "onnx.Reshape"(%39, %261) {allowzero = 0 : si64} : (tensor<384x64x1x1xf32>, tensor<2xi64>) -> tensor<384x64xf32>
    %263 = "onnx.MatMul"(%262, %260) : (tensor<384x64xf32>, tensor<1x64x196xf32>) -> tensor<1x384x196xf32>
    %264 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %265 = "onnx.Add"(%263, %264) : (tensor<1x384x196xf32>, tensor<1x384x1xf32>) -> tensor<1x384x196xf32>
    %266 = "onnx.Constant"() {value = dense<[1, 384, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %267 = "onnx.Reshape"(%265, %266) {allowzero = 0 : si64} : (tensor<1x384x196xf32>, tensor<4xi64>) -> tensor<1x384x14x14xf32>
    %268 = "onnx.Clip"(%267, %72, %73) {onnx_node_name = "Clip_89"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %269 = "onnx.Conv"(%268, %40, %41) {auto_pad = "NOTSET", dilations = [1, 1], group = 384 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_90", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x384x14x14xf32>, tensor<384x1x3x3xf32>, tensor<384xf32>) -> tensor<1x384x14x14xf32>
    %270 = "onnx.Clip"(%269, %72, %73) {onnx_node_name = "Clip_93"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %271 = "onnx.Constant"() {value = dense<[1, 384, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %272 = "onnx.Reshape"(%270, %271) {allowzero = 0 : si64} : (tensor<1x384x14x14xf32>, tensor<3xi64>) -> tensor<1x384x196xf32>
    %273 = "onnx.Constant"() {value = dense<[64, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %274 = "onnx.Reshape"(%42, %273) {allowzero = 0 : si64} : (tensor<64x384x1x1xf32>, tensor<2xi64>) -> tensor<64x384xf32>
    %275 = "onnx.MatMul"(%274, %272) : (tensor<64x384xf32>, tensor<1x384x196xf32>) -> tensor<1x64x196xf32>
    %276 = "onnx.Constant"() {value = dense<[[[-0.272443503], [-0.157778427], [0.127860457], [-0.514117241], [0.532953918], [-0.126407608], [-0.139532372], [0.247661531], [-0.730621457], [0.573111534], [-0.0650492907], [-0.468945533], [-5.204870e-01], [-0.479867846], [-0.402763784], [-0.263094544], [0.221681267], [-0.166243657], [0.27966094], [0.167163029], [0.0771100521], [0.18996352], [-0.571140885], [0.152386054], [-2.598660e-02], [-0.0884374529], [0.294213682], [0.112050608], [-0.164460599], [-0.228006929], [-0.0307255797], [-0.604219198], [-0.693778396], [0.22910957], [0.304593801], [0.0529632717], [-0.0670116171], [-0.144824132], [-0.127018675], [0.193541124], [0.454242975], [0.0079705324], [0.00187553023], [0.0967312082], [-0.0872385949], [-0.148222461], [-0.246779919], [-0.345683962], [0.228722557], [-0.320032179], [-0.0341755897], [-0.0280323047], [-0.351079404], [0.296578258], [0.0285449456], [-0.0711947456], [0.198959008], [-0.30248946], [-0.819200754], [-0.332472444], [0.0547036491], [-0.313106507], [-0.0429341793], [0.173935175]]]> : tensor<1x64x1xf32>} : () -> tensor<1x64x1xf32>
    %277 = "onnx.Add"(%275, %276) : (tensor<1x64x196xf32>, tensor<1x64x1xf32>) -> tensor<1x64x196xf32>
    %278 = "onnx.Constant"() {value = dense<[1, 64, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %279 = "onnx.Reshape"(%277, %278) {allowzero = 0 : si64} : (tensor<1x64x196xf32>, tensor<4xi64>) -> tensor<1x64x14x14xf32>
    %280 = "onnx.Add"(%258, %279) {onnx_node_name = "Add_95"} : (tensor<1x64x14x14xf32>, tensor<1x64x14x14xf32>) -> tensor<1x64x14x14xf32>
    %281 = "onnx.Constant"() {value = dense<[1, 64, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %282 = "onnx.Reshape"(%280, %281) {allowzero = 0 : si64} : (tensor<1x64x14x14xf32>, tensor<3xi64>) -> tensor<1x64x196xf32>
    %283 = "onnx.Constant"() {value = dense<[384, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %284 = "onnx.Reshape"(%43, %283) {allowzero = 0 : si64} : (tensor<384x64x1x1xf32>, tensor<2xi64>) -> tensor<384x64xf32>
    %285 = "onnx.MatMul"(%284, %282) : (tensor<384x64xf32>, tensor<1x64x196xf32>) -> tensor<1x384x196xf32>
    %286 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384x1xf32>} : () -> tensor<1x384x1xf32>
    %287 = "onnx.Add"(%285, %286) : (tensor<1x384x196xf32>, tensor<1x384x1xf32>) -> tensor<1x384x196xf32>
    %288 = "onnx.Constant"() {value = dense<[1, 384, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %289 = "onnx.Reshape"(%287, %288) {allowzero = 0 : si64} : (tensor<1x384x196xf32>, tensor<4xi64>) -> tensor<1x384x14x14xf32>
    %290 = "onnx.Clip"(%289, %72, %73) {onnx_node_name = "Clip_99"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %291 = "onnx.Conv"(%290, %44, %45) {auto_pad = "NOTSET", dilations = [1, 1], group = 384 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_100", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x384x14x14xf32>, tensor<384x1x3x3xf32>, tensor<384xf32>) -> tensor<1x384x14x14xf32>
    %292 = "onnx.Clip"(%291, %72, %73) {onnx_node_name = "Clip_103"} : (tensor<1x384x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x384x14x14xf32>
    %293 = "onnx.Constant"() {value = dense<[1, 384, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %294 = "onnx.Reshape"(%292, %293) {allowzero = 0 : si64} : (tensor<1x384x14x14xf32>, tensor<3xi64>) -> tensor<1x384x196xf32>
    %295 = "onnx.Constant"() {value = dense<[96, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %296 = "onnx.Reshape"(%46, %295) {allowzero = 0 : si64} : (tensor<96x384x1x1xf32>, tensor<2xi64>) -> tensor<96x384xf32>
    %297 = "onnx.MatMul"(%296, %294) : (tensor<96x384xf32>, tensor<1x384x196xf32>) -> tensor<1x96x196xf32>
    %298 = "onnx.Constant"() {value = dense<[[[0.102768779], [0.734946429], [0.259736508], [0.0405233763], [-0.257446706], [-0.0664669275], [-0.123314485], [0.117094293], [-0.661865532], [-0.0220480375], [0.159225732], [0.0108401375], [0.164008975], [-0.00883989315], [-0.31412971], [-0.412313461], [-0.368510813], [-0.0923199132], [-0.482913017], [-0.335994244], [0.784958302], [0.015430144], [0.163943917], [-0.264865071], [0.259467512], [-0.218740955], [8.415510e-02], [-0.148826882], [-0.0586215444], [0.238234937], [-0.300936282], [-0.284723341], [0.228535309], [-0.234549895], [0.103628948], [0.170805022], [-0.279866517], [0.128512338], [0.347652793], [-0.302531749], [-0.551500499], [0.0420775712], [-0.121170506], [-0.681626856], [0.418211907], [0.26973331], [-0.44265914], [-0.142576873], [0.578077614], [-0.0151819224], [0.333280921], [0.219096214], [0.475491941], [-0.208770379], [0.0805966705], [0.637610555], [-0.49332574], [0.373229891], [-0.116603293], [0.0282674152], [0.194124609], [-0.707474351], [0.226467565], [-0.338785172], [0.340694159], [0.12520282], [-0.528158128], [0.113301955], [-0.219934061], [-0.15243566], [-0.14058046], [0.405107319], [-0.589058161], [-0.0327442698], [-0.0892955139], [0.126423344], [-8.705980e-02], [0.351903081], [-0.350102901], [-0.0501620471], [-0.0604892038], [-0.645590425], [-0.299007624], [-0.453352392], [-0.028063938], [-0.170971125], [-0.492592156], [-0.127532035], [0.084426172], [-0.267537743], [0.457597017], [-0.279892415], [-0.620394349], [-0.183255076], [-0.397190392], [0.309813529]]]> : tensor<1x96x1xf32>} : () -> tensor<1x96x1xf32>
    %299 = "onnx.Add"(%297, %298) : (tensor<1x96x196xf32>, tensor<1x96x1xf32>) -> tensor<1x96x196xf32>
    %300 = "onnx.Constant"() {value = dense<[1, 96, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %301 = "onnx.Reshape"(%299, %300) {allowzero = 0 : si64} : (tensor<1x96x196xf32>, tensor<4xi64>) -> tensor<1x96x14x14xf32>
    %302 = "onnx.Constant"() {value = dense<[1, 96, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %303 = "onnx.Reshape"(%299, %302) {allowzero = 0 : si64} : (tensor<1x96x196xf32>, tensor<3xi64>) -> tensor<1x96x196xf32>
    %304 = "onnx.Constant"() {value = dense<[576, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %305 = "onnx.Reshape"(%47, %304) {allowzero = 0 : si64} : (tensor<576x96x1x1xf32>, tensor<2xi64>) -> tensor<576x96xf32>
    %306 = "onnx.MatMul"(%305, %303) : (tensor<576x96xf32>, tensor<1x96x196xf32>) -> tensor<1x576x196xf32>
    %307 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x576x1xf32>} : () -> tensor<1x576x1xf32>
    %308 = "onnx.Add"(%306, %307) : (tensor<1x576x196xf32>, tensor<1x576x1xf32>) -> tensor<1x576x196xf32>
    %309 = "onnx.Constant"() {value = dense<[1, 576, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %310 = "onnx.Reshape"(%308, %309) {allowzero = 0 : si64} : (tensor<1x576x196xf32>, tensor<4xi64>) -> tensor<1x576x14x14xf32>
    %311 = "onnx.Clip"(%310, %72, %73) {onnx_node_name = "Clip_108"} : (tensor<1x576x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %312 = "onnx.Conv"(%311, %48, %49) {auto_pad = "NOTSET", dilations = [1, 1], group = 576 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_109", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x576x14x14xf32>, tensor<576x1x3x3xf32>, tensor<576xf32>) -> tensor<1x576x14x14xf32>
    %313 = "onnx.Clip"(%312, %72, %73) {onnx_node_name = "Clip_112"} : (tensor<1x576x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %314 = "onnx.Constant"() {value = dense<[1, 576, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %315 = "onnx.Reshape"(%313, %314) {allowzero = 0 : si64} : (tensor<1x576x14x14xf32>, tensor<3xi64>) -> tensor<1x576x196xf32>
    %316 = "onnx.Constant"() {value = dense<[96, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %317 = "onnx.Reshape"(%50, %316) {allowzero = 0 : si64} : (tensor<96x576x1x1xf32>, tensor<2xi64>) -> tensor<96x576xf32>
    %318 = "onnx.MatMul"(%317, %315) : (tensor<96x576xf32>, tensor<1x576x196xf32>) -> tensor<1x96x196xf32>
    %319 = "onnx.Constant"() {value = dense<[[[0.25676769], [-0.0295408834], [-0.343919218], [-0.139429092], [0.31161651], [0.0492129885], [0.1167714], [5.200710e-01], [0.142654493], [0.17976293], [0.166785434], [0.6973055], [-0.0947794765], [0.196592495], [0.364915133], [-0.283894509], [0.407384366], [0.0186207537], [0.0246046279], [-0.0388612375], [0.675549089], [-0.105934642], [-0.0401960164], [-5.755880e-01], [-0.00119658792], [-0.516306221], [0.146627516], [0.167040706], [-0.158496231], [0.187510431], [0.646406054], [-0.0294516049], [0.0868812426], [-0.18978785], [0.44341895], [-0.100483939], [0.484658927], [0.409031749], [0.16518341], [-0.10252028], [0.0185453333], [-0.0249412749], [0.0162190944], [-0.54273361], [-0.166978389], [-0.0177675448], [-0.26955241], [0.0461513847], [0.161549255], [0.446696818], [0.203809753], [-0.0743758082], [-0.620676219], [-3.76567878E-5], [-0.0948075354], [7.788270e-01], [0.488720417], [-0.0925790519], [0.117332719], [0.141567424], [0.581723571], [-0.473828226], [-0.209448904], [0.35121569], [-0.0902760178], [0.20340991], [0.134000793], [0.106693007], [-0.128153577], [0.19891803], [-0.195883781], [0.223618761], [0.12411534], [-0.673009693], [-0.0708138942], [-0.0595681593], [0.344861478], [-0.211637542], [0.0182066448], [0.246189475], [-0.19046624], [0.225767106], [-0.319473237], [-0.143314287], [0.528385639], [-0.00517151644], [-0.129977912], [0.169778943], [-0.0130887087], [-0.469350278], [-0.321971655], [0.0613590628], [-0.35481143], [0.0479822047], [0.683144152], [0.608250737]]]> : tensor<1x96x1xf32>} : () -> tensor<1x96x1xf32>
    %320 = "onnx.Add"(%318, %319) : (tensor<1x96x196xf32>, tensor<1x96x1xf32>) -> tensor<1x96x196xf32>
    %321 = "onnx.Constant"() {value = dense<[1, 96, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %322 = "onnx.Reshape"(%320, %321) {allowzero = 0 : si64} : (tensor<1x96x196xf32>, tensor<4xi64>) -> tensor<1x96x14x14xf32>
    %323 = "onnx.Add"(%301, %322) {onnx_node_name = "Add_114"} : (tensor<1x96x14x14xf32>, tensor<1x96x14x14xf32>) -> tensor<1x96x14x14xf32>
    %324 = "onnx.Constant"() {value = dense<[1, 96, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %325 = "onnx.Reshape"(%323, %324) {allowzero = 0 : si64} : (tensor<1x96x14x14xf32>, tensor<3xi64>) -> tensor<1x96x196xf32>
    %326 = "onnx.Constant"() {value = dense<[576, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %327 = "onnx.Reshape"(%51, %326) {allowzero = 0 : si64} : (tensor<576x96x1x1xf32>, tensor<2xi64>) -> tensor<576x96xf32>
    %328 = "onnx.MatMul"(%327, %325) : (tensor<576x96xf32>, tensor<1x96x196xf32>) -> tensor<1x576x196xf32>
    %329 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x576x1xf32>} : () -> tensor<1x576x1xf32>
    %330 = "onnx.Add"(%328, %329) : (tensor<1x576x196xf32>, tensor<1x576x1xf32>) -> tensor<1x576x196xf32>
    %331 = "onnx.Constant"() {value = dense<[1, 576, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %332 = "onnx.Reshape"(%330, %331) {allowzero = 0 : si64} : (tensor<1x576x196xf32>, tensor<4xi64>) -> tensor<1x576x14x14xf32>
    %333 = "onnx.Clip"(%332, %72, %73) {onnx_node_name = "Clip_118"} : (tensor<1x576x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %334 = "onnx.Conv"(%333, %52, %53) {auto_pad = "NOTSET", dilations = [1, 1], group = 576 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_119", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x576x14x14xf32>, tensor<576x1x3x3xf32>, tensor<576xf32>) -> tensor<1x576x14x14xf32>
    %335 = "onnx.Clip"(%334, %72, %73) {onnx_node_name = "Clip_122"} : (tensor<1x576x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %336 = "onnx.Constant"() {value = dense<[1, 576, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %337 = "onnx.Reshape"(%335, %336) {allowzero = 0 : si64} : (tensor<1x576x14x14xf32>, tensor<3xi64>) -> tensor<1x576x196xf32>
    %338 = "onnx.Constant"() {value = dense<[96, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %339 = "onnx.Reshape"(%54, %338) {allowzero = 0 : si64} : (tensor<96x576x1x1xf32>, tensor<2xi64>) -> tensor<96x576xf32>
    %340 = "onnx.MatMul"(%339, %337) : (tensor<96x576xf32>, tensor<1x576x196xf32>) -> tensor<1x96x196xf32>
    %341 = "onnx.Constant"() {value = dense<[[[0.0610070303], [-0.061926078], [0.43761903], [-0.260985494], [0.278613985], [-0.0338308811], [0.152253404], [0.566346884], [-0.104350984], [0.176263377], [-0.160405606], [1.06315613], [-0.116183214], [0.305091023], [0.0672531575], [0.174601704], [0.743514955], [-0.169562444], [0.0709442273], [-0.69220215], [0.191282481], [-0.859625518], [0.0523777455], [-0.260637462], [-0.621674239], [0.0617228299], [0.385776222], [0.71996212], [0.199880615], [-0.249965087], [0.214186668], [0.0678427443], [0.709441185], [-4.420120e-01], [0.139268875], [-0.375441581], [0.0577136166], [0.0822744519], [0.0946801602], [-0.759954512], [-0.0520639718], [-0.305903077], [0.0619503483], [0.144270271], [0.163392946], [-0.176708668], [-0.138673007], [0.162000746], [-0.36137569], [0.77459985], [0.122498915], [0.422285408], [7.333460e-02], [0.08301384], [0.218798712], [-0.00337313465], [0.0455765277], [-0.263128161], [-0.974959611], [-0.360574573], [0.857390642], [-0.0594146028], [-0.265474588], [0.534838736], [1.182500e-01], [-0.554987133], [0.0297617298], [0.236843482], [0.0752560496], [0.388310045], [-0.449084759], [-0.186563283], [-0.531979322], [-0.154361427], [-0.221664727], [0.286457628], [-0.565060735], [0.547865927], [-0.171657637], [-0.134942383], [-0.423327684], [0.384892702], [0.210015789], [1.00367928], [-0.0418158732], [-0.285546839], [-1.09221327], [0.00560346805], [0.170404673], [-0.0346847512], [-0.832613945], [-0.140402526], [0.713849127], [-0.259849936], [0.466739506], [-0.105354294]]]> : tensor<1x96x1xf32>} : () -> tensor<1x96x1xf32>
    %342 = "onnx.Add"(%340, %341) : (tensor<1x96x196xf32>, tensor<1x96x1xf32>) -> tensor<1x96x196xf32>
    %343 = "onnx.Constant"() {value = dense<[1, 96, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %344 = "onnx.Reshape"(%342, %343) {allowzero = 0 : si64} : (tensor<1x96x196xf32>, tensor<4xi64>) -> tensor<1x96x14x14xf32>
    %345 = "onnx.Add"(%323, %344) {onnx_node_name = "Add_124"} : (tensor<1x96x14x14xf32>, tensor<1x96x14x14xf32>) -> tensor<1x96x14x14xf32>
    %346 = "onnx.Constant"() {value = dense<[1, 96, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %347 = "onnx.Reshape"(%345, %346) {allowzero = 0 : si64} : (tensor<1x96x14x14xf32>, tensor<3xi64>) -> tensor<1x96x196xf32>
    %348 = "onnx.Constant"() {value = dense<[576, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %349 = "onnx.Reshape"(%55, %348) {allowzero = 0 : si64} : (tensor<576x96x1x1xf32>, tensor<2xi64>) -> tensor<576x96xf32>
    %350 = "onnx.MatMul"(%349, %347) : (tensor<576x96xf32>, tensor<1x96x196xf32>) -> tensor<1x576x196xf32>
    %351 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x576x1xf32>} : () -> tensor<1x576x1xf32>
    %352 = "onnx.Add"(%350, %351) : (tensor<1x576x196xf32>, tensor<1x576x1xf32>) -> tensor<1x576x196xf32>
    %353 = "onnx.Constant"() {value = dense<[1, 576, 14, 14]> : tensor<4xi64>} : () -> tensor<4xi64>
    %354 = "onnx.Reshape"(%352, %353) {allowzero = 0 : si64} : (tensor<1x576x196xf32>, tensor<4xi64>) -> tensor<1x576x14x14xf32>
    %355 = "onnx.Clip"(%354, %72, %73) {onnx_node_name = "Clip_128"} : (tensor<1x576x14x14xf32>, tensor<f32>, tensor<f32>) -> tensor<1x576x14x14xf32>
    %356 = "onnx.Conv"(%355, %56, %57) {auto_pad = "NOTSET", dilations = [1, 1], group = 576 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_129", pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x576x14x14xf32>, tensor<576x1x3x3xf32>, tensor<576xf32>) -> tensor<1x576x7x7xf32>
    %357 = "onnx.Clip"(%356, %72, %73) {onnx_node_name = "Clip_132"} : (tensor<1x576x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x576x7x7xf32>
    %358 = "onnx.Constant"() {value = dense<[1, 576, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %359 = "onnx.Reshape"(%357, %358) {allowzero = 0 : si64} : (tensor<1x576x7x7xf32>, tensor<3xi64>) -> tensor<1x576x49xf32>
    %360 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %361 = "onnx.Reshape"(%58, %360) {allowzero = 0 : si64} : (tensor<160x576x1x1xf32>, tensor<2xi64>) -> tensor<160x576xf32>
    %362 = "onnx.MatMul"(%361, %359) : (tensor<160x576xf32>, tensor<1x576x49xf32>) -> tensor<1x160x49xf32>
    %363 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %364 = "onnx.Add"(%362, %363) : (tensor<1x160x49xf32>, tensor<1x160x1xf32>) -> tensor<1x160x49xf32>
    %365 = "onnx.Constant"() {value = dense<[1, 160, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %366 = "onnx.Reshape"(%364, %365) {allowzero = 0 : si64} : (tensor<1x160x49xf32>, tensor<4xi64>) -> tensor<1x160x7x7xf32>
    %367 = "onnx.Constant"() {value = dense<[1, 160, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %368 = "onnx.Reshape"(%364, %367) {allowzero = 0 : si64} : (tensor<1x160x49xf32>, tensor<3xi64>) -> tensor<1x160x49xf32>
    %369 = "onnx.Constant"() {value = dense<[960, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %370 = "onnx.Reshape"(%59, %369) {allowzero = 0 : si64} : (tensor<960x160x1x1xf32>, tensor<2xi64>) -> tensor<960x160xf32>
    %371 = "onnx.MatMul"(%370, %368) : (tensor<960x160xf32>, tensor<1x160x49xf32>) -> tensor<1x960x49xf32>
    %372 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x960x1xf32>} : () -> tensor<1x960x1xf32>
    %373 = "onnx.Add"(%371, %372) : (tensor<1x960x49xf32>, tensor<1x960x1xf32>) -> tensor<1x960x49xf32>
    %374 = "onnx.Constant"() {value = dense<[1, 960, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %375 = "onnx.Reshape"(%373, %374) {allowzero = 0 : si64} : (tensor<1x960x49xf32>, tensor<4xi64>) -> tensor<1x960x7x7xf32>
    %376 = "onnx.Clip"(%375, %72, %73) {onnx_node_name = "Clip_137"} : (tensor<1x960x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %377 = "onnx.Conv"(%376, %60, %61) {auto_pad = "NOTSET", dilations = [1, 1], group = 960 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_138", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x960x7x7xf32>, tensor<960x1x3x3xf32>, tensor<960xf32>) -> tensor<1x960x7x7xf32>
    %378 = "onnx.Clip"(%377, %72, %73) {onnx_node_name = "Clip_141"} : (tensor<1x960x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %379 = "onnx.Constant"() {value = dense<[1, 960, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %380 = "onnx.Reshape"(%378, %379) {allowzero = 0 : si64} : (tensor<1x960x7x7xf32>, tensor<3xi64>) -> tensor<1x960x49xf32>
    %381 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %382 = "onnx.Reshape"(%62, %381) {allowzero = 0 : si64} : (tensor<160x960x1x1xf32>, tensor<2xi64>) -> tensor<160x960xf32>
    %383 = "onnx.MatMul"(%382, %380) : (tensor<160x960xf32>, tensor<1x960x49xf32>) -> tensor<1x160x49xf32>
    %384 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %385 = "onnx.Add"(%383, %384) : (tensor<1x160x49xf32>, tensor<1x160x1xf32>) -> tensor<1x160x49xf32>
    %386 = "onnx.Constant"() {value = dense<[1, 160, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %387 = "onnx.Reshape"(%385, %386) {allowzero = 0 : si64} : (tensor<1x160x49xf32>, tensor<4xi64>) -> tensor<1x160x7x7xf32>
    %388 = "onnx.Add"(%366, %387) {onnx_node_name = "Add_143"} : (tensor<1x160x7x7xf32>, tensor<1x160x7x7xf32>) -> tensor<1x160x7x7xf32>
    %389 = "onnx.Constant"() {value = dense<[1, 160, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %390 = "onnx.Reshape"(%388, %389) {allowzero = 0 : si64} : (tensor<1x160x7x7xf32>, tensor<3xi64>) -> tensor<1x160x49xf32>
    %391 = "onnx.Constant"() {value = dense<[960, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %392 = "onnx.Reshape"(%63, %391) {allowzero = 0 : si64} : (tensor<960x160x1x1xf32>, tensor<2xi64>) -> tensor<960x160xf32>
    %393 = "onnx.MatMul"(%392, %390) : (tensor<960x160xf32>, tensor<1x160x49xf32>) -> tensor<1x960x49xf32>
    %394 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x960x1xf32>} : () -> tensor<1x960x1xf32>
    %395 = "onnx.Add"(%393, %394) : (tensor<1x960x49xf32>, tensor<1x960x1xf32>) -> tensor<1x960x49xf32>
    %396 = "onnx.Constant"() {value = dense<[1, 960, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %397 = "onnx.Reshape"(%395, %396) {allowzero = 0 : si64} : (tensor<1x960x49xf32>, tensor<4xi64>) -> tensor<1x960x7x7xf32>
    %398 = "onnx.Clip"(%397, %72, %73) {onnx_node_name = "Clip_147"} : (tensor<1x960x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %399 = "onnx.Conv"(%398, %64, %65) {auto_pad = "NOTSET", dilations = [1, 1], group = 960 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_148", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x960x7x7xf32>, tensor<960x1x3x3xf32>, tensor<960xf32>) -> tensor<1x960x7x7xf32>
    %400 = "onnx.Clip"(%399, %72, %73) {onnx_node_name = "Clip_151"} : (tensor<1x960x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %401 = "onnx.Constant"() {value = dense<[1, 960, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %402 = "onnx.Reshape"(%400, %401) {allowzero = 0 : si64} : (tensor<1x960x7x7xf32>, tensor<3xi64>) -> tensor<1x960x49xf32>
    %403 = "onnx.Constant"() {value = dense<[160, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %404 = "onnx.Reshape"(%66, %403) {allowzero = 0 : si64} : (tensor<160x960x1x1xf32>, tensor<2xi64>) -> tensor<160x960xf32>
    %405 = "onnx.MatMul"(%404, %402) : (tensor<160x960xf32>, tensor<1x960x49xf32>) -> tensor<1x160x49xf32>
    %406 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x160x1xf32>} : () -> tensor<1x160x1xf32>
    %407 = "onnx.Add"(%405, %406) : (tensor<1x160x49xf32>, tensor<1x160x1xf32>) -> tensor<1x160x49xf32>
    %408 = "onnx.Constant"() {value = dense<[1, 160, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %409 = "onnx.Reshape"(%407, %408) {allowzero = 0 : si64} : (tensor<1x160x49xf32>, tensor<4xi64>) -> tensor<1x160x7x7xf32>
    %410 = "onnx.Add"(%388, %409) {onnx_node_name = "Add_153"} : (tensor<1x160x7x7xf32>, tensor<1x160x7x7xf32>) -> tensor<1x160x7x7xf32>
    %411 = "onnx.Constant"() {value = dense<[1, 160, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %412 = "onnx.Reshape"(%410, %411) {allowzero = 0 : si64} : (tensor<1x160x7x7xf32>, tensor<3xi64>) -> tensor<1x160x49xf32>
    %413 = "onnx.Constant"() {value = dense<[960, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %414 = "onnx.Reshape"(%67, %413) {allowzero = 0 : si64} : (tensor<960x160x1x1xf32>, tensor<2xi64>) -> tensor<960x160xf32>
    %415 = "onnx.MatMul"(%414, %412) : (tensor<960x160xf32>, tensor<1x160x49xf32>) -> tensor<1x960x49xf32>
    %416 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x960x1xf32>} : () -> tensor<1x960x1xf32>
    %417 = "onnx.Add"(%415, %416) : (tensor<1x960x49xf32>, tensor<1x960x1xf32>) -> tensor<1x960x49xf32>
    %418 = "onnx.Constant"() {value = dense<[1, 960, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %419 = "onnx.Reshape"(%417, %418) {allowzero = 0 : si64} : (tensor<1x960x49xf32>, tensor<4xi64>) -> tensor<1x960x7x7xf32>
    %420 = "onnx.Clip"(%419, %72, %73) {onnx_node_name = "Clip_157"} : (tensor<1x960x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %421 = "onnx.Conv"(%420, %68, %69) {auto_pad = "NOTSET", dilations = [1, 1], group = 960 : si64, kernel_shape = [3, 3], onnx_node_name = "Conv_158", pads = [1, 1, 1, 1], strides = [1, 1]} : (tensor<1x960x7x7xf32>, tensor<960x1x3x3xf32>, tensor<960xf32>) -> tensor<1x960x7x7xf32>
    %422 = "onnx.Clip"(%421, %72, %73) {onnx_node_name = "Clip_161"} : (tensor<1x960x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x960x7x7xf32>
    %423 = "onnx.Constant"() {value = dense<[1, 960, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %424 = "onnx.Reshape"(%422, %423) {allowzero = 0 : si64} : (tensor<1x960x7x7xf32>, tensor<3xi64>) -> tensor<1x960x49xf32>
    %425 = "onnx.Constant"() {value = dense<[320, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %426 = "onnx.Reshape"(%70, %425) {allowzero = 0 : si64} : (tensor<320x960x1x1xf32>, tensor<2xi64>) -> tensor<320x960xf32>
    %427 = "onnx.MatMul"(%426, %424) : (tensor<320x960xf32>, tensor<1x960x49xf32>) -> tensor<1x320x49xf32>
    %428 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x320x1xf32>} : () -> tensor<1x320x1xf32>
    %429 = "onnx.Add"(%427, %428) : (tensor<1x320x49xf32>, tensor<1x320x1xf32>) -> tensor<1x320x49xf32>
    %430 = "onnx.Constant"() {value = dense<[1, 320, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %431 = "onnx.Reshape"(%429, %430) {allowzero = 0 : si64} : (tensor<1x320x49xf32>, tensor<3xi64>) -> tensor<1x320x49xf32>
    %432 = "onnx.Constant"() {value = dense<[1280, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %433 = "onnx.Reshape"(%71, %432) {allowzero = 0 : si64} : (tensor<1280x320x1x1xf32>, tensor<2xi64>) -> tensor<1280x320xf32>
    %434 = "onnx.MatMul"(%433, %431) : (tensor<1280x320xf32>, tensor<1x320x49xf32>) -> tensor<1x1280x49xf32>
    %435 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x1280x1xf32>} : () -> tensor<1x1280x1xf32>
    %436 = "onnx.Add"(%434, %435) : (tensor<1x1280x49xf32>, tensor<1x1280x1xf32>) -> tensor<1x1280x49xf32>
    %437 = "onnx.Constant"() {value = dense<[1, 1280, 7, 7]> : tensor<4xi64>} : () -> tensor<4xi64>
    %438 = "onnx.Reshape"(%436, %437) {allowzero = 0 : si64} : (tensor<1x1280x49xf32>, tensor<4xi64>) -> tensor<1x1280x7x7xf32>
    %439 = "onnx.Clip"(%438, %72, %73) {onnx_node_name = "Clip_166"} : (tensor<1x1280x7x7xf32>, tensor<f32>, tensor<f32>) -> tensor<1x1280x7x7xf32>
    %440 = "onnx.ReduceMean"(%439) {axes = [2, 3], keepdims = 1 : si64} : (tensor<1x1280x7x7xf32>) -> tensor<1x1280x1x1xf32>
    %441 = "onnx.Reshape"(%440, %74) {allowzero = 0 : si64, onnx_node_name = "Reshape_174"} : (tensor<1x1280x1x1xf32>, tensor<2xi64>) -> tensor<1x1280xf32>
    %442 = "onnx.Gemm"(%441, %0, %1) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_175", transA = 0 : si64, transB = 1 : si64} : (tensor<1x1280xf32>, tensor<1000x1280xf32>, tensor<1000xf32>) -> tensor<1x1000xf32>
    return %442 : tensor<1x1000xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
