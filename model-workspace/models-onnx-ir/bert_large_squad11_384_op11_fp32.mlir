module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: tensor<?x384xi64>, %arg1: tensor<?x384xi64>, %arg2: tensor<?x384xi64>) -> (tensor<?x384xf32>, tensor<?x384xf32>) attributes {input_names = ["input_ids", "input_mask", "segment_ids"], output_names = ["output_start_logits", "output_end_logits"]} {
    %0 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %2 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<512x1024xf32>} : () -> tensor<512x1024xf32>
    %3 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<2x1024xf32>} : () -> tensor<2x1024xf32>
    %4 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<30522x1024xf32>} : () -> tensor<30522x1024xf32>
    %5 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %6 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %7 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %8 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %9 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %10 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %11 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %12 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %13 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %14 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %15 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %16 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %17 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %18 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %19 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %20 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %21 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %22 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %23 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %24 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %25 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %26 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %27 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %28 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %29 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %30 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %31 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %32 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %33 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %34 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %35 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %36 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %37 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %38 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %39 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %40 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %41 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %42 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %43 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %44 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %45 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %46 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %47 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %48 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %49 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %50 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %51 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %52 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %53 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %54 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %55 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %56 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %57 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %58 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %59 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %60 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %61 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %62 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %63 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %64 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %65 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %66 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %67 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %68 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %69 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %70 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %71 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %72 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %73 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %74 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %75 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %76 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %77 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %78 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %79 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %80 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %81 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %82 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %83 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %84 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %85 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %86 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %87 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %88 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %89 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %90 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %91 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %92 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %93 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %94 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %95 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %96 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %97 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %98 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %99 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %100 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %101 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %102 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %103 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %104 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %105 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %106 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %107 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %108 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %109 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %110 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %111 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %112 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %113 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %114 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %115 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %116 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %117 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %118 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %119 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %120 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %121 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %122 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %123 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %124 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %125 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %126 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %127 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %128 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %129 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %130 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %131 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %132 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %133 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %134 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %135 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %136 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %137 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %138 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %139 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %140 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %141 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %142 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %143 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %144 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %145 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %146 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %147 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %148 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %149 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %150 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %151 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %152 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %153 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %154 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %155 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %156 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %157 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %158 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %159 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %160 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %161 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %162 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %163 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %164 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %165 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %166 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %167 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %168 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %169 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %170 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %171 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %172 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %173 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %174 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %175 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %176 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %177 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %178 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %179 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %180 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %181 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %182 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %183 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %184 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %185 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %186 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %187 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %188 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %189 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %190 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %191 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %192 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %193 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %194 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096xf32>} : () -> tensor<4096xf32>
    %195 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %196 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %197 = "onnx.Constant"() {value = dense<[8.16425308E-5, 7.88132238E-5]> : tensor<2xf32>} : () -> tensor<2xf32>
    %198 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %199 = "onnx.Constant"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %200 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %201 = "onnx.Constant"() {value = dense<9.99999996E-13> : tensor<f32>} : () -> tensor<f32>
    %202 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %203 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %204 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %205 = "onnx.Constant"() {value = dense<16> : tensor<1xi64>} : () -> tensor<1xi64>
    %206 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %207 = "onnx.Constant"() {value = dense<8.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %208 = "onnx.Constant"() {value = dense<1024> : tensor<1xi64>} : () -> tensor<1xi64>
    %209 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %210 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %211 = "onnx.Constant"() {value = dense<5.000000e-01> : tensor<f32>} : () -> tensor<f32>
    %212 = "onnx.Constant"() {value = dense<1.41421354> : tensor<f32>} : () -> tensor<f32>
    %213 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %214 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %215 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %216 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %217 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %218 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %219 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %220 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %221 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %222 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %223 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %224 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %225 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %226 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %227 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %228 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %229 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %230 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %231 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %232 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %233 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %234 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %235 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %236 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %237 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %238 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %239 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %240 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %241 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %242 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %243 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %244 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %245 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %246 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %247 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %248 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %249 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %250 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %251 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %252 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %253 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %254 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %255 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %256 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %257 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %258 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %259 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %260 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %261 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %262 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %263 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %264 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %265 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %266 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %267 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %268 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %269 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %270 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %271 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %272 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %273 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %274 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %275 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %276 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %277 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %278 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %279 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %280 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %281 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %282 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %283 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %284 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %285 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %286 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %287 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %288 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %289 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %290 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %291 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %292 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %293 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %294 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %295 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %296 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %297 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %298 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %299 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %300 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %301 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %302 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %303 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %304 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %305 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %306 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %307 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %308 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %309 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %310 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %311 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %312 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %313 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %314 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %315 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %316 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %317 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %318 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %319 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %320 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %321 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %322 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %323 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %324 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %325 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %326 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %327 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %328 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %329 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %330 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %331 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %332 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %333 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %334 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %335 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %336 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %337 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %338 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %339 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %340 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %341 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %342 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %343 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %344 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %345 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %346 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %347 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %348 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %349 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x1024xf32>} : () -> tensor<1024x1024xf32>
    %350 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x4096xf32>} : () -> tensor<1024x4096xf32>
    %351 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<4096x1024xf32>} : () -> tensor<4096x1024xf32>
    %352 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024x2xf32>} : () -> tensor<1024x2xf32>
    %353 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1x384xi64>} : () -> tensor<1x384xi64>
    %354 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %355 = "onnx.Constant"() {value = dense<[-1, 384, 16, 64]> : tensor<4xi64>} : () -> tensor<4xi64>
    %356 = "onnx.Constant"() {value = dense<[-1, 384, 1024]> : tensor<3xi64>} : () -> tensor<3xi64>
    %357 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %358 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %359 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %360 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %361 = "onnx.Unsqueeze"(%arg1, %360) : (tensor<?x384xi64>, tensor<1xi64>) -> tensor<?x1x384xi64>
    %362 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %363 = "onnx.Unsqueeze"(%361, %362) : (tensor<?x1x384xi64>, tensor<1xi64>) -> tensor<?x1x1x384xi64>
    %364 = "onnx.Cast"(%363) {to = f32} : (tensor<?x1x1x384xi64>) -> tensor<?x1x1x384xf32>
    %365 = "onnx.Sub"(%198, %364) : (tensor<f32>, tensor<?x1x1x384xf32>) -> tensor<?x1x1x384xf32>
    %366 = "onnx.Mul"(%365, %199) : (tensor<?x1x1x384xf32>, tensor<f32>) -> tensor<?x1x1x384xf32>
    %367 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x384xi64>) -> tensor<1xi64>
    %368 = "onnx.Concat"(%367, %354) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %369 = "onnx.Expand"(%353, %368) : (tensor<1x384xi64>, tensor<2xi64>) -> tensor<?x384xi64>
    %370 = "onnx.Gather"(%4, %arg0) {axis = 0 : si64} : (tensor<30522x1024xf32>, tensor<?x384xi64>) -> tensor<?x384x1024xf32>
    %371 = "onnx.Gather"(%2, %369) {axis = 0 : si64} : (tensor<512x1024xf32>, tensor<?x384xi64>) -> tensor<?x384x1024xf32>
    %372 = "onnx.Gather"(%3, %arg2) {axis = 0 : si64} : (tensor<2x1024xf32>, tensor<?x384xi64>) -> tensor<?x384x1024xf32>
    %373 = "onnx.Add"(%370, %371) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %374 = "onnx.Add"(%373, %372) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %375 = "onnx.ReduceMean"(%374) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %376 = "onnx.Sub"(%374, %375) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %377 = "onnx.Pow"(%376, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %378 = "onnx.ReduceMean"(%377) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %379 = "onnx.Add"(%378, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %380 = "onnx.Sqrt"(%379) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %381 = "onnx.Div"(%376, %380) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %382 = "onnx.Mul"(%381, %1) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %383 = "onnx.Add"(%382, %0) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %384 = "onnx.MatMul"(%383, %202) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %385 = "onnx.Add"(%384, %8) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %386 = "onnx.MatMul"(%383, %203) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %387 = "onnx.Add"(%386, %7) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %388 = "onnx.MatMul"(%383, %204) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %389 = "onnx.Add"(%388, %9) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %390 = "onnx.Reshape"(%385, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %391 = "onnx.Transpose"(%390) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %392 = "onnx.Reshape"(%387, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %393 = "onnx.Reshape"(%389, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %394 = "onnx.Transpose"(%393) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %395 = "onnx.Transpose"(%392) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %396 = "onnx.MatMul"(%391, %395) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %397 = "onnx.Div"(%396, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %398 = "onnx.Add"(%397, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %399 = "onnx.Softmax"(%398) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %400 = "onnx.MatMul"(%399, %394) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %401 = "onnx.Transpose"(%400) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %402 = "onnx.Reshape"(%401, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %403 = "onnx.MatMul"(%402, %209) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %404 = "onnx.Add"(%403, %382) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %405 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %406 = "onnx.Add"(%404, %405) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %407 = "onnx.ReduceMean"(%406) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %408 = "onnx.Sub"(%406, %407) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %409 = "onnx.Pow"(%408, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %410 = "onnx.ReduceMean"(%409) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %411 = "onnx.Add"(%410, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %412 = "onnx.Sqrt"(%411) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %413 = "onnx.Div"(%408, %412) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %414 = "onnx.Mul"(%413, %6) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %415 = "onnx.Add"(%414, %5) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %416 = "onnx.MatMul"(%415, %210) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %417 = "onnx.Add"(%416, %10) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %418 = "onnx.Div"(%417, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %419 = "onnx.Erf"(%418) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %420 = "onnx.Add"(%419, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %421 = "onnx.Mul"(%417, %420) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %422 = "onnx.Mul"(%421, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %423 = "onnx.MatMul"(%422, %213) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %424 = "onnx.Add"(%423, %414) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %425 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %426 = "onnx.Add"(%424, %425) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %427 = "onnx.ReduceMean"(%426) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %428 = "onnx.Sub"(%426, %427) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %429 = "onnx.Pow"(%428, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %430 = "onnx.ReduceMean"(%429) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %431 = "onnx.Add"(%430, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %432 = "onnx.Sqrt"(%431) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %433 = "onnx.Div"(%428, %432) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %434 = "onnx.Mul"(%433, %12) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %435 = "onnx.Add"(%434, %11) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %436 = "onnx.MatMul"(%435, %214) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %437 = "onnx.Add"(%436, %16) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %438 = "onnx.MatMul"(%435, %215) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %439 = "onnx.Add"(%438, %15) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %440 = "onnx.MatMul"(%435, %216) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %441 = "onnx.Add"(%440, %17) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %442 = "onnx.Reshape"(%437, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %443 = "onnx.Transpose"(%442) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %444 = "onnx.Reshape"(%439, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %445 = "onnx.Reshape"(%441, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %446 = "onnx.Transpose"(%445) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %447 = "onnx.Transpose"(%444) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %448 = "onnx.MatMul"(%443, %447) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %449 = "onnx.Div"(%448, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %450 = "onnx.Add"(%449, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %451 = "onnx.Softmax"(%450) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %452 = "onnx.MatMul"(%451, %446) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %453 = "onnx.Transpose"(%452) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %454 = "onnx.Reshape"(%453, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %455 = "onnx.MatMul"(%454, %217) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %456 = "onnx.Add"(%455, %434) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %457 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %458 = "onnx.Add"(%456, %457) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %459 = "onnx.ReduceMean"(%458) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %460 = "onnx.Sub"(%458, %459) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %461 = "onnx.Pow"(%460, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %462 = "onnx.ReduceMean"(%461) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %463 = "onnx.Add"(%462, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %464 = "onnx.Sqrt"(%463) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %465 = "onnx.Div"(%460, %464) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %466 = "onnx.Mul"(%465, %14) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %467 = "onnx.Add"(%466, %13) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %468 = "onnx.MatMul"(%467, %218) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %469 = "onnx.Add"(%468, %18) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %470 = "onnx.Div"(%469, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %471 = "onnx.Erf"(%470) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %472 = "onnx.Add"(%471, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %473 = "onnx.Mul"(%469, %472) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %474 = "onnx.Mul"(%473, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %475 = "onnx.MatMul"(%474, %219) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %476 = "onnx.Add"(%475, %466) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %477 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %478 = "onnx.Add"(%476, %477) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %479 = "onnx.ReduceMean"(%478) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %480 = "onnx.Sub"(%478, %479) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %481 = "onnx.Pow"(%480, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %482 = "onnx.ReduceMean"(%481) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %483 = "onnx.Add"(%482, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %484 = "onnx.Sqrt"(%483) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %485 = "onnx.Div"(%480, %484) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %486 = "onnx.Mul"(%485, %20) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %487 = "onnx.Add"(%486, %19) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %488 = "onnx.MatMul"(%487, %220) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %489 = "onnx.Add"(%488, %104) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %490 = "onnx.MatMul"(%487, %221) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %491 = "onnx.Add"(%490, %103) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %492 = "onnx.MatMul"(%487, %222) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %493 = "onnx.Add"(%492, %105) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %494 = "onnx.Reshape"(%489, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %495 = "onnx.Transpose"(%494) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %496 = "onnx.Reshape"(%491, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %497 = "onnx.Reshape"(%493, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %498 = "onnx.Transpose"(%497) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %499 = "onnx.Transpose"(%496) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %500 = "onnx.MatMul"(%495, %499) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %501 = "onnx.Div"(%500, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %502 = "onnx.Add"(%501, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %503 = "onnx.Softmax"(%502) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %504 = "onnx.MatMul"(%503, %498) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %505 = "onnx.Transpose"(%504) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %506 = "onnx.Reshape"(%505, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %507 = "onnx.MatMul"(%506, %223) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %508 = "onnx.Add"(%507, %486) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %509 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %510 = "onnx.Add"(%508, %509) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %511 = "onnx.ReduceMean"(%510) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %512 = "onnx.Sub"(%510, %511) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %513 = "onnx.Pow"(%512, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %514 = "onnx.ReduceMean"(%513) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %515 = "onnx.Add"(%514, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %516 = "onnx.Sqrt"(%515) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %517 = "onnx.Div"(%512, %516) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %518 = "onnx.Mul"(%517, %102) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %519 = "onnx.Add"(%518, %101) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %520 = "onnx.MatMul"(%519, %224) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %521 = "onnx.Add"(%520, %106) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %522 = "onnx.Div"(%521, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %523 = "onnx.Erf"(%522) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %524 = "onnx.Add"(%523, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %525 = "onnx.Mul"(%521, %524) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %526 = "onnx.Mul"(%525, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %527 = "onnx.MatMul"(%526, %225) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %528 = "onnx.Add"(%527, %518) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %529 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %530 = "onnx.Add"(%528, %529) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %531 = "onnx.ReduceMean"(%530) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %532 = "onnx.Sub"(%530, %531) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %533 = "onnx.Pow"(%532, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %534 = "onnx.ReduceMean"(%533) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %535 = "onnx.Add"(%534, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %536 = "onnx.Sqrt"(%535) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %537 = "onnx.Div"(%532, %536) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %538 = "onnx.Mul"(%537, %108) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %539 = "onnx.Add"(%538, %107) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %540 = "onnx.MatMul"(%539, %226) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %541 = "onnx.Add"(%540, %144) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %542 = "onnx.MatMul"(%539, %227) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %543 = "onnx.Add"(%542, %143) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %544 = "onnx.MatMul"(%539, %228) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %545 = "onnx.Add"(%544, %145) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %546 = "onnx.Reshape"(%541, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %547 = "onnx.Transpose"(%546) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %548 = "onnx.Reshape"(%543, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %549 = "onnx.Reshape"(%545, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %550 = "onnx.Transpose"(%549) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %551 = "onnx.Transpose"(%548) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %552 = "onnx.MatMul"(%547, %551) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %553 = "onnx.Div"(%552, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %554 = "onnx.Add"(%553, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %555 = "onnx.Softmax"(%554) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %556 = "onnx.MatMul"(%555, %550) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %557 = "onnx.Transpose"(%556) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %558 = "onnx.Reshape"(%557, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %559 = "onnx.MatMul"(%558, %229) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %560 = "onnx.Add"(%559, %538) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %561 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %562 = "onnx.Add"(%560, %561) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %563 = "onnx.ReduceMean"(%562) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %564 = "onnx.Sub"(%562, %563) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %565 = "onnx.Pow"(%564, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %566 = "onnx.ReduceMean"(%565) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %567 = "onnx.Add"(%566, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %568 = "onnx.Sqrt"(%567) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %569 = "onnx.Div"(%564, %568) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %570 = "onnx.Mul"(%569, %142) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %571 = "onnx.Add"(%570, %141) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %572 = "onnx.MatMul"(%571, %230) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %573 = "onnx.Add"(%572, %146) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %574 = "onnx.Div"(%573, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %575 = "onnx.Erf"(%574) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %576 = "onnx.Add"(%575, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %577 = "onnx.Mul"(%573, %576) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %578 = "onnx.Mul"(%577, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %579 = "onnx.MatMul"(%578, %231) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %580 = "onnx.Add"(%579, %570) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %581 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %582 = "onnx.Add"(%580, %581) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %583 = "onnx.ReduceMean"(%582) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %584 = "onnx.Sub"(%582, %583) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %585 = "onnx.Pow"(%584, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %586 = "onnx.ReduceMean"(%585) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %587 = "onnx.Add"(%586, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %588 = "onnx.Sqrt"(%587) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %589 = "onnx.Div"(%584, %588) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %590 = "onnx.Mul"(%589, %148) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %591 = "onnx.Add"(%590, %147) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %592 = "onnx.MatMul"(%591, %232) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %593 = "onnx.Add"(%592, %152) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %594 = "onnx.MatMul"(%591, %233) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %595 = "onnx.Add"(%594, %151) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %596 = "onnx.MatMul"(%591, %234) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %597 = "onnx.Add"(%596, %153) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %598 = "onnx.Reshape"(%593, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %599 = "onnx.Transpose"(%598) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %600 = "onnx.Reshape"(%595, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %601 = "onnx.Reshape"(%597, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %602 = "onnx.Transpose"(%601) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %603 = "onnx.Transpose"(%600) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %604 = "onnx.MatMul"(%599, %603) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %605 = "onnx.Div"(%604, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %606 = "onnx.Add"(%605, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %607 = "onnx.Softmax"(%606) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %608 = "onnx.MatMul"(%607, %602) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %609 = "onnx.Transpose"(%608) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %610 = "onnx.Reshape"(%609, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %611 = "onnx.MatMul"(%610, %235) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %612 = "onnx.Add"(%611, %590) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %613 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %614 = "onnx.Add"(%612, %613) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %615 = "onnx.ReduceMean"(%614) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %616 = "onnx.Sub"(%614, %615) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %617 = "onnx.Pow"(%616, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %618 = "onnx.ReduceMean"(%617) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %619 = "onnx.Add"(%618, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %620 = "onnx.Sqrt"(%619) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %621 = "onnx.Div"(%616, %620) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %622 = "onnx.Mul"(%621, %150) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %623 = "onnx.Add"(%622, %149) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %624 = "onnx.MatMul"(%623, %236) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %625 = "onnx.Add"(%624, %154) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %626 = "onnx.Div"(%625, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %627 = "onnx.Erf"(%626) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %628 = "onnx.Add"(%627, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %629 = "onnx.Mul"(%625, %628) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %630 = "onnx.Mul"(%629, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %631 = "onnx.MatMul"(%630, %237) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %632 = "onnx.Add"(%631, %622) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %633 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %634 = "onnx.Add"(%632, %633) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %635 = "onnx.ReduceMean"(%634) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %636 = "onnx.Sub"(%634, %635) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %637 = "onnx.Pow"(%636, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %638 = "onnx.ReduceMean"(%637) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %639 = "onnx.Add"(%638, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %640 = "onnx.Sqrt"(%639) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %641 = "onnx.Div"(%636, %640) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %642 = "onnx.Mul"(%641, %156) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %643 = "onnx.Add"(%642, %155) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %644 = "onnx.MatMul"(%643, %238) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %645 = "onnx.Add"(%644, %160) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %646 = "onnx.MatMul"(%643, %239) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %647 = "onnx.Add"(%646, %159) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %648 = "onnx.MatMul"(%643, %240) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %649 = "onnx.Add"(%648, %161) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %650 = "onnx.Reshape"(%645, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %651 = "onnx.Transpose"(%650) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %652 = "onnx.Reshape"(%647, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %653 = "onnx.Reshape"(%649, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %654 = "onnx.Transpose"(%653) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %655 = "onnx.Transpose"(%652) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %656 = "onnx.MatMul"(%651, %655) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %657 = "onnx.Div"(%656, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %658 = "onnx.Add"(%657, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %659 = "onnx.Softmax"(%658) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %660 = "onnx.MatMul"(%659, %654) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %661 = "onnx.Transpose"(%660) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %662 = "onnx.Reshape"(%661, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %663 = "onnx.MatMul"(%662, %241) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %664 = "onnx.Add"(%663, %642) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %665 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %666 = "onnx.Add"(%664, %665) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %667 = "onnx.ReduceMean"(%666) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %668 = "onnx.Sub"(%666, %667) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %669 = "onnx.Pow"(%668, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %670 = "onnx.ReduceMean"(%669) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %671 = "onnx.Add"(%670, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %672 = "onnx.Sqrt"(%671) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %673 = "onnx.Div"(%668, %672) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %674 = "onnx.Mul"(%673, %158) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %675 = "onnx.Add"(%674, %157) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %676 = "onnx.MatMul"(%675, %242) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %677 = "onnx.Add"(%676, %162) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %678 = "onnx.Div"(%677, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %679 = "onnx.Erf"(%678) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %680 = "onnx.Add"(%679, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %681 = "onnx.Mul"(%677, %680) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %682 = "onnx.Mul"(%681, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %683 = "onnx.MatMul"(%682, %243) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %684 = "onnx.Add"(%683, %674) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %685 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %686 = "onnx.Add"(%684, %685) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %687 = "onnx.ReduceMean"(%686) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %688 = "onnx.Sub"(%686, %687) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %689 = "onnx.Pow"(%688, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %690 = "onnx.ReduceMean"(%689) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %691 = "onnx.Add"(%690, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %692 = "onnx.Sqrt"(%691) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %693 = "onnx.Div"(%688, %692) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %694 = "onnx.Mul"(%693, %164) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %695 = "onnx.Add"(%694, %163) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %696 = "onnx.MatMul"(%695, %244) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %697 = "onnx.Add"(%696, %168) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %698 = "onnx.MatMul"(%695, %245) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %699 = "onnx.Add"(%698, %167) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %700 = "onnx.MatMul"(%695, %246) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %701 = "onnx.Add"(%700, %169) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %702 = "onnx.Reshape"(%697, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %703 = "onnx.Transpose"(%702) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %704 = "onnx.Reshape"(%699, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %705 = "onnx.Reshape"(%701, %355) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %706 = "onnx.Transpose"(%705) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %707 = "onnx.Transpose"(%704) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %708 = "onnx.MatMul"(%703, %707) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %709 = "onnx.Div"(%708, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %710 = "onnx.Add"(%709, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %711 = "onnx.Softmax"(%710) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %712 = "onnx.MatMul"(%711, %706) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %713 = "onnx.Transpose"(%712) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %714 = "onnx.Reshape"(%713, %356) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %715 = "onnx.MatMul"(%714, %247) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %716 = "onnx.Add"(%715, %694) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %717 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %718 = "onnx.Add"(%716, %717) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %719 = "onnx.ReduceMean"(%718) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %720 = "onnx.Sub"(%718, %719) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %721 = "onnx.Pow"(%720, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %722 = "onnx.ReduceMean"(%721) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %723 = "onnx.Add"(%722, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %724 = "onnx.Sqrt"(%723) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %725 = "onnx.Div"(%720, %724) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %726 = "onnx.Mul"(%725, %166) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %727 = "onnx.Add"(%726, %165) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %728 = "onnx.MatMul"(%727, %248) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %729 = "onnx.Add"(%728, %170) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %730 = "onnx.Div"(%729, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %731 = "onnx.Erf"(%730) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %732 = "onnx.Add"(%731, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %733 = "onnx.Mul"(%729, %732) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %734 = "onnx.Mul"(%733, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %735 = "onnx.MatMul"(%734, %249) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %736 = "onnx.Add"(%735, %726) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %737 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %738 = "onnx.Add"(%736, %737) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %739 = "onnx.ReduceMean"(%738) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %740 = "onnx.Sub"(%738, %739) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %741 = "onnx.Pow"(%740, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %742 = "onnx.ReduceMean"(%741) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %743 = "onnx.Add"(%742, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %744 = "onnx.Sqrt"(%743) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %745 = "onnx.Div"(%740, %744) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %746 = "onnx.Mul"(%745, %172) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %747 = "onnx.Add"(%746, %171) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %748 = "onnx.MatMul"(%747, %250) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %749 = "onnx.Add"(%748, %176) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %750 = "onnx.MatMul"(%747, %251) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %751 = "onnx.Add"(%750, %175) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %752 = "onnx.MatMul"(%747, %252) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %753 = "onnx.Add"(%752, %177) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %754 = "onnx.Dim"(%749) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %755 = "onnx.Concat"(%754, %357, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %756 = "onnx.Reshape"(%749, %755) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %757 = "onnx.Transpose"(%756) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %758 = "onnx.Dim"(%751) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %759 = "onnx.Concat"(%758, %358, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %760 = "onnx.Reshape"(%751, %759) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %761 = "onnx.Dim"(%753) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %762 = "onnx.Concat"(%761, %359, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %763 = "onnx.Reshape"(%753, %762) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %764 = "onnx.Transpose"(%763) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %765 = "onnx.Transpose"(%760) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %766 = "onnx.MatMul"(%757, %765) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %767 = "onnx.Div"(%766, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %768 = "onnx.Add"(%767, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %769 = "onnx.Softmax"(%768) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %770 = "onnx.MatMul"(%769, %764) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %771 = "onnx.Transpose"(%770) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %772 = "onnx.Dim"(%771) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %773 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %774 = "onnx.Concat"(%772, %773, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %775 = "onnx.Reshape"(%771, %774) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %776 = "onnx.MatMul"(%775, %253) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %777 = "onnx.Add"(%776, %746) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %778 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %779 = "onnx.Add"(%777, %778) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %780 = "onnx.ReduceMean"(%779) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %781 = "onnx.Sub"(%779, %780) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %782 = "onnx.Pow"(%781, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %783 = "onnx.ReduceMean"(%782) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %784 = "onnx.Add"(%783, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %785 = "onnx.Sqrt"(%784) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %786 = "onnx.Div"(%781, %785) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %787 = "onnx.Mul"(%786, %174) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %788 = "onnx.Add"(%787, %173) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %789 = "onnx.MatMul"(%788, %254) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %790 = "onnx.Add"(%789, %178) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %791 = "onnx.Div"(%790, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %792 = "onnx.Erf"(%791) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %793 = "onnx.Add"(%792, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %794 = "onnx.Mul"(%790, %793) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %795 = "onnx.Mul"(%794, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %796 = "onnx.MatMul"(%795, %255) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %797 = "onnx.Add"(%796, %787) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %798 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %799 = "onnx.Add"(%797, %798) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %800 = "onnx.ReduceMean"(%799) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %801 = "onnx.Sub"(%799, %800) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %802 = "onnx.Pow"(%801, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %803 = "onnx.ReduceMean"(%802) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %804 = "onnx.Add"(%803, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %805 = "onnx.Sqrt"(%804) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %806 = "onnx.Div"(%801, %805) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %807 = "onnx.Mul"(%806, %180) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %808 = "onnx.Add"(%807, %179) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %809 = "onnx.MatMul"(%808, %256) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %810 = "onnx.Add"(%809, %184) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %811 = "onnx.MatMul"(%808, %257) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %812 = "onnx.Add"(%811, %183) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %813 = "onnx.MatMul"(%808, %258) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %814 = "onnx.Add"(%813, %185) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %815 = "onnx.Dim"(%810) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %816 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %817 = "onnx.Concat"(%815, %816, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %818 = "onnx.Reshape"(%810, %817) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %819 = "onnx.Transpose"(%818) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %820 = "onnx.Dim"(%812) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %821 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %822 = "onnx.Concat"(%820, %821, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %823 = "onnx.Reshape"(%812, %822) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %824 = "onnx.Dim"(%814) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %825 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %826 = "onnx.Concat"(%824, %825, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %827 = "onnx.Reshape"(%814, %826) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %828 = "onnx.Transpose"(%827) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %829 = "onnx.Transpose"(%823) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %830 = "onnx.MatMul"(%819, %829) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %831 = "onnx.Div"(%830, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %832 = "onnx.Add"(%831, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %833 = "onnx.Softmax"(%832) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %834 = "onnx.MatMul"(%833, %828) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %835 = "onnx.Transpose"(%834) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %836 = "onnx.Dim"(%835) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %837 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %838 = "onnx.Concat"(%836, %837, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %839 = "onnx.Reshape"(%835, %838) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %840 = "onnx.MatMul"(%839, %259) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %841 = "onnx.Add"(%840, %807) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %842 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %843 = "onnx.Add"(%841, %842) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %844 = "onnx.ReduceMean"(%843) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %845 = "onnx.Sub"(%843, %844) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %846 = "onnx.Pow"(%845, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %847 = "onnx.ReduceMean"(%846) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %848 = "onnx.Add"(%847, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %849 = "onnx.Sqrt"(%848) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %850 = "onnx.Div"(%845, %849) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %851 = "onnx.Mul"(%850, %182) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %852 = "onnx.Add"(%851, %181) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %853 = "onnx.MatMul"(%852, %260) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %854 = "onnx.Add"(%853, %186) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %855 = "onnx.Div"(%854, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %856 = "onnx.Erf"(%855) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %857 = "onnx.Add"(%856, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %858 = "onnx.Mul"(%854, %857) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %859 = "onnx.Mul"(%858, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %860 = "onnx.MatMul"(%859, %261) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %861 = "onnx.Add"(%860, %851) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %862 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %863 = "onnx.Add"(%861, %862) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %864 = "onnx.ReduceMean"(%863) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %865 = "onnx.Sub"(%863, %864) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %866 = "onnx.Pow"(%865, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %867 = "onnx.ReduceMean"(%866) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %868 = "onnx.Add"(%867, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %869 = "onnx.Sqrt"(%868) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %870 = "onnx.Div"(%865, %869) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %871 = "onnx.Mul"(%870, %188) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %872 = "onnx.Add"(%871, %187) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %873 = "onnx.MatMul"(%872, %262) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %874 = "onnx.Add"(%873, %192) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %875 = "onnx.MatMul"(%872, %263) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %876 = "onnx.Add"(%875, %191) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %877 = "onnx.MatMul"(%872, %264) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %878 = "onnx.Add"(%877, %193) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %879 = "onnx.Dim"(%874) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %880 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %881 = "onnx.Concat"(%879, %880, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %882 = "onnx.Reshape"(%874, %881) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %883 = "onnx.Transpose"(%882) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %884 = "onnx.Dim"(%876) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %885 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %886 = "onnx.Concat"(%884, %885, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %887 = "onnx.Reshape"(%876, %886) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %888 = "onnx.Dim"(%878) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %889 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %890 = "onnx.Concat"(%888, %889, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %891 = "onnx.Reshape"(%878, %890) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %892 = "onnx.Transpose"(%891) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %893 = "onnx.Transpose"(%887) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %894 = "onnx.MatMul"(%883, %893) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %895 = "onnx.Div"(%894, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %896 = "onnx.Add"(%895, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %897 = "onnx.Softmax"(%896) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %898 = "onnx.MatMul"(%897, %892) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %899 = "onnx.Transpose"(%898) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %900 = "onnx.Dim"(%899) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %901 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %902 = "onnx.Concat"(%900, %901, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %903 = "onnx.Reshape"(%899, %902) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %904 = "onnx.MatMul"(%903, %265) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %905 = "onnx.Add"(%904, %871) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %906 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %907 = "onnx.Add"(%905, %906) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %908 = "onnx.ReduceMean"(%907) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %909 = "onnx.Sub"(%907, %908) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %910 = "onnx.Pow"(%909, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %911 = "onnx.ReduceMean"(%910) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %912 = "onnx.Add"(%911, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %913 = "onnx.Sqrt"(%912) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %914 = "onnx.Div"(%909, %913) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %915 = "onnx.Mul"(%914, %190) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %916 = "onnx.Add"(%915, %189) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %917 = "onnx.MatMul"(%916, %266) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %918 = "onnx.Add"(%917, %194) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %919 = "onnx.Div"(%918, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %920 = "onnx.Erf"(%919) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %921 = "onnx.Add"(%920, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %922 = "onnx.Mul"(%918, %921) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %923 = "onnx.Mul"(%922, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %924 = "onnx.MatMul"(%923, %267) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %925 = "onnx.Add"(%924, %915) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %926 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %927 = "onnx.Add"(%925, %926) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %928 = "onnx.ReduceMean"(%927) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %929 = "onnx.Sub"(%927, %928) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %930 = "onnx.Pow"(%929, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %931 = "onnx.ReduceMean"(%930) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %932 = "onnx.Add"(%931, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %933 = "onnx.Sqrt"(%932) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %934 = "onnx.Div"(%929, %933) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %935 = "onnx.Mul"(%934, %196) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %936 = "onnx.Add"(%935, %195) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %937 = "onnx.MatMul"(%936, %268) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %938 = "onnx.Add"(%937, %24) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %939 = "onnx.MatMul"(%936, %269) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %940 = "onnx.Add"(%939, %23) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %941 = "onnx.MatMul"(%936, %270) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %942 = "onnx.Add"(%941, %25) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %943 = "onnx.Dim"(%938) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %944 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %945 = "onnx.Concat"(%943, %944, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %946 = "onnx.Reshape"(%938, %945) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %947 = "onnx.Transpose"(%946) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %948 = "onnx.Dim"(%940) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %949 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %950 = "onnx.Concat"(%948, %949, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %951 = "onnx.Reshape"(%940, %950) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %952 = "onnx.Dim"(%942) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %953 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %954 = "onnx.Concat"(%952, %953, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %955 = "onnx.Reshape"(%942, %954) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %956 = "onnx.Transpose"(%955) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %957 = "onnx.Transpose"(%951) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %958 = "onnx.MatMul"(%947, %957) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %959 = "onnx.Div"(%958, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %960 = "onnx.Add"(%959, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %961 = "onnx.Softmax"(%960) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %962 = "onnx.MatMul"(%961, %956) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %963 = "onnx.Transpose"(%962) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %964 = "onnx.Dim"(%963) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %965 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %966 = "onnx.Concat"(%964, %965, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %967 = "onnx.Reshape"(%963, %966) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %968 = "onnx.MatMul"(%967, %271) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %969 = "onnx.Add"(%968, %935) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %970 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %971 = "onnx.Add"(%969, %970) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %972 = "onnx.ReduceMean"(%971) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %973 = "onnx.Sub"(%971, %972) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %974 = "onnx.Pow"(%973, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %975 = "onnx.ReduceMean"(%974) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %976 = "onnx.Add"(%975, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %977 = "onnx.Sqrt"(%976) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %978 = "onnx.Div"(%973, %977) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %979 = "onnx.Mul"(%978, %22) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %980 = "onnx.Add"(%979, %21) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %981 = "onnx.MatMul"(%980, %272) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %982 = "onnx.Add"(%981, %26) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %983 = "onnx.Div"(%982, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %984 = "onnx.Erf"(%983) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %985 = "onnx.Add"(%984, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %986 = "onnx.Mul"(%982, %985) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %987 = "onnx.Mul"(%986, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %988 = "onnx.MatMul"(%987, %273) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %989 = "onnx.Add"(%988, %979) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %990 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %991 = "onnx.Add"(%989, %990) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %992 = "onnx.ReduceMean"(%991) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %993 = "onnx.Sub"(%991, %992) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %994 = "onnx.Pow"(%993, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %995 = "onnx.ReduceMean"(%994) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %996 = "onnx.Add"(%995, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %997 = "onnx.Sqrt"(%996) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %998 = "onnx.Div"(%993, %997) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %999 = "onnx.Mul"(%998, %28) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1000 = "onnx.Add"(%999, %27) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1001 = "onnx.MatMul"(%1000, %274) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1002 = "onnx.Add"(%1001, %32) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1003 = "onnx.MatMul"(%1000, %275) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1004 = "onnx.Add"(%1003, %31) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1005 = "onnx.MatMul"(%1000, %276) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1006 = "onnx.Add"(%1005, %33) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1007 = "onnx.Dim"(%1002) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1008 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1009 = "onnx.Concat"(%1007, %1008, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1010 = "onnx.Reshape"(%1002, %1009) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1011 = "onnx.Transpose"(%1010) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1012 = "onnx.Dim"(%1004) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1013 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1014 = "onnx.Concat"(%1012, %1013, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1015 = "onnx.Reshape"(%1004, %1014) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1016 = "onnx.Dim"(%1006) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1017 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1018 = "onnx.Concat"(%1016, %1017, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1019 = "onnx.Reshape"(%1006, %1018) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1020 = "onnx.Transpose"(%1019) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1021 = "onnx.Transpose"(%1015) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1022 = "onnx.MatMul"(%1011, %1021) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1023 = "onnx.Div"(%1022, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1024 = "onnx.Add"(%1023, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1025 = "onnx.Softmax"(%1024) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1026 = "onnx.MatMul"(%1025, %1020) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1027 = "onnx.Transpose"(%1026) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1028 = "onnx.Dim"(%1027) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1029 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1030 = "onnx.Concat"(%1028, %1029, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1031 = "onnx.Reshape"(%1027, %1030) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1032 = "onnx.MatMul"(%1031, %277) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1033 = "onnx.Add"(%1032, %999) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1034 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1035 = "onnx.Add"(%1033, %1034) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1036 = "onnx.ReduceMean"(%1035) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1037 = "onnx.Sub"(%1035, %1036) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1038 = "onnx.Pow"(%1037, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1039 = "onnx.ReduceMean"(%1038) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1040 = "onnx.Add"(%1039, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1041 = "onnx.Sqrt"(%1040) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1042 = "onnx.Div"(%1037, %1041) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1043 = "onnx.Mul"(%1042, %30) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1044 = "onnx.Add"(%1043, %29) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1045 = "onnx.MatMul"(%1044, %278) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1046 = "onnx.Add"(%1045, %34) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1047 = "onnx.Div"(%1046, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1048 = "onnx.Erf"(%1047) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1049 = "onnx.Add"(%1048, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1050 = "onnx.Mul"(%1046, %1049) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1051 = "onnx.Mul"(%1050, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1052 = "onnx.MatMul"(%1051, %279) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1053 = "onnx.Add"(%1052, %1043) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1054 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1055 = "onnx.Add"(%1053, %1054) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1056 = "onnx.ReduceMean"(%1055) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1057 = "onnx.Sub"(%1055, %1056) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1058 = "onnx.Pow"(%1057, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1059 = "onnx.ReduceMean"(%1058) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1060 = "onnx.Add"(%1059, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1061 = "onnx.Sqrt"(%1060) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1062 = "onnx.Div"(%1057, %1061) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1063 = "onnx.Mul"(%1062, %36) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1064 = "onnx.Add"(%1063, %35) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1065 = "onnx.MatMul"(%1064, %280) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1066 = "onnx.Add"(%1065, %40) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1067 = "onnx.MatMul"(%1064, %281) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1068 = "onnx.Add"(%1067, %39) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1069 = "onnx.MatMul"(%1064, %282) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1070 = "onnx.Add"(%1069, %41) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1071 = "onnx.Dim"(%1066) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1072 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1073 = "onnx.Concat"(%1071, %1072, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1074 = "onnx.Reshape"(%1066, %1073) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1075 = "onnx.Transpose"(%1074) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1076 = "onnx.Dim"(%1068) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1077 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1078 = "onnx.Concat"(%1076, %1077, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1079 = "onnx.Reshape"(%1068, %1078) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1080 = "onnx.Dim"(%1070) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1081 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1082 = "onnx.Concat"(%1080, %1081, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1083 = "onnx.Reshape"(%1070, %1082) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1084 = "onnx.Transpose"(%1083) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1085 = "onnx.Transpose"(%1079) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1086 = "onnx.MatMul"(%1075, %1085) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1087 = "onnx.Div"(%1086, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1088 = "onnx.Add"(%1087, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1089 = "onnx.Softmax"(%1088) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1090 = "onnx.MatMul"(%1089, %1084) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1091 = "onnx.Transpose"(%1090) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1092 = "onnx.Dim"(%1091) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1093 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1094 = "onnx.Concat"(%1092, %1093, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1095 = "onnx.Reshape"(%1091, %1094) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1096 = "onnx.MatMul"(%1095, %283) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1097 = "onnx.Add"(%1096, %1063) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1098 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1099 = "onnx.Add"(%1097, %1098) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1100 = "onnx.ReduceMean"(%1099) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1101 = "onnx.Sub"(%1099, %1100) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1102 = "onnx.Pow"(%1101, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1103 = "onnx.ReduceMean"(%1102) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1104 = "onnx.Add"(%1103, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1105 = "onnx.Sqrt"(%1104) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1106 = "onnx.Div"(%1101, %1105) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1107 = "onnx.Mul"(%1106, %38) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1108 = "onnx.Add"(%1107, %37) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1109 = "onnx.MatMul"(%1108, %284) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1110 = "onnx.Add"(%1109, %42) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1111 = "onnx.Div"(%1110, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1112 = "onnx.Erf"(%1111) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1113 = "onnx.Add"(%1112, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1114 = "onnx.Mul"(%1110, %1113) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1115 = "onnx.Mul"(%1114, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1116 = "onnx.MatMul"(%1115, %285) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1117 = "onnx.Add"(%1116, %1107) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1118 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1119 = "onnx.Add"(%1117, %1118) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1120 = "onnx.ReduceMean"(%1119) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1121 = "onnx.Sub"(%1119, %1120) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1122 = "onnx.Pow"(%1121, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1123 = "onnx.ReduceMean"(%1122) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1124 = "onnx.Add"(%1123, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1125 = "onnx.Sqrt"(%1124) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1126 = "onnx.Div"(%1121, %1125) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1127 = "onnx.Mul"(%1126, %44) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1128 = "onnx.Add"(%1127, %43) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1129 = "onnx.MatMul"(%1128, %286) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1130 = "onnx.Add"(%1129, %48) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1131 = "onnx.MatMul"(%1128, %287) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1132 = "onnx.Add"(%1131, %47) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1133 = "onnx.MatMul"(%1128, %288) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1134 = "onnx.Add"(%1133, %49) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1135 = "onnx.Dim"(%1130) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1136 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1137 = "onnx.Concat"(%1135, %1136, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1138 = "onnx.Reshape"(%1130, %1137) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1139 = "onnx.Transpose"(%1138) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1140 = "onnx.Dim"(%1132) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1141 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1142 = "onnx.Concat"(%1140, %1141, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1143 = "onnx.Reshape"(%1132, %1142) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1144 = "onnx.Dim"(%1134) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1145 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1146 = "onnx.Concat"(%1144, %1145, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1147 = "onnx.Reshape"(%1134, %1146) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1148 = "onnx.Transpose"(%1147) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1149 = "onnx.Transpose"(%1143) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1150 = "onnx.MatMul"(%1139, %1149) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1151 = "onnx.Div"(%1150, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1152 = "onnx.Add"(%1151, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1153 = "onnx.Softmax"(%1152) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1154 = "onnx.MatMul"(%1153, %1148) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1155 = "onnx.Transpose"(%1154) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1156 = "onnx.Dim"(%1155) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1157 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1158 = "onnx.Concat"(%1156, %1157, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1159 = "onnx.Reshape"(%1155, %1158) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1160 = "onnx.MatMul"(%1159, %289) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1161 = "onnx.Add"(%1160, %1127) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1162 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1163 = "onnx.Add"(%1161, %1162) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1164 = "onnx.ReduceMean"(%1163) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1165 = "onnx.Sub"(%1163, %1164) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1166 = "onnx.Pow"(%1165, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1167 = "onnx.ReduceMean"(%1166) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1168 = "onnx.Add"(%1167, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1169 = "onnx.Sqrt"(%1168) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1170 = "onnx.Div"(%1165, %1169) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1171 = "onnx.Mul"(%1170, %46) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1172 = "onnx.Add"(%1171, %45) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1173 = "onnx.MatMul"(%1172, %290) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1174 = "onnx.Add"(%1173, %50) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1175 = "onnx.Div"(%1174, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1176 = "onnx.Erf"(%1175) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1177 = "onnx.Add"(%1176, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1178 = "onnx.Mul"(%1174, %1177) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1179 = "onnx.Mul"(%1178, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1180 = "onnx.MatMul"(%1179, %291) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1181 = "onnx.Add"(%1180, %1171) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1182 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1183 = "onnx.Add"(%1181, %1182) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1184 = "onnx.ReduceMean"(%1183) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1185 = "onnx.Sub"(%1183, %1184) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1186 = "onnx.Pow"(%1185, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1187 = "onnx.ReduceMean"(%1186) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1188 = "onnx.Add"(%1187, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1189 = "onnx.Sqrt"(%1188) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1190 = "onnx.Div"(%1185, %1189) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1191 = "onnx.Mul"(%1190, %52) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1192 = "onnx.Add"(%1191, %51) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1193 = "onnx.MatMul"(%1192, %292) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1194 = "onnx.Add"(%1193, %56) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1195 = "onnx.MatMul"(%1192, %293) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1196 = "onnx.Add"(%1195, %55) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1197 = "onnx.MatMul"(%1192, %294) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1198 = "onnx.Add"(%1197, %57) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1199 = "onnx.Dim"(%1194) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1200 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1201 = "onnx.Concat"(%1199, %1200, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1202 = "onnx.Reshape"(%1194, %1201) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1203 = "onnx.Transpose"(%1202) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1204 = "onnx.Dim"(%1196) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1205 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1206 = "onnx.Concat"(%1204, %1205, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1207 = "onnx.Reshape"(%1196, %1206) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1208 = "onnx.Dim"(%1198) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1209 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1210 = "onnx.Concat"(%1208, %1209, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1211 = "onnx.Reshape"(%1198, %1210) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1212 = "onnx.Transpose"(%1211) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1213 = "onnx.Transpose"(%1207) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1214 = "onnx.MatMul"(%1203, %1213) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1215 = "onnx.Div"(%1214, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1216 = "onnx.Add"(%1215, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1217 = "onnx.Softmax"(%1216) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1218 = "onnx.MatMul"(%1217, %1212) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1219 = "onnx.Transpose"(%1218) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1220 = "onnx.Dim"(%1219) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1221 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1222 = "onnx.Concat"(%1220, %1221, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1223 = "onnx.Reshape"(%1219, %1222) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1224 = "onnx.MatMul"(%1223, %295) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1225 = "onnx.Add"(%1224, %1191) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1226 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1227 = "onnx.Add"(%1225, %1226) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1228 = "onnx.ReduceMean"(%1227) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1229 = "onnx.Sub"(%1227, %1228) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1230 = "onnx.Pow"(%1229, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1231 = "onnx.ReduceMean"(%1230) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1232 = "onnx.Add"(%1231, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1233 = "onnx.Sqrt"(%1232) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1234 = "onnx.Div"(%1229, %1233) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1235 = "onnx.Mul"(%1234, %54) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1236 = "onnx.Add"(%1235, %53) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1237 = "onnx.MatMul"(%1236, %296) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1238 = "onnx.Add"(%1237, %58) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1239 = "onnx.Div"(%1238, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1240 = "onnx.Erf"(%1239) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1241 = "onnx.Add"(%1240, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1242 = "onnx.Mul"(%1238, %1241) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1243 = "onnx.Mul"(%1242, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1244 = "onnx.MatMul"(%1243, %297) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1245 = "onnx.Add"(%1244, %1235) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1246 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1247 = "onnx.Add"(%1245, %1246) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1248 = "onnx.ReduceMean"(%1247) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1249 = "onnx.Sub"(%1247, %1248) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1250 = "onnx.Pow"(%1249, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1251 = "onnx.ReduceMean"(%1250) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1252 = "onnx.Add"(%1251, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1253 = "onnx.Sqrt"(%1252) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1254 = "onnx.Div"(%1249, %1253) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1255 = "onnx.Mul"(%1254, %60) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1256 = "onnx.Add"(%1255, %59) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1257 = "onnx.MatMul"(%1256, %298) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1258 = "onnx.Add"(%1257, %64) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1259 = "onnx.MatMul"(%1256, %299) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1260 = "onnx.Add"(%1259, %63) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1261 = "onnx.MatMul"(%1256, %300) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1262 = "onnx.Add"(%1261, %65) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1263 = "onnx.Dim"(%1258) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1264 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1265 = "onnx.Concat"(%1263, %1264, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1266 = "onnx.Reshape"(%1258, %1265) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1267 = "onnx.Transpose"(%1266) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1268 = "onnx.Dim"(%1260) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1269 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1270 = "onnx.Concat"(%1268, %1269, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1271 = "onnx.Reshape"(%1260, %1270) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1272 = "onnx.Dim"(%1262) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1273 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1274 = "onnx.Concat"(%1272, %1273, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1275 = "onnx.Reshape"(%1262, %1274) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1276 = "onnx.Transpose"(%1275) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1277 = "onnx.Transpose"(%1271) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1278 = "onnx.MatMul"(%1267, %1277) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1279 = "onnx.Div"(%1278, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1280 = "onnx.Add"(%1279, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1281 = "onnx.Softmax"(%1280) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1282 = "onnx.MatMul"(%1281, %1276) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1283 = "onnx.Transpose"(%1282) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1284 = "onnx.Dim"(%1283) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1285 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1286 = "onnx.Concat"(%1284, %1285, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1287 = "onnx.Reshape"(%1283, %1286) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1288 = "onnx.MatMul"(%1287, %301) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1289 = "onnx.Add"(%1288, %1255) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1290 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1291 = "onnx.Add"(%1289, %1290) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1292 = "onnx.ReduceMean"(%1291) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1293 = "onnx.Sub"(%1291, %1292) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1294 = "onnx.Pow"(%1293, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1295 = "onnx.ReduceMean"(%1294) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1296 = "onnx.Add"(%1295, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1297 = "onnx.Sqrt"(%1296) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1298 = "onnx.Div"(%1293, %1297) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1299 = "onnx.Mul"(%1298, %62) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1300 = "onnx.Add"(%1299, %61) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1301 = "onnx.MatMul"(%1300, %302) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1302 = "onnx.Add"(%1301, %66) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1303 = "onnx.Div"(%1302, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1304 = "onnx.Erf"(%1303) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1305 = "onnx.Add"(%1304, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1306 = "onnx.Mul"(%1302, %1305) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1307 = "onnx.Mul"(%1306, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1308 = "onnx.MatMul"(%1307, %303) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1309 = "onnx.Add"(%1308, %1299) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1310 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1311 = "onnx.Add"(%1309, %1310) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1312 = "onnx.ReduceMean"(%1311) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1313 = "onnx.Sub"(%1311, %1312) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1314 = "onnx.Pow"(%1313, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1315 = "onnx.ReduceMean"(%1314) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1316 = "onnx.Add"(%1315, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1317 = "onnx.Sqrt"(%1316) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1318 = "onnx.Div"(%1313, %1317) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1319 = "onnx.Mul"(%1318, %68) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1320 = "onnx.Add"(%1319, %67) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1321 = "onnx.MatMul"(%1320, %304) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1322 = "onnx.Add"(%1321, %72) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1323 = "onnx.MatMul"(%1320, %305) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1324 = "onnx.Add"(%1323, %71) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1325 = "onnx.MatMul"(%1320, %306) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1326 = "onnx.Add"(%1325, %73) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1327 = "onnx.Dim"(%1322) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1328 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1329 = "onnx.Concat"(%1327, %1328, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1330 = "onnx.Reshape"(%1322, %1329) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1331 = "onnx.Transpose"(%1330) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1332 = "onnx.Dim"(%1324) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1333 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1334 = "onnx.Concat"(%1332, %1333, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1335 = "onnx.Reshape"(%1324, %1334) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1336 = "onnx.Dim"(%1326) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1337 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1338 = "onnx.Concat"(%1336, %1337, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1339 = "onnx.Reshape"(%1326, %1338) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1340 = "onnx.Transpose"(%1339) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1341 = "onnx.Transpose"(%1335) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1342 = "onnx.MatMul"(%1331, %1341) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1343 = "onnx.Div"(%1342, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1344 = "onnx.Add"(%1343, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1345 = "onnx.Softmax"(%1344) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1346 = "onnx.MatMul"(%1345, %1340) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1347 = "onnx.Transpose"(%1346) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1348 = "onnx.Dim"(%1347) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1349 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1350 = "onnx.Concat"(%1348, %1349, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1351 = "onnx.Reshape"(%1347, %1350) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1352 = "onnx.MatMul"(%1351, %307) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1353 = "onnx.Add"(%1352, %1319) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1354 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1355 = "onnx.Add"(%1353, %1354) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1356 = "onnx.ReduceMean"(%1355) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1357 = "onnx.Sub"(%1355, %1356) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1358 = "onnx.Pow"(%1357, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1359 = "onnx.ReduceMean"(%1358) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1360 = "onnx.Add"(%1359, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1361 = "onnx.Sqrt"(%1360) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1362 = "onnx.Div"(%1357, %1361) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1363 = "onnx.Mul"(%1362, %70) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1364 = "onnx.Add"(%1363, %69) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1365 = "onnx.MatMul"(%1364, %308) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1366 = "onnx.Add"(%1365, %74) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1367 = "onnx.Div"(%1366, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1368 = "onnx.Erf"(%1367) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1369 = "onnx.Add"(%1368, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1370 = "onnx.Mul"(%1366, %1369) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1371 = "onnx.Mul"(%1370, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1372 = "onnx.MatMul"(%1371, %309) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1373 = "onnx.Add"(%1372, %1363) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1374 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1375 = "onnx.Add"(%1373, %1374) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1376 = "onnx.ReduceMean"(%1375) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1377 = "onnx.Sub"(%1375, %1376) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1378 = "onnx.Pow"(%1377, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1379 = "onnx.ReduceMean"(%1378) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1380 = "onnx.Add"(%1379, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1381 = "onnx.Sqrt"(%1380) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1382 = "onnx.Div"(%1377, %1381) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1383 = "onnx.Mul"(%1382, %76) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1384 = "onnx.Add"(%1383, %75) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1385 = "onnx.MatMul"(%1384, %310) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1386 = "onnx.Add"(%1385, %80) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1387 = "onnx.MatMul"(%1384, %311) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1388 = "onnx.Add"(%1387, %79) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1389 = "onnx.MatMul"(%1384, %312) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1390 = "onnx.Add"(%1389, %81) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1391 = "onnx.Dim"(%1386) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1392 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1393 = "onnx.Concat"(%1391, %1392, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1394 = "onnx.Reshape"(%1386, %1393) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1395 = "onnx.Transpose"(%1394) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1396 = "onnx.Dim"(%1388) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1397 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1398 = "onnx.Concat"(%1396, %1397, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1399 = "onnx.Reshape"(%1388, %1398) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1400 = "onnx.Dim"(%1390) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1401 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1402 = "onnx.Concat"(%1400, %1401, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1403 = "onnx.Reshape"(%1390, %1402) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1404 = "onnx.Transpose"(%1403) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1405 = "onnx.Transpose"(%1399) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1406 = "onnx.MatMul"(%1395, %1405) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1407 = "onnx.Div"(%1406, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1408 = "onnx.Add"(%1407, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1409 = "onnx.Softmax"(%1408) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1410 = "onnx.MatMul"(%1409, %1404) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1411 = "onnx.Transpose"(%1410) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1412 = "onnx.Dim"(%1411) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1413 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1414 = "onnx.Concat"(%1412, %1413, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1415 = "onnx.Reshape"(%1411, %1414) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1416 = "onnx.MatMul"(%1415, %313) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1417 = "onnx.Add"(%1416, %1383) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1418 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1419 = "onnx.Add"(%1417, %1418) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1420 = "onnx.ReduceMean"(%1419) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1421 = "onnx.Sub"(%1419, %1420) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1422 = "onnx.Pow"(%1421, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1423 = "onnx.ReduceMean"(%1422) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1424 = "onnx.Add"(%1423, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1425 = "onnx.Sqrt"(%1424) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1426 = "onnx.Div"(%1421, %1425) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1427 = "onnx.Mul"(%1426, %78) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1428 = "onnx.Add"(%1427, %77) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1429 = "onnx.MatMul"(%1428, %314) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1430 = "onnx.Add"(%1429, %82) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1431 = "onnx.Div"(%1430, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1432 = "onnx.Erf"(%1431) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1433 = "onnx.Add"(%1432, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1434 = "onnx.Mul"(%1430, %1433) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1435 = "onnx.Mul"(%1434, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1436 = "onnx.MatMul"(%1435, %315) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1437 = "onnx.Add"(%1436, %1427) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1438 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1439 = "onnx.Add"(%1437, %1438) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1440 = "onnx.ReduceMean"(%1439) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1441 = "onnx.Sub"(%1439, %1440) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1442 = "onnx.Pow"(%1441, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1443 = "onnx.ReduceMean"(%1442) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1444 = "onnx.Add"(%1443, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1445 = "onnx.Sqrt"(%1444) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1446 = "onnx.Div"(%1441, %1445) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1447 = "onnx.Mul"(%1446, %84) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1448 = "onnx.Add"(%1447, %83) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1449 = "onnx.MatMul"(%1448, %316) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1450 = "onnx.Add"(%1449, %88) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1451 = "onnx.MatMul"(%1448, %317) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1452 = "onnx.Add"(%1451, %87) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1453 = "onnx.MatMul"(%1448, %318) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1454 = "onnx.Add"(%1453, %89) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1455 = "onnx.Dim"(%1450) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1456 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1457 = "onnx.Concat"(%1455, %1456, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1458 = "onnx.Reshape"(%1450, %1457) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1459 = "onnx.Transpose"(%1458) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1460 = "onnx.Dim"(%1452) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1461 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1462 = "onnx.Concat"(%1460, %1461, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1463 = "onnx.Reshape"(%1452, %1462) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1464 = "onnx.Dim"(%1454) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1465 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1466 = "onnx.Concat"(%1464, %1465, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1467 = "onnx.Reshape"(%1454, %1466) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1468 = "onnx.Transpose"(%1467) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1469 = "onnx.Transpose"(%1463) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1470 = "onnx.MatMul"(%1459, %1469) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1471 = "onnx.Div"(%1470, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1472 = "onnx.Add"(%1471, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1473 = "onnx.Softmax"(%1472) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1474 = "onnx.MatMul"(%1473, %1468) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1475 = "onnx.Transpose"(%1474) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1476 = "onnx.Dim"(%1475) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1477 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1478 = "onnx.Concat"(%1476, %1477, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1479 = "onnx.Reshape"(%1475, %1478) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1480 = "onnx.MatMul"(%1479, %319) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1481 = "onnx.Add"(%1480, %1447) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1482 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1483 = "onnx.Add"(%1481, %1482) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1484 = "onnx.ReduceMean"(%1483) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1485 = "onnx.Sub"(%1483, %1484) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1486 = "onnx.Pow"(%1485, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1487 = "onnx.ReduceMean"(%1486) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1488 = "onnx.Add"(%1487, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1489 = "onnx.Sqrt"(%1488) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1490 = "onnx.Div"(%1485, %1489) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1491 = "onnx.Mul"(%1490, %86) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1492 = "onnx.Add"(%1491, %85) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1493 = "onnx.MatMul"(%1492, %320) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1494 = "onnx.Add"(%1493, %90) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1495 = "onnx.Div"(%1494, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1496 = "onnx.Erf"(%1495) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1497 = "onnx.Add"(%1496, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1498 = "onnx.Mul"(%1494, %1497) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1499 = "onnx.Mul"(%1498, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1500 = "onnx.MatMul"(%1499, %321) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1501 = "onnx.Add"(%1500, %1491) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1502 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1503 = "onnx.Add"(%1501, %1502) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1504 = "onnx.ReduceMean"(%1503) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1505 = "onnx.Sub"(%1503, %1504) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1506 = "onnx.Pow"(%1505, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1507 = "onnx.ReduceMean"(%1506) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1508 = "onnx.Add"(%1507, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1509 = "onnx.Sqrt"(%1508) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1510 = "onnx.Div"(%1505, %1509) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1511 = "onnx.Mul"(%1510, %92) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1512 = "onnx.Add"(%1511, %91) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1513 = "onnx.MatMul"(%1512, %322) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1514 = "onnx.Add"(%1513, %96) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1515 = "onnx.MatMul"(%1512, %323) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1516 = "onnx.Add"(%1515, %95) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1517 = "onnx.MatMul"(%1512, %324) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1518 = "onnx.Add"(%1517, %97) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1519 = "onnx.Dim"(%1514) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1520 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1521 = "onnx.Concat"(%1519, %1520, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1522 = "onnx.Reshape"(%1514, %1521) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1523 = "onnx.Transpose"(%1522) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1524 = "onnx.Dim"(%1516) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1525 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1526 = "onnx.Concat"(%1524, %1525, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1527 = "onnx.Reshape"(%1516, %1526) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1528 = "onnx.Dim"(%1518) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1529 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1530 = "onnx.Concat"(%1528, %1529, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1531 = "onnx.Reshape"(%1518, %1530) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1532 = "onnx.Transpose"(%1531) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1533 = "onnx.Transpose"(%1527) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1534 = "onnx.MatMul"(%1523, %1533) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1535 = "onnx.Div"(%1534, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1536 = "onnx.Add"(%1535, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1537 = "onnx.Softmax"(%1536) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1538 = "onnx.MatMul"(%1537, %1532) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1539 = "onnx.Transpose"(%1538) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1540 = "onnx.Dim"(%1539) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1541 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1542 = "onnx.Concat"(%1540, %1541, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1543 = "onnx.Reshape"(%1539, %1542) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1544 = "onnx.MatMul"(%1543, %325) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1545 = "onnx.Add"(%1544, %1511) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1546 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1547 = "onnx.Add"(%1545, %1546) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1548 = "onnx.ReduceMean"(%1547) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1549 = "onnx.Sub"(%1547, %1548) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1550 = "onnx.Pow"(%1549, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1551 = "onnx.ReduceMean"(%1550) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1552 = "onnx.Add"(%1551, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1553 = "onnx.Sqrt"(%1552) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1554 = "onnx.Div"(%1549, %1553) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1555 = "onnx.Mul"(%1554, %94) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1556 = "onnx.Add"(%1555, %93) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1557 = "onnx.MatMul"(%1556, %326) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1558 = "onnx.Add"(%1557, %98) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1559 = "onnx.Div"(%1558, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1560 = "onnx.Erf"(%1559) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1561 = "onnx.Add"(%1560, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1562 = "onnx.Mul"(%1558, %1561) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1563 = "onnx.Mul"(%1562, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1564 = "onnx.MatMul"(%1563, %327) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1565 = "onnx.Add"(%1564, %1555) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1566 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1567 = "onnx.Add"(%1565, %1566) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1568 = "onnx.ReduceMean"(%1567) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1569 = "onnx.Sub"(%1567, %1568) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1570 = "onnx.Pow"(%1569, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1571 = "onnx.ReduceMean"(%1570) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1572 = "onnx.Add"(%1571, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1573 = "onnx.Sqrt"(%1572) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1574 = "onnx.Div"(%1569, %1573) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1575 = "onnx.Mul"(%1574, %100) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1576 = "onnx.Add"(%1575, %99) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1577 = "onnx.MatMul"(%1576, %328) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1578 = "onnx.Add"(%1577, %112) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1579 = "onnx.MatMul"(%1576, %329) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1580 = "onnx.Add"(%1579, %111) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1581 = "onnx.MatMul"(%1576, %330) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1582 = "onnx.Add"(%1581, %113) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1583 = "onnx.Dim"(%1578) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1584 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1585 = "onnx.Concat"(%1583, %1584, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1586 = "onnx.Reshape"(%1578, %1585) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1587 = "onnx.Transpose"(%1586) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1588 = "onnx.Dim"(%1580) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1589 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1590 = "onnx.Concat"(%1588, %1589, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1591 = "onnx.Reshape"(%1580, %1590) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1592 = "onnx.Dim"(%1582) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1593 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1594 = "onnx.Concat"(%1592, %1593, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1595 = "onnx.Reshape"(%1582, %1594) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1596 = "onnx.Transpose"(%1595) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1597 = "onnx.Transpose"(%1591) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1598 = "onnx.MatMul"(%1587, %1597) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1599 = "onnx.Div"(%1598, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1600 = "onnx.Add"(%1599, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1601 = "onnx.Softmax"(%1600) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1602 = "onnx.MatMul"(%1601, %1596) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1603 = "onnx.Transpose"(%1602) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1604 = "onnx.Dim"(%1603) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1605 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1606 = "onnx.Concat"(%1604, %1605, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1607 = "onnx.Reshape"(%1603, %1606) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1608 = "onnx.MatMul"(%1607, %331) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1609 = "onnx.Add"(%1608, %1575) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1610 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1611 = "onnx.Add"(%1609, %1610) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1612 = "onnx.ReduceMean"(%1611) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1613 = "onnx.Sub"(%1611, %1612) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1614 = "onnx.Pow"(%1613, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1615 = "onnx.ReduceMean"(%1614) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1616 = "onnx.Add"(%1615, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1617 = "onnx.Sqrt"(%1616) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1618 = "onnx.Div"(%1613, %1617) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1619 = "onnx.Mul"(%1618, %110) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1620 = "onnx.Add"(%1619, %109) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1621 = "onnx.MatMul"(%1620, %332) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1622 = "onnx.Add"(%1621, %114) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1623 = "onnx.Div"(%1622, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1624 = "onnx.Erf"(%1623) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1625 = "onnx.Add"(%1624, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1626 = "onnx.Mul"(%1622, %1625) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1627 = "onnx.Mul"(%1626, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1628 = "onnx.MatMul"(%1627, %333) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1629 = "onnx.Add"(%1628, %1619) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1630 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1631 = "onnx.Add"(%1629, %1630) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1632 = "onnx.ReduceMean"(%1631) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1633 = "onnx.Sub"(%1631, %1632) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1634 = "onnx.Pow"(%1633, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1635 = "onnx.ReduceMean"(%1634) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1636 = "onnx.Add"(%1635, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1637 = "onnx.Sqrt"(%1636) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1638 = "onnx.Div"(%1633, %1637) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1639 = "onnx.Mul"(%1638, %116) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1640 = "onnx.Add"(%1639, %115) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1641 = "onnx.MatMul"(%1640, %334) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1642 = "onnx.Add"(%1641, %120) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1643 = "onnx.MatMul"(%1640, %335) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1644 = "onnx.Add"(%1643, %119) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1645 = "onnx.MatMul"(%1640, %336) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1646 = "onnx.Add"(%1645, %121) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1647 = "onnx.Dim"(%1642) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1648 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1649 = "onnx.Concat"(%1647, %1648, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1650 = "onnx.Reshape"(%1642, %1649) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1651 = "onnx.Transpose"(%1650) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1652 = "onnx.Dim"(%1644) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1653 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1654 = "onnx.Concat"(%1652, %1653, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1655 = "onnx.Reshape"(%1644, %1654) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1656 = "onnx.Dim"(%1646) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1657 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1658 = "onnx.Concat"(%1656, %1657, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1659 = "onnx.Reshape"(%1646, %1658) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1660 = "onnx.Transpose"(%1659) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1661 = "onnx.Transpose"(%1655) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1662 = "onnx.MatMul"(%1651, %1661) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1663 = "onnx.Div"(%1662, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1664 = "onnx.Add"(%1663, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1665 = "onnx.Softmax"(%1664) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1666 = "onnx.MatMul"(%1665, %1660) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1667 = "onnx.Transpose"(%1666) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1668 = "onnx.Dim"(%1667) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1669 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1670 = "onnx.Concat"(%1668, %1669, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1671 = "onnx.Reshape"(%1667, %1670) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1672 = "onnx.MatMul"(%1671, %337) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1673 = "onnx.Add"(%1672, %1639) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1674 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1675 = "onnx.Add"(%1673, %1674) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1676 = "onnx.ReduceMean"(%1675) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1677 = "onnx.Sub"(%1675, %1676) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1678 = "onnx.Pow"(%1677, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1679 = "onnx.ReduceMean"(%1678) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1680 = "onnx.Add"(%1679, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1681 = "onnx.Sqrt"(%1680) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1682 = "onnx.Div"(%1677, %1681) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1683 = "onnx.Mul"(%1682, %118) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1684 = "onnx.Add"(%1683, %117) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1685 = "onnx.MatMul"(%1684, %338) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1686 = "onnx.Add"(%1685, %122) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1687 = "onnx.Div"(%1686, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1688 = "onnx.Erf"(%1687) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1689 = "onnx.Add"(%1688, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1690 = "onnx.Mul"(%1686, %1689) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1691 = "onnx.Mul"(%1690, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1692 = "onnx.MatMul"(%1691, %339) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1693 = "onnx.Add"(%1692, %1683) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1694 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1695 = "onnx.Add"(%1693, %1694) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1696 = "onnx.ReduceMean"(%1695) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1697 = "onnx.Sub"(%1695, %1696) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1698 = "onnx.Pow"(%1697, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1699 = "onnx.ReduceMean"(%1698) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1700 = "onnx.Add"(%1699, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1701 = "onnx.Sqrt"(%1700) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1702 = "onnx.Div"(%1697, %1701) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1703 = "onnx.Mul"(%1702, %124) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1704 = "onnx.Add"(%1703, %123) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1705 = "onnx.MatMul"(%1704, %340) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1706 = "onnx.Add"(%1705, %128) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1707 = "onnx.MatMul"(%1704, %341) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1708 = "onnx.Add"(%1707, %127) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1709 = "onnx.MatMul"(%1704, %342) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1710 = "onnx.Add"(%1709, %129) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1711 = "onnx.Dim"(%1706) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1712 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1713 = "onnx.Concat"(%1711, %1712, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1714 = "onnx.Reshape"(%1706, %1713) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1715 = "onnx.Transpose"(%1714) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1716 = "onnx.Dim"(%1708) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1717 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1718 = "onnx.Concat"(%1716, %1717, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1719 = "onnx.Reshape"(%1708, %1718) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1720 = "onnx.Dim"(%1710) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1721 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1722 = "onnx.Concat"(%1720, %1721, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1723 = "onnx.Reshape"(%1710, %1722) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1724 = "onnx.Transpose"(%1723) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1725 = "onnx.Transpose"(%1719) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1726 = "onnx.MatMul"(%1715, %1725) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1727 = "onnx.Div"(%1726, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1728 = "onnx.Add"(%1727, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1729 = "onnx.Softmax"(%1728) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1730 = "onnx.MatMul"(%1729, %1724) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1731 = "onnx.Transpose"(%1730) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1732 = "onnx.Dim"(%1731) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1733 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1734 = "onnx.Concat"(%1732, %1733, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1735 = "onnx.Reshape"(%1731, %1734) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1736 = "onnx.MatMul"(%1735, %343) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1737 = "onnx.Add"(%1736, %1703) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1738 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1739 = "onnx.Add"(%1737, %1738) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1740 = "onnx.ReduceMean"(%1739) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1741 = "onnx.Sub"(%1739, %1740) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1742 = "onnx.Pow"(%1741, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1743 = "onnx.ReduceMean"(%1742) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1744 = "onnx.Add"(%1743, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1745 = "onnx.Sqrt"(%1744) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1746 = "onnx.Div"(%1741, %1745) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1747 = "onnx.Mul"(%1746, %126) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1748 = "onnx.Add"(%1747, %125) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1749 = "onnx.MatMul"(%1748, %344) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1750 = "onnx.Add"(%1749, %130) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1751 = "onnx.Div"(%1750, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1752 = "onnx.Erf"(%1751) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1753 = "onnx.Add"(%1752, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1754 = "onnx.Mul"(%1750, %1753) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1755 = "onnx.Mul"(%1754, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1756 = "onnx.MatMul"(%1755, %345) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1757 = "onnx.Add"(%1756, %1747) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1758 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1759 = "onnx.Add"(%1757, %1758) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1760 = "onnx.ReduceMean"(%1759) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1761 = "onnx.Sub"(%1759, %1760) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1762 = "onnx.Pow"(%1761, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1763 = "onnx.ReduceMean"(%1762) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1764 = "onnx.Add"(%1763, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1765 = "onnx.Sqrt"(%1764) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1766 = "onnx.Div"(%1761, %1765) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1767 = "onnx.Mul"(%1766, %132) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1768 = "onnx.Add"(%1767, %131) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1769 = "onnx.MatMul"(%1768, %346) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1770 = "onnx.Add"(%1769, %136) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1771 = "onnx.MatMul"(%1768, %347) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1772 = "onnx.Add"(%1771, %135) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1773 = "onnx.MatMul"(%1768, %348) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1774 = "onnx.Add"(%1773, %137) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1775 = "onnx.Dim"(%1770) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1776 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1777 = "onnx.Concat"(%1775, %1776, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1778 = "onnx.Reshape"(%1770, %1777) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1779 = "onnx.Transpose"(%1778) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1780 = "onnx.Dim"(%1772) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1781 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1782 = "onnx.Concat"(%1780, %1781, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1783 = "onnx.Reshape"(%1772, %1782) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1784 = "onnx.Dim"(%1774) {axis = 0 : si64} : (tensor<?x384x1024xf32>) -> tensor<1xi64>
    %1785 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1786 = "onnx.Concat"(%1784, %1785, %205, %206) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %1787 = "onnx.Reshape"(%1774, %1786) {allowzero = 0 : si64} : (tensor<?x384x1024xf32>, tensor<4xi64>) -> tensor<?x384x16x64xf32>
    %1788 = "onnx.Transpose"(%1787) {perm = [0, 2, 1, 3]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x384x64xf32>
    %1789 = "onnx.Transpose"(%1783) {perm = [0, 2, 3, 1]} : (tensor<?x384x16x64xf32>) -> tensor<?x16x64x384xf32>
    %1790 = "onnx.MatMul"(%1779, %1789) : (tensor<?x16x384x64xf32>, tensor<?x16x64x384xf32>) -> tensor<?x16x384x384xf32>
    %1791 = "onnx.Div"(%1790, %207) : (tensor<?x16x384x384xf32>, tensor<f32>) -> tensor<?x16x384x384xf32>
    %1792 = "onnx.Add"(%1791, %366) : (tensor<?x16x384x384xf32>, tensor<?x1x1x384xf32>) -> tensor<?x16x384x384xf32>
    %1793 = "onnx.Softmax"(%1792) {axis = 3 : si64, onnx_opset = 11 : si64} : (tensor<?x16x384x384xf32>) -> tensor<?x16x384x384xf32>
    %1794 = "onnx.MatMul"(%1793, %1788) : (tensor<?x16x384x384xf32>, tensor<?x16x384x64xf32>) -> tensor<?x16x384x64xf32>
    %1795 = "onnx.Transpose"(%1794) {perm = [0, 2, 1, 3]} : (tensor<?x16x384x64xf32>) -> tensor<?x384x16x64xf32>
    %1796 = "onnx.Dim"(%1795) {axis = 0 : si64} : (tensor<?x384x16x64xf32>) -> tensor<1xi64>
    %1797 = "onnx.Constant"() {value = dense<384> : tensor<1xi64>} : () -> tensor<1xi64>
    %1798 = "onnx.Concat"(%1796, %1797, %208) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %1799 = "onnx.Reshape"(%1795, %1798) {allowzero = 0 : si64} : (tensor<?x384x16x64xf32>, tensor<3xi64>) -> tensor<?x384x1024xf32>
    %1800 = "onnx.MatMul"(%1799, %349) : (tensor<?x384x1024xf32>, tensor<1024x1024xf32>) -> tensor<?x384x1024xf32>
    %1801 = "onnx.Add"(%1800, %1767) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1802 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1803 = "onnx.Add"(%1801, %1802) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1804 = "onnx.ReduceMean"(%1803) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1805 = "onnx.Sub"(%1803, %1804) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1806 = "onnx.Pow"(%1805, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1807 = "onnx.ReduceMean"(%1806) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1808 = "onnx.Add"(%1807, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1809 = "onnx.Sqrt"(%1808) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1810 = "onnx.Div"(%1805, %1809) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1811 = "onnx.Mul"(%1810, %134) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1812 = "onnx.Add"(%1811, %133) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1813 = "onnx.MatMul"(%1812, %350) : (tensor<?x384x1024xf32>, tensor<1024x4096xf32>) -> tensor<?x384x4096xf32>
    %1814 = "onnx.Add"(%1813, %138) : (tensor<?x384x4096xf32>, tensor<4096xf32>) -> tensor<?x384x4096xf32>
    %1815 = "onnx.Div"(%1814, %212) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1816 = "onnx.Erf"(%1815) : (tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1817 = "onnx.Add"(%1816, %198) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1818 = "onnx.Mul"(%1814, %1817) : (tensor<?x384x4096xf32>, tensor<?x384x4096xf32>) -> tensor<?x384x4096xf32>
    %1819 = "onnx.Mul"(%1818, %211) : (tensor<?x384x4096xf32>, tensor<f32>) -> tensor<?x384x4096xf32>
    %1820 = "onnx.MatMul"(%1819, %351) : (tensor<?x384x4096xf32>, tensor<4096x1024xf32>) -> tensor<?x384x1024xf32>
    %1821 = "onnx.Add"(%1820, %1811) : (tensor<?x384x1024xf32>, tensor<?x384x1024xf32>) -> tensor<?x384x1024xf32>
    %1822 = "onnx.Constant"() {value = dense_resource<__elided__> : tensor<1024xf32>} : () -> tensor<1024xf32>
    %1823 = "onnx.Add"(%1821, %1822) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1824 = "onnx.ReduceMean"(%1823) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1825 = "onnx.Sub"(%1823, %1824) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1826 = "onnx.Pow"(%1825, %200) : (tensor<?x384x1024xf32>, tensor<f32>) -> tensor<?x384x1024xf32>
    %1827 = "onnx.ReduceMean"(%1826) {axes = [-1], keepdims = 1 : si64} : (tensor<?x384x1024xf32>) -> tensor<?x384x1xf32>
    %1828 = "onnx.Add"(%1827, %201) : (tensor<?x384x1xf32>, tensor<f32>) -> tensor<?x384x1xf32>
    %1829 = "onnx.Sqrt"(%1828) : (tensor<?x384x1xf32>) -> tensor<?x384x1xf32>
    %1830 = "onnx.Div"(%1825, %1829) : (tensor<?x384x1024xf32>, tensor<?x384x1xf32>) -> tensor<?x384x1024xf32>
    %1831 = "onnx.Mul"(%1830, %140) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1832 = "onnx.Add"(%1831, %139) : (tensor<?x384x1024xf32>, tensor<1024xf32>) -> tensor<?x384x1024xf32>
    %1833 = "onnx.MatMul"(%1832, %352) : (tensor<?x384x1024xf32>, tensor<1024x2xf32>) -> tensor<?x384x2xf32>
    %1834 = "onnx.Add"(%1833, %197) : (tensor<?x384x2xf32>, tensor<2xf32>) -> tensor<?x384x2xf32>
    %1835 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %1836:2 = "onnx.Split"(%1834, %1835) {axis = 2 : si64} : (tensor<?x384x2xf32>, tensor<2xi64>) -> (tensor<?x384x1xf32>, tensor<?x384x1xf32>)
    %1837 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1838 = "onnx.Squeeze"(%1836#0, %1837) : (tensor<?x384x1xf32>, tensor<1xi64>) -> tensor<?x384xf32>
    %1839 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1840 = "onnx.Squeeze"(%1836#1, %1839) : (tensor<?x384x1xf32>, tensor<1xi64>) -> tensor<?x384xf32>
    return %1838, %1840 : tensor<?x384xf32>, tensor<?x384xf32>
  }
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}
