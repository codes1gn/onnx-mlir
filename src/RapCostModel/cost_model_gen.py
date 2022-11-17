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

def _reducemean(arg):
    return torch.nn.functional.avg_pool2d(arg, [7, 7])
_reducemean.__name__ = "reducemean" 


TENARY_OPS_TO_MEASURE = [
    (torch.nn.functional.linear, [1, 196], [128, 196], [128], {}),
    (torch.nn.functional.linear, [1, 128], [10, 128], [10], {}),
    (torch.nn.functional.linear, [1, 512], [1000, 512], [1000], {}),
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
]

BINARY_OPS_TO_MEASURE = [
    (torch.nn.functional.linear, [1, 196], [128, 196], {}), 
    (torch.nn.functional.linear, [1, 196], [10, 196], {}), 
    (torch.add, [1, 512, 7, 7], [1, 512, 7, 7], {}), 
    (torch.add, [1, 64, 56, 56], [1, 64, 56, 56], {}), 
    (torch.add, [1, 128, 28, 28], [1, 128, 28, 28], {}), 
    (torch.add, [1, 256, 14, 14], [1, 256, 14, 14], {}), 
    (torch.add, [1, 512, 7, 7], [1, 512, 7, 7], {}), 
    (torch.gather, [1, 3, 299, 299], [1], {"dim":1}), 
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

    (_maxpool, [1, 1, 28, 28], {}), 
    (_maxpool, [1, 64, 112, 112], {}), 
    (_reducemean, [1, 512, 7, 7], {}), 
    (torch.flatten, [1, 512, 1, 1], {"start_dim": 1}), 

]

# BATCH_SIZE_CANDIDATES = [1, 2, 4, 8] + [16*k for k in range(256)]
# BATCH_SIZE_CANDIDATES = [1, 2, 4, 8, 16, 32] + [64*(k+1) for k in range(16)]
BATCH_SIZE_CANDIDATES = [1, 2, 4, 8, 16, 32, 64]

def black_box_unary(fn, arg, arg_dict, ntimes=10):
    timetraces = []
    for i in range(ntimes):
        start = time.time()
        _ = fn(arg, **arg_dict)
        end = time.time()
        duration = end - start
        timetraces.append(duration*1000*1000)
    return timetraces

def black_box_binary(fn, lhs, rhs, arg_dict, ntimes=10):
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
        _rhs = torch.randint(0, 3, lhs_shape)


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

    for dim in rhs_shape:
        rhs_shape_str += "x{}".format(dim)

    for dim in out_shape:
        out_shape_str += "x{}".format(dim)

    perf_key = op_str + "-" + lhs_shape_str[1:] + "-" + rhs_shape_str[1:] + "-" + out_shape_str[1:]
    # special process to use proper name
    perf_key = perf_key.replace("linear", "gemm")
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
    lhs = tensor_gen(lhs_shape)
    rhs = tensor_gen(rhs_shape)

    if operation.__name__ == "gather":
        rhs = torch.randint(0, 3, lhs_shape)

    # support dispatch and config
    timetraces = black_box_binary(operation, lhs, rhs, arg_dict)
    mean, std = profile_stats(timetraces)
    return (mean, std)

# unit = ms
def gen_value_insert_action(query_key, mean, stdev):
    return "this->atomic_cost.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(mean) + "));\nthis->atomic_uncertainty.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(stdev) + "));\n"

def gen_value_insert_action_real(query_key, mean, stdev):
    return "this->real_atomic_cost.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(mean) + "));\nthis->real_atomic_uncertainty.insert(std::make_pair(StringRef(\"" + query_key + "\"), " + "{}".format(stdev) + "));\n"

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
        for batch_size in BATCH_SIZE_CANDIDATES:
            lhs_shape[0] = original_bs * batch_size

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

    gen_file_str += GEN_FILE_TAIL

    writer = open(filename, "w")
    writer.write(gen_file_str)
    writer.close()
    
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
        for batch_size in BATCH_SIZE_CANDIDATES:
            lhs_shape[0] = original_bs * batch_size

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

    gen_file_str += GEN_FILE_TAIL

    writer = open(filename, "w")
    writer.write(gen_file_str)
    writer.close()

if __name__ == '__main__':
    
    gen_inc_file("CrtOpsCPUCosts.cpp.inc", 1.0)
    gen_inc_file("CrtOpsGPUTypeACosts.cpp.inc", 3.3)
    gen_inc_file("CrtOpsGPUTypeBCosts.cpp.inc", 5.1)

    # Actualuncertainty
    gen_inc_file_real("RealCrtOpsCPUCosts.cpp.inc", 1.0)
    gen_inc_file_real("RealCrtOpsGPUTypeACosts.cpp.inc", 3.3)
    gen_inc_file_real("RealCrtOpsGPUTypeBCosts.cpp.inc", 5.1)
