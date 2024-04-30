// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:45:50 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_shell_cmc_subsystem_0_stub.v
// Design      : bd_fb99_shell_cmc_subsystem_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_43c9,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(satellite_gpio, aclk_ctrl, aresetn_ctrl, 
  mdm_debug_sys_rst, interrupt_hbm_cattrip, hbm_temp_1, hbm_temp_2, interrupt_host, 
  qsfp0_modprs_l, qsfp1_modprs_l, qsfp0_int_l, qsfp1_int_l, qsfp0_lpmode, qsfp1_lpmode, 
  qsfp0_modsel_l, qsfp1_modsel_l, qsfp0_reset_l, qsfp1_reset_l, mdm_mbdebug_capture, 
  mdm_mbdebug_clk, mdm_mbdebug_disable, mdm_mbdebug_reg_en, mdm_mbdebug_rst, 
  mdm_mbdebug_shift, mdm_mbdebug_tdi, mdm_mbdebug_tdo, mdm_mbdebug_update, 
  satellite_uart_rxd, satellite_uart_txd, s_axi_ctrl_mgmt_awaddr, s_axi_ctrl_mgmt_awprot, 
  s_axi_ctrl_mgmt_awvalid, s_axi_ctrl_mgmt_awready, s_axi_ctrl_mgmt_wdata, 
  s_axi_ctrl_mgmt_wstrb, s_axi_ctrl_mgmt_wvalid, s_axi_ctrl_mgmt_wready, 
  s_axi_ctrl_mgmt_bresp, s_axi_ctrl_mgmt_bvalid, s_axi_ctrl_mgmt_bready, 
  s_axi_ctrl_mgmt_araddr, s_axi_ctrl_mgmt_arprot, s_axi_ctrl_mgmt_arvalid, 
  s_axi_ctrl_mgmt_arready, s_axi_ctrl_mgmt_rdata, s_axi_ctrl_mgmt_rresp, 
  s_axi_ctrl_mgmt_rvalid, s_axi_ctrl_mgmt_rready, usb_uart_rxd, usb_uart_txd)
/* synthesis syn_black_box black_box_pad_pin="satellite_gpio[3:0],aclk_ctrl,aresetn_ctrl,mdm_debug_sys_rst,interrupt_hbm_cattrip[0:0],hbm_temp_1[6:0],hbm_temp_2[6:0],interrupt_host,qsfp0_modprs_l[0:0],qsfp1_modprs_l[0:0],qsfp0_int_l[0:0],qsfp1_int_l[0:0],qsfp0_lpmode[0:0],qsfp1_lpmode[0:0],qsfp0_modsel_l[0:0],qsfp1_modsel_l[0:0],qsfp0_reset_l[0:0],qsfp1_reset_l[0:0],mdm_mbdebug_capture,mdm_mbdebug_clk,mdm_mbdebug_disable,mdm_mbdebug_reg_en[0:7],mdm_mbdebug_rst,mdm_mbdebug_shift,mdm_mbdebug_tdi,mdm_mbdebug_tdo,mdm_mbdebug_update,satellite_uart_rxd,satellite_uart_txd,s_axi_ctrl_mgmt_awaddr[17:0],s_axi_ctrl_mgmt_awprot[2:0],s_axi_ctrl_mgmt_awvalid[0:0],s_axi_ctrl_mgmt_awready[0:0],s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid[0:0],s_axi_ctrl_mgmt_wready[0:0],s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid[0:0],s_axi_ctrl_mgmt_bready[0:0],s_axi_ctrl_mgmt_araddr[17:0],s_axi_ctrl_mgmt_arprot[2:0],s_axi_ctrl_mgmt_arvalid[0:0],s_axi_ctrl_mgmt_arready[0:0],s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid[0:0],s_axi_ctrl_mgmt_rready[0:0],usb_uart_rxd,usb_uart_txd" */;
  input [3:0]satellite_gpio;
  input aclk_ctrl;
  input aresetn_ctrl;
  input mdm_debug_sys_rst;
  input [0:0]interrupt_hbm_cattrip;
  input [6:0]hbm_temp_1;
  input [6:0]hbm_temp_2;
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
  input mdm_mbdebug_capture;
  input mdm_mbdebug_clk;
  input mdm_mbdebug_disable;
  input [0:7]mdm_mbdebug_reg_en;
  input mdm_mbdebug_rst;
  input mdm_mbdebug_shift;
  input mdm_mbdebug_tdi;
  output mdm_mbdebug_tdo;
  input mdm_mbdebug_update;
  input satellite_uart_rxd;
  output satellite_uart_txd;
  input [17:0]s_axi_ctrl_mgmt_awaddr;
  input [2:0]s_axi_ctrl_mgmt_awprot;
  input [0:0]s_axi_ctrl_mgmt_awvalid;
  output [0:0]s_axi_ctrl_mgmt_awready;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input [0:0]s_axi_ctrl_mgmt_wvalid;
  output [0:0]s_axi_ctrl_mgmt_wready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output [0:0]s_axi_ctrl_mgmt_bvalid;
  input [0:0]s_axi_ctrl_mgmt_bready;
  input [17:0]s_axi_ctrl_mgmt_araddr;
  input [2:0]s_axi_ctrl_mgmt_arprot;
  input [0:0]s_axi_ctrl_mgmt_arvalid;
  output [0:0]s_axi_ctrl_mgmt_arready;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output [0:0]s_axi_ctrl_mgmt_rvalid;
  input [0:0]s_axi_ctrl_mgmt_rready;
  input usb_uart_rxd;
  output usb_uart_txd;
endmodule
