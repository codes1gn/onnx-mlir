#!/bin/bash


nohup ./profiling_timesformer_impl_u0.sh timesformer timesformer-spaceonly-pt-op13-fp32 2>&1 &
nohup ./profiling_timesformer_impl_u5.sh timesformer timesformer-spaceonly-pt-op13-fp32 2>&1 &
nohup ./profiling_timesformer_impl_u10.sh timesformer timesformer-spaceonly-pt-op13-fp32 2>&1 &
nohup ./profiling_timesformer_impl_u15.sh timesformer timesformer-spaceonly-pt-op13-fp32 2>&1 &
nohup ./profiling_timesformer_impl_u20.sh timesformer timesformer-spaceonly-pt-op13-fp32 2>&1 &


