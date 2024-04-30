// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:47:07 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/cms_cms_subsystem_0_0_sim_netlist.v
// Design      : cms_cms_subsystem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cms_cms_subsystem_0_0,bd_fb99,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_fb99,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module cms_cms_subsystem_0_0
   (satellite_gpio,
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
    s_axi_ctrl_rready,
    satellite_uart_rxd,
    satellite_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.satellite_gpio INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.satellite_gpio, SENSITIVITY EDGE_RISING, PortWidth 4" *) input [3:0]satellite_gpio;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET aresetn_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN CE" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.interrupt_host INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.interrupt_host, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt_host;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [17:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input [0:0]s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output [0:0]s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input [0:0]s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output [0:0]s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output [0:0]s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input [0:0]s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) input [17:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input [0:0]s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output [0:0]s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output [0:0]s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1" *) input [0:0]s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart RxD" *) input satellite_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart TxD" *) output satellite_uart_txd;

  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire interrupt_host;
  wire [0:0]qsfp0_int_l;
  wire [0:0]qsfp0_lpmode;
  wire [0:0]qsfp0_modprs_l;
  wire [0:0]qsfp0_modsel_l;
  wire [0:0]qsfp0_reset_l;
  wire [0:0]qsfp1_int_l;
  wire [0:0]qsfp1_lpmode;
  wire [0:0]qsfp1_modprs_l;
  wire [0:0]qsfp1_modsel_l;
  wire [0:0]qsfp1_reset_l;
  wire [17:0]s_axi_ctrl_araddr;
  wire [2:0]s_axi_ctrl_arprot;
  wire [0:0]s_axi_ctrl_arready;
  wire [0:0]s_axi_ctrl_arvalid;
  wire [17:0]s_axi_ctrl_awaddr;
  wire [2:0]s_axi_ctrl_awprot;
  wire [0:0]s_axi_ctrl_awready;
  wire [0:0]s_axi_ctrl_awvalid;
  wire [0:0]s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire [0:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire [0:0]s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire [0:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire [0:0]s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire [0:0]s_axi_ctrl_wvalid;
  wire [3:0]satellite_gpio;
  wire satellite_uart_rxd;
  wire satellite_uart_txd;

  (* HW_HANDOFF = "cms_cms_subsystem_0_0.hwdef" *) 
  cms_cms_subsystem_0_0_bd_fb99 inst
       (.aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .interrupt_host(interrupt_host),
        .qsfp0_int_l(qsfp0_int_l),
        .qsfp0_lpmode(qsfp0_lpmode),
        .qsfp0_modprs_l(qsfp0_modprs_l),
        .qsfp0_modsel_l(qsfp0_modsel_l),
        .qsfp0_reset_l(qsfp0_reset_l),
        .qsfp1_int_l(qsfp1_int_l),
        .qsfp1_lpmode(qsfp1_lpmode),
        .qsfp1_modprs_l(qsfp1_modprs_l),
        .qsfp1_modsel_l(qsfp1_modsel_l),
        .qsfp1_reset_l(qsfp1_reset_l),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arprot(s_axi_ctrl_arprot),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awprot(s_axi_ctrl_awprot),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wstrb(s_axi_ctrl_wstrb),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .satellite_gpio(satellite_gpio),
        .satellite_uart_rxd(satellite_uart_rxd),
        .satellite_uart_txd(satellite_uart_txd));
endmodule

(* HW_HANDOFF = "cms_cms_subsystem_0_0.hwdef" *) (* ORIG_REF_NAME = "bd_fb99" *) 
module cms_cms_subsystem_0_0_bd_fb99
   (aclk_ctrl,
    aresetn_ctrl,
    interrupt_host,
    qsfp0_int_l,
    qsfp0_lpmode,
    qsfp0_modprs_l,
    qsfp0_modsel_l,
    qsfp0_reset_l,
    qsfp1_int_l,
    qsfp1_lpmode,
    qsfp1_modprs_l,
    qsfp1_modsel_l,
    qsfp1_reset_l,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wready,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    satellite_gpio,
    satellite_uart_rxd,
    satellite_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN cms_aclk_ctrl_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_HOST INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_HOST, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_host;
  input [0:0]qsfp0_int_l;
  output [0:0]qsfp0_lpmode;
  input [0:0]qsfp0_modprs_l;
  output [0:0]qsfp0_modsel_l;
  output [0:0]qsfp0_reset_l;
  input [0:0]qsfp1_int_l;
  output [0:0]qsfp1_lpmode;
  input [0:0]qsfp1_modprs_l;
  output [0:0]qsfp1_modsel_l;
  output [0:0]qsfp1_reset_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cms_aclk_ctrl_0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output [0:0]s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input [0:0]s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [17:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output [0:0]s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input [0:0]s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input [0:0]s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output [0:0]s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input [0:0]s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output [0:0]s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output [0:0]s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input [0:0]s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.SATELLITE_GPIO INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.SATELLITE_GPIO, PortWidth 4, SENSITIVITY EDGE_RISING" *) input [3:0]satellite_gpio;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart RxD" *) input satellite_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart TxD" *) output satellite_uart_txd;

  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire interrupt_host;
  wire [0:0]qsfp0_int_l;
  wire [0:0]qsfp0_lpmode;
  wire [0:0]qsfp0_modprs_l;
  wire [0:0]qsfp0_modsel_l;
  wire [0:0]qsfp0_reset_l;
  wire [0:0]qsfp1_int_l;
  wire [0:0]qsfp1_lpmode;
  wire [0:0]qsfp1_modprs_l;
  wire [0:0]qsfp1_modsel_l;
  wire [0:0]qsfp1_reset_l;
  wire [17:0]s_axi_ctrl_araddr;
  wire [2:0]s_axi_ctrl_arprot;
  wire [0:0]s_axi_ctrl_arready;
  wire [0:0]s_axi_ctrl_arvalid;
  wire [17:0]s_axi_ctrl_awaddr;
  wire [2:0]s_axi_ctrl_awprot;
  wire [0:0]s_axi_ctrl_awready;
  wire [0:0]s_axi_ctrl_awvalid;
  wire [0:0]s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire [0:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire [0:0]s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire [0:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire [0:0]s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire [0:0]s_axi_ctrl_wvalid;
  wire [3:0]satellite_gpio;
  wire satellite_uart_rxd;
  wire satellite_uart_txd;
  wire NLW_shell_cmc_subsystem_mdm_mbdebug_tdo_UNCONNECTED;
  wire NLW_shell_cmc_subsystem_usb_uart_txd_UNCONNECTED;

  (* X_CORE_INFO = "bd_43c9,Vivado 2021.1" *) 
  cms_cms_subsystem_0_0_bd_fb99_shell_cmc_subsystem_0 shell_cmc_subsystem
       (.aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .hbm_temp_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hbm_temp_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .interrupt_hbm_cattrip(1'b0),
        .interrupt_host(interrupt_host),
        .mdm_debug_sys_rst(1'b0),
        .mdm_mbdebug_capture(1'b0),
        .mdm_mbdebug_clk(1'b0),
        .mdm_mbdebug_disable(1'b0),
        .mdm_mbdebug_reg_en({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .mdm_mbdebug_rst(1'b0),
        .mdm_mbdebug_shift(1'b0),
        .mdm_mbdebug_tdi(1'b0),
        .mdm_mbdebug_tdo(NLW_shell_cmc_subsystem_mdm_mbdebug_tdo_UNCONNECTED),
        .mdm_mbdebug_update(1'b0),
        .qsfp0_int_l(qsfp0_int_l),
        .qsfp0_lpmode(qsfp0_lpmode),
        .qsfp0_modprs_l(qsfp0_modprs_l),
        .qsfp0_modsel_l(qsfp0_modsel_l),
        .qsfp0_reset_l(qsfp0_reset_l),
        .qsfp1_int_l(qsfp1_int_l),
        .qsfp1_lpmode(qsfp1_lpmode),
        .qsfp1_modprs_l(qsfp1_modprs_l),
        .qsfp1_modsel_l(qsfp1_modsel_l),
        .qsfp1_reset_l(qsfp1_reset_l),
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_arprot),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_awprot),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_wstrb),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_wvalid),
        .satellite_gpio(satellite_gpio),
        .satellite_uart_rxd(satellite_uart_rxd),
        .satellite_uart_txd(satellite_uart_txd),
        .usb_uart_rxd(1'b0),
        .usb_uart_txd(NLW_shell_cmc_subsystem_usb_uart_txd_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "bd_fb99_shell_cmc_subsystem_0" *) (* X_CORE_INFO = "bd_43c9,Vivado 2021.1" *) 
module cms_cms_subsystem_0_0_bd_fb99_shell_cmc_subsystem_0
   (satellite_gpio,
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
    usb_uart_txd);
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
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
