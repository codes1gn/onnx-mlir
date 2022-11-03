#!/bin/bash

script_path=`dirname $0`
script_realpath=`realpath $script_path`
top_dir_path=$script_path"/.."
top_dir_realpath=`realpath $top_dir_path`

# if [ "$#" -ne 1 ] || ! [ -d "$1" ]; then
#   echo "Usage: $0 <DIRECTORY OF ONNX FILE>" >&2
#   exit 1
# fi

mkdir -p $top_dir_realpath/model-workspace

ONNX_SRC_DIR=$top_dir_realpath/model-workspace/models-onnx
ONNX_TGT_DIR=`realpath $ONNX_SRC_DIR`"-simplified"
ONNX_IR_DIR=`realpath $ONNX_SRC_DIR`"-ir"
echo "Try to create target directory = "$ONNX_TGT_DIR

mkdir -p $ONNX_TGT_DIR
mkdir -p $ONNX_IR_DIR

function FileSuffix() {
    local filename="$1"
    if [ -n "$filename" ]; then
        echo "${filename##*.}"
    fi
}

function FilePrefix() {
    local filename="$1"
    if [ -n "$filename" ]; then
        echo "${filename%.*}"
    fi
}

function IsSuffix() {
    local filename="$1"
    local suffix="$2"
    if [ "$(FileSuffix ${filename})" = "$suffix" ]; then
        return 0
    else
        return 1
    fi
}

for fname in `ls $ONNX_SRC_DIR`
do
	IsSuffix ${fname} "onnx"
	ret=$?
	if [ $ret -eq 0 ]; then
		name_no_ext=$(FilePrefix ${fname})
		echo $name_no_ext
		PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python onnxsim $ONNX_SRC_DIR/$name_no_ext.onnx $ONNX_TGT_DIR/$name_no_ext-simp.onnx
	fi
done

