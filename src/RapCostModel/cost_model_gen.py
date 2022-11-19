import numpy as np
import torch
import time
import argparse
from statistics import mean, stdev

GEN_FILE_HEADER = """
/*===- TableGen'erated file -------------------------------------*- C++ -*-===*\\
|*                                                                            *|
|* Op Definitions                                                             *|
|*                                                                            *|
|* Automatically generated file, do not edit!                                 *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

#ifdef GET_OP_COST
#undef GET_OP_COST

"""

GEN_FILE_TAIL = """

#endif  // GET_OP_COST
"""

def _maxpool(arg):
    return torch.nn.functional.max_pool2d(arg, [2, 2], [2, 2])
_maxpool.__name__ = "maxpool" 

def _maxpool3(arg):
    return torch.nn.functional.max_pool2d(arg, [3, 3], [2, 2])
_maxpool3.__name__ = "maxpool" 

def _avgpool(arg):
    return torch.nn.functional.avg_pool2d(arg, [3, 3], [1, 1], [1, 1])
_avgpool.__name__ = "avgpool" 

def _reducemean(arg):
    return torch.nn.functional.avg_pool2d(arg, [7, 7])
_reducemean.__name__ = "reducemean" 

def _unsqueeze(arg, arg1):
    return torch.unsqueeze(arg, 1)
_unsqueeze.__name__ = "unsqueeze"


TENARY_OPS_TO_MEASURE = [
    (torch.nn.functional.linear, [1, 196], [128, 196], [128], {}),
    (torch.nn.functional.linear, [1, 128], [10, 128], [10], {}),
    (torch.nn.functional.linear, [1, 512], [1000, 512], [1000], {}),
    (torch.nn.functional.linear, [1, 2048], [1000, 2048], [1000], {}),
    (torch.nn.functional.conv2d, [1, 3, 224, 224], [64, 3, 7, 7], [64], {"stride": [2, 2], "padding": [3, 3]}),
    (torch.nn.functional.conv2d, [1, 64, 56, 56], [64, 64, 3, 3], [64],{"stride": [1, 1], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 64, 56, 56], [128, 64, 1, 1], [128], {"stride": [2, 2], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 64, 56, 56], [128, 64, 3, 3], [128], {"stride": [2, 2], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 128, 28, 28], [128, 128, 3, 3], [128], {"stride": [1, 1], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 128, 28, 28], [256, 128, 1, 1], [256], {"stride": [2, 2], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 128, 28, 28], [256, 128, 3, 3], [256], {"stride": [2, 2], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 256, 14, 14], [256, 256, 3, 3], [256], {"stride": [1, 1], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 256, 14, 14], [512, 256, 1, 1], [512], {"stride": [2, 2], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 256, 14, 14], [512, 256, 3, 3], [512], {"stride": [2, 2], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 512, 7, 7], [512, 512, 3, 3], [512], {"stride": [1, 1], "padding": [1, 1]}),

    (torch.nn.functional.conv2d, [1, 3, 299, 299], [32, 3, 3, 3], [32], {"stride": [2, 2], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 32, 149, 149], [32, 32, 3, 3], [32], {"stride": [1, 1], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 32, 147, 147], [64, 32, 3, 3], [64], {"stride": [1, 1], "padding": [1, 1]}),
    (torch.nn.functional.conv2d, [1, 80, 73, 73], [192, 80, 3, 3], [192], {"stride": [1, 1], "padding": [0, 0]}),

    (torch.nn.functional.conv2d, [1, 48, 35, 35], [64, 48, 5, 5], [64], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 64, 35, 35], [96, 64, 3, 3], [96], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 96, 35, 35], [96, 96, 3, 3], [96], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 96, 35, 35], [96, 96, 3, 3], [96], {"stride": [2, 2], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 288, 35, 35], [384, 288, 3, 3], [384], {"stride": [2, 2], "padding": [0, 0]}),

    (torch.nn.functional.conv2d, [1, 192, 17, 17], [320, 192, 3, 3], [320], {"stride": [2, 2], "padding": [0, 0]}),
    (torch.nn.functional.conv2d, [1, 192, 17, 17], [192, 192, 3, 3], [192], {"stride": [2, 2], "padding": [0, 0]}),

    (torch.nn.functional.conv2d, [1, 128, 17, 17], [128, 128, 1, 7], [128], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 128, 17, 17], [128, 128, 7, 1], [128], {"stride": [1, 1], "padding": "same"}),

    (torch.nn.functional.conv2d, [1, 160, 17, 17], [160, 160, 1, 7], [160], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 160, 17, 17], [160, 160, 7, 1], [160], {"stride": [1, 1], "padding": "same"}),

    (torch.nn.functional.conv2d, [1, 160, 17, 17], [192, 160, 1, 7], [192], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 160, 17, 17], [192, 160, 7, 1], [192], {"stride": [1, 1], "padding": "same"}),

    (torch.nn.functional.conv2d, [1, 128, 17, 17], [192, 128, 1, 7], [192], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 128, 17, 17], [192, 128, 7, 1], [192], {"stride": [1, 1], "padding": "same"}),

    (torch.nn.functional.conv2d, [1, 192, 17, 17], [192, 192, 1, 7], [192], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 192, 17, 17], [192, 192, 7, 1], [192], {"stride": [1, 1], "padding": "same"}),

    (torch.nn.functional.conv2d, [1, 448, 8, 8], [384, 448, 3, 3], [384], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 384, 8, 8], [384, 384, 3, 1], [384], {"stride": [1, 1], "padding": "same"}),
    (torch.nn.functional.conv2d, [1, 384, 8, 8], [384, 384, 1, 3], [384], {"stride": [1, 1], "padding": "same"}),
]

