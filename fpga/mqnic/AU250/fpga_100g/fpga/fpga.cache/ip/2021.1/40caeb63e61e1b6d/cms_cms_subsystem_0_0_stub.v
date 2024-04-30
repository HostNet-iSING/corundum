// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:47:05 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_cms_subsystem_0_0_stub.v
// Design      : cms_cms_subsystem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_fb99,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(satellite_gpio, aclk_ctrl, aresetn_ctrl, 
  interrupt_host, qsfp0_modprs_l, qsfp1_modprs_l, qsfp0_int_l, qsfp1_int_l, qsfp0_lpmode, 
  qsfp1_lpmode, qsfp0_modsel_l, qsfp1_modsel_l, qsfp0_reset_l, qsfp1_reset_l, 
  s_axi_ctrl_awaddr, s_axi_ctrl_awprot, s_axi_ctrl_awvalid, s_axi_ctrl_awready, 
  s_axi_ctrl_wdata, s_axi_ctrl_wstrb, s_axi_ctrl_wvalid, s_axi_ctrl_wready, 
  s_axi_ctrl_bresp, s_axi_ctrl_bvalid, s_axi_ctrl_bready, s_axi_ctrl_araddr, 
  s_axi_ctrl_arprot, s_axi_ctrl_arvalid, s_axi_ctrl_arready, s_axi_ctrl_rdata, 
  s_axi_ctrl_rresp, s_axi_ctrl_rvalid, s_axi_ctrl_rready, satellite_uart_rxd, 
  satellite_uart_txd)
/* synthesis syn_black_box black_box_pad_pin="satellite_gpio[3:0],aclk_ctrl,aresetn_ctrl,interrupt_host,qsfp0_modprs_l[0:0],qsfp1_modprs_l[0:0],qsfp0_int_l[0:0],qsfp1_int_l[0:0],qsfp0_lpmode[0:0],qsfp1_lpmode[0:0],qsfp0_modsel_l[0:0],qsfp1_modsel_l[0:0],qsfp0_reset_l[0:0],qsfp1_reset_l[0:0],s_axi_ctrl_awaddr[17:0],s_axi_ctrl_awprot[2:0],s_axi_ctrl_awvalid[0:0],s_axi_ctrl_awready[0:0],s_axi_ctrl_wdata[31:0],s_axi_ctrl_wstrb[3:0],s_axi_ctrl_wvalid[0:0],s_axi_ctrl_wready[0:0],s_axi_ctrl_bresp[1:0],s_axi_ctrl_bvalid[0:0],s_axi_ctrl_bready[0:0],s_axi_ctrl_araddr[17:0],s_axi_ctrl_arprot[2:0],s_axi_ctrl_arvalid[0:0],s_axi_ctrl_arready[0:0],s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0],s_axi_ctrl_rvalid[0:0],s_axi_ctrl_rready[0:0],satellite_uart_rxd,satellite_uart_txd" */;
  input [3:0]satellite_gpio;
  input aclk_ctrl;
  input aresetn_ctrl;
  output interrupt_host;
  input [0:0]qsfp0_modprs_l;
  input [0:0]qsfp1_modprs_l;
  input [0:0]qsfp0_int_l;
  input [0:0]qsfp1_int_l;
  output [0:0]qsfp0_lpmode;
  output [0:0]qsfp1_lpmode;
  output [0:0]qsfp0_modsel_l;
  output [0:0]qsfp1_modsel_l;
  output [0:0]qsfp0_reset_l;
  output [0:0]qsfp1_reset_l;
  input [17:0]s_axi_ctrl_awaddr;
  input [2:0]s_axi_ctrl_awprot;
  input [0:0]s_axi_ctrl_awvalid;
  output [0:0]s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_wdata;
  input [3:0]s_axi_ctrl_wstrb;
  input [0:0]s_axi_ctrl_wvalid;
  output [0:0]s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output [0:0]s_axi_ctrl_bvalid;
  input [0:0]s_axi_ctrl_bready;
  input [17:0]s_axi_ctrl_araddr;
  input [2:0]s_axi_ctrl_arprot;
  input [0:0]s_axi_ctrl_arvalid;
  output [0:0]s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [0:0]s_axi_ctrl_rvalid;
  input [0:0]s_axi_ctrl_rready;
  input satellite_uart_rxd;
  output satellite_uart_txd;
endmodule
