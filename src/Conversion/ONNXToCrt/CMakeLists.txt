
add_onnx_mlir_library(OMONNXToCrt
  ConvertONNXToCrt.cpp
  ConvertUnaryOp.cpp

  LINK_LIBS PUBLIC
  OMONNXOps
  CrtDialect
  MLIRTransforms
  )