VARIANT_OPS_TO_MEASURE = [
    (torch.concat, [[64, 1, 299, 299], [64, 1, 299, 299], [64, 1, 299, 299]], {"dim": 1}),
    (torch.concat, [[64, 64, 35, 35], [64, 64, 35, 35], [64, 96, 35, 35], [64, 32, 35, 35]], {"dim": 1}),
    (torch.concat, [[64, 64, 35, 35], [64, 64, 35, 35], [64, 96, 35, 35], [64, 64, 35, 35]], {"dim": 1}),
    (torch.concat, [[64, 384, 17, 17], [64, 96, 17, 17], [64, 288, 17, 17]], {"dim": 1}),
    (torch.concat, [[64, 192, 17, 17], [64, 192, 17, 17], [64, 192, 17, 17], [64, 192, 17, 17]], {"dim": 1}),
    (torch.concat, [[64, 320, 8, 8], [64, 192, 8, 8], [64, 768, 8, 8]], {"dim": 1}),
    (torch.concat, [[64, 320, 8, 8], [64, 384, 8, 8], [64, 384, 8, 8], [64, 384, 8, 8], [64, 384, 8, 8], [64, 192, 8, 8]], {"dim": 1}),

        ]

BINARY_OPS_TO_MEASURE = [
    (torch.nn.functional.linear, [1, 64], [64, 64, 64], {}),
    (torch.nn.functional.linear, [2, 64], [64, 64, 64], {}),
    (torch.nn.functional.linear, [3, 64], [64, 64, 64], {}),
    (torch.nn.functional.linear, [5, 64], [64, 64, 64], {}),
    (torch.nn.functional.linear, [6, 64], [64, 64, 64], {}),
    (torch.nn.functional.linear, [7, 64], [64, 64, 64], {}),
    (torch.nn.functional.linear, [1, 192], [64, 192, 64], {}),
    (torch.nn.functional.linear, [2, 192], [64, 192, 64], {}),
    (torch.nn.functional.linear, [3, 192], [64, 192, 64], {}),
    (torch.nn.functional.linear, [5, 192], [64, 192, 64], {}),
    (torch.nn.functional.linear, [6, 192], [64, 192, 64], {}),
    (torch.nn.functional.linear, [7, 192], [64, 192, 64], {}),
    (torch.nn.functional.linear, [1, 256], [64, 256, 64], {}),
    (torch.nn.functional.linear, [2, 256], [64, 256, 64], {}),
    (torch.nn.functional.linear, [3, 256], [64, 256, 64], {}),
    (torch.nn.functional.linear, [5, 256], [64, 256, 64], {}),
    (torch.nn.functional.linear, [6, 256], [64, 256, 64], {}),
    (torch.nn.functional.linear, [7, 256], [64, 256, 64], {}),
    (torch.nn.functional.linear, [1, 288], [64, 288, 64], {}),
    (torch.nn.functional.linear, [2, 288], [64, 288, 64], {}),
    (torch.nn.functional.linear, [3, 288], [64, 288, 64], {}),
    (torch.nn.functional.linear, [5, 288], [64, 288, 64], {}),
    (torch.nn.functional.linear, [6, 288], [64, 288, 64], {}),
    (torch.nn.functional.linear, [7, 288], [64, 288, 64], {}),
    (torch.nn.functional.linear, [1, 768], [64, 768, 64], {}),
    (torch.nn.functional.linear, [2, 768], [64, 768, 64], {}),
    (torch.nn.functional.linear, [3, 768], [64, 768, 64], {}),
    (torch.nn.functional.linear, [5, 768], [64, 768, 64], {}),
    (torch.nn.functional.linear, [6, 768], [64, 768, 64], {}),
    (torch.nn.functional.linear, [7, 768], [64, 768, 64], {}),
    (torch.nn.functional.linear, [1, 1280], [64, 1280, 64], {}),
    (torch.nn.functional.linear, [2, 1280], [64, 1280, 64], {}),
    (torch.nn.functional.linear, [3, 1280], [64, 1280, 64], {}),
    (torch.nn.functional.linear, [5, 1280], [64, 1280, 64], {}),
    (torch.nn.functional.linear, [6, 1280], [64, 1280, 64], {}),
    (torch.nn.functional.linear, [7, 1280], [64, 1280, 64], {}),
    (torch.nn.functional.linear, [1, 2048], [64, 2048, 64], {}),
    (torch.nn.functional.linear, [2, 2048], [64, 2048, 64], {}),
    (torch.nn.functional.linear, [3, 2048], [64, 2048, 64], {}),
    (torch.nn.functional.linear, [5, 2048], [64, 2048, 64], {}),
    (torch.nn.functional.linear, [6, 2048], [64, 2048, 64], {}),
    (torch.nn.functional.linear, [7, 2048], [64, 2048, 64], {}),
    (torch.add, [1, 512, 7, 7], [1, 512, 7, 7], {}),
    (torch.add, [1, 64, 56, 56], [1, 64, 56, 56], {}),
    (torch.add, [1, 128, 28, 28], [1, 128, 28, 28], {}),
    (torch.add, [1, 256, 14, 14], [1, 256, 14, 14], {}),
    (torch.add, [1, 512, 7, 7], [1, 512, 7, 7], {}),
    (torch.add, [1, 192, 64], [1, 192, 1], {}),
    (torch.add, [1, 448, 64], [1, 448, 1], {}),
    (torch.add, [1, 384, 64], [1, 384, 1], {}),
    (torch.add, [1, 320, 64], [1, 320, 1], {}),
    (torch.add, [1, 192, 64], [1, 192, 1], {}),
    (torch.add, [1, 160, 64], [1, 160, 1], {}),
    (torch.add, [1, 128, 64], [1, 128, 1], {}),
    (torch.add, [1, 64, 64], [1, 64, 1], {}),
    (torch.add, [1, 32, 64], [1, 32, 1], {}),
    (torch.add, [1, 80, 64], [1, 80, 1], {}),
    (torch.add, [1, 48, 64], [1, 48, 1], {}),
    (torch.add, [1, 1, 299, 299], [], {}),
    (torch.mul, [1, 1, 299, 299], [], {}),
    (torch.gather, [1, 3, 299, 299], [1, 1, 299, 299], {"dim":1}),
    (_unsqueeze, [1, 299, 299], [1], {}),
]

