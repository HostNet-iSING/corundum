// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:shell_cmc_subsystem:2.2
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_fb99_shell_cmc_subsystem_0 (
  satellite_gpio,
  aclk_ctrl,
  aresetn_ctrl,
  mdm_debug_sys_rst,
  interrupt_hbm_cattrip,
  hbm_temp_1,
  hbm_temp_2,
  interrupt_host,
  qsfp0_modprs_l,
  qsfp1_modprs_l,
  qsfp0_int_l,
  qsfp1_int_l,
  qsfp0_lpmode,
  qsfp1_lpmode,
  qsfp0_modsel_l,
  qsfp1_modsel_l,
  qsfp0_reset_l,
  qsfp1_reset_l,
  mdm_mbdebug_capture,
  mdm_mbdebug_clk,
  mdm_mbdebug_disable,
  mdm_mbdebug_reg_en,
  mdm_mbdebug_rst,
  mdm_mbdebug_shift,
  mdm_mbdebug_tdi,
  mdm_mbdebug_tdo,
  mdm_mbdebug_update,
  satellite_uart_rxd,
  satellite_uart_txd,
  s_axi_ctrl_mgmt_awaddr,
  s_axi_ctrl_mgmt_awprot,
  s_axi_ctrl_mgmt_awvalid,
  s_axi_ctrl_mgmt_awready,
  s_axi_ctrl_mgmt_wdata,
  s_axi_ctrl_mgmt_wstrb,
  s_axi_ctrl_mgmt_wvalid,
  s_axi_ctrl_mgmt_wready,
  s_axi_ctrl_mgmt_bresp,
  s_axi_ctrl_mgmt_bvalid,
  s_axi_ctrl_mgmt_bready,
  s_axi_ctrl_mgmt_araddr,
  s_axi_ctrl_mgmt_arprot,
  s_axi_ctrl_mgmt_arvalid,
  s_axi_ctrl_mgmt_arready,
  s_axi_ctrl_mgmt_rdata,
  s_axi_ctrl_mgmt_rresp,
  s_axi_ctrl_mgmt_rvalid,
  s_axi_ctrl_mgmt_rready,
  usb_uart_rxd,
  usb_uart_txd
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.satellite_gpio, SENSITIVITY EDGE_RISING, PortWidth 4" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.satellite_gpio INTERRUPT" *)
input wire [3 : 0] satellite_gpio;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, ASSOCIATED_BUSIF s_axi_ctrl_mgmt, ASSOCIATED_RESET aresetn_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *)
input wire aclk_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *)
input wire aresetn_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.mdm_debug_sys_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.mdm_debug_sys_rst RST" *)
input wire mdm_debug_sys_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_hbm_cattrip, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_hbm_cattrip INTERRUPT" *)
input wire [0 : 0] interrupt_hbm_cattrip;
input wire [6 : 0] hbm_temp_1;
input wire [6 : 0] hbm_temp_2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_host, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_host INTERRUPT" *)
output wire interrupt_host;
input wire [0 : 0] qsfp0_modprs_l;
input wire [0 : 0] qsfp1_modprs_l;
input wire [0 : 0] qsfp0_int_l;
input wire [0 : 0] qsfp1_int_l;
output wire [0 : 0] qsfp0_lpmode;
output wire [0 : 0] qsfp1_lpmode;
output wire [0 : 0] qsfp0_modsel_l;
output wire [0 : 0] qsfp1_modsel_l;
output wire [0 : 0] qsfp0_reset_l;
output wire [0 : 0] qsfp1_reset_l;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug CAPTURE" *)
input wire mdm_mbdebug_capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug CLK" *)
input wire mdm_mbdebug_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug DISABLE" *)
input wire mdm_mbdebug_disable;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug REG_EN" *)
input wire [0 : 7] mdm_mbdebug_reg_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug RST" *)
input wire mdm_mbdebug_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug SHIFT" *)
input wire mdm_mbdebug_shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug TDI" *)
input wire mdm_mbdebug_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug TDO" *)
output wire mdm_mbdebug_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mdm_mbdebug UPDATE" *)
input wire mdm_mbdebug_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart RxD" *)
input wire satellite_uart_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart TxD" *)
output wire satellite_uart_txd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWADDR" *)
input wire [17 : 0] s_axi_ctrl_mgmt_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWPROT" *)
input wire [2 : 0] s_axi_ctrl_mgmt_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWVALID" *)
input wire [0 : 0] s_axi_ctrl_mgmt_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt AWREADY" *)
output wire [0 : 0] s_axi_ctrl_mgmt_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WDATA" *)
input wire [31 : 0] s_axi_ctrl_mgmt_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WSTRB" *)
input wire [3 : 0] s_axi_ctrl_mgmt_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WVALID" *)
input wire [0 : 0] s_axi_ctrl_mgmt_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt WREADY" *)
output wire [0 : 0] s_axi_ctrl_mgmt_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BVALID" *)
output wire [0 : 0] s_axi_ctrl_mgmt_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt BREADY" *)
input wire [0 : 0] s_axi_ctrl_mgmt_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARADDR" *)
input wire [17 : 0] s_axi_ctrl_mgmt_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARPROT" *)
input wire [2 : 0] s_axi_ctrl_mgmt_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARVALID" *)
input wire [0 : 0] s_axi_ctrl_mgmt_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt ARREADY" *)
output wire [0 : 0] s_axi_ctrl_mgmt_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RDATA" *)
output wire [31 : 0] s_axi_ctrl_mgmt_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RRESP" *)
output wire [1 : 0] s_axi_ctrl_mgmt_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RVALID" *)
output wire [0 : 0] s_axi_ctrl_mgmt_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_mgmt, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_mgmt RREADY" *)
input wire [0 : 0] s_axi_ctrl_mgmt_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *)
input wire usb_uart_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *)
output wire usb_uart_txd;

  // Begin VIP insertion code
  // Wire declarations for VIP bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt
  wire [17:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWADDR;
  wire [2:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWPROT;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWVALID;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWREADY;
  wire [31:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WDATA;
  wire [3:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WSTRB;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WVALID;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WREADY;
  wire [1:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BRESP;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BVALID;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BREADY;
  wire [17:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARADDR;
  wire [2:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARPROT;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARVALID;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARREADY;
  wire [31:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RDATA;
  wire [1:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RRESP;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RVALID;
  wire [0:0] bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RREADY;

  // Instantiation of VIP bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt
  bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt VIP_0 (
    .aclk(aclk_ctrl),
    .aresetn(aresetn_ctrl),
    .s_axi_awaddr(s_axi_ctrl_mgmt_awaddr[17:0]),
    .s_axi_awprot(s_axi_ctrl_mgmt_awprot[2:0]),
    .s_axi_awvalid(s_axi_ctrl_mgmt_awvalid[0:0]),
    .s_axi_awready(s_axi_ctrl_mgmt_awready[0:0]),
    .s_axi_wdata(s_axi_ctrl_mgmt_wdata[31:0]),
    .s_axi_wstrb(s_axi_ctrl_mgmt_wstrb[3:0]),
    .s_axi_wvalid(s_axi_ctrl_mgmt_wvalid[0:0]),
    .s_axi_wready(s_axi_ctrl_mgmt_wready[0:0]),
    .s_axi_bresp(s_axi_ctrl_mgmt_bresp[1:0]),
    .s_axi_bvalid(s_axi_ctrl_mgmt_bvalid[0:0]),
    .s_axi_bready(s_axi_ctrl_mgmt_bready[0:0]),
    .s_axi_araddr(s_axi_ctrl_mgmt_araddr[17:0]),
    .s_axi_arprot(s_axi_ctrl_mgmt_arprot[2:0]),
    .s_axi_arvalid(s_axi_ctrl_mgmt_arvalid[0:0]),
    .s_axi_arready(s_axi_ctrl_mgmt_arready[0:0]),
    .s_axi_rdata(s_axi_ctrl_mgmt_rdata[31:0]),
    .s_axi_rresp(s_axi_ctrl_mgmt_rresp[1:0]),
    .s_axi_rvalid(s_axi_ctrl_mgmt_rvalid[0:0]),
    .s_axi_rready(s_axi_ctrl_mgmt_rready[0:0]),
    .m_axi_awaddr(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWADDR[17:0]),
    .m_axi_awprot(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWPROT[2:0]),
    .m_axi_awvalid(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWVALID[0:0]),
    .m_axi_awready(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWREADY[0:0]),
    .m_axi_wdata(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WDATA[31:0]),
    .m_axi_wstrb(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WSTRB[3:0]),
    .m_axi_wvalid(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WVALID[0:0]),
    .m_axi_wready(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WREADY[0:0]),
    .m_axi_bresp(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BRESP[1:0]),
    .m_axi_bvalid(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BVALID[0:0]),
    .m_axi_bready(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BREADY[0:0]),
    .m_axi_araddr(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARADDR[17:0]),
    .m_axi_arprot(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARPROT[2:0]),
    .m_axi_arvalid(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARVALID[0:0]),
    .m_axi_arready(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARREADY[0:0]),
    .m_axi_rdata(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RDATA[31:0]),
    .m_axi_rresp(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RRESP[1:0]),
    .m_axi_rvalid(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RVALID[0:0]),
    .m_axi_rready(bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RREADY[0:0])
  );

  wire [17:0] s_axi_ctrl_mgmt_awaddr_joined;
  assign s_axi_ctrl_mgmt_awaddr_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWADDR};
  wire [2:0] s_axi_ctrl_mgmt_awprot_joined;
  assign s_axi_ctrl_mgmt_awprot_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWPROT};
  wire [0:0] s_axi_ctrl_mgmt_awvalid_joined;
  assign s_axi_ctrl_mgmt_awvalid_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWVALID};
  wire [31:0] s_axi_ctrl_mgmt_wdata_joined;
  assign s_axi_ctrl_mgmt_wdata_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WDATA};
  wire [3:0] s_axi_ctrl_mgmt_wstrb_joined;
  assign s_axi_ctrl_mgmt_wstrb_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WSTRB};
  wire [0:0] s_axi_ctrl_mgmt_wvalid_joined;
  assign s_axi_ctrl_mgmt_wvalid_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WVALID};
  wire [0:0] s_axi_ctrl_mgmt_bready_joined;
  assign s_axi_ctrl_mgmt_bready_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BREADY};
  wire [17:0] s_axi_ctrl_mgmt_araddr_joined;
  assign s_axi_ctrl_mgmt_araddr_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARADDR};
  wire [2:0] s_axi_ctrl_mgmt_arprot_joined;
  assign s_axi_ctrl_mgmt_arprot_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARPROT};
  wire [0:0] s_axi_ctrl_mgmt_arvalid_joined;
  assign s_axi_ctrl_mgmt_arvalid_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARVALID};
  wire [0:0] s_axi_ctrl_mgmt_rready_joined;
  assign s_axi_ctrl_mgmt_rready_joined = {bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RREADY};
  wire [0:0] s_axi_ctrl_mgmt_awready_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_AWREADY = s_axi_ctrl_mgmt_awready_split[0:0];
  wire [0:0] s_axi_ctrl_mgmt_wready_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_WREADY = s_axi_ctrl_mgmt_wready_split[0:0];
  wire [1:0] s_axi_ctrl_mgmt_bresp_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BRESP = s_axi_ctrl_mgmt_bresp_split[1:0];
  wire [0:0] s_axi_ctrl_mgmt_bvalid_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_BVALID = s_axi_ctrl_mgmt_bvalid_split[0:0];
  wire [0:0] s_axi_ctrl_mgmt_arready_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_ARREADY = s_axi_ctrl_mgmt_arready_split[0:0];
  wire [31:0] s_axi_ctrl_mgmt_rdata_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RDATA = s_axi_ctrl_mgmt_rdata_split[31:0];
  wire [1:0] s_axi_ctrl_mgmt_rresp_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RRESP = s_axi_ctrl_mgmt_rresp_split[1:0];
  wire [0:0] s_axi_ctrl_mgmt_rvalid_split;
  assign bd_fb99_shell_cmc_subsystem_0_s_axi_ctrl_mgmt_RVALID = s_axi_ctrl_mgmt_rvalid_split[0:0];

  // End of VIP insertion

  bd_43c9 inst (
    .satellite_gpio(satellite_gpio),
    .aclk_ctrl(aclk_ctrl),
    .aresetn_ctrl(aresetn_ctrl),
    .mdm_debug_sys_rst(mdm_debug_sys_rst),
    .interrupt_hbm_cattrip(interrupt_hbm_cattrip),
    .hbm_temp_1(hbm_temp_1),
    .hbm_temp_2(hbm_temp_2),
    .interrupt_host(interrupt_host),
    .qsfp0_modprs_l(qsfp0_modprs_l),
    .qsfp1_modprs_l(qsfp1_modprs_l),
    .qsfp0_int_l(qsfp0_int_l),
    .qsfp1_int_l(qsfp1_int_l),
    .qsfp0_lpmode(qsfp0_lpmode),
    .qsfp1_lpmode(qsfp1_lpmode),
    .qsfp0_modsel_l(qsfp0_modsel_l),
    .qsfp1_modsel_l(qsfp1_modsel_l),
    .qsfp0_reset_l(qsfp0_reset_l),
    .qsfp1_reset_l(qsfp1_reset_l),
    .mdm_mbdebug_capture(mdm_mbdebug_capture),
    .mdm_mbdebug_clk(mdm_mbdebug_clk),
    .mdm_mbdebug_disable(mdm_mbdebug_disable),
    .mdm_mbdebug_reg_en(mdm_mbdebug_reg_en),
    .mdm_mbdebug_rst(mdm_mbdebug_rst),
    .mdm_mbdebug_shift(mdm_mbdebug_shift),
    .mdm_mbdebug_tdi(mdm_mbdebug_tdi),
    .mdm_mbdebug_tdo(mdm_mbdebug_tdo),
    .mdm_mbdebug_update(mdm_mbdebug_update),
    .satellite_uart_rxd(satellite_uart_rxd),
    .satellite_uart_txd(satellite_uart_txd),
    .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_mgmt_awaddr_joined),
    .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_mgmt_awprot_joined),
    .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_mgmt_awvalid_joined),
    .s_axi_ctrl_mgmt_awready(s_axi_ctrl_mgmt_awready_split),
    .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_mgmt_wdata_joined),
    .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_mgmt_wstrb_joined),
    .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_mgmt_wvalid_joined),
    .s_axi_ctrl_mgmt_wready(s_axi_ctrl_mgmt_wready_split),
    .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_mgmt_bresp_split),
    .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_mgmt_bvalid_split),
    .s_axi_ctrl_mgmt_bready(s_axi_ctrl_mgmt_bready_joined),
    .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_mgmt_araddr_joined),
    .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_mgmt_arprot_joined),
    .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_mgmt_arvalid_joined),
    .s_axi_ctrl_mgmt_arready(s_axi_ctrl_mgmt_arready_split),
    .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_mgmt_rdata_split),
    .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_mgmt_rresp_split),
    .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_mgmt_rvalid_split),
    .s_axi_ctrl_mgmt_rready(s_axi_ctrl_mgmt_rready_joined),
    .usb_uart_rxd(usb_uart_rxd),
    .usb_uart_txd(usb_uart_txd)
  );
endmodule
