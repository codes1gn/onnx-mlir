#!/bin/bash

script_path=`dirname $0`
script_realpath=`realpath $script_path`
top_dir_path=$script_path"/.."
top_dir_realpath=`realpath $top_dir_path`

cd $top_dir_realpath/src/RapCostModel/

python3 cost_model_gen.py