UNARY_OPS_TO_MEASURE = [
    (torch.nn.functional.softmax, [1, 10], {}),
    (torch.nn.functional.softmax, [1, 20], {}),
    (torch.nn.functional.softmax, [1, 1000], {}),
    (torch.nn.functional.softmax, [1, 1001], {}),
    (torch.exp, [16, 17], {}),
    (torch.exp, [17, 16], {}),
    (torch.relu, [1, 128], {}),
    (torch.relu, [1, 64, 112, 112], {}),
    (torch.relu, [1, 64, 56, 56], {}),
    (torch.relu, [1, 128, 28, 28], {}),
    (torch.relu, [1, 256, 14, 14], {}),
    (torch.relu, [1, 512, 7, 7], {}),
    (torch.relu, [1, 192, 8, 8], {}),
    (torch.relu, [1, 320, 8, 8], {}),
    (torch.relu, [1, 384, 8, 8], {}),
    (torch.relu, [1, 448, 8, 8], {}),
    (torch.relu, [1, 384, 17, 17], {}),
    (torch.relu, [1, 192, 17, 17], {}),
    (torch.relu, [1, 160, 17, 17], {}),
    (torch.relu, [1, 128, 17, 17], {}),
    (torch.relu, [1, 96, 17, 17], {}),
    (torch.relu, [1, 96, 35, 35], {}),
    (torch.relu, [1, 64, 35, 35], {}),
    (torch.relu, [1, 48, 35, 35], {}),
    (torch.relu, [1, 32, 35, 35], {}),
    (torch.relu, [1, 192, 71, 71], {}),
    (torch.relu, [1, 80, 73, 73], {}),
    (torch.relu, [1, 64, 147, 147], {}),
    (torch.relu, [1, 32, 147, 147], {}),
    (torch.relu, [1, 32, 149, 149], {}),

    (_maxpool, [1, 1, 28, 28], {}),
    (_maxpool, [1, 64, 112, 112], {}),
    (_avgpool, [1, 2048, 8, 8], {}),
    (_maxpool, [1, 2048, 8, 8], {}),
    (_avgpool, [1, 1280, 8, 8], {}),
    (_maxpool, [1, 1280, 8, 8], {}),
    (_avgpool, [1, 64, 147, 147], {}),
    (_maxpool, [1, 64, 147, 147], {}),
    (_avgpool, [1, 192, 71, 71], {}),
    (_maxpool, [1, 192, 71, 71], {}),
    (_avgpool, [1, 192, 35, 35], {}),
    (_maxpool, [1, 192, 35, 35], {}),
    (_avgpool, [1, 256, 35, 35], {}),
    (_maxpool, [1, 256, 35, 35], {}),
    (_avgpool, [1, 288, 35, 35], {}),
    (_maxpool, [1, 288, 35, 35], {}),
    (_avgpool, [1, 768, 17, 17], {}),
    (_maxpool, [1, 768, 17, 17], {}),
    (_reducemean, [1, 512, 7, 7], {}),
    (_reducemean, [1, 2048, 8, 8], {}),
    (torch.flatten, [1, 512, 1, 1], {"start_dim": 1}),
    (torch.flatten, [1, 2048, 1, 1], {"start_dim": 1}),
]

