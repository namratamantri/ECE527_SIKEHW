############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project koa_mult
set_top koa_mult_h1
add_files koa_mult/koa.cpp
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./koa_mult/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
