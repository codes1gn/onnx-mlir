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


TENARY_OPS_TO_MEASURE = [
    (torch.nn.functional.linear, [1, 196], [128, 196], [128]), 
    (torch.nn.functional.linear, [1, 128], [10, 128], [10]), 
]

BINARY_OPS_TO_MEASURE = [
    (torch.nn.functional.linear, [1, 196], [128, 196]), 
    (torch.nn.functional.linear, [1, 196], [10, 196]), 
]

UNARY_OPS_TO_MEASURE = [
    (torch.nn.functional.softmax, [1, 10]), 
    (torch.nn.functional.softmax, [1, 20]), 
    (torch.nn.functional.softmax, [1, 1000]), 
    (torch.nn.functional.softmax, [1, 1001]), 
    (torch.exp, [16, 17]), 
    (torch.exp, [17, 16]), 
    (torch.relu, [1, 128]), 

    (_maxpool, [1, 1, 28, 28]), 
]

BATCH_SIZE_CANDIDATES = [1, 2, 4, 8] + [16*k for k in range(256)]

def black_box_unary(fn, arg, ntimes=100):
    timetraces = []
    for i in range(ntimes):
        start = time.time()
        _ = fn(arg)
        end = time.time()
        duration = end - start
        timetraces.append(duration*1000*1000)
    return timetraces

def black_box_binary(fn, lhs, rhs, ntimes=100):
    timetraces = []
    for i in range(ntimes):
        start = time.time()
        _ = fn(lhs, rhs)
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

def gen_query_key_unary(operation, arg_shape):
    op_str = operation.__name__
    arg_shape_str = ""
    out_shape_str = ""

    # infer out shape
    arg = tensor_gen(arg_shape)
    out_placeholder = operation(arg)
    out_shape = out_placeholder.shape

    for dim in arg_shape:
        arg_shape_str += "x{}".format(dim)

    for dim in out_shape:
        out_shape_str += "x{}".format(dim)

    perf_key = op_str + "-" + arg_shape_str[1:] + "-" + out_shape_str[1:]
    # special process to use proper name
    # perf_key = perf_key.replace("linear", "gemm")
    return perf_key

def gen_query_key_binary(operation, lhs_shape, rhs_shape):
    op_str = operation.__name__
    lhs_shape_str = ""
    rhs_shape_str = ""
    out_shape_str = ""

    # infer out shape
    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)
    out_placeholder = operation(lhs, rhs)
    out_shape = out_placeholder.shape

    for dim in lhs_shape:
        lhs_shape_str += "x{}".format(dim)

    for dim in rhs_shape:
        rhs_shape_str += "x{}".format(dim)

    for dim in out_shape:
        out_shape_str += "x{}".format(dim)

    perf_key = op_str + "-" + lhs_shape_str[1:] + "-" + rhs_shape_str[1:] + "-" + out_shape_str[1:]
    # special process to use proper name
    perf_key = perf_key.replace("linear", "gemm")
    return perf_key

def gen_query_key_tenary(operation, lhs_shape, rhs_shape, bias_shape):
    op_str = operation.__name__
    lhs_shape_str = ""
    rhs_shape_str = ""
    bias_shape_str = ""
    out_shape_str = ""

    # infer out shape
    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)
    out_placeholder = operation(lhs, rhs)
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
    return perf_key

def gen_perf_query_entry_unary(operation, arg_shape):
    arg = tensor_gen(arg_shape)

    # support dispatch and config
    timetraces = black_box_unary(operation, arg)
    mean, std = profile_stats(timetraces)
    return (mean, std)

def gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape):
    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)

    # support dispatch and config
    timetraces = black_box_binary(operation, lhs, rhs)
    mean, std = profile_stats(timetraces)
    return (mean, std)

# unit = ms
def gen_value_insert_action(query_key, mean, stdev):
    return "this->atomic_cost.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(mean) + "));\nthis->atomic_uncertainty.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(stdev) + "));\n"

def gen_inc_file(filename, compute_power):
    gen_file_str = GEN_FILE_HEADER
    for (operation, arg_shape) in UNARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = arg_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            arg_shape[0] = original_bs * batch_size

            query_key = gen_query_key_unary(operation, arg_shape)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_unary(operation, arg_shape)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        # reset shape
        arg_shape[0] = original_bs
    for (operation, lhs_shape, rhs_shape) in BINARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = lhs_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            lhs_shape[0] = original_bs * batch_size 

            query_key = gen_query_key_binary(operation, lhs_shape, rhs_shape)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        lhs_shape[0] = original_bs

    for (operation, lhs_shape, rhs_shape, bias_shape) in TENARY_OPS_TO_MEASURE:
        # print("{}".format(operation))
        original_bs = lhs_shape[0]
        for batch_size in BATCH_SIZE_CANDIDATES:
            lhs_shape[0] = original_bs * batch_size 

            query_key = gen_query_key_tenary(operation, lhs_shape, rhs_shape, bias_shape)
            # print(query_key)
            _mean, _stdev = gen_perf_query_entry_binary(operation, lhs_shape, rhs_shape)

            # consider heterogenous
            # hardcode 10% ratio of uncertainty
            _mean = _mean / compute_power

            gen_cppinc_item = gen_value_insert_action(query_key, _mean, _stdev);
            print(gen_cppinc_item)

            gen_file_str += gen_cppinc_item
        lhs_shape[0] = original_bs

    gen_file_str += GEN_FILE_TAIL

    writer = open(filename, "w")
    writer.write(gen_file_str)
    writer.close()

if __name__ == '__main__':
    gen_inc_file("CrtOpsCPUCosts.cpp.inc", 1.0)
    gen_inc_file("CrtOpsGPUTypeACosts.cpp.inc", 3.3)
    gen_inc_file("CrtOpsGPUTypeBCosts.cpp.inc", 5.1)

