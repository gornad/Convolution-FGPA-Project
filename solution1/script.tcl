############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LAB4
set_top fpga_convolution
add_files LAB4/convolution.cpp
add_files LAB4/convolution.h
add_files -tb LAB4/globals.h
add_files -tb LAB4/test.cpp
add_files -tb LAB4/test.h
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./LAB4/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "my_convolution_unit"
