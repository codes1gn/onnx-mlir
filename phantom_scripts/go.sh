#!/bin/bash

here="/root/fun/onnx-mlir/phantom_scripts/go.sh"

# script_path=`dirname $0`
script_path=`dirname $here`
script_realpath=`realpath $script_path`
top_dir_path=$script_path"/.."
top_dir_realpath=`realpath $top_dir_path`

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <model-name> <strategy-name>" >&2
  exit 1
fi

if [ $2 -eq 1 ]; then
  MODNAME="mnist-onnx"
fi

if [ $2 -eq 2 ]; then
  MODNAME="resnet18-v1-op13-fp32-onnxzoo"
fi

if [ $2 -eq 3 ]; then
  MODNAME="bert_large_squad11_384_op11_fp32"
fi

if [ $2 -eq 4 ]; then
  MODNAME="densenet121_torchvision-op13-fp32-N"
fi

if [ $2 -eq 5 ]; then
  MODNAME="vgg16-op13-fp32"
fi

if [ $2 -eq 6 ]; then
  MODNAME="Inception-v3-op13-fp32-torchvision"
fi

if [ $2 -eq 7 ]; then
  MODNAME="mobilenet-v2-op13-fp32"
fi

if [ $2 -eq 8 ]; then
  MODNAME="resnet50-v1.5-op13-fp32"
fi

if [ $2 -eq 9 ]; then
  MODNAME="sru-op13_fp32"
fi

if [ $2 -eq 10 ]; then
  MODNAME="transformer_huggingface_encoder-op13-fp32-N"
fi

if [ $2 -eq 11 ]; then
  MODNAME="gpt2_small-huggingface-op13-fp32-seqN_modify"
fi

if [ $2 -eq 12 ]; then
  MODNAME="timesformer-spaceonly-pt-op13-fp32"
fi

cd $top_dir_realpath

bash $top_dir_realpath/phantom_scripts/build_onnx.sh
/root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir --EmitCRT /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.mlir



if [ $? -eq 0 ]
then

RAP=$1 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODNAME.crt --raptor-auto-parallel --debug-only=greedy-rewriter
fi
