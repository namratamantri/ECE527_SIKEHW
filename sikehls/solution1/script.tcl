############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sikehls
set_top eval_4_isog
add_files sikehls/constants434.h
add_files sikehls/ec_isogeny.cpp
add_files sikehls/fp.h
add_files sikehls/fpx.cpp
add_files sikehls/mult.cpp
add_files -tb sikehls/testbench.cpp
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./sikehls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
