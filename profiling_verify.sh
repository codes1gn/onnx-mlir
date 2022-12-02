OUT=inception.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
OUT=inception.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
OUT=inception.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
OUT=inception.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=16 REP=16 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=24 REP=24 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=32 REP=32 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=40 REP=40 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=48 REP=48 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=56 REP=56 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
# OUT=inception.log BS=64 REP=64 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/Inception-v3-op13-fp32-torchvision.crt --raptor-auto-parallel
#
#
OUT=rn50.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/resnet50-v1.5-op13-fp32.crt --raptor-auto-parallel
OUT=rn50.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/resnet50-v1.5-op13-fp32.crt --raptor-auto-parallel
OUT=rn50.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/resnet50-v1.5-op13-fp32.crt --raptor-auto-parallel
OUT=rn50.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/resnet50-v1.5-op13-fp32.crt --raptor-auto-parallel
#
#
OUT=bertlarge.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/bert_large_squad11_384_op11_fp32.crt --raptor-auto-parallel
OUT=bertlarge.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/bert_large_squad11_384_op11_fp32.crt --raptor-auto-parallel
OUT=bertlarge.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/bert_large_squad11_384_op11_fp32.crt --raptor-auto-parallel
OUT=bertlarge.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/bert_large_squad11_384_op11_fp32.crt --raptor-auto-parallel

OUT=densenet.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/densenet121_torchvision-op13-fp32-N.crt --raptor-auto-parallel
OUT=densenet.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/densenet121_torchvision-op13-fp32-N.crt --raptor-auto-parallel
OUT=densenet.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/densenet121_torchvision-op13-fp32-N.crt --raptor-auto-parallel
OUT=densenet.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/densenet121_torchvision-op13-fp32-N.crt --raptor-auto-parallel

OUT=mobilenet.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/mobilenet-v2-op13-fp32.crt --raptor-auto-parallel
OUT=mobilenet.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/mobilenet-v2-op13-fp32.crt --raptor-auto-parallel
OUT=mobilenet.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/mobilenet-v2-op13-fp32.crt --raptor-auto-parallel
OUT=mobilenet.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/mobilenet-v2-op13-fp32.crt --raptor-auto-parallel

# error
OUT=sru.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/sru-op13_fp32.crt --raptor-auto-parallel
OUT=sru.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/sru-op13_fp32.crt --raptor-auto-parallel
OUT=sru.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/sru-op13_fp32.crt --raptor-auto-parallel
OUT=sru.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/sru-op13_fp32.crt --raptor-auto-parallel
# 
OUT=vgg16.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/vgg16-op13-fp32.crt --raptor-auto-parallel
OUT=vgg16.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/vgg16-op13-fp32.crt --raptor-auto-parallel
OUT=vgg16.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/vgg16-op13-fp32.crt --raptor-auto-parallel
OUT=vgg16.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/vgg16-op13-fp32.crt --raptor-auto-parallel
#
OUT=transformer.log BS=1 REP=1 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/transformer_huggingface_encoder-op13-fp32-N.crt --raptor-auto-parallel
OUT=transformer.log BS=2 REP=2 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/transformer_huggingface_encoder-op13-fp32-N.crt --raptor-auto-parallel
OUT=transformer.log BS=4 REP=4 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/transformer_huggingface_encoder-op13-fp32-N.crt --raptor-auto-parallel
OUT=transformer.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/transformer_huggingface_encoder-op13-fp32-N.crt --raptor-auto-parallel

# only accept bs = N*8 
OUT=timesformer.log BS=8 REP=8 DEVSET=0,1,2,3,4 /root/fun/onnx-mlir/onnx-build/Debug/bin/onnx-mlir-opt /root/fun/onnx-mlir/model-workspace/models-onnx-ir/timesformer-spaceonly-pt-op13-fp32.crt --raptor-auto-parallel

