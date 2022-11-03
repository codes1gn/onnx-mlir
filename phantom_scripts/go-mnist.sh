#!/bin/sh

script_path=`dirname $0`
script_realpath=`realpath $script_path`
top_dir_path=$script_path"/.."
top_dir_realpath=`realpath $top_dir_path`

MODNAME="mnist-onnx"

cd $top_dir_realpath

nohup $top_dir_realpath/onnx-build/Debug/bin/onnx-mlir --EmitCRT \
  $top_dir_realpath/model-workspace/models-onnx-ir/$MODNAME.mlir --mlir-pass-statistics \
  --debug-only=dialect-conversion 2>&1 > $top_dir_realpath/.log && \
  cat $top_dir_realpath/model-workspace/models-onnx-ir/$MODNAME.crt >> $top_dir_realpath/.log


vi .log
