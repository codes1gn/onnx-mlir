#ifndef CRT_DIALECT
#define CRT_DIALECT

include "mlir/IR/OpBase.td"
include "mlir/Interfaces/ControlFlowInterfaces.td"
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

class Crt_PureOp<string mnemonic, list<Trait> traits = []>
    : Crt_Op<mnemonic, !listconcat(traits, [NoSideEffect])> {
}

//===----------------------------------------------------------------------===//
// YieldOp
//===----------------------------------------------------------------------===//

// phantom.block
def Crt_PhantomBlockOp : Crt_PureOp<"pblock", [SingleBlockImplicitTerminator<"YieldOp">]> {
  let summary = [{a group of ops}];
  let description = [{
    block of ops
  }];

  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand,
      OptionalAttr<I32ArrayAttr>:$devat);
  let results = (outs TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  /* let results = (outs Variadic<AnyType>); */
  let regions = (region AnyRegion:$body);
  /* let hasCanonicalizer = 1; */
  /* let hasCustomAssemblyFormat = 1; */
  /* let hasVerifier = 1; */
  /* let assemblyFormat = "attr-dict-with-keyword regions"; */
  let assemblyFormat = "$operand attr-dict-with-keyword `:` functional-type(operands, results) $body";
}

def Crt_YieldOp : Crt_PureOp<"yield", [ReturnLike, Terminator,
                               ParentOneOf<["PhantomBlockOp"]>]> {
  let summary = "loop yield and termination operation";
  let description = [{
    "crt.yield" yields an SSA value from the crt.pblock region
  }];

  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$results);
  /* let arguments = (ins Variadic<AnyType>:$results); */

  let builders = [OpBuilder<(ins), [{ /* nothing to do */ }]>];
  let assemblyFormat =
      [{  attr-dict $results `:` type($results) }];
      // this is optional group that matches Variadic length of args
      // refers to scf.yield and async.yield
      /* [{  attr-dict ($results^ `:` type($results))? }]; */
  /* let hasVerifier = 1; */
}

def Crt_AllreduceOp : Crt_Op<"allreduce", [
                                             /* no-need, since it covers semantic of allreduce: SameOperandsAndResultShape, */
                                             SameOperandsAndResultElementType]> {
  let summary = "negate function";
  let description = [{
    See crt.negate for more details.
  }];
  let arguments = (ins Variadic<TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$result);
  let assemblyFormat = "($operand^)? `:` functional-type(operands, results) attr-dict";
}


def Crt_ConstantOp : Crt_Op<"constant"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (ins);
  let results = (outs
      TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "attr-dict `:` functional-type(operands, results)";
}

class UnaryArithmeticOp<string mnemonic, list<Trait> traits = []> :
  Crt_Op<mnemonic, []> {
  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$result);
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