# BATCH_SIZE_CANDIDATES = [1, 2, 4, 8] + [16*k for k in range(256)]
# BATCH_SIZE_CANDIDATES = [1, 2, 4, 8, 16, 32] + [64*(k+1) for k in range(16)]
BATCH_SIZE_CANDIDATES = [1, 2, 4, 8, 16, 32, 64]

def black_box_unary(fn, arg, arg_dict, ntimes=2):
    timetraces = []
    for i in range(ntimes):
        start = time.time()
        _ = fn(arg, **arg_dict)
        end = time.time()
        duration = end - start
        timetraces.append(duration*1000*1000)
    return timetraces

def black_box_binary(fn, lhs, rhs, arg_dict, ntimes=2):
    timetraces = []
    for i in range(ntimes):
        start = time.time()
        if fn.__name__ == "gather":
            _ = fn(lhs, 1, rhs)
        else:
            _ = fn(lhs, rhs, **arg_dict)
        end = time.time()
        duration = end - start
        timetraces.append(duration*1000*1000)
    return timetraces

# 12 : sec ; 9 : ms ; 6 : us ; 3 : ns ; 0 : ps
def profile_stats(timetraces):
    # gen statistics, use mean currently, and std
    # maybe need more in future to analysis uncertainty of performances
    return (mean(timetraces), stdev(timetraces))

