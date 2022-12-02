module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<2x1x3x8x224x224xf32>) -> tensor<1x400xf32> attributes {input_names = ["0"], output_names = ["1528"]} {
    %0 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %3 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %5 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %6 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %9 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %12 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %14 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %15 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %17 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %18 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %19 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %21 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %24 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %27 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %29 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %30 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %32 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %33 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %34 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %35 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %36 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %37 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %38 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %39 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %40 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %41 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %42 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %43 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %44 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %45 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %46 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %47 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %48 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %49 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %50 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %51 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %52 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %53 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %54 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %55 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %56 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %57 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %58 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %59 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %60 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %61 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %62 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %63 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %64 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %65 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %66 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %67 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x2304xf32>} : () -> tensor<768x2304xf32>
    %68 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %69 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %70 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3072xf32>} : () -> tensor<768x3072xf32>
    %71 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072x768xf32>} : () -> tensor<3072x768xf32>
    %72 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %73 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %74 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %75 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %76 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768x3x16x16xf32>} : () -> tensor<768x3x16x16xf32>
    %77 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %78 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %79 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %80 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %81 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %82 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %83 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %84 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %85 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %86 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %87 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %88 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %89 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %90 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %91 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %92 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %93 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %94 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %95 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %96 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %97 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %98 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %99 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %100 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %101 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %102 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %103 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %104 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %105 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %106 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %107 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %108 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %109 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %110 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %111 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %112 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %113 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %114 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %115 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %116 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %117 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %118 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %119 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %120 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %121 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %122 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %123 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %124 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %125 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %126 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %127 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %128 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %129 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %130 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %131 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %132 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %133 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %134 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %135 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %136 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %137 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %138 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %139 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %140 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %141 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %142 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %143 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %144 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %145 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %146 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %147 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %148 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %149 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %150 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %151 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %152 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %153 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %154 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %155 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2304xf32>} : () -> tensor<2304xf32>
    %156 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %157 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<3072xf32>} : () -> tensor<3072xf32>
    %158 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %159 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %160 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %161 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<768xf32>} : () -> tensor<768xf32>
    %162 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<400xf32>} : () -> tensor<400xf32>
    %163 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<400x768xf32>} : () -> tensor<400x768xf32>
    %164 = "onnx.Constant"() {value = dense<0> : tensor<i64>} : () -> tensor<i64>
    %165 = "onnx.Constant"() {value = dense<9.99999997E-7> : tensor<f32>} : () -> tensor<f32>
    %166 = "onnx.Constant"() {value = dense<1.250000e-01> : tensor<f32>} : () -> tensor<f32>
    %167 = "onnx.Constant"() {value = dense<1.41421354> : tensor<f32>} : () -> tensor<f32>
    %168 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %169 = "onnx.Constant"() {value = dense<5.000000e-01> : tensor<f32>} : () -> tensor<f32>
    %170 = "onnx.Constant"() {value = dense<[-1, 3, 8, 224, 224]> : tensor<5xi64>} : () -> tensor<5xi64>
    %171 = "onnx.Constant"() {value = dense<[8, 3, 224, 224]> : tensor<4xi64>} : () -> tensor<4xi64>
    %172 = "onnx.Constant"() {value = dense<[8, 768, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %173 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<8x1x768xf32>} : () -> tensor<8x1x768xf32>
    %174 = "onnx.Constant"() {value = dense<[197, 96, 64]> : tensor<3xi64>} : () -> tensor<3xi64>
    %175 = "onnx.Constant"() {value = dense<[-1, 96, 64]> : tensor<3xi64>} : () -> tensor<3xi64>
    %176 = "onnx.Constant"() {value = dense<[197, 8, 768]> : tensor<3xi64>} : () -> tensor<3xi64>
    %177 = "onnx.Constant"() {value = dense<[-1, 8, 197, 768]> : tensor<4xi64>} : () -> tensor<4xi64>
    %178 = "onnx.Reshape"(%arg0, %170) {allowzero = 0 : si64, onnx_node_name = "Reshape_17"} : (tensor<2x1x3x8x224x224xf32>, tensor<5xi64>) -> tensor<1x3x8x224x224xf32>
    %179 = "onnx.Transpose"(%178) {onnx_node_name = "Transpose_69", perm = [0, 2, 1, 3, 4]} : (tensor<1x3x8x224x224xf32>) -> tensor<1x8x3x224x224xf32>
    %180 = "onnx.Reshape"(%179, %171) {allowzero = 0 : si64, onnx_node_name = "Reshape_75"} : (tensor<1x8x3x224x224xf32>, tensor<4xi64>) -> tensor<8x3x224x224xf32>
    %181 = "onnx.Conv"(%180, %76, %75) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [16, 16], onnx_node_name = "Conv_76", pads = [0, 0, 0, 0], strides = [16, 16]} : (tensor<8x3x224x224xf32>, tensor<768x3x16x16xf32>, tensor<768xf32>) -> tensor<8x768x14x14xf32>
    %182 = "onnx.Reshape"(%181, %172) {allowzero = 0 : si64, onnx_node_name = "Reshape_84"} : (tensor<8x768x14x14xf32>, tensor<3xi64>) -> tensor<8x768x196xf32>
    %183 = "onnx.Transpose"(%182) {onnx_node_name = "Transpose_85", perm = [0, 2, 1]} : (tensor<8x768x196xf32>) -> tensor<8x196x768xf32>
    %184 = "onnx.Concat"(%173, %183) {axis = 1 : si64, onnx_node_name = "Concat_101"} : (tensor<8x1x768xf32>, tensor<8x196x768xf32>) -> tensor<8x197x768xf32>
    %185 = "onnx.Add"(%184, %77) {onnx_node_name = "Add_102"} : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %186 = "onnx.ReduceMean"(%185) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_103"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %187 = "onnx.Sub"(%185, %186) {onnx_node_name = "Sub_104"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %188 = "onnx.Pow"(%187, %0) {onnx_node_name = "Pow_106"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %189 = "onnx.ReduceMean"(%188) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_107"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %190 = "onnx.Add"(%189, %165) {onnx_node_name = "Add_109"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %191 = "onnx.Sqrt"(%190) {onnx_node_name = "Sqrt_110"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %192 = "onnx.Div"(%187, %191) {onnx_node_name = "Div_111"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %193 = "onnx.Mul"(%192, %82) {onnx_node_name = "Mul_112"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %194 = "onnx.Add"(%193, %81) {onnx_node_name = "Add_113"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %195 = "onnx.Transpose"(%194) {onnx_node_name = "Transpose_114", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %196 = "onnx.MatMul"(%195, %1) {onnx_node_name = "MatMul_128"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %197 = "onnx.Add"(%196, %78) {onnx_node_name = "Add_129"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %198 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %199:3 = "onnx.Split"(%197, %198) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %200 = "onnx.Mul"(%199#0, %166) {onnx_node_name = "Mul_132"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %201 = "onnx.Reshape"(%200, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_139"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %202 = "onnx.Transpose"(%201) {onnx_node_name = "Transpose_140", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %203 = "onnx.Reshape"(%199#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_146"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %204 = "onnx.Reshape"(%199#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_152"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %205 = "onnx.Transpose"(%204) {onnx_node_name = "Transpose_153", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %206 = "onnx.Transpose"(%203) {onnx_node_name = "Transpose_154", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %207 = "onnx.MatMul"(%202, %206) {onnx_node_name = "MatMul_155"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %208 = "onnx.Softmax"(%207) {axis = 2 : si64, onnx_node_name = "Softmax_156", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %209 = "onnx.MatMul"(%208, %205) {onnx_node_name = "MatMul_157"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %210 = "onnx.Transpose"(%209) {onnx_node_name = "Transpose_158", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %211 = "onnx.Reshape"(%210, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_163"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %212 = "onnx.MatMul"(%211, %2) {onnx_node_name = "MatMul_164"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %213 = "onnx.Add"(%212, %79) {onnx_node_name = "Add_165"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %214 = "onnx.Transpose"(%213) {onnx_node_name = "Transpose_166", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %215 = "onnx.Add"(%184, %214) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %216 = "onnx.Add"(%215, %77) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %217 = "onnx.ReduceMean"(%216) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_168"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %218 = "onnx.Sub"(%216, %217) {onnx_node_name = "Sub_169"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %219 = "onnx.Pow"(%218, %3) {onnx_node_name = "Pow_171"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %220 = "onnx.ReduceMean"(%219) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_172"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %221 = "onnx.Add"(%220, %165) {onnx_node_name = "Add_174"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %222 = "onnx.Sqrt"(%221) {onnx_node_name = "Sqrt_175"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %223 = "onnx.Div"(%218, %222) {onnx_node_name = "Div_176"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %224 = "onnx.Mul"(%223, %84) {onnx_node_name = "Mul_177"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %225 = "onnx.Add"(%224, %83) {onnx_node_name = "Add_178"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %226 = "onnx.MatMul"(%225, %4) {onnx_node_name = "MatMul_179"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %227 = "onnx.Add"(%226, %80) {onnx_node_name = "Add_180"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %228 = "onnx.Div"(%227, %167) {onnx_node_name = "Div_182"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %229 = "onnx.Erf"(%228) {onnx_node_name = "Erf_183"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %230 = "onnx.Add"(%229, %168) {onnx_node_name = "Add_185"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %231 = "onnx.Mul"(%227, %230) {onnx_node_name = "Mul_186"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %232 = "onnx.Mul"(%231, %169) {onnx_node_name = "Mul_188"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %233 = "onnx.MatMul"(%232, %5) {onnx_node_name = "MatMul_189"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %234 = "onnx.Add"(%215, %233) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %235 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %236 = "onnx.Add"(%234, %235) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %237 = "onnx.ReduceMean"(%236) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_192"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %238 = "onnx.Sub"(%236, %237) {onnx_node_name = "Sub_193"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %239 = "onnx.Pow"(%238, %6) {onnx_node_name = "Pow_195"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %240 = "onnx.ReduceMean"(%239) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_196"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %241 = "onnx.Add"(%240, %165) {onnx_node_name = "Add_198"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %242 = "onnx.Sqrt"(%241) {onnx_node_name = "Sqrt_199"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %243 = "onnx.Div"(%238, %242) {onnx_node_name = "Div_200"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %244 = "onnx.Mul"(%243, %89) {onnx_node_name = "Mul_201"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %245 = "onnx.Add"(%244, %88) {onnx_node_name = "Add_202"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %246 = "onnx.Transpose"(%245) {onnx_node_name = "Transpose_203", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %247 = "onnx.MatMul"(%246, %7) {onnx_node_name = "MatMul_217"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %248 = "onnx.Add"(%247, %85) {onnx_node_name = "Add_218"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %249 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %250:3 = "onnx.Split"(%248, %249) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %251 = "onnx.Mul"(%250#0, %166) {onnx_node_name = "Mul_221"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %252 = "onnx.Reshape"(%251, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_228"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %253 = "onnx.Transpose"(%252) {onnx_node_name = "Transpose_229", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %254 = "onnx.Reshape"(%250#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_235"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %255 = "onnx.Reshape"(%250#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_241"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %256 = "onnx.Transpose"(%255) {onnx_node_name = "Transpose_242", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %257 = "onnx.Transpose"(%254) {onnx_node_name = "Transpose_243", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %258 = "onnx.MatMul"(%253, %257) {onnx_node_name = "MatMul_244"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %259 = "onnx.Softmax"(%258) {axis = 2 : si64, onnx_node_name = "Softmax_245", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %260 = "onnx.MatMul"(%259, %256) {onnx_node_name = "MatMul_246"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %261 = "onnx.Transpose"(%260) {onnx_node_name = "Transpose_247", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %262 = "onnx.Reshape"(%261, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_252"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %263 = "onnx.MatMul"(%262, %8) {onnx_node_name = "MatMul_253"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %264 = "onnx.Add"(%263, %86) {onnx_node_name = "Add_254"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %265 = "onnx.Transpose"(%264) {onnx_node_name = "Transpose_255", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %266 = "onnx.Add"(%234, %265) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %267 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %268 = "onnx.Add"(%266, %267) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %269 = "onnx.ReduceMean"(%268) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_257"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %270 = "onnx.Sub"(%268, %269) {onnx_node_name = "Sub_258"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %271 = "onnx.Pow"(%270, %9) {onnx_node_name = "Pow_260"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %272 = "onnx.ReduceMean"(%271) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_261"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %273 = "onnx.Add"(%272, %165) {onnx_node_name = "Add_263"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %274 = "onnx.Sqrt"(%273) {onnx_node_name = "Sqrt_264"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %275 = "onnx.Div"(%270, %274) {onnx_node_name = "Div_265"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %276 = "onnx.Mul"(%275, %91) {onnx_node_name = "Mul_266"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %277 = "onnx.Add"(%276, %90) {onnx_node_name = "Add_267"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %278 = "onnx.MatMul"(%277, %10) {onnx_node_name = "MatMul_268"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %279 = "onnx.Add"(%278, %87) {onnx_node_name = "Add_269"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %280 = "onnx.Div"(%279, %167) {onnx_node_name = "Div_271"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %281 = "onnx.Erf"(%280) {onnx_node_name = "Erf_272"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %282 = "onnx.Add"(%281, %168) {onnx_node_name = "Add_274"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %283 = "onnx.Mul"(%279, %282) {onnx_node_name = "Mul_275"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %284 = "onnx.Mul"(%283, %169) {onnx_node_name = "Mul_277"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %285 = "onnx.MatMul"(%284, %11) {onnx_node_name = "MatMul_278"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %286 = "onnx.Add"(%266, %285) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %287 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %288 = "onnx.Add"(%286, %287) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %289 = "onnx.ReduceMean"(%288) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_281"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %290 = "onnx.Sub"(%288, %289) {onnx_node_name = "Sub_282"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %291 = "onnx.Pow"(%290, %12) {onnx_node_name = "Pow_284"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %292 = "onnx.ReduceMean"(%291) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_285"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %293 = "onnx.Add"(%292, %165) {onnx_node_name = "Add_287"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %294 = "onnx.Sqrt"(%293) {onnx_node_name = "Sqrt_288"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %295 = "onnx.Div"(%290, %294) {onnx_node_name = "Div_289"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %296 = "onnx.Mul"(%295, %110) {onnx_node_name = "Mul_290"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %297 = "onnx.Add"(%296, %109) {onnx_node_name = "Add_291"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %298 = "onnx.Transpose"(%297) {onnx_node_name = "Transpose_292", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %299 = "onnx.MatMul"(%298, %13) {onnx_node_name = "MatMul_306"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %300 = "onnx.Add"(%299, %106) {onnx_node_name = "Add_307"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %301 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %302:3 = "onnx.Split"(%300, %301) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %303 = "onnx.Mul"(%302#0, %166) {onnx_node_name = "Mul_310"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %304 = "onnx.Reshape"(%303, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_317"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %305 = "onnx.Transpose"(%304) {onnx_node_name = "Transpose_318", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %306 = "onnx.Reshape"(%302#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_324"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %307 = "onnx.Reshape"(%302#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_330"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %308 = "onnx.Transpose"(%307) {onnx_node_name = "Transpose_331", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %309 = "onnx.Transpose"(%306) {onnx_node_name = "Transpose_332", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %310 = "onnx.MatMul"(%305, %309) {onnx_node_name = "MatMul_333"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %311 = "onnx.Softmax"(%310) {axis = 2 : si64, onnx_node_name = "Softmax_334", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %312 = "onnx.MatMul"(%311, %308) {onnx_node_name = "MatMul_335"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %313 = "onnx.Transpose"(%312) {onnx_node_name = "Transpose_336", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %314 = "onnx.Reshape"(%313, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_341"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %315 = "onnx.MatMul"(%314, %14) {onnx_node_name = "MatMul_342"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %316 = "onnx.Add"(%315, %107) {onnx_node_name = "Add_343"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %317 = "onnx.Transpose"(%316) {onnx_node_name = "Transpose_344", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %318 = "onnx.Add"(%286, %317) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %319 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %320 = "onnx.Add"(%318, %319) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %321 = "onnx.ReduceMean"(%320) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_346"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %322 = "onnx.Sub"(%320, %321) {onnx_node_name = "Sub_347"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %323 = "onnx.Pow"(%322, %15) {onnx_node_name = "Pow_349"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %324 = "onnx.ReduceMean"(%323) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_350"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %325 = "onnx.Add"(%324, %165) {onnx_node_name = "Add_352"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %326 = "onnx.Sqrt"(%325) {onnx_node_name = "Sqrt_353"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %327 = "onnx.Div"(%322, %326) {onnx_node_name = "Div_354"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %328 = "onnx.Mul"(%327, %112) {onnx_node_name = "Mul_355"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %329 = "onnx.Add"(%328, %111) {onnx_node_name = "Add_356"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %330 = "onnx.MatMul"(%329, %16) {onnx_node_name = "MatMul_357"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %331 = "onnx.Add"(%330, %108) {onnx_node_name = "Add_358"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %332 = "onnx.Div"(%331, %167) {onnx_node_name = "Div_360"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %333 = "onnx.Erf"(%332) {onnx_node_name = "Erf_361"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %334 = "onnx.Add"(%333, %168) {onnx_node_name = "Add_363"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %335 = "onnx.Mul"(%331, %334) {onnx_node_name = "Mul_364"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %336 = "onnx.Mul"(%335, %169) {onnx_node_name = "Mul_366"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %337 = "onnx.MatMul"(%336, %17) {onnx_node_name = "MatMul_367"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %338 = "onnx.Add"(%318, %337) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %339 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %340 = "onnx.Add"(%338, %339) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %341 = "onnx.ReduceMean"(%340) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_370"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %342 = "onnx.Sub"(%340, %341) {onnx_node_name = "Sub_371"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %343 = "onnx.Pow"(%342, %18) {onnx_node_name = "Pow_373"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %344 = "onnx.ReduceMean"(%343) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_374"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %345 = "onnx.Add"(%344, %165) {onnx_node_name = "Add_376"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %346 = "onnx.Sqrt"(%345) {onnx_node_name = "Sqrt_377"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %347 = "onnx.Div"(%342, %346) {onnx_node_name = "Div_378"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %348 = "onnx.Mul"(%347, %117) {onnx_node_name = "Mul_379"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %349 = "onnx.Add"(%348, %116) {onnx_node_name = "Add_380"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %350 = "onnx.Transpose"(%349) {onnx_node_name = "Transpose_381", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %351 = "onnx.MatMul"(%350, %19) {onnx_node_name = "MatMul_395"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %352 = "onnx.Add"(%351, %113) {onnx_node_name = "Add_396"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %353 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %354:3 = "onnx.Split"(%352, %353) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %355 = "onnx.Mul"(%354#0, %166) {onnx_node_name = "Mul_399"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %356 = "onnx.Reshape"(%355, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_406"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %357 = "onnx.Transpose"(%356) {onnx_node_name = "Transpose_407", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %358 = "onnx.Reshape"(%354#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_413"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %359 = "onnx.Reshape"(%354#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_419"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %360 = "onnx.Transpose"(%359) {onnx_node_name = "Transpose_420", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %361 = "onnx.Transpose"(%358) {onnx_node_name = "Transpose_421", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %362 = "onnx.MatMul"(%357, %361) {onnx_node_name = "MatMul_422"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %363 = "onnx.Softmax"(%362) {axis = 2 : si64, onnx_node_name = "Softmax_423", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %364 = "onnx.MatMul"(%363, %360) {onnx_node_name = "MatMul_424"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %365 = "onnx.Transpose"(%364) {onnx_node_name = "Transpose_425", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %366 = "onnx.Reshape"(%365, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_430"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %367 = "onnx.MatMul"(%366, %20) {onnx_node_name = "MatMul_431"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %368 = "onnx.Add"(%367, %114) {onnx_node_name = "Add_432"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %369 = "onnx.Transpose"(%368) {onnx_node_name = "Transpose_433", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %370 = "onnx.Add"(%338, %369) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %371 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %372 = "onnx.Add"(%370, %371) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %373 = "onnx.ReduceMean"(%372) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_435"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %374 = "onnx.Sub"(%372, %373) {onnx_node_name = "Sub_436"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %375 = "onnx.Pow"(%374, %21) {onnx_node_name = "Pow_438"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %376 = "onnx.ReduceMean"(%375) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_439"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %377 = "onnx.Add"(%376, %165) {onnx_node_name = "Add_441"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %378 = "onnx.Sqrt"(%377) {onnx_node_name = "Sqrt_442"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %379 = "onnx.Div"(%374, %378) {onnx_node_name = "Div_443"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %380 = "onnx.Mul"(%379, %119) {onnx_node_name = "Mul_444"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %381 = "onnx.Add"(%380, %118) {onnx_node_name = "Add_445"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %382 = "onnx.MatMul"(%381, %22) {onnx_node_name = "MatMul_446"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %383 = "onnx.Add"(%382, %115) {onnx_node_name = "Add_447"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %384 = "onnx.Div"(%383, %167) {onnx_node_name = "Div_449"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %385 = "onnx.Erf"(%384) {onnx_node_name = "Erf_450"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %386 = "onnx.Add"(%385, %168) {onnx_node_name = "Add_452"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %387 = "onnx.Mul"(%383, %386) {onnx_node_name = "Mul_453"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %388 = "onnx.Mul"(%387, %169) {onnx_node_name = "Mul_455"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %389 = "onnx.MatMul"(%388, %23) {onnx_node_name = "MatMul_456"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %390 = "onnx.Add"(%370, %389) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %391 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %392 = "onnx.Add"(%390, %391) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %393 = "onnx.ReduceMean"(%392) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_459"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %394 = "onnx.Sub"(%392, %393) {onnx_node_name = "Sub_460"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %395 = "onnx.Pow"(%394, %24) {onnx_node_name = "Pow_462"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %396 = "onnx.ReduceMean"(%395) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_463"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %397 = "onnx.Add"(%396, %165) {onnx_node_name = "Add_465"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %398 = "onnx.Sqrt"(%397) {onnx_node_name = "Sqrt_466"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %399 = "onnx.Div"(%394, %398) {onnx_node_name = "Div_467"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %400 = "onnx.Mul"(%399, %124) {onnx_node_name = "Mul_468"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %401 = "onnx.Add"(%400, %123) {onnx_node_name = "Add_469"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %402 = "onnx.Transpose"(%401) {onnx_node_name = "Transpose_470", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %403 = "onnx.MatMul"(%402, %25) {onnx_node_name = "MatMul_484"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %404 = "onnx.Add"(%403, %120) {onnx_node_name = "Add_485"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %405 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %406:3 = "onnx.Split"(%404, %405) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %407 = "onnx.Mul"(%406#0, %166) {onnx_node_name = "Mul_488"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %408 = "onnx.Reshape"(%407, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_495"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %409 = "onnx.Transpose"(%408) {onnx_node_name = "Transpose_496", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %410 = "onnx.Reshape"(%406#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_502"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %411 = "onnx.Reshape"(%406#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_508"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %412 = "onnx.Transpose"(%411) {onnx_node_name = "Transpose_509", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %413 = "onnx.Transpose"(%410) {onnx_node_name = "Transpose_510", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %414 = "onnx.MatMul"(%409, %413) {onnx_node_name = "MatMul_511"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %415 = "onnx.Softmax"(%414) {axis = 2 : si64, onnx_node_name = "Softmax_512", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %416 = "onnx.MatMul"(%415, %412) {onnx_node_name = "MatMul_513"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %417 = "onnx.Transpose"(%416) {onnx_node_name = "Transpose_514", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %418 = "onnx.Reshape"(%417, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_519"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %419 = "onnx.MatMul"(%418, %26) {onnx_node_name = "MatMul_520"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %420 = "onnx.Add"(%419, %121) {onnx_node_name = "Add_521"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %421 = "onnx.Transpose"(%420) {onnx_node_name = "Transpose_522", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %422 = "onnx.Add"(%390, %421) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %423 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %424 = "onnx.Add"(%422, %423) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %425 = "onnx.ReduceMean"(%424) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_524"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %426 = "onnx.Sub"(%424, %425) {onnx_node_name = "Sub_525"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %427 = "onnx.Pow"(%426, %27) {onnx_node_name = "Pow_527"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %428 = "onnx.ReduceMean"(%427) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_528"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %429 = "onnx.Add"(%428, %165) {onnx_node_name = "Add_530"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %430 = "onnx.Sqrt"(%429) {onnx_node_name = "Sqrt_531"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %431 = "onnx.Div"(%426, %430) {onnx_node_name = "Div_532"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %432 = "onnx.Mul"(%431, %126) {onnx_node_name = "Mul_533"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %433 = "onnx.Add"(%432, %125) {onnx_node_name = "Add_534"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %434 = "onnx.MatMul"(%433, %28) {onnx_node_name = "MatMul_535"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %435 = "onnx.Add"(%434, %122) {onnx_node_name = "Add_536"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %436 = "onnx.Div"(%435, %167) {onnx_node_name = "Div_538"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %437 = "onnx.Erf"(%436) {onnx_node_name = "Erf_539"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %438 = "onnx.Add"(%437, %168) {onnx_node_name = "Add_541"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %439 = "onnx.Mul"(%435, %438) {onnx_node_name = "Mul_542"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %440 = "onnx.Mul"(%439, %169) {onnx_node_name = "Mul_544"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %441 = "onnx.MatMul"(%440, %29) {onnx_node_name = "MatMul_545"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %442 = "onnx.Add"(%422, %441) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %443 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %444 = "onnx.Add"(%442, %443) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %445 = "onnx.ReduceMean"(%444) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_548"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %446 = "onnx.Sub"(%444, %445) {onnx_node_name = "Sub_549"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %447 = "onnx.Pow"(%446, %30) {onnx_node_name = "Pow_551"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %448 = "onnx.ReduceMean"(%447) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_552"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %449 = "onnx.Add"(%448, %165) {onnx_node_name = "Add_554"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %450 = "onnx.Sqrt"(%449) {onnx_node_name = "Sqrt_555"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %451 = "onnx.Div"(%446, %450) {onnx_node_name = "Div_556"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %452 = "onnx.Mul"(%451, %131) {onnx_node_name = "Mul_557"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %453 = "onnx.Add"(%452, %130) {onnx_node_name = "Add_558"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %454 = "onnx.Transpose"(%453) {onnx_node_name = "Transpose_559", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %455 = "onnx.MatMul"(%454, %31) {onnx_node_name = "MatMul_573"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %456 = "onnx.Add"(%455, %127) {onnx_node_name = "Add_574"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %457 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %458:3 = "onnx.Split"(%456, %457) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %459 = "onnx.Mul"(%458#0, %166) {onnx_node_name = "Mul_577"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %460 = "onnx.Reshape"(%459, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_584"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %461 = "onnx.Transpose"(%460) {onnx_node_name = "Transpose_585", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %462 = "onnx.Reshape"(%458#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_591"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %463 = "onnx.Reshape"(%458#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_597"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %464 = "onnx.Transpose"(%463) {onnx_node_name = "Transpose_598", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %465 = "onnx.Transpose"(%462) {onnx_node_name = "Transpose_599", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %466 = "onnx.MatMul"(%461, %465) {onnx_node_name = "MatMul_600"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %467 = "onnx.Softmax"(%466) {axis = 2 : si64, onnx_node_name = "Softmax_601", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %468 = "onnx.MatMul"(%467, %464) {onnx_node_name = "MatMul_602"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %469 = "onnx.Transpose"(%468) {onnx_node_name = "Transpose_603", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %470 = "onnx.Reshape"(%469, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_608"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %471 = "onnx.MatMul"(%470, %32) {onnx_node_name = "MatMul_609"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %472 = "onnx.Add"(%471, %128) {onnx_node_name = "Add_610"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %473 = "onnx.Transpose"(%472) {onnx_node_name = "Transpose_611", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %474 = "onnx.Add"(%442, %473) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %475 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %476 = "onnx.Add"(%474, %475) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %477 = "onnx.ReduceMean"(%476) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_613"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %478 = "onnx.Sub"(%476, %477) {onnx_node_name = "Sub_614"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %479 = "onnx.Pow"(%478, %33) {onnx_node_name = "Pow_616"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %480 = "onnx.ReduceMean"(%479) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_617"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %481 = "onnx.Add"(%480, %165) {onnx_node_name = "Add_619"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %482 = "onnx.Sqrt"(%481) {onnx_node_name = "Sqrt_620"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %483 = "onnx.Div"(%478, %482) {onnx_node_name = "Div_621"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %484 = "onnx.Mul"(%483, %133) {onnx_node_name = "Mul_622"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %485 = "onnx.Add"(%484, %132) {onnx_node_name = "Add_623"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %486 = "onnx.MatMul"(%485, %34) {onnx_node_name = "MatMul_624"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %487 = "onnx.Add"(%486, %129) {onnx_node_name = "Add_625"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %488 = "onnx.Div"(%487, %167) {onnx_node_name = "Div_627"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %489 = "onnx.Erf"(%488) {onnx_node_name = "Erf_628"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %490 = "onnx.Add"(%489, %168) {onnx_node_name = "Add_630"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %491 = "onnx.Mul"(%487, %490) {onnx_node_name = "Mul_631"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %492 = "onnx.Mul"(%491, %169) {onnx_node_name = "Mul_633"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %493 = "onnx.MatMul"(%492, %35) {onnx_node_name = "MatMul_634"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %494 = "onnx.Add"(%474, %493) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %495 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %496 = "onnx.Add"(%494, %495) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %497 = "onnx.ReduceMean"(%496) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_637"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %498 = "onnx.Sub"(%496, %497) {onnx_node_name = "Sub_638"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %499 = "onnx.Pow"(%498, %36) {onnx_node_name = "Pow_640"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %500 = "onnx.ReduceMean"(%499) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_641"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %501 = "onnx.Add"(%500, %165) {onnx_node_name = "Add_643"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %502 = "onnx.Sqrt"(%501) {onnx_node_name = "Sqrt_644"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %503 = "onnx.Div"(%498, %502) {onnx_node_name = "Div_645"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %504 = "onnx.Mul"(%503, %138) {onnx_node_name = "Mul_646"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %505 = "onnx.Add"(%504, %137) {onnx_node_name = "Add_647"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %506 = "onnx.Transpose"(%505) {onnx_node_name = "Transpose_648", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %507 = "onnx.MatMul"(%506, %37) {onnx_node_name = "MatMul_662"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %508 = "onnx.Add"(%507, %134) {onnx_node_name = "Add_663"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %509 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %510:3 = "onnx.Split"(%508, %509) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %511 = "onnx.Mul"(%510#0, %166) {onnx_node_name = "Mul_666"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %512 = "onnx.Reshape"(%511, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_673"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %513 = "onnx.Transpose"(%512) {onnx_node_name = "Transpose_674", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %514 = "onnx.Reshape"(%510#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_680"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %515 = "onnx.Reshape"(%510#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_686"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %516 = "onnx.Transpose"(%515) {onnx_node_name = "Transpose_687", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %517 = "onnx.Transpose"(%514) {onnx_node_name = "Transpose_688", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %518 = "onnx.MatMul"(%513, %517) {onnx_node_name = "MatMul_689"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %519 = "onnx.Softmax"(%518) {axis = 2 : si64, onnx_node_name = "Softmax_690", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %520 = "onnx.MatMul"(%519, %516) {onnx_node_name = "MatMul_691"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %521 = "onnx.Transpose"(%520) {onnx_node_name = "Transpose_692", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %522 = "onnx.Reshape"(%521, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_697"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %523 = "onnx.MatMul"(%522, %38) {onnx_node_name = "MatMul_698"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %524 = "onnx.Add"(%523, %135) {onnx_node_name = "Add_699"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %525 = "onnx.Transpose"(%524) {onnx_node_name = "Transpose_700", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %526 = "onnx.Add"(%494, %525) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %527 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %528 = "onnx.Add"(%526, %527) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %529 = "onnx.ReduceMean"(%528) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_702"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %530 = "onnx.Sub"(%528, %529) {onnx_node_name = "Sub_703"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %531 = "onnx.Pow"(%530, %39) {onnx_node_name = "Pow_705"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %532 = "onnx.ReduceMean"(%531) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_706"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %533 = "onnx.Add"(%532, %165) {onnx_node_name = "Add_708"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %534 = "onnx.Sqrt"(%533) {onnx_node_name = "Sqrt_709"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %535 = "onnx.Div"(%530, %534) {onnx_node_name = "Div_710"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %536 = "onnx.Mul"(%535, %140) {onnx_node_name = "Mul_711"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %537 = "onnx.Add"(%536, %139) {onnx_node_name = "Add_712"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %538 = "onnx.MatMul"(%537, %40) {onnx_node_name = "MatMul_713"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %539 = "onnx.Add"(%538, %136) {onnx_node_name = "Add_714"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %540 = "onnx.Div"(%539, %167) {onnx_node_name = "Div_716"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %541 = "onnx.Erf"(%540) {onnx_node_name = "Erf_717"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %542 = "onnx.Add"(%541, %168) {onnx_node_name = "Add_719"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %543 = "onnx.Mul"(%539, %542) {onnx_node_name = "Mul_720"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %544 = "onnx.Mul"(%543, %169) {onnx_node_name = "Mul_722"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %545 = "onnx.MatMul"(%544, %41) {onnx_node_name = "MatMul_723"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %546 = "onnx.Add"(%526, %545) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %547 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %548 = "onnx.Add"(%546, %547) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %549 = "onnx.ReduceMean"(%548) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_726"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %550 = "onnx.Sub"(%548, %549) {onnx_node_name = "Sub_727"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %551 = "onnx.Pow"(%550, %42) {onnx_node_name = "Pow_729"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %552 = "onnx.ReduceMean"(%551) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_730"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %553 = "onnx.Add"(%552, %165) {onnx_node_name = "Add_732"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %554 = "onnx.Sqrt"(%553) {onnx_node_name = "Sqrt_733"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %555 = "onnx.Div"(%550, %554) {onnx_node_name = "Div_734"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %556 = "onnx.Mul"(%555, %145) {onnx_node_name = "Mul_735"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %557 = "onnx.Add"(%556, %144) {onnx_node_name = "Add_736"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %558 = "onnx.Transpose"(%557) {onnx_node_name = "Transpose_737", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %559 = "onnx.MatMul"(%558, %43) {onnx_node_name = "MatMul_751"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %560 = "onnx.Add"(%559, %141) {onnx_node_name = "Add_752"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %561 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %562:3 = "onnx.Split"(%560, %561) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %563 = "onnx.Mul"(%562#0, %166) {onnx_node_name = "Mul_755"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %564 = "onnx.Reshape"(%563, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_762"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %565 = "onnx.Transpose"(%564) {onnx_node_name = "Transpose_763", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %566 = "onnx.Reshape"(%562#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_769"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %567 = "onnx.Reshape"(%562#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_775"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %568 = "onnx.Transpose"(%567) {onnx_node_name = "Transpose_776", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %569 = "onnx.Transpose"(%566) {onnx_node_name = "Transpose_777", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %570 = "onnx.MatMul"(%565, %569) {onnx_node_name = "MatMul_778"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %571 = "onnx.Softmax"(%570) {axis = 2 : si64, onnx_node_name = "Softmax_779", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %572 = "onnx.MatMul"(%571, %568) {onnx_node_name = "MatMul_780"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %573 = "onnx.Transpose"(%572) {onnx_node_name = "Transpose_781", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %574 = "onnx.Reshape"(%573, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_786"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %575 = "onnx.MatMul"(%574, %44) {onnx_node_name = "MatMul_787"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %576 = "onnx.Add"(%575, %142) {onnx_node_name = "Add_788"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %577 = "onnx.Transpose"(%576) {onnx_node_name = "Transpose_789", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %578 = "onnx.Add"(%546, %577) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %579 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %580 = "onnx.Add"(%578, %579) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %581 = "onnx.ReduceMean"(%580) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_791"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %582 = "onnx.Sub"(%580, %581) {onnx_node_name = "Sub_792"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %583 = "onnx.Pow"(%582, %45) {onnx_node_name = "Pow_794"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %584 = "onnx.ReduceMean"(%583) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_795"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %585 = "onnx.Add"(%584, %165) {onnx_node_name = "Add_797"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %586 = "onnx.Sqrt"(%585) {onnx_node_name = "Sqrt_798"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %587 = "onnx.Div"(%582, %586) {onnx_node_name = "Div_799"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %588 = "onnx.Mul"(%587, %147) {onnx_node_name = "Mul_800"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %589 = "onnx.Add"(%588, %146) {onnx_node_name = "Add_801"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %590 = "onnx.MatMul"(%589, %46) {onnx_node_name = "MatMul_802"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %591 = "onnx.Add"(%590, %143) {onnx_node_name = "Add_803"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %592 = "onnx.Div"(%591, %167) {onnx_node_name = "Div_805"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %593 = "onnx.Erf"(%592) {onnx_node_name = "Erf_806"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %594 = "onnx.Add"(%593, %168) {onnx_node_name = "Add_808"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %595 = "onnx.Mul"(%591, %594) {onnx_node_name = "Mul_809"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %596 = "onnx.Mul"(%595, %169) {onnx_node_name = "Mul_811"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %597 = "onnx.MatMul"(%596, %47) {onnx_node_name = "MatMul_812"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %598 = "onnx.Add"(%578, %597) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %599 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %600 = "onnx.Add"(%598, %599) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %601 = "onnx.ReduceMean"(%600) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_815"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %602 = "onnx.Sub"(%600, %601) {onnx_node_name = "Sub_816"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %603 = "onnx.Pow"(%602, %48) {onnx_node_name = "Pow_818"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %604 = "onnx.ReduceMean"(%603) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_819"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %605 = "onnx.Add"(%604, %165) {onnx_node_name = "Add_821"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %606 = "onnx.Sqrt"(%605) {onnx_node_name = "Sqrt_822"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %607 = "onnx.Div"(%602, %606) {onnx_node_name = "Div_823"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %608 = "onnx.Mul"(%607, %152) {onnx_node_name = "Mul_824"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %609 = "onnx.Add"(%608, %151) {onnx_node_name = "Add_825"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %610 = "onnx.Transpose"(%609) {onnx_node_name = "Transpose_826", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %611 = "onnx.MatMul"(%610, %49) {onnx_node_name = "MatMul_840"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %612 = "onnx.Add"(%611, %148) {onnx_node_name = "Add_841"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %613 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %614:3 = "onnx.Split"(%612, %613) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %615 = "onnx.Mul"(%614#0, %166) {onnx_node_name = "Mul_844"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %616 = "onnx.Reshape"(%615, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_851"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %617 = "onnx.Transpose"(%616) {onnx_node_name = "Transpose_852", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %618 = "onnx.Reshape"(%614#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_858"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %619 = "onnx.Reshape"(%614#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_864"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %620 = "onnx.Transpose"(%619) {onnx_node_name = "Transpose_865", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %621 = "onnx.Transpose"(%618) {onnx_node_name = "Transpose_866", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %622 = "onnx.MatMul"(%617, %621) {onnx_node_name = "MatMul_867"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %623 = "onnx.Softmax"(%622) {axis = 2 : si64, onnx_node_name = "Softmax_868", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %624 = "onnx.MatMul"(%623, %620) {onnx_node_name = "MatMul_869"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %625 = "onnx.Transpose"(%624) {onnx_node_name = "Transpose_870", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %626 = "onnx.Reshape"(%625, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_875"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %627 = "onnx.MatMul"(%626, %50) {onnx_node_name = "MatMul_876"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %628 = "onnx.Add"(%627, %149) {onnx_node_name = "Add_877"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %629 = "onnx.Transpose"(%628) {onnx_node_name = "Transpose_878", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %630 = "onnx.Add"(%598, %629) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %631 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %632 = "onnx.Add"(%630, %631) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %633 = "onnx.ReduceMean"(%632) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_880"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %634 = "onnx.Sub"(%632, %633) {onnx_node_name = "Sub_881"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %635 = "onnx.Pow"(%634, %51) {onnx_node_name = "Pow_883"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %636 = "onnx.ReduceMean"(%635) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_884"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %637 = "onnx.Add"(%636, %165) {onnx_node_name = "Add_886"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %638 = "onnx.Sqrt"(%637) {onnx_node_name = "Sqrt_887"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %639 = "onnx.Div"(%634, %638) {onnx_node_name = "Div_888"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %640 = "onnx.Mul"(%639, %154) {onnx_node_name = "Mul_889"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %641 = "onnx.Add"(%640, %153) {onnx_node_name = "Add_890"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %642 = "onnx.MatMul"(%641, %52) {onnx_node_name = "MatMul_891"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %643 = "onnx.Add"(%642, %150) {onnx_node_name = "Add_892"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %644 = "onnx.Div"(%643, %167) {onnx_node_name = "Div_894"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %645 = "onnx.Erf"(%644) {onnx_node_name = "Erf_895"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %646 = "onnx.Add"(%645, %168) {onnx_node_name = "Add_897"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %647 = "onnx.Mul"(%643, %646) {onnx_node_name = "Mul_898"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %648 = "onnx.Mul"(%647, %169) {onnx_node_name = "Mul_900"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %649 = "onnx.MatMul"(%648, %53) {onnx_node_name = "MatMul_901"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %650 = "onnx.Add"(%630, %649) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %651 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %652 = "onnx.Add"(%650, %651) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %653 = "onnx.ReduceMean"(%652) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_904"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %654 = "onnx.Sub"(%652, %653) {onnx_node_name = "Sub_905"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %655 = "onnx.Pow"(%654, %54) {onnx_node_name = "Pow_907"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %656 = "onnx.ReduceMean"(%655) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_908"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %657 = "onnx.Add"(%656, %165) {onnx_node_name = "Add_910"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %658 = "onnx.Sqrt"(%657) {onnx_node_name = "Sqrt_911"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %659 = "onnx.Div"(%654, %658) {onnx_node_name = "Div_912"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %660 = "onnx.Mul"(%659, %159) {onnx_node_name = "Mul_913"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %661 = "onnx.Add"(%660, %158) {onnx_node_name = "Add_914"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %662 = "onnx.Transpose"(%661) {onnx_node_name = "Transpose_915", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %663 = "onnx.MatMul"(%662, %55) {onnx_node_name = "MatMul_929"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %664 = "onnx.Add"(%663, %155) {onnx_node_name = "Add_930"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %665 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %666:3 = "onnx.Split"(%664, %665) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %667 = "onnx.Mul"(%666#0, %166) {onnx_node_name = "Mul_933"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %668 = "onnx.Reshape"(%667, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_940"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %669 = "onnx.Transpose"(%668) {onnx_node_name = "Transpose_941", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %670 = "onnx.Reshape"(%666#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_947"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %671 = "onnx.Reshape"(%666#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_953"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %672 = "onnx.Transpose"(%671) {onnx_node_name = "Transpose_954", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %673 = "onnx.Transpose"(%670) {onnx_node_name = "Transpose_955", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %674 = "onnx.MatMul"(%669, %673) {onnx_node_name = "MatMul_956"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %675 = "onnx.Softmax"(%674) {axis = 2 : si64, onnx_node_name = "Softmax_957", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %676 = "onnx.MatMul"(%675, %672) {onnx_node_name = "MatMul_958"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %677 = "onnx.Transpose"(%676) {onnx_node_name = "Transpose_959", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %678 = "onnx.Reshape"(%677, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_964"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %679 = "onnx.MatMul"(%678, %56) {onnx_node_name = "MatMul_965"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %680 = "onnx.Add"(%679, %156) {onnx_node_name = "Add_966"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %681 = "onnx.Transpose"(%680) {onnx_node_name = "Transpose_967", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %682 = "onnx.Add"(%650, %681) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %683 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %684 = "onnx.Add"(%682, %683) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %685 = "onnx.ReduceMean"(%684) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_969"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %686 = "onnx.Sub"(%684, %685) {onnx_node_name = "Sub_970"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %687 = "onnx.Pow"(%686, %57) {onnx_node_name = "Pow_972"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %688 = "onnx.ReduceMean"(%687) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_973"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %689 = "onnx.Add"(%688, %165) {onnx_node_name = "Add_975"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %690 = "onnx.Sqrt"(%689) {onnx_node_name = "Sqrt_976"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %691 = "onnx.Div"(%686, %690) {onnx_node_name = "Div_977"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %692 = "onnx.Mul"(%691, %161) {onnx_node_name = "Mul_978"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %693 = "onnx.Add"(%692, %160) {onnx_node_name = "Add_979"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %694 = "onnx.MatMul"(%693, %58) {onnx_node_name = "MatMul_980"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %695 = "onnx.Add"(%694, %157) {onnx_node_name = "Add_981"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %696 = "onnx.Div"(%695, %167) {onnx_node_name = "Div_983"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %697 = "onnx.Erf"(%696) {onnx_node_name = "Erf_984"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %698 = "onnx.Add"(%697, %168) {onnx_node_name = "Add_986"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %699 = "onnx.Mul"(%695, %698) {onnx_node_name = "Mul_987"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %700 = "onnx.Mul"(%699, %169) {onnx_node_name = "Mul_989"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %701 = "onnx.MatMul"(%700, %59) {onnx_node_name = "MatMul_990"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %702 = "onnx.Add"(%682, %701) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %703 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %704 = "onnx.Add"(%702, %703) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %705 = "onnx.ReduceMean"(%704) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_993"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %706 = "onnx.Sub"(%704, %705) {onnx_node_name = "Sub_994"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %707 = "onnx.Pow"(%706, %60) {onnx_node_name = "Pow_996"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %708 = "onnx.ReduceMean"(%707) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_997"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %709 = "onnx.Add"(%708, %165) {onnx_node_name = "Add_999"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %710 = "onnx.Sqrt"(%709) {onnx_node_name = "Sqrt_1000"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %711 = "onnx.Div"(%706, %710) {onnx_node_name = "Div_1001"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %712 = "onnx.Mul"(%711, %96) {onnx_node_name = "Mul_1002"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %713 = "onnx.Add"(%712, %95) {onnx_node_name = "Add_1003"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %714 = "onnx.Transpose"(%713) {onnx_node_name = "Transpose_1004", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %715 = "onnx.MatMul"(%714, %61) {onnx_node_name = "MatMul_1018"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %716 = "onnx.Add"(%715, %92) {onnx_node_name = "Add_1019"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %717 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %718:3 = "onnx.Split"(%716, %717) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %719 = "onnx.Mul"(%718#0, %166) {onnx_node_name = "Mul_1022"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %720 = "onnx.Reshape"(%719, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_1029"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %721 = "onnx.Transpose"(%720) {onnx_node_name = "Transpose_1030", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %722 = "onnx.Reshape"(%718#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_1036"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %723 = "onnx.Reshape"(%718#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_1042"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %724 = "onnx.Transpose"(%723) {onnx_node_name = "Transpose_1043", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %725 = "onnx.Transpose"(%722) {onnx_node_name = "Transpose_1044", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %726 = "onnx.MatMul"(%721, %725) {onnx_node_name = "MatMul_1045"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %727 = "onnx.Softmax"(%726) {axis = 2 : si64, onnx_node_name = "Softmax_1046", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %728 = "onnx.MatMul"(%727, %724) {onnx_node_name = "MatMul_1047"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %729 = "onnx.Transpose"(%728) {onnx_node_name = "Transpose_1048", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %730 = "onnx.Reshape"(%729, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_1053"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %731 = "onnx.MatMul"(%730, %62) {onnx_node_name = "MatMul_1054"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %732 = "onnx.Add"(%731, %93) {onnx_node_name = "Add_1055"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %733 = "onnx.Transpose"(%732) {onnx_node_name = "Transpose_1056", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %734 = "onnx.Add"(%702, %733) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %735 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %736 = "onnx.Add"(%734, %735) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %737 = "onnx.ReduceMean"(%736) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1058"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %738 = "onnx.Sub"(%736, %737) {onnx_node_name = "Sub_1059"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %739 = "onnx.Pow"(%738, %63) {onnx_node_name = "Pow_1061"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %740 = "onnx.ReduceMean"(%739) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1062"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %741 = "onnx.Add"(%740, %165) {onnx_node_name = "Add_1064"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %742 = "onnx.Sqrt"(%741) {onnx_node_name = "Sqrt_1065"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %743 = "onnx.Div"(%738, %742) {onnx_node_name = "Div_1066"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %744 = "onnx.Mul"(%743, %98) {onnx_node_name = "Mul_1067"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %745 = "onnx.Add"(%744, %97) {onnx_node_name = "Add_1068"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %746 = "onnx.MatMul"(%745, %64) {onnx_node_name = "MatMul_1069"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %747 = "onnx.Add"(%746, %94) {onnx_node_name = "Add_1070"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %748 = "onnx.Div"(%747, %167) {onnx_node_name = "Div_1072"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %749 = "onnx.Erf"(%748) {onnx_node_name = "Erf_1073"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %750 = "onnx.Add"(%749, %168) {onnx_node_name = "Add_1075"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %751 = "onnx.Mul"(%747, %750) {onnx_node_name = "Mul_1076"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %752 = "onnx.Mul"(%751, %169) {onnx_node_name = "Mul_1078"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %753 = "onnx.MatMul"(%752, %65) {onnx_node_name = "MatMul_1079"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %754 = "onnx.Add"(%734, %753) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %755 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %756 = "onnx.Add"(%754, %755) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %757 = "onnx.ReduceMean"(%756) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1082"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %758 = "onnx.Sub"(%756, %757) {onnx_node_name = "Sub_1083"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %759 = "onnx.Pow"(%758, %66) {onnx_node_name = "Pow_1085"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %760 = "onnx.ReduceMean"(%759) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1086"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %761 = "onnx.Add"(%760, %165) {onnx_node_name = "Add_1088"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %762 = "onnx.Sqrt"(%761) {onnx_node_name = "Sqrt_1089"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %763 = "onnx.Div"(%758, %762) {onnx_node_name = "Div_1090"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %764 = "onnx.Mul"(%763, %103) {onnx_node_name = "Mul_1091"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %765 = "onnx.Add"(%764, %102) {onnx_node_name = "Add_1092"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %766 = "onnx.Transpose"(%765) {onnx_node_name = "Transpose_1093", perm = [1, 0, 2]} : (tensor<8x197x768xf32>) -> tensor<197x8x768xf32>
    %767 = "onnx.MatMul"(%766, %67) {onnx_node_name = "MatMul_1107"} : (tensor<197x8x768xf32>, tensor<768x2304xf32>) -> tensor<197x8x2304xf32>
    %768 = "onnx.Add"(%767, %99) {onnx_node_name = "Add_1108"} : (tensor<197x8x2304xf32>, tensor<2304xf32>) -> tensor<197x8x2304xf32>
    %769 = "onnx.Constant"() {value = dense<768> : tensor<3xi64>} : () -> tensor<3xi64>
    %770:3 = "onnx.Split"(%768, %769) {axis = 2 : si64} : (tensor<197x8x2304xf32>, tensor<3xi64>) -> (tensor<197x8x768xf32>, tensor<197x8x768xf32>, tensor<197x8x768xf32>)
    %771 = "onnx.Mul"(%770#0, %166) {onnx_node_name = "Mul_1111"} : (tensor<197x8x768xf32>, tensor<f32>) -> tensor<197x8x768xf32>
    %772 = "onnx.Reshape"(%771, %174) {allowzero = 0 : si64, onnx_node_name = "Reshape_1118"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %773 = "onnx.Transpose"(%772) {onnx_node_name = "Transpose_1119", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %774 = "onnx.Reshape"(%770#1, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_1125"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %775 = "onnx.Reshape"(%770#2, %175) {allowzero = 0 : si64, onnx_node_name = "Reshape_1131"} : (tensor<197x8x768xf32>, tensor<3xi64>) -> tensor<197x96x64xf32>
    %776 = "onnx.Transpose"(%775) {onnx_node_name = "Transpose_1132", perm = [1, 0, 2]} : (tensor<197x96x64xf32>) -> tensor<96x197x64xf32>
    %777 = "onnx.Transpose"(%774) {onnx_node_name = "Transpose_1133", perm = [1, 2, 0]} : (tensor<197x96x64xf32>) -> tensor<96x64x197xf32>
    %778 = "onnx.MatMul"(%773, %777) {onnx_node_name = "MatMul_1134"} : (tensor<96x197x64xf32>, tensor<96x64x197xf32>) -> tensor<96x197x197xf32>
    %779 = "onnx.Softmax"(%778) {axis = 2 : si64, onnx_node_name = "Softmax_1135", onnx_opset = 11 : si64} : (tensor<96x197x197xf32>) -> tensor<96x197x197xf32>
    %780 = "onnx.MatMul"(%779, %776) {onnx_node_name = "MatMul_1136"} : (tensor<96x197x197xf32>, tensor<96x197x64xf32>) -> tensor<96x197x64xf32>
    %781 = "onnx.Transpose"(%780) {onnx_node_name = "Transpose_1137", perm = [1, 0, 2]} : (tensor<96x197x64xf32>) -> tensor<197x96x64xf32>
    %782 = "onnx.Reshape"(%781, %176) {allowzero = 0 : si64, onnx_node_name = "Reshape_1142"} : (tensor<197x96x64xf32>, tensor<3xi64>) -> tensor<197x8x768xf32>
    %783 = "onnx.MatMul"(%782, %68) {onnx_node_name = "MatMul_1143"} : (tensor<197x8x768xf32>, tensor<768x768xf32>) -> tensor<197x8x768xf32>
    %784 = "onnx.Add"(%783, %100) {onnx_node_name = "Add_1144"} : (tensor<197x8x768xf32>, tensor<768xf32>) -> tensor<197x8x768xf32>
    %785 = "onnx.Transpose"(%784) {onnx_node_name = "Transpose_1145", perm = [1, 0, 2]} : (tensor<197x8x768xf32>) -> tensor<8x197x768xf32>
    %786 = "onnx.Add"(%754, %785) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %787 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %788 = "onnx.Add"(%786, %787) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %789 = "onnx.ReduceMean"(%788) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1147"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %790 = "onnx.Sub"(%788, %789) {onnx_node_name = "Sub_1148"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %791 = "onnx.Pow"(%790, %69) {onnx_node_name = "Pow_1150"} : (tensor<8x197x768xf32>, tensor<f32>) -> tensor<8x197x768xf32>
    %792 = "onnx.ReduceMean"(%791) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1151"} : (tensor<8x197x768xf32>) -> tensor<8x197x1xf32>
    %793 = "onnx.Add"(%792, %165) {onnx_node_name = "Add_1153"} : (tensor<8x197x1xf32>, tensor<f32>) -> tensor<8x197x1xf32>
    %794 = "onnx.Sqrt"(%793) {onnx_node_name = "Sqrt_1154"} : (tensor<8x197x1xf32>) -> tensor<8x197x1xf32>
    %795 = "onnx.Div"(%790, %794) {onnx_node_name = "Div_1155"} : (tensor<8x197x768xf32>, tensor<8x197x1xf32>) -> tensor<8x197x768xf32>
    %796 = "onnx.Mul"(%795, %105) {onnx_node_name = "Mul_1156"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %797 = "onnx.Add"(%796, %104) {onnx_node_name = "Add_1157"} : (tensor<8x197x768xf32>, tensor<768xf32>) -> tensor<8x197x768xf32>
    %798 = "onnx.MatMul"(%797, %70) {onnx_node_name = "MatMul_1158"} : (tensor<8x197x768xf32>, tensor<768x3072xf32>) -> tensor<8x197x3072xf32>
    %799 = "onnx.Add"(%798, %101) {onnx_node_name = "Add_1159"} : (tensor<8x197x3072xf32>, tensor<3072xf32>) -> tensor<8x197x3072xf32>
    %800 = "onnx.Div"(%799, %167) {onnx_node_name = "Div_1161"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %801 = "onnx.Erf"(%800) {onnx_node_name = "Erf_1162"} : (tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %802 = "onnx.Add"(%801, %168) {onnx_node_name = "Add_1164"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %803 = "onnx.Mul"(%799, %802) {onnx_node_name = "Mul_1165"} : (tensor<8x197x3072xf32>, tensor<8x197x3072xf32>) -> tensor<8x197x3072xf32>
    %804 = "onnx.Mul"(%803, %169) {onnx_node_name = "Mul_1167"} : (tensor<8x197x3072xf32>, tensor<f32>) -> tensor<8x197x3072xf32>
    %805 = "onnx.MatMul"(%804, %71) {onnx_node_name = "MatMul_1168"} : (tensor<8x197x3072xf32>, tensor<3072x768xf32>) -> tensor<8x197x768xf32>
    %806 = "onnx.Add"(%786, %805) : (tensor<8x197x768xf32>, tensor<8x197x768xf32>) -> tensor<8x197x768xf32>
    %807 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x197x768xf32>} : () -> tensor<1x197x768xf32>
    %808 = "onnx.Add"(%806, %807) : (tensor<8x197x768xf32>, tensor<1x197x768xf32>) -> tensor<8x197x768xf32>
    %809 = "onnx.Reshape"(%808, %177) {allowzero = 0 : si64, onnx_node_name = "Reshape_1180"} : (tensor<8x197x768xf32>, tensor<4xi64>) -> tensor<1x8x197x768xf32>
    %810 = "onnx.ReduceMean"(%809) {axes = [1], keepdims = 0 : si64, onnx_node_name = "ReduceMean_1181"} : (tensor<1x8x197x768xf32>) -> tensor<1x197x768xf32>
    %811 = "onnx.ReduceMean"(%810) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1182"} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %812 = "onnx.Sub"(%810, %811) {onnx_node_name = "Sub_1183"} : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %813 = "onnx.Pow"(%812, %72) {onnx_node_name = "Pow_1185"} : (tensor<1x197x768xf32>, tensor<f32>) -> tensor<1x197x768xf32>
    %814 = "onnx.ReduceMean"(%813) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_1186"} : (tensor<1x197x768xf32>) -> tensor<1x197x1xf32>
    %815 = "onnx.Add"(%814, %165) {onnx_node_name = "Add_1188"} : (tensor<1x197x1xf32>, tensor<f32>) -> tensor<1x197x1xf32>
    %816 = "onnx.Sqrt"(%815) {onnx_node_name = "Sqrt_1189"} : (tensor<1x197x1xf32>) -> tensor<1x197x1xf32>
    %817 = "onnx.Div"(%812, %816) {onnx_node_name = "Div_1190"} : (tensor<1x197x768xf32>, tensor<1x197x1xf32>) -> tensor<1x197x768xf32>
    %818 = "onnx.Mul"(%817, %74) {onnx_node_name = "Mul_1191"} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %819 = "onnx.Add"(%818, %73) {onnx_node_name = "Add_1192"} : (tensor<1x197x768xf32>, tensor<768xf32>) -> tensor<1x197x768xf32>
    %820 = "onnx.Gather"(%819, %164) {axis = 1 : si64, onnx_node_name = "Gather_1194"} : (tensor<1x197x768xf32>, tensor<i64>) -> tensor<1x768xf32>
    %821 = "onnx.Gemm"(%820, %163, %162) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, onnx_node_name = "Gemm_1195", transA = 0 : si64, transB = 1 : si64} : (tensor<1x768xf32>, tensor<400x768xf32>, tensor<400xf32>) -> tensor<1x400xf32>
    return %821 : tensor<1x400xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
