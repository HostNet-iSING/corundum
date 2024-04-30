//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_fb99.bd
//Design : bd_fb99
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_fb99,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_fb99,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cms_cms_subsystem_0_0.hwdef" *) 
module bd_fb99
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

  wire aclk_ctrl_net;
  wire aresetn_ctrl_net;
  wire interrupt_host_net;
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
  wire [17:0]s_axi_ctrl_net_ARADDR;
  wire [2:0]s_axi_ctrl_net_ARPROT;
  wire [0:0]s_axi_ctrl_net_ARREADY;
  wire [0:0]s_axi_ctrl_net_ARVALID;
  wire [17:0]s_axi_ctrl_net_AWADDR;
  wire [2:0]s_axi_ctrl_net_AWPROT;
  wire [0:0]s_axi_ctrl_net_AWREADY;
  wire [0:0]s_axi_ctrl_net_AWVALID;
  wire [0:0]s_axi_ctrl_net_BREADY;
  wire [1:0]s_axi_ctrl_net_BRESP;
  wire [0:0]s_axi_ctrl_net_BVALID;
  wire [31:0]s_axi_ctrl_net_RDATA;
  wire [0:0]s_axi_ctrl_net_RREADY;
  wire [1:0]s_axi_ctrl_net_RRESP;
  wire [0:0]s_axi_ctrl_net_RVALID;
  wire [31:0]s_axi_ctrl_net_WDATA;
  wire [0:0]s_axi_ctrl_net_WREADY;
  wire [3:0]s_axi_ctrl_net_WSTRB;
  wire [0:0]s_axi_ctrl_net_WVALID;
  wire [3:0]satellite_gpio_net;
  wire satellite_uart_net_RxD;
  wire satellite_uart_net_TxD;

  assign aclk_ctrl_net = aclk_ctrl;
  assign aresetn_ctrl_net = aresetn_ctrl;
  assign interrupt_host = interrupt_host_net;
  assign s_axi_ctrl_arready[0] = s_axi_ctrl_net_ARREADY;
  assign s_axi_ctrl_awready[0] = s_axi_ctrl_net_AWREADY;
  assign s_axi_ctrl_bresp[1:0] = s_axi_ctrl_net_BRESP;
  assign s_axi_ctrl_bvalid[0] = s_axi_ctrl_net_BVALID;
  assign s_axi_ctrl_net_ARADDR = s_axi_ctrl_araddr[17:0];
  assign s_axi_ctrl_net_ARPROT = s_axi_ctrl_arprot[2:0];
  assign s_axi_ctrl_net_ARVALID = s_axi_ctrl_arvalid[0];
  assign s_axi_ctrl_net_AWADDR = s_axi_ctrl_awaddr[17:0];
  assign s_axi_ctrl_net_AWPROT = s_axi_ctrl_awprot[2:0];
  assign s_axi_ctrl_net_AWVALID = s_axi_ctrl_awvalid[0];
  assign s_axi_ctrl_net_BREADY = s_axi_ctrl_bready[0];
  assign s_axi_ctrl_net_RREADY = s_axi_ctrl_rready[0];
  assign s_axi_ctrl_net_WDATA = s_axi_ctrl_wdata[31:0];
  assign s_axi_ctrl_net_WSTRB = s_axi_ctrl_wstrb[3:0];
  assign s_axi_ctrl_net_WVALID = s_axi_ctrl_wvalid[0];
  assign s_axi_ctrl_rdata[31:0] = s_axi_ctrl_net_RDATA;
  assign s_axi_ctrl_rresp[1:0] = s_axi_ctrl_net_RRESP;
  assign s_axi_ctrl_rvalid[0] = s_axi_ctrl_net_RVALID;
  assign s_axi_ctrl_wready[0] = s_axi_ctrl_net_WREADY;
  assign satellite_gpio_net = satellite_gpio[3:0];
  assign satellite_uart_net_RxD = satellite_uart_rxd;
  assign satellite_uart_txd = satellite_uart_net_TxD;
  bd_fb99_shell_cmc_subsystem_0 shell_cmc_subsystem
       (.aclk_ctrl(aclk_ctrl_net),
        .aresetn_ctrl(aresetn_ctrl_net),
        .hbm_temp_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .hbm_temp_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .interrupt_hbm_cattrip(1'b0),
        .interrupt_host(interrupt_host_net),
        .mdm_debug_sys_rst(1'b0),
        .mdm_mbdebug_capture(1'b0),
        .mdm_mbdebug_clk(1'b0),
        .mdm_mbdebug_disable(1'b0),
        .mdm_mbdebug_reg_en({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .mdm_mbdebug_rst(1'b0),
        .mdm_mbdebug_shift(1'b0),
        .mdm_mbdebug_tdi(1'b0),
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
        .s_axi_ctrl_mgmt_araddr(s_axi_ctrl_net_ARADDR),
        .s_axi_ctrl_mgmt_arprot(s_axi_ctrl_net_ARPROT),
        .s_axi_ctrl_mgmt_arready(s_axi_ctrl_net_ARREADY),
        .s_axi_ctrl_mgmt_arvalid(s_axi_ctrl_net_ARVALID),
        .s_axi_ctrl_mgmt_awaddr(s_axi_ctrl_net_AWADDR),
        .s_axi_ctrl_mgmt_awprot(s_axi_ctrl_net_AWPROT),
        .s_axi_ctrl_mgmt_awready(s_axi_ctrl_net_AWREADY),
        .s_axi_ctrl_mgmt_awvalid(s_axi_ctrl_net_AWVALID),
        .s_axi_ctrl_mgmt_bready(s_axi_ctrl_net_BREADY),
        .s_axi_ctrl_mgmt_bresp(s_axi_ctrl_net_BRESP),
        .s_axi_ctrl_mgmt_bvalid(s_axi_ctrl_net_BVALID),
        .s_axi_ctrl_mgmt_rdata(s_axi_ctrl_net_RDATA),
        .s_axi_ctrl_mgmt_rready(s_axi_ctrl_net_RREADY),
        .s_axi_ctrl_mgmt_rresp(s_axi_ctrl_net_RRESP),
        .s_axi_ctrl_mgmt_rvalid(s_axi_ctrl_net_RVALID),
        .s_axi_ctrl_mgmt_wdata(s_axi_ctrl_net_WDATA),
        .s_axi_ctrl_mgmt_wready(s_axi_ctrl_net_WREADY),
        .s_axi_ctrl_mgmt_wstrb(s_axi_ctrl_net_WSTRB),
        .s_axi_ctrl_mgmt_wvalid(s_axi_ctrl_net_WVALID),
        .satellite_gpio(satellite_gpio_net),
        .satellite_uart_rxd(satellite_uart_net_RxD),
        .satellite_uart_txd(satellite_uart_net_TxD),
        .usb_uart_rxd(1'b0));
endmodule
