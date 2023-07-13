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


// IP VLNV: xilinx.com:ip:cms_subsystem:4.0
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module cms_cms_subsystem_0_0 (
  satellite_gpio,
  aclk_ctrl,
  aresetn_ctrl,
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
  satellite_uart_rxd,
  satellite_uart_txd,
  s_axi_ctrl_awaddr,
  s_axi_ctrl_awprot,
  s_axi_ctrl_awvalid,
  s_axi_ctrl_awready,
  s_axi_ctrl_wdata,
  s_axi_ctrl_wstrb,
  s_axi_ctrl_wvalid,
  s_axi_ctrl_wready,
  s_axi_ctrl_bresp,
  s_axi_ctrl_bvalid,
  s_axi_ctrl_bready,
  s_axi_ctrl_araddr,
  s_axi_ctrl_arprot,
  s_axi_ctrl_arvalid,
  s_axi_ctrl_arready,
  s_axi_ctrl_rdata,
  s_axi_ctrl_rresp,
  s_axi_ctrl_rvalid,
  s_axi_ctrl_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.satellite_gpio, SENSITIVITY EDGE_RISING, PortWidth 4" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.satellite_gpio INTERRUPT" *)
input wire [3 : 0] satellite_gpio;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET aresetn_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *)
input wire aclk_ctrl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *)
input wire aresetn_ctrl;
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
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart RxD" *)
input wire satellite_uart_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart TxD" *)
output wire satellite_uart_txd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *)
input wire [17 : 0] s_axi_ctrl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *)
input wire [2 : 0] s_axi_ctrl_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *)
input wire [0 : 0] s_axi_ctrl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *)
output wire [0 : 0] s_axi_ctrl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *)
input wire [31 : 0] s_axi_ctrl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *)
input wire [3 : 0] s_axi_ctrl_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *)
input wire [0 : 0] s_axi_ctrl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *)
output wire [0 : 0] s_axi_ctrl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *)
output wire [1 : 0] s_axi_ctrl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *)
output wire [0 : 0] s_axi_ctrl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *)
input wire [0 : 0] s_axi_ctrl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *)
input wire [17 : 0] s_axi_ctrl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *)
input wire [2 : 0] s_axi_ctrl_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *)
input wire [0 : 0] s_axi_ctrl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *)
output wire [0 : 0] s_axi_ctrl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *)
output wire [31 : 0] s_axi_ctrl_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *)
output wire [1 : 0] s_axi_ctrl_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *)
output wire [0 : 0] s_axi_ctrl_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *)
input wire [0 : 0] s_axi_ctrl_rready;

  // Begin VIP insertion code
  // Wire declarations for VIP cms_cms_subsystem_0_0_s_axi_ctrl
  wire [17:0] cms_cms_subsystem_0_0_s_axi_ctrl_AWADDR;
  wire [2:0] cms_cms_subsystem_0_0_s_axi_ctrl_AWPROT;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_AWVALID;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_AWREADY;
  wire [31:0] cms_cms_subsystem_0_0_s_axi_ctrl_WDATA;
  wire [3:0] cms_cms_subsystem_0_0_s_axi_ctrl_WSTRB;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_WVALID;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_WREADY;
  wire [1:0] cms_cms_subsystem_0_0_s_axi_ctrl_BRESP;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_BVALID;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_BREADY;
  wire [17:0] cms_cms_subsystem_0_0_s_axi_ctrl_ARADDR;
  wire [2:0] cms_cms_subsystem_0_0_s_axi_ctrl_ARPROT;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_ARVALID;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_ARREADY;
  wire [31:0] cms_cms_subsystem_0_0_s_axi_ctrl_RDATA;
  wire [1:0] cms_cms_subsystem_0_0_s_axi_ctrl_RRESP;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_RVALID;
  wire [0:0] cms_cms_subsystem_0_0_s_axi_ctrl_RREADY;

  // Instantiation of VIP cms_cms_subsystem_0_0_s_axi_ctrl
  cms_cms_subsystem_0_0_s_axi_ctrl VIP_0 (
    .aclk(aclk_ctrl),
    .aresetn(aresetn_ctrl),
    .s_axi_awaddr(s_axi_ctrl_awaddr[17:0]),
    .s_axi_awvalid(s_axi_ctrl_awvalid[0:0]),
    .s_axi_awready(s_axi_ctrl_awready[0:0]),
    .s_axi_wdata(s_axi_ctrl_wdata[31:0]),
    .s_axi_wstrb(s_axi_ctrl_wstrb[3:0]),
    .s_axi_wvalid(s_axi_ctrl_wvalid[0:0]),
    .s_axi_wready(s_axi_ctrl_wready[0:0]),
    .s_axi_bresp(s_axi_ctrl_bresp[1:0]),
    .s_axi_bvalid(s_axi_ctrl_bvalid[0:0]),
    .s_axi_bready(s_axi_ctrl_bready[0:0]),
    .s_axi_araddr(s_axi_ctrl_araddr[17:0]),
    .s_axi_arvalid(s_axi_ctrl_arvalid[0:0]),
    .s_axi_arready(s_axi_ctrl_arready[0:0]),
    .s_axi_rdata(s_axi_ctrl_rdata[31:0]),
    .s_axi_rresp(s_axi_ctrl_rresp[1:0]),
    .s_axi_rvalid(s_axi_ctrl_rvalid[0:0]),
    .s_axi_rready(s_axi_ctrl_rready[0:0]),
    .m_axi_awaddr(cms_cms_subsystem_0_0_s_axi_ctrl_AWADDR[17:0]),
    .m_axi_awvalid(cms_cms_subsystem_0_0_s_axi_ctrl_AWVALID[0:0]),
    .m_axi_awready(cms_cms_subsystem_0_0_s_axi_ctrl_AWREADY[0:0]),
    .m_axi_wdata(cms_cms_subsystem_0_0_s_axi_ctrl_WDATA[31:0]),
    .m_axi_wstrb(cms_cms_subsystem_0_0_s_axi_ctrl_WSTRB[3:0]),
    .m_axi_wvalid(cms_cms_subsystem_0_0_s_axi_ctrl_WVALID[0:0]),
    .m_axi_wready(cms_cms_subsystem_0_0_s_axi_ctrl_WREADY[0:0]),
    .m_axi_bresp(cms_cms_subsystem_0_0_s_axi_ctrl_BRESP[1:0]),
    .m_axi_bvalid(cms_cms_subsystem_0_0_s_axi_ctrl_BVALID[0:0]),
    .m_axi_bready(cms_cms_subsystem_0_0_s_axi_ctrl_BREADY[0:0]),
    .m_axi_araddr(cms_cms_subsystem_0_0_s_axi_ctrl_ARADDR[17:0]),
    .m_axi_arvalid(cms_cms_subsystem_0_0_s_axi_ctrl_ARVALID[0:0]),
    .m_axi_arready(cms_cms_subsystem_0_0_s_axi_ctrl_ARREADY[0:0]),
    .m_axi_rdata(cms_cms_subsystem_0_0_s_axi_ctrl_RDATA[31:0]),
    .m_axi_rresp(cms_cms_subsystem_0_0_s_axi_ctrl_RRESP[1:0]),
    .m_axi_rvalid(cms_cms_subsystem_0_0_s_axi_ctrl_RVALID[0:0]),
    .m_axi_rready(cms_cms_subsystem_0_0_s_axi_ctrl_RREADY[0:0])
  );

  wire [17:0] s_axi_ctrl_awaddr_joined;
  assign s_axi_ctrl_awaddr_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_AWADDR};
  wire [2:0] s_axi_ctrl_awprot_joined;
  assign s_axi_ctrl_awprot_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_AWPROT};
  wire [0:0] s_axi_ctrl_awvalid_joined;
  assign s_axi_ctrl_awvalid_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_AWVALID};
  wire [31:0] s_axi_ctrl_wdata_joined;
  assign s_axi_ctrl_wdata_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_WDATA};
  wire [3:0] s_axi_ctrl_wstrb_joined;
  assign s_axi_ctrl_wstrb_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_WSTRB};
  wire [0:0] s_axi_ctrl_wvalid_joined;
  assign s_axi_ctrl_wvalid_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_WVALID};
  wire [0:0] s_axi_ctrl_bready_joined;
  assign s_axi_ctrl_bready_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_BREADY};
  wire [17:0] s_axi_ctrl_araddr_joined;
  assign s_axi_ctrl_araddr_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_ARADDR};
  wire [2:0] s_axi_ctrl_arprot_joined;
  assign s_axi_ctrl_arprot_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_ARPROT};
  wire [0:0] s_axi_ctrl_arvalid_joined;
  assign s_axi_ctrl_arvalid_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_ARVALID};
  wire [0:0] s_axi_ctrl_rready_joined;
  assign s_axi_ctrl_rready_joined = {cms_cms_subsystem_0_0_s_axi_ctrl_RREADY};
  wire [0:0] s_axi_ctrl_awready_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_AWREADY = s_axi_ctrl_awready_split[0:0];
  wire [0:0] s_axi_ctrl_wready_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_WREADY = s_axi_ctrl_wready_split[0:0];
  wire [1:0] s_axi_ctrl_bresp_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_BRESP = s_axi_ctrl_bresp_split[1:0];
  wire [0:0] s_axi_ctrl_bvalid_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_BVALID = s_axi_ctrl_bvalid_split[0:0];
  wire [0:0] s_axi_ctrl_arready_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_ARREADY = s_axi_ctrl_arready_split[0:0];
  wire [31:0] s_axi_ctrl_rdata_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_RDATA = s_axi_ctrl_rdata_split[31:0];
  wire [1:0] s_axi_ctrl_rresp_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_RRESP = s_axi_ctrl_rresp_split[1:0];
  wire [0:0] s_axi_ctrl_rvalid_split;
  assign cms_cms_subsystem_0_0_s_axi_ctrl_RVALID = s_axi_ctrl_rvalid_split[0:0];

  // End of VIP insertion

  bd_fb99 inst (
    .satellite_gpio(satellite_gpio),
    .aclk_ctrl(aclk_ctrl),
    .aresetn_ctrl(aresetn_ctrl),
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
    .satellite_uart_rxd(satellite_uart_rxd),
    .satellite_uart_txd(satellite_uart_txd),
    .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr_joined),
    .s_axi_ctrl_awprot(s_axi_ctrl_awprot_joined),
    .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid_joined),
    .s_axi_ctrl_awready(s_axi_ctrl_awready_split),
    .s_axi_ctrl_wdata(s_axi_ctrl_wdata_joined),
    .s_axi_ctrl_wstrb(s_axi_ctrl_wstrb_joined),
    .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid_joined),
    .s_axi_ctrl_wready(s_axi_ctrl_wready_split),
    .s_axi_ctrl_bresp(s_axi_ctrl_bresp_split),
    .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid_split),
    .s_axi_ctrl_bready(s_axi_ctrl_bready_joined),
    .s_axi_ctrl_araddr(s_axi_ctrl_araddr_joined),
    .s_axi_ctrl_arprot(s_axi_ctrl_arprot_joined),
    .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid_joined),
    .s_axi_ctrl_arready(s_axi_ctrl_arready_split),
    .s_axi_ctrl_rdata(s_axi_ctrl_rdata_split),
    .s_axi_ctrl_rresp(s_axi_ctrl_rresp_split),
    .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid_split),
    .s_axi_ctrl_rready(s_axi_ctrl_rready_joined)
  );
endmodule