def tensor_gen(shape):
    print(shape)
    matrix = torch.rand(list(shape)).float();
    return(matrix)

def gen_query_key_unary(operation, arg_shape, arg_dict):
    op_str = operation.__name__
    arg_shape_str = ""
    out_shape_str = ""

    # infer out shape
    arg = tensor_gen(arg_shape)
    out_placeholder = operation(arg, **arg_dict)
    out_shape = out_placeholder.shape

    for dim in arg_shape:
        arg_shape_str += "x{}".format(dim)

    for dim in out_shape:
        out_shape_str += "x{}".format(dim)

    perf_key = op_str + "-" + arg_shape_str[1:] + "-" + out_shape_str[1:]
    # special process to use proper name
    # perf_key = perf_key.replace("linear", "gemm")
    return perf_key

def gen_query_key_binary(operation, lhs_shape, rhs_shape, arg_dict):
    op_str = operation.__name__
    lhs_shape_str = ""
    rhs_shape_str = ""
    out_shape_str = ""

    if operation.__name__ == "gather":
        _rhs = torch.randint(0, 3, rhs_shape)

    _rhs_shape = rhs_shape.copy()
    if operation.__name__ == "linear" and len(rhs_shape) == 3:
        rhs_shape = [rhs_shape[0]*rhs_shape[2], rhs_shape[1]]

    # infer out shape
    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)
    if operation.__name__ == "gather":
        out_placeholder = operation(lhs, 1, _rhs)
    else:
        out_placeholder = operation(lhs, rhs, **arg_dict)


    out_shape = out_placeholder.shape

    for dim in lhs_shape:
        lhs_shape_str += "x{}".format(dim)

    if operation.__name__ == "linear" and len(_rhs_shape) == 3:
        rhs_shape = _rhs_shape
        out_shape = [rhs_shape[0], lhs_shape[0], rhs_shape[2]]

    if operation.__name__ == "gather":
        rhs_shape_str += "x"
    else:
        for dim in rhs_shape:
            rhs_shape_str += "x{}".format(dim)

    if operation.__name__ == "gather":
        for dim in out_shape:
            if dim is not 1:
                out_shape_str += "x{}".format(dim)
    else:
        for dim in out_shape:
            out_shape_str += "x{}".format(dim)

    perf_key = op_str + "-" + lhs_shape_str[1:] + "-" + rhs_shape_str[1:] + "-" + out_shape_str[1:]
    # special process to use proper name
    perf_key = perf_key.replace("linear", "matmul")
    return perf_key

def gen_query_key_variant(operation, arg_shapes, arg_dict):
    op_str = operation.__name__
    arg_shape_str = ""
    out_shape_str = ""

    # infer out shape
    arglist = []
    for arg_shape in arg_shapes:
        arglist.append(tensor_gen(arg_shape))
    out_placeholder = operation(arglist, **arg_dict)
    print("out {}".format(out_placeholder.shape))
    out_shape = out_placeholder.shape

    for arg_shape in arg_shapes:
        _arg_shape_str = ""
        for dim in arg_shape:
            _arg_shape_str += "x{}".format(dim)
        arg_shape_str += "-{}".format(_arg_shape_str[1:])

    for dim in out_shape:
        out_shape_str += "x{}".format(dim)

    perf_key = op_str + arg_shape_str + "-" + out_shape_str[1:]
    # special process to use proper name
    print(perf_key)
    return perf_key

