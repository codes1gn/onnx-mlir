add_onnx_mlir_dialect(Crt crt)

# OMONNXRewriteIncGen
add_onnx_mlir_library(CrtDialect
  CrtDialect.cpp
  CrtOps.cpp

  DEPENDS
  OMCrtIncGen

  LINK_LIBS PRIVATE
  Diagnostic
    
  LINK_LIBS PUBLIC
  MLIRIR
  MLIRSupport
  MLIRSideEffectInterfaces
  MLIRInferTypeOpInterface
  MLIRControlFlowInterfaces
)
