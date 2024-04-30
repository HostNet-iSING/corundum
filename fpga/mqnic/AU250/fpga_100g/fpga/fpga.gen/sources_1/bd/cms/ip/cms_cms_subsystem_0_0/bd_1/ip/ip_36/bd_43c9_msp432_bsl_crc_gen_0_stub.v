// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:32:31 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_36/bd_43c9_msp432_bsl_crc_gen_0_stub.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2021.1" *)
module bd_43c9_msp432_bsl_crc_gen_0(clk, reset_n, s0_axis_tdata, s0_axis_tready, 
  s0_axis_tvalid, s0_axis_tlast, m0_axis_tdata, m0_axis_tready, m0_axis_tvalid, 
  m0_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,s0_axis_tdata[31:0],s0_axis_tready,s0_axis_tvalid,s0_axis_tlast,m0_axis_tdata[31:0],m0_axis_tready,m0_axis_tvalid,m0_axis_tlast" */;
  input clk;
  input reset_n;
  input [31:0]s0_axis_tdata;
  output s0_axis_tready;
  input s0_axis_tvalid;
  input s0_axis_tlast;
  output [31:0]m0_axis_tdata;
  input m0_axis_tready;
  output m0_axis_tvalid;
  output m0_axis_tlast;
endmodule
