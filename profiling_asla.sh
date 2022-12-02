#!/bin/bash

rm .log
rm logs/inception.log

LOGNAME=inception
MODELFILE=Inception-v3-op13-fp32-torchvision

for BSS in 64
do
  for D1 in $(seq 0 4)
  do
    for D2 in $(seq $D1 4)
    do
      for D3 in $(seq $D2 4)
      do
        for D4 in $(seq $D3 4)
        do
          OUT=logs/$LOGNAME.log BS=$BSS REP=$BSS DEVSET=$D1,$D2,$D3,$D4 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/$MODELFILE.crt --raptor-auto-parallel 2>&1 >> .log
        done
      done
    done
  done
done

# homogeneous one
# OUT=logs/inception.log BS=64 REP=64 DEVSET=1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,2,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,2,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,2,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,3,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,2,2,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,2,2,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,2,2,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,2,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,3,2,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,2,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,3,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,3,3,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,3,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,4,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,2,2,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,2,2,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,2,2,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,2,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,3,2,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,2,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,3,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,3,3,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,3,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,4,2 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,3,3 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,3,3,3 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,3,3 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,4,3 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,4,4 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
#
# OUT=logs/inception.log BS=64 REP=64 DEVSET=1,1,1,1,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,2,1,1,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,1,1,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,1,1,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,2,2,2,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,2,2,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,2,2,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,3,3,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,3,3,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,4,4,1,1,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=2,2,2,2,2,2,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=3,3,2,2,2,2,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
# OUT=logs/inception.log BS=64 REP=64 DEVSET=4,4,2,2,2,2,1,1 nohup /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel 2>&1 >> .log
