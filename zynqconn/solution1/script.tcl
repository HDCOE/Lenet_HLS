############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project zynqconn
set_top lenet
add_files zynqconn/lenet5.cpp
add_files -tb zynqconn/TB.cpp -cflags "-std=c++14 -O2 -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./zynqconn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