def gen_query_key_tenary(operation, lhs_shape, rhs_shape, bias_shape, arg_dict):
    op_str = operation.__name__
    lhs_shape_str = ""
    rhs_shape_str = ""
    bias_shape_str = ""
    out_shape_str = ""

    # arg_dict = {"stride": [2, 2], "padding": [3, 3]}
    print(arg_dict)

    # infer out shape
    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)
    out_placeholder = operation(lhs, rhs, **arg_dict)
    print("out {}".format(out_placeholder.shape))
    out_shape = out_placeholder.shape

    for dim in lhs_shape:
        lhs_shape_str += "x{}".format(dim)

    for dim in rhs_shape:
        rhs_shape_str += "x{}".format(dim)

    for dim in bias_shape:
        bias_shape_str += "x{}".format(dim)

    for dim in out_shape:
        out_shape_str += "x{}".format(dim)

    perf_key = op_str + "-" + lhs_shape_str[1:] + "-" + rhs_shape_str[1:] + "-" + bias_shape_str[1:] + "-" + out_shape_str[1:]
    # special process to use proper name
    perf_key = perf_key.replace("linear", "gemm")
    perf_key = perf_key.replace("conv2d", "convadd")
    print(perf_key)
    return perf_key

def gen_perf_query_entry_unary(operation, arg_shape, arg_dict):
    arg = tensor_gen(arg_shape)

    # support dispatch and config
    timetraces = black_box_unary(operation, arg, arg_dict)
    mean, std = profile_stats(timetraces)
    return (mean, std)

def gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape, arg_dict):
    if operation.__name__ == "linear" and len(rhs_shape) == 3:
        rhs_shape = [rhs_shape[0]*rhs_shape[2], rhs_shape[1]]

    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)

    if operation.__name__ == "gather":
        rhs = torch.randint(0, 3, lhs_shape)

    # support dispatch and config
    timetraces = black_box_binary(operation, lhs, rhs, arg_dict)
    mean, std = profile_stats(timetraces)
    return (mean, std)

def gen_perf_query_entry_variant(operation, arg_shapes, arg_dict):
    arglist = []
    for arg_shape in arg_shapes:
        arglist.append(tensor_gen(arg_shape))

    # support dispatch and config
    timetraces = black_box_unary(operation, arglist, arg_dict)
    mean, std = profile_stats(timetraces)
    return (mean, std)

# unit = ms
def gen_value_insert_action(query_key, mean, stdev):
    return "this->atomic_cost.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(mean) + "));\nthis->atomic_uncertainty.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(stdev) + "));\n"

def gen_value_insert_action_real(query_key, mean, stdev):
    return "this->real_atomic_cost.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(mean) + "));\nthis->real_atomic_uncertainty.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(stdev) + "));\n"

