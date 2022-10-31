#ifndef CRT_DIALECT
#define CRT_DIALECT

include "mlir/IR/OpBase.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/Interfaces/InferTypeOpInterface.td"

def Crt_Dialect : Dialect {
  let name = "crt";
  let cppNamespace = "::mlir::crt";
  let description = [{
The `crt` dialect is namely the abstract-tensor-intermediate-representation that
  serves as the entry language into the MLIR eco-system.
  }];
}

class Crt_Op<string mnemonic, list<Trait> traits = []>
    : Op<Crt_Dialect, mnemonic, traits> {
}

def Crt_ConstantOp : Crt_Op<"constant"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (ins);
  let results = (outs
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$result);

  let assemblyFormat = "attr-dict `:` functional-type(operands, results)";
}

class UnaryArithmeticOp<string mnemonic, list<Trait> traits = []> :
  Crt_Op<mnemonic,
        !listconcat(traits, [AllTypesMatch<["operand", "result"]>])>,
  AllTypesMatch<["operand", "result"]> {
  let arguments = (
      ins
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$operand);
  let results = (outs
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$result);
  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_IdentityOp : UnaryArithmeticOp<"identity", [NoSideEffect, 
                                                    ResultsAreFloatLike,
                                                    SameOperandsAndResultType,
                                                    SameOperandsAndResultShape,
                                                    SameOperandsAndResultElementType]> {
  let summary = "identity function";
  let description = [{
    See crt.identity for more details.
  }];
}

def Crt_AbsOp : UnaryArithmeticOp<"abs", [NoSideEffect, 
                                                    ResultsAreFloatLike,
                                                    SameOperandsAndResultType,
                                                    SameOperandsAndResultShape,
                                                    SameOperandsAndResultElementType]> {
  let summary = "abs function";
  let description = [{
    See crt.abs for more details.
  }];
}

def Crt_ReluOp : UnaryArithmeticOp<"relu", [NoSideEffect, 
                                                    ResultsAreFloatLike,
                                                    SameOperandsAndResultType,
                                                    SameOperandsAndResultShape,
                                                    SameOperandsAndResultElementType]> {
  let summary = "identity function";
  let description = [{
    See crt.identity for more details.
  }];
}

def Crt_ExpOp : UnaryArithmeticOp<"exp", [NoSideEffect,
                                          ResultsAreFloatLike,
                                          SameOperandsAndResultType,
                                          SameOperandsAndResultShape,
                                          SameOperandsAndResultElementType]> {
  let summary = "base-e exponential";
  let description = [{
    See crt.exp for more details.
  }];
}

def Crt_TanhOp : UnaryArithmeticOp<"tanh", [NoSideEffect,
                                             SameOperandsAndResultType,
                                             SameOperandsAndResultShape,
                                             SameOperandsAndResultElementType]> {
  let summary = "hyperbolic tangent";
  let description = [{
    See crt.tanh for more details.
  }];
}

def Crt_MaxpoolOp : Crt_Op<"maxpool"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$operand);
  let results = (outs
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_FlattenOp : Crt_Op<"flatten"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$operand);
  let results = (outs
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_ReducemeanOp : Crt_Op<"reducemean"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$operand);
  let results = (outs
      TensorRankOf<[F32], [0, 1, 2, 3, 4]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_NegateOp : UnaryArithmeticOp<"negate", [NoSideEffect,
                                             SameOperandsAndResultType,
                                             SameOperandsAndResultShape,
                                             SameOperandsAndResultElementType]> {
  let summary = "negate function";
  let description = [{
    See crt.negate for more details.
  }];
}

def Crt_MatmulOp : Crt_Op<"matmul"> {
  let summary = "Performs a matrix multiplication";
  let description = [{
    Performs a matrix multiplication.

    The tensors have dimensions:
    - lhs: [M, K]
    - rhs: [K, N]
    - result: [M, N]

    If the `K` dimension mismatches between the operands, this op aborts the
    program.
  }];
  let arguments = (ins TensorRankOf<[F32], [2, 3]>:$lhs, TensorRankOf<[F32], [2, 3]>:$rhs);
  let results = (outs TensorRankOf<[F32], [2, 3]>:$result);

  let assemblyFormat = "$lhs `,` $rhs attr-dict `:` functional-type(operands, results)";
}

def Crt_Conv2DCFirstOp : Crt_Op<"conv_2d_cfirst"> {
  let summary = "2-D channel first convolution";
  let description = [{
    Performs 2-D convolution. This op is inspired by PyTorch's Conv2d layer (https://pytorch.org/docs/stable/generated/torch.nn.Conv2d.html).

    The tensors have dimensions:
    - in:     [N, Cin, H, W]
    - filter: [Cout, Cin, KH, KW]
    - result: [N, Cout, Hout, Wout]

    The tensors must meet the following conditions; otherwise, this op aborts the program.
    - H is greater than or equal to KH
    - W is greater than or equal to KW
    - Cin matches between in and filter
  }];
  let arguments = (ins 4DTensorOf<[F32]>:$in, 4DTensorOf<[F32]>:$filter);
  let results = (outs 4DTensorOf<[F32]>:$result);

  let assemblyFormat = "$in `,` $filter attr-dict `:` functional-type(operands, results)";
}

// ANCHOR tmp impl for paper phantom-ir
def Crt_ConvOp : Crt_Op<"conv"> {
  let summary = "2-D channel first convolution";
  let description = [{
    Performs 2-D convolution. This op is inspired by PyTorch's Conv2d layer (https://pytorch.org/docs/stable/generated/torch.nn.Conv2d.html).

    The tensors have dimensions:
    - in:     [N, Cin, H, W]
    - filter: [Cout, Cin, KH, KW]
    - result: [N, Cout, Hout, Wout]

    The tensors must meet the following conditions; otherwise, this op aborts the program.
    - H is greater than or equal to KH
    - W is greater than or equal to KW
    - Cin matches between in and filter
  }];
  let arguments = (ins 
      TensorRankOf<[F32], [4]>:$in,
      TensorRankOf<[F32], [4]>:$filter
  );
  let results = (outs 4DTensorOf<[F32]>:$result);

  let assemblyFormat = "$in `,` $filter attr-dict `:` functional-type(operands, results)";
}

// ANCHOR tmp impl for paper phantom-ir
def Crt_ConvaddOp : Crt_Op<"convadd"> {
  let summary = "2-D channel first convolution";
  let description = [{
    Performs 2-D convolution. This op is inspired by PyTorch's Conv2d layer (https://pytorch.org/docs/stable/generated/torch.nn.Conv2d.html).

    The tensors have dimensions:
    - in:     [N, Cin, H, W]
    - filter: [Cout, Cin, KH, KW]
    - result: [N, Cout, Hout, Wout]

    The tensors must meet the following conditions; otherwise, this op aborts the program.
    - H is greater than or equal to KH
    - W is greater than or equal to KW
    - Cin matches between in and filter
  }];
  let arguments = (ins 
      TensorRankOf<[F32], [4]>:$in,
      TensorRankOf<[F32], [4]>:$filter,
      TensorRankOf<[F32], [1]>:$bias
  );
  let results = (outs 4DTensorOf<[F32]>:$result);

  let assemblyFormat = "$in `,` $filter `,` $bias attr-dict `:` functional-type(operands, results)";
}

class BinaryArithmeticOp<string mnemonic, list<Trait> traits = []> :
   Crt_Op<mnemonic, traits> {
   // let arguments = (ins AnyTensor:$lhs, AnyTensor:$rhs);
   let arguments = (
       ins
       TensorRankOf<[F32, I32], [0, 1, 2, 3, 4]>:$lhs,
       TensorRankOf<[F32, I32], [0, 1, 2, 3, 4]>:$rhs);
   let results = (outs
      TensorRankOf<[F32, I32], [0, 1, 2, 3, 4]>:$result);
   // let results = (outs AnyTensor:$result);
   let assemblyFormat = "$lhs `,` $rhs attr-dict `:` functional-type(operands, results)";
}


def Crt_AddOp : BinaryArithmeticOp<"add", [NoSideEffect]> {
  let summary = "Addition of two tensors.";
  let description = [{
    Addition of two tensors.

    Numpy-style broadcasting is allowed.
  }];
}

def Crt_SubOp : BinaryArithmeticOp<"sub", [NoSideEffect]> {
  let summary = "Substraction of two tensors.";
  let description = [{
    Substraction of two tensors.

    Numpy-style broadcasting is allowed.
  }];
}

def Crt_MulOp : BinaryArithmeticOp<"mul", [NoSideEffect]> {
  let summary = "Multiply an input tensor by a scalar tensor.";
  let description = [{
    Multiplies each element of the input `input` with the scalar `other` and returns a new resulting tensor. The tensor types must match and shapes must be broadcastable.
  }];
}

// TODO tosa not support DivOp currently
// even divop is included here: https://mlir.llvm.org/docs/Dialects/TOSA/
// wait for update
//
def Crt_DivOp : BinaryArithmeticOp<"div", [NoSideEffect]> {
  let summary = "Divtiply an input tensor by a scalar tensor.";
  let description = [{
    Divtiplies each element of the input `input` with the scalar `other` and returns a new resulting tensor. The tensor types must match and shapes must be broadcastable.
  }];
}

def Crt_MaxOp : BinaryArithmeticOp<"max", [NoSideEffect]> {
  let summary = "Maximum of two tensors.";
  let description = [{
    Maximum of two tensors.

    Numpy-style broadcasting is allowed.
  }];
}


#endif // #ifndef CRT_DIALECT

