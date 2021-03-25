#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Mar 25 19:22:52 +07 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 9e1c4ee2b2ef4d61b9da7348b9d2d988 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot fp_to_int_tb_behav xil_defaultlib.fp_to_int_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto 9e1c4ee2b2ef4d61b9da7348b9d2d988 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot fp_to_int_tb_behav xil_defaultlib.fp_to_int_tb xil_defaultlib.glbl -log elaborate.log