def gen_inc_file_real(filename, compute_power):
    gen_file_str = GEN_FILE_HEADER
    for (operation, arg_shape, arg_dict) in UNARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = arg_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            arg_shape[0] = original_bs * batch_size

            query_key = gen_query_key_unary(operation, arg_shape, arg_dict)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_unary(operation, arg_shape, arg_dict)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action_real(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        # reset shape
        arg_shape[0] = original_bs
    for (operation, lhs_shape, rhs_shape, arg_dict) in BINARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = lhs_shape[0]
        if operation.__name__ == "gather":
            original_bs_rhs = rhs_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            lhs_shape[0] = original_bs * batch_size
            if operation.__name__ == "gather":
                rhs_shape[0] = original_bs_rhs * batch_size

            query_key = gen_query_key_binary(operation, lhs_shape, rhs_shape, arg_dict)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape, arg_dict)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action_real(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        lhs_shape[0] = original_bs
        if operation.__name__ == "gather":
            rhs_shape[0] = original_bs_rhs

    for (operation, lhs_shape, rhs_shape, bias_shape, arg_dict) in TENARY_OPS_TO_MEASURE:
        # print("op {}".format(operation))
        # print("lhs {}".format(lhs_shape))
        # print("rhs {}".format(rhs_shape))
        original_bs = lhs_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            # special handle conv just to 256
            if operation.__name__ == "conv2d" and batch_size > 256:
                continue
            lhs_shape[0] = original_bs * batch_size 

            query_key = gen_query_key_tenary(operation, lhs_shape, rhs_shape, bias_shape, arg_dict)
            _mean, _stdev = gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape, arg_dict)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action_real(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        lhs_shape[0] = original_bs

    for (operation, arg_shapes, arg_dict) in VARIANT_OPS_TO_MEASURE:
        query_key = gen_query_key_variant(operation, arg_shapes, arg_dict)
        _mean, _stdev = gen_perf_query_entry_variant(operation, arg_shapes, arg_dict)

        # consider heterogenous
        # hardcode 10% ratio of uncertainty
        _mean = _mean / compute_power

        gen_cppinc_item = gen_value_insert_action_real(query_key, _mean, _stdev);
        print(gen_cppinc_item)

        gen_file_str += gen_cppinc_item

    gen_file_str += GEN_FILE_TAIL

    writer = open(filename, "w")
    writer.write(gen_file_str)
    writer.close()

def gen_inc_file(filename, compute_power):
    gen_file_str = GEN_FILE_HEADER
    for (operation, arg_shape, arg_dict) in UNARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = arg_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            arg_shape[0] = original_bs * batch_size

            query_key = gen_query_key_unary(operation, arg_shape, arg_dict)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_unary(operation, arg_shape, arg_dict)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        # reset shape
        arg_shape[0] = original_bs
    for (operation, lhs_shape, rhs_shape, arg_dict) in BINARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = lhs_shape[0]
        if operation.__name__ == "gather":
            original_bs_rhs = rhs_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            lhs_shape[0] = original_bs * batch_size
            if operation.__name__ == "gather":
                rhs_shape[0] = original_bs_rhs * batch_size

            query_key = gen_query_key_binary(operation, lhs_shape, rhs_shape, arg_dict)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape, arg_dict)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        lhs_shape[0] = original_bs
        if operation.__name__ == "gather":
            rhs_shape[0] = original_bs_rhs

    for (operation, lhs_shape, rhs_shape, bias_shape, arg_dict) in TENARY_OPS_TO_MEASURE:
        # print("op {}".format(operation))
        # print("lhs {}".format(lhs_shape))
        # print("rhs {}".format(rhs_shape))
        original_bs = lhs_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            # special handle conv just to 256
            if operation.__name__ == "conv2d" and batch_size > 256:
                continue
            lhs_shape[0] = original_bs * batch_size 

            query_key = gen_query_key_tenary(operation, lhs_shape, rhs_shape, bias_shape, arg_dict)
            _mean, _stdev = gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape, arg_dict)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        lhs_shape[0] = original_bs

    for (operation, arg_shapes, arg_dict) in VARIANT_OPS_TO_MEASURE:
        query_key = gen_query_key_variant(operation, arg_shapes, arg_dict)
        _mean, _stdev = gen_perf_query_entry_variant(operation, arg_shapes, arg_dict)

        # consider heterogenous
        # hardcode 10% ratio of uncertainty
        _mean = _mean / compute_power

        gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
        print(gen_cppinc_item)

        gen_file_str += gen_cppinc_item

    gen_file_str += GEN_FILE_TAIL

    writer = open(filename, "w")
    writer.write(gen_file_str)
    writer.close()
    

if __name__ == '__main__':
    
    gen_inc_file("CrtOpsCPUCosts.cpp.inc", 1.0)
    gen_inc_file("CrtOpsGPUTypeACosts.cpp.inc", 3.3)
    gen_inc_file("CrtOpsGPUTypeBCosts.cpp.inc", 5.1)
    #
    # # Actualuncertainty
    gen_inc_file_real("RealCrtOpsCPUCosts.cpp.inc", 1.05)
    gen_inc_file_real("RealCrtOpsGPUTypeACosts.cpp.inc", 3.1)
    gen_inc_file_real("RealCrtOpsGPUTypeBCosts.cpp.inc", 5.3)
