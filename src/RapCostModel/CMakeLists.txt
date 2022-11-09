add_onnx_mlir_library(OMRapCostModel
  CostModel.cpp

  LINK_LIBS PUBLIC
  OMSupport
  MLIRTransformUtils
  CrtDialect
  )