def Crt_SoftmaxOp : UnaryArithmeticOp<"softmax", [NoSideEffect, 
                                                    ResultsAreFloatLike,
                                                    SameOperandsAndResultType,
                                                    SameOperandsAndResultShape,
                                                    SameOperandsAndResultElementType]> {
  let summary = "softmax function";
  let description = [{
    See crt.softmax for more details.
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

def Crt_SqrtOp : UnaryArithmeticOp<"sqrt", [NoSideEffect,
                                             SameOperandsAndResultType,
                                             SameOperandsAndResultShape,
                                             SameOperandsAndResultElementType]> {
  let summary = "hyperbolic tangent";
  let description = [{
    See crt.tanh for more details.
  }];
}

def Crt_PowOp : UnaryArithmeticOp<"pow", [NoSideEffect,
                                             SameOperandsAndResultType,
                                             SameOperandsAndResultShape,
                                             SameOperandsAndResultElementType]> {
  let summary = "hyperbolic tangent";
  let description = [{
    See crt.tanh for more details.
  }];
}

def Crt_ErfOp : UnaryArithmeticOp<"erf", [NoSideEffect,
                                             SameOperandsAndResultType,
                                             SameOperandsAndResultShape,
                                             SameOperandsAndResultElementType]> {
  let summary = "hyperbolic tangent";
  let description = [{
    See crt.tanh for more details.
  }];
}

def Crt_TransposeOp : UnaryArithmeticOp<"transpose", [NoSideEffect,
                                             SameOperandsAndResultType,
                                             SameOperandsAndResultElementType]> {
  let summary = "hyperbolic tangent";
  let description = [{
    See crt.tanh for more details.
  }];
}

def Crt_DimOp : UnaryArithmeticOp<"dim", [NoSideEffect]> {
  let summary = "hyperbolic tangent";
  let description = [{
    See crt.tanh for more details.
  }];
}

def Crt_AvgpoolOp : Crt_Op<"avgpool"> {
  let summary = "Performs a avgpool";
  let description = [{
    avgpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_MaxpoolOp : Crt_Op<"maxpool"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_FlattenOp : Crt_Op<"flatten"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

def Crt_CastOp : Crt_Op<"cast"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8,I1, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64, I8,I1, F64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}

/* def Crt_DimOp : Crt_Op<"dim"> { */
/*   let summary = "Performs a maxpool"; */
/*   let description = [{ */
/*     maxpool. */
/*   }]; */
/*   let arguments = ( */
/*       ins */
/*       TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand); */
/*   let results = (outs */
/*       TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$result); */
/**/
/*   let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)"; */
/* } */

def Crt_ReducemeanOp : Crt_Op<"reducemean"> {
  let summary = "Performs a maxpool";
  let description = [{
    maxpool.
  }];
  let arguments = (
      ins
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$operand);
  let results = (outs
      TensorRankOf<[F32, I32, I64, I8, F64], [0, 1, 2, 3, 4, 5, 6]>:$result);

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
  let arguments = (ins TensorRankOf<[F32, I32, I64, I8, F64], [1, 2, 3, 4, 5]>:$lhs, TensorRankOf<[F32, I32, I64, I8, F64], [1, 2, 3, 4, 5]>:$rhs);
  let results = (outs TensorRankOf<[F32, I32, I64, I8, F64], [1, 2, 3, 4, 5]>:$result);

  let assemblyFormat = "$lhs `,` $rhs attr-dict `:` functional-type(operands, results)";
}

def Crt_GatherOp : Crt_Op<"gather"> {
  let summary = "P";
  let description = [{
    Performs a matrix multiplication.
  }];
  let arguments = (ins TensorRankOf<[F32, I32, I64, I8, F64], [1, 2, 3, 4, 5]>:$lhs, TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5]>:$rhs);
  let results = (outs TensorRankOf<[F32, I32, I64, I8, F64], [1, 2, 3, 4, 5]>:$result);

  let assemblyFormat = "$lhs `,` $rhs attr-dict `:` functional-type(operands, results)";
}

def Crt_ExpandOp : Crt_Op<"expand"> {
  let summary = "Performs a reshape dma op";
  let description = [{
    Performs a matrix multiplication.

    If the `K` dimension mismatches between the operands, this op aborts the
    program.
  }];
  let arguments = (ins TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$lhs, TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$rhs);
  let results = (outs TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "$lhs `,` $rhs attr-dict `:` functional-type(operands, results)";
}

def Crt_ReshapeOp : Crt_Op<"reshape"> {
  let summary = "Performs a reshape dma op";
  let description = [{
    Performs a matrix multiplication.

    If the `K` dimension mismatches between the operands, this op aborts the
    program.
  }];
  let arguments = (ins TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$lhs, TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$rhs);
  let results = (outs TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$result);

  let assemblyFormat = "$lhs `,` $rhs attr-dict `:` functional-type(operands, results)";
}

def Crt_SplitOp : Crt_Op<"split"> {
  let summary = "Performs a reshape dma op";
  let description = [{
    Performs a matrix multiplication.

    If the `K` dimension mismatches between the operands, this op aborts the
    program.
  }];
  let arguments = (ins TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>:$input, AnyTypeOf<[TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>, NoneType]>:$split);
  let results = (outs Variadic<TensorRankOf<[F32, I32, I64], [0, 1, 2, 3, 4, 5, 6]>>:$outputs);

  let assemblyFormat = "$input `,` $split attr-dict `:` functional-type(operands, results)";
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
  let arguments = (ins 4DTensorOf<[F32, I32, I64, I8, F64]>:$in, 4DTensorOf<[F32, I32, I64, I8, F64]>:$filter);
  let results = (outs 4DTensorOf<[F32, I32, I64, I8, F64]>:$result);

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
      TensorRankOf<[F32, I32, I64, I8, F64], [4]>:$in,
      TensorRankOf<[F32, I32, I64, I8, F64], [4]>:$filter
  );
  let results = (outs 4DTensorOf<[F32, I32, I64, I8, F64]>:$result);

  let assemblyFormat = "$in `,` $filter attr-dict `:` functional-type(operands, results)";
}

def Crt_ConcatOp:Crt_Op<"concat",
  [NoSideEffect]> {
  let summary = "Concat operation";
  let description = [{
  Concatenate a list of tensors into a single tensor. All input tensors must have the same shape, except for the dimension size of the axis to concatenate on.
  }];
  let arguments = (ins Variadic<AnyTypeOf<[TensorOf<[UI8]>, TensorOf<[UI16]>, TensorOf<[UI32]>, TensorOf<[UI64]>, TensorOf<[I8]>, TensorOf<[I16]>, TensorOf<[I32]>, TensorOf<[I64]>, TensorOf<[BF16]>, TensorOf<[F16]>, TensorOf<[F32]>, TensorOf<[F64]>]>>:$operand);
  let results = (outs AnyTypeOf<[TensorOf<[UI8]>, TensorOf<[UI16]>, TensorOf<[UI32]>, TensorOf<[UI64]>, TensorOf<[I8]>, TensorOf<[I16]>, TensorOf<[I32]>, TensorOf<[I64]>, TensorOf<[BF16]>, TensorOf<[F16]>, TensorOf<[F32]>, TensorOf<[F64]>]>:$result);
  let assemblyFormat = "$operand attr-dict `:` functional-type(operands, results)";
}


def Crt_GemmOp : Crt_Op<"gemm"> {
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
      TensorRankOf<[F32, I32, I64, I8, F64], [2]>:$in,
      TensorRankOf<[F32, I32, I64, I8, F64], [2]>:$filter,
      TensorRankOf<[F32, I32, I64, I8, F64], [1]>:$bias
  );
  let results = (outs 2DTensorOf<[F32, I32, I64, I8, F64]>:$result);

  let assemblyFormat = "$in `,` $filter `,` $bias attr-dict `:` functional-type(operands, results)";
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
      TensorRankOf<[F32, I32, I64, I8, F64], [4]>:$in,
      TensorRankOf<[F32, I32, I64, I8, F64], [4]>:$filter,
      TensorRankOf<[F32, I32, I64, I8, F64], [1]>:$bias
  );
  let results = (outs 4DTensorOf<[F32, I32, I64, I8, F64]>:$result);

  let assemblyFormat = "$in `,` $filter `,` $bias attr-dict `:` functional-type(operands, results)";
}

class BinaryArithmeticOp<string mnemonic, list<Trait> traits = []> :
   Crt_Op<mnemonic, traits> {
   // let arguments = (ins AnyTensor:$lhs, AnyTensor:$rhs);
   let arguments = (
       ins
       TensorRankOf<[F32, F64, I32, I64, I16, I8], [0, 1, 2, 3, 4, 5, 6]>:$lhs,
       TensorRankOf<[F32, F64, I32, I64, I16, I8], [0, 1, 2, 3, 4, 5, 6]>:$rhs);
   let results = (outs
      TensorRankOf<[F32, F64, I32, I64, I16, I8], [0, 1, 2, 3, 4, 5, 6]>:$result);
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

def Crt_UnsqueezeOp : BinaryArithmeticOp<"unsqueeze", [NoSideEffect]> {
  let summary = "binary.";
  let description = [{
    just a binary op
  }];
}

def Crt_SqueezeOp : BinaryArithmeticOp<"squeeze", [NoSideEffect]> {
  let summary = "binary.";
  let description = [{
    just a binary op
  }];
}

#endif // #ifndef CRT_DIALECT

