#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Mar 27 15:22:00 +07 2021
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim RGB_to_Gray_tb_behav -key {Behavioral:sim_1:Functional:RGB_to_Gray_tb} -tclbatch RGB_to_Gray_tb.tcl -view /home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/RTL/int_to_fp_tb_behav.wcfg -view /home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/RTL/RGB_to_Gray_tb_behav.wcfg -log simulate.log"
xsim RGB_to_Gray_tb_behav -key {Behavioral:sim_1:Functional:RGB_to_Gray_tb} -tclbatch RGB_to_Gray_tb.tcl -view /home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/RTL/int_to_fp_tb_behav.wcfg -view /home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/RTL/RGB_to_Gray_tb_behav.wcfg -log simulate.log

