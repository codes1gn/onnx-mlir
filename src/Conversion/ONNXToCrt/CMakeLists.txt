
add_onnx_mlir_library(OMONNXToCrt
  ConvertONNXToCrt.cpp
  OpConversionPatterns.cpp

  LINK_LIBS PUBLIC
  OMONNXOps
  CrtDialect
  MLIRTransforms
  )
