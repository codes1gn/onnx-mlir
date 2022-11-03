#!/bin/bash

script_path=`dirname $0`
script_realpath=`realpath $script_path`
top_dir_path=$script_path"/.."
top_dir_realpath=`realpath $top_dir_path`

# ensure llvm-project version correct
cd llvm-project
git checkout 438e59182b0c2e44c263f5bacc1add0e514354f8
cd -

# build and install llvm
mkdir -p llvm-build
cd llvm-build
cmake -G Ninja ../llvm-project/llvm \
   -DLLVM_ENABLE_PROJECTS=mlir \
   -DLLVM_TARGETS_TO_BUILD="host" \
   -DCMAKE_BUILD_TYPE=Release \
   -DLLVM_ENABLE_ASSERTIONS=ON \
   -DLLVM_ENABLE_RTTI=ON

cmake --build . -- ${MAKEFLAGS}
cmake --build . --target check-mlir
