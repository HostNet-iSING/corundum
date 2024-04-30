//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Tue Dec 19 07:31:15 2023
//Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target cms_wrapper.bd
//Design      : cms_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cms_wrapper
   (aclk_ctrl_0,
    aresetn_ctrl_0,
    interrupt_host_0,
    qsfp0_int_l_0,
    qsfp0_lpmode_0,
    qsfp0_modprs_l_0,
    qsfp0_modsel_l_0,
    qsfp0_reset_l_0,
    qsfp1_int_l_0,
    qsfp1_lpmode_0,
    qsfp1_modprs_l_0,
    qsfp1_modsel_l_0,
    qsfp1_reset_l_0,
    s_axi_ctrl_0_araddr,
    s_axi_ctrl_0_arprot,
    s_axi_ctrl_0_arready,
    s_axi_ctrl_0_arvalid,
    s_axi_ctrl_0_awaddr,
    s_axi_ctrl_0_awprot,
    s_axi_ctrl_0_awready,
    s_axi_ctrl_0_awvalid,
    s_axi_ctrl_0_bready,
    s_axi_ctrl_0_bresp,
    s_axi_ctrl_0_bvalid,
    s_axi_ctrl_0_rdata,
    s_axi_ctrl_0_rready,
    s_axi_ctrl_0_rresp,
    s_axi_ctrl_0_rvalid,
    s_axi_ctrl_0_wdata,
    s_axi_ctrl_0_wready,
    s_axi_ctrl_0_wstrb,
    s_axi_ctrl_0_wvalid,
    satellite_gpio_0,
    satellite_uart_0_rxd,
    satellite_uart_0_txd);
  input aclk_ctrl_0;
  input aresetn_ctrl_0;
  output interrupt_host_0;
  input [0:0]qsfp0_int_l_0;
  output [0:0]qsfp0_lpmode_0;
  input [0:0]qsfp0_modprs_l_0;
  output [0:0]qsfp0_modsel_l_0;
  output [0:0]qsfp0_reset_l_0;
  input [0:0]qsfp1_int_l_0;
  output [0:0]qsfp1_lpmode_0;
  input [0:0]qsfp1_modprs_l_0;
  output [0:0]qsfp1_modsel_l_0;
  output [0:0]qsfp1_reset_l_0;
  input [17:0]s_axi_ctrl_0_araddr;
  input [2:0]s_axi_ctrl_0_arprot;
  output [0:0]s_axi_ctrl_0_arready;
  input [0:0]s_axi_ctrl_0_arvalid;
  input [17:0]s_axi_ctrl_0_awaddr;
  input [2:0]s_axi_ctrl_0_awprot;
  output [0:0]s_axi_ctrl_0_awready;
  input [0:0]s_axi_ctrl_0_awvalid;
  input [0:0]s_axi_ctrl_0_bready;
  output [1:0]s_axi_ctrl_0_bresp;
  output [0:0]s_axi_ctrl_0_bvalid;
  output [31:0]s_axi_ctrl_0_rdata;
  input [0:0]s_axi_ctrl_0_rready;
  output [1:0]s_axi_ctrl_0_rresp;
  output [0:0]s_axi_ctrl_0_rvalid;
  input [31:0]s_axi_ctrl_0_wdata;
  output [0:0]s_axi_ctrl_0_wready;
  input [3:0]s_axi_ctrl_0_wstrb;
  input [0:0]s_axi_ctrl_0_wvalid;
  input [3:0]satellite_gpio_0;
  input satellite_uart_0_rxd;
  output satellite_uart_0_txd;

  wire aclk_ctrl_0;
  wire aresetn_ctrl_0;
  wire interrupt_host_0;
  wire [0:0]qsfp0_int_l_0;
  wire [0:0]qsfp0_lpmode_0;
  wire [0:0]qsfp0_modprs_l_0;
  wire [0:0]qsfp0_modsel_l_0;
  wire [0:0]qsfp0_reset_l_0;
  wire [0:0]qsfp1_int_l_0;
  wire [0:0]qsfp1_lpmode_0;
  wire [0:0]qsfp1_modprs_l_0;
  wire [0:0]qsfp1_modsel_l_0;
  wire [0:0]qsfp1_reset_l_0;
  wire [17:0]s_axi_ctrl_0_araddr;
  wire [2:0]s_axi_ctrl_0_arprot;
  wire [0:0]s_axi_ctrl_0_arready;
  wire [0:0]s_axi_ctrl_0_arvalid;
  wire [17:0]s_axi_ctrl_0_awaddr;
  wire [2:0]s_axi_ctrl_0_awprot;
  wire [0:0]s_axi_ctrl_0_awready;
  wire [0:0]s_axi_ctrl_0_awvalid;
  wire [0:0]s_axi_ctrl_0_bready;
  wire [1:0]s_axi_ctrl_0_bresp;
  wire [0:0]s_axi_ctrl_0_bvalid;
  wire [31:0]s_axi_ctrl_0_rdata;
  wire [0:0]s_axi_ctrl_0_rready;
  wire [1:0]s_axi_ctrl_0_rresp;
  wire [0:0]s_axi_ctrl_0_rvalid;
  wire [31:0]s_axi_ctrl_0_wdata;
  wire [0:0]s_axi_ctrl_0_wready;
  wire [3:0]s_axi_ctrl_0_wstrb;
  wire [0:0]s_axi_ctrl_0_wvalid;
  wire [3:0]satellite_gpio_0;
  wire satellite_uart_0_rxd;
  wire satellite_uart_0_txd;

  cms cms_i
       (.aclk_ctrl_0(aclk_ctrl_0),
        .aresetn_ctrl_0(aresetn_ctrl_0),
        .interrupt_host_0(interrupt_host_0),
        .qsfp0_int_l_0(qsfp0_int_l_0),
        .qsfp0_lpmode_0(qsfp0_lpmode_0),
        .qsfp0_modprs_l_0(qsfp0_modprs_l_0),
        .qsfp0_modsel_l_0(qsfp0_modsel_l_0),
        .qsfp0_reset_l_0(qsfp0_reset_l_0),
        .qsfp1_int_l_0(qsfp1_int_l_0),
        .qsfp1_lpmode_0(qsfp1_lpmode_0),
        .qsfp1_modprs_l_0(qsfp1_modprs_l_0),
        .qsfp1_modsel_l_0(qsfp1_modsel_l_0),
        .qsfp1_reset_l_0(qsfp1_reset_l_0),
        .s_axi_ctrl_0_araddr(s_axi_ctrl_0_araddr),
        .s_axi_ctrl_0_arprot(s_axi_ctrl_0_arprot),
        .s_axi_ctrl_0_arready(s_axi_ctrl_0_arready),
        .s_axi_ctrl_0_arvalid(s_axi_ctrl_0_arvalid),
        .s_axi_ctrl_0_awaddr(s_axi_ctrl_0_awaddr),
        .s_axi_ctrl_0_awprot(s_axi_ctrl_0_awprot),
        .s_axi_ctrl_0_awready(s_axi_ctrl_0_awready),
        .s_axi_ctrl_0_awvalid(s_axi_ctrl_0_awvalid),
        .s_axi_ctrl_0_bready(s_axi_ctrl_0_bready),
        .s_axi_ctrl_0_bresp(s_axi_ctrl_0_bresp),
        .s_axi_ctrl_0_bvalid(s_axi_ctrl_0_bvalid),
        .s_axi_ctrl_0_rdata(s_axi_ctrl_0_rdata),
        .s_axi_ctrl_0_rready(s_axi_ctrl_0_rready),
        .s_axi_ctrl_0_rresp(s_axi_ctrl_0_rresp),
        .s_axi_ctrl_0_rvalid(s_axi_ctrl_0_rvalid),
        .s_axi_ctrl_0_wdata(s_axi_ctrl_0_wdata),
        .s_axi_ctrl_0_wready(s_axi_ctrl_0_wready),
        .s_axi_ctrl_0_wstrb(s_axi_ctrl_0_wstrb),
        .s_axi_ctrl_0_wvalid(s_axi_ctrl_0_wvalid),
        .satellite_gpio_0(satellite_gpio_0),
        .satellite_uart_0_rxd(satellite_uart_0_rxd),
        .satellite_uart_0_txd(satellite_uart_0_txd));
endmodule
