############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project rdc_mont
set_top rdc_mont
add_files rdc_mont/rdc_mont.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./rdc_mont/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
