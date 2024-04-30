// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:34:59 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bd_43c9_ilmb_0 -prefix
//               bd_43c9_ilmb_0_ bd_43c9_dlmb_0_stub.v
// Design      : bd_43c9_dlmb_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lmb_v10,Vivado 2021.1" *)
module bd_43c9_ilmb_0(LMB_Clk, SYS_Rst, LMB_Rst, M_ABus, M_ReadStrobe, 
  M_WriteStrobe, M_AddrStrobe, M_DBus, M_BE, Sl_DBus, Sl_Ready, Sl_Wait, Sl_UE, Sl_CE, LMB_ABus, 
  LMB_ReadStrobe, LMB_WriteStrobe, LMB_AddrStrobe, LMB_ReadDBus, LMB_WriteDBus, LMB_Ready, 
  LMB_Wait, LMB_UE, LMB_CE, LMB_BE)
/* synthesis syn_black_box black_box_pad_pin="LMB_Clk,SYS_Rst,LMB_Rst,M_ABus[0:31],M_ReadStrobe,M_WriteStrobe,M_AddrStrobe,M_DBus[0:31],M_BE[0:3],Sl_DBus[0:31],Sl_Ready[0:0],Sl_Wait[0:0],Sl_UE[0:0],Sl_CE[0:0],LMB_ABus[0:31],LMB_ReadStrobe,LMB_WriteStrobe,LMB_AddrStrobe,LMB_ReadDBus[0:31],LMB_WriteDBus[0:31],LMB_Ready,LMB_Wait,LMB_UE,LMB_CE,LMB_BE[0:3]" */;
  input LMB_Clk;
  input SYS_Rst;
  output LMB_Rst;
  input [0:31]M_ABus;
  input M_ReadStrobe;
  input M_WriteStrobe;
  input M_AddrStrobe;
  input [0:31]M_DBus;
  input [0:3]M_BE;
  input [0:31]Sl_DBus;
  input [0:0]Sl_Ready;
  input [0:0]Sl_Wait;
  input [0:0]Sl_UE;
  input [0:0]Sl_CE;
  output [0:31]LMB_ABus;
  output LMB_ReadStrobe;
  output LMB_WriteStrobe;
  output LMB_AddrStrobe;
  output [0:31]LMB_ReadDBus;
  output [0:31]LMB_WriteDBus;
  output LMB_Ready;
  output LMB_Wait;
  output LMB_UE;
  output LMB_CE;
  output [0:3]LMB_BE;
endmodule
