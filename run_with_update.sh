./phantom_scripts/update_cost_model.sh && ./phantom_scripts/build_onnx.sh && ./profiling_verify.sh | grep failure > log
# only run asla, with multiple combine of devices, gen many compositions and figure out my needed result
