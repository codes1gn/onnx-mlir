#!/bin/bash


LOGNAME="$1-u0"
rm logs/$LOGNAME.log
MODELFILE=$2

# for BSS in 1
for BSS in 1 2 4 8 16 24 32 40 48 56 64
do
  for D1 in $(seq 0 4)
  do
    OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
  done
  for D1 in $(seq 0 4)
  do
    OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
  done
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
    done
  done
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2,$D1,$D2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
    done
  done
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      for D3 in $(seq $D2 4)
      do
        OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2,$D3 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
      done
    done
  done
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      for D3 in $(seq $D2 4)
      do
        OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2,$D3,$D1,$D2,$D3 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
      done
    done
  done
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      for D3 in $(seq $D2 4)
      do
        for D4 in $(seq $D3 4)
        do
          OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2,$D3,$D4 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
        done
      done
    done
  done
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      for D3 in $(seq $D2 4)
      do
        for D4 in $(seq $D3 4)
        do
          OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2,$D3,$D4,$D1,$D2,$D3,$D4 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1
        done
      done
    done
  done
done

