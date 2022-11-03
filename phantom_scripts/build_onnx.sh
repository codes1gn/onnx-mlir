#!/bin/bash

script_path=`dirname $0`
script_realpath=`realpath $script_path`
top_dir_path=$script_path"/.."
top_dir_realpath=`realpath $top_dir_path`

MLIR_DIR=$top_dir_realpath/llvm-build/lib/cmake/mlir
mkdir -p onnx-build
cd onnx-build
if [[ -z "$pythonLocation" ]]; then
  cmake -G Ninja \
        -DCMAKE_CXX_COMPILER=/usr/bin/c++ \
        -DMLIR_DIR=${MLIR_DIR} \
        ..
else
  cmake -G Ninja \
        -DCMAKE_CXX_COMPILER=/usr/bin/c++ \
        -DPython3_ROOT_DIR=$pythonLocation \
        -DMLIR_DIR=${MLIR_DIR} \
        ..
fi
cmake --build .

# Run lit tests:
export LIT_OPTS=-v
cmake --build . --target check-onnx-lit
