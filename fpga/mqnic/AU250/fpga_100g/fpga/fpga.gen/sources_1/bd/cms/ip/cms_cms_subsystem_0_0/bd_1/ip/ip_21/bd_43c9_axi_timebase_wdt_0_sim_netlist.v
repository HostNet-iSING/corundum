// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:42:45 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_21/bd_43c9_axi_timebase_wdt_0_sim_netlist.v
// Design      : bd_43c9_axi_timebase_wdt_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_axi_timebase_wdt_0,axi_timebase_wdt_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_timebase_wdt_top,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bd_43c9_axi_timebase_wdt_0
   (s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    freeze,
    s_axi_aclk,
    s_axi_aresetn,
    timebase_interrupt,
    wdt_interrupt,
    wdt_reset);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  input freeze;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn:wdt_reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 TIMEBASE_INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME TIMEBASE_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output timebase_interrupt;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 WDT_INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME WDT_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output wdt_interrupt;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 WDT_RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME WDT_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output wdt_reset;

  wire \<const0> ;
  wire freeze;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire timebase_interrupt;
  wire wdt_interrupt;
  wire wdt_reset;
  wire NLW_U0_wdt_reset_pending_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [6:0]NLW_U0_wdt_state_vec_UNCONNECTED;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ENABLE_WINDOW_WDT = "0" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_MAX_COUNT_WIDTH = "32" *) 
  (* C_SST_COUNT_WIDTH = "8" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_WDT_ENABLE_ONCE = "0" *) 
  (* C_WDT_INTERVAL = "31" *) 
  bd_43c9_axi_timebase_wdt_0_axi_timebase_wdt_top U0
       (.freeze(freeze),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[3:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[3:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp({\^s_axi_bresp ,NLW_U0_s_axi_bresp_UNCONNECTED[0]}),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp({\^s_axi_rresp ,NLW_U0_s_axi_rresp_UNCONNECTED[0]}),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[4:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .timebase_interrupt(timebase_interrupt),
        .wdt_interrupt(wdt_interrupt),
        .wdt_reset(wdt_reset),
        .wdt_reset_pending(NLW_U0_wdt_reset_pending_UNCONNECTED),
        .wdt_state_vec(NLW_U0_wdt_state_vec_UNCONNECTED[6:0]));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module bd_43c9_axi_timebase_wdt_0_address_decoder
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_cs,
    Bus_RNW_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    is_write_reg,
    is_read_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    D,
    \FSM_onehot_state_reg[2] ,
    E,
    \iTimebase_count_reg[31] ,
    s_axi_wdata_0_sp_1,
    s_axi_wdata_1_sp_1,
    s_axi_rready_0,
    s_axi_bready_0,
    Q,
    s_axi_aclk,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_rvalid_i_reg,
    s_axi_arvalid,
    \state_reg[0] ,
    \FSM_onehot_state_reg[3] ,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wready,
    \s_axi_rdata_i_reg[4] ,
    eWDT2_Reg,
    \s_axi_rdata_i_reg[0] ,
    eWDT1_Reg,
    data2,
    \s_axi_rdata_i_reg[2] ,
    data3,
    wdt_Reset_Status_Reg,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11,
    data12,
    data13,
    data14,
    data15,
    data16,
    data17,
    data18,
    data19,
    data20,
    data21,
    data22,
    data23,
    data24,
    data25,
    data26,
    data27,
    data28,
    data29,
    data30,
    data31,
    p_1_in,
    \state_reg[1] ,
    s_axi_arready,
    s_axi_arready_0,
    s_axi_rready,
    s_axi_rvalid_i_reg_0,
    s_axi_bready,
    s_axi_bvalid_i_reg,
    Bus_RNW_reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 );
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_cs;
  output Bus_RNW_reg_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output is_write_reg;
  output is_read_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  output [1:0]D;
  output [2:0]\FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [31:0]\iTimebase_count_reg[31] ;
  output s_axi_wdata_0_sp_1;
  output s_axi_wdata_1_sp_1;
  output s_axi_rready_0;
  output s_axi_bready_0;
  input Q;
  input s_axi_aclk;
  input [2:0]s_axi_wdata;
  input s_axi_aresetn;
  input [1:0]s_axi_rvalid_i_reg;
  input s_axi_arvalid;
  input \state_reg[0] ;
  input [3:0]\FSM_onehot_state_reg[3] ;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_wready;
  input [4:0]\s_axi_rdata_i_reg[4] ;
  input eWDT2_Reg;
  input \s_axi_rdata_i_reg[0] ;
  input eWDT1_Reg;
  input data2;
  input \s_axi_rdata_i_reg[2] ;
  input data3;
  input wdt_Reset_Status_Reg;
  input data4;
  input data5;
  input data6;
  input data7;
  input data8;
  input data9;
  input data10;
  input data11;
  input data12;
  input data13;
  input data14;
  input data15;
  input data16;
  input data17;
  input data18;
  input data19;
  input data20;
  input data21;
  input data22;
  input data23;
  input data24;
  input data25;
  input data26;
  input data27;
  input data28;
  input data29;
  input data30;
  input data31;
  input [0:0]p_1_in;
  input \state_reg[1] ;
  input s_axi_arready;
  input [5:0]s_axi_arready_0;
  input s_axi_rready;
  input s_axi_rvalid_i_reg_0;
  input s_axi_bready;
  input s_axi_bvalid_i_reg;
  input Bus_RNW_reg_reg_1;
  input [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;

  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]\FSM_onehot_state_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire Q;
  wire bus2ip_cs;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data16;
  wire data17;
  wire data18;
  wire data19;
  wire data2;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data3;
  wire data30;
  wire data31;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire eWDT1_Reg;
  wire eWDT2_Reg;
  wire [31:0]\iTimebase_count_reg[31] ;
  wire is_read_reg;
  wire is_write_reg;
  wire [0:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [5:0]s_axi_arready_0;
  wire s_axi_arready_INST_0_i_1_n_0;
  wire s_axi_arready_INST_0_i_2_n_0;
  wire s_axi_arvalid;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bready_0;
  wire s_axi_bvalid_i_reg;
  wire \s_axi_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[4]_i_2_n_0 ;
  wire \s_axi_rdata_i[4]_i_3_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire [4:0]\s_axi_rdata_i_reg[4] ;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [1:0]s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire [2:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wvalid;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire wdt_Reset_Status_Reg;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_1),
        .I1(Q),
        .I2(Bus_RNW_reg_reg_0),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[3] [0]),
        .I1(s_axi_arvalid),
        .I2(is_read_reg),
        .I3(\FSM_onehot_state_reg[3] [1]),
        .O(\FSM_onehot_state_reg[2] [0]));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg[3] [0]),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(is_write_reg),
        .I5(\FSM_onehot_state_reg[3] [2]),
        .O(\FSM_onehot_state_reg[2] [1]));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(is_write_reg),
        .I1(\FSM_onehot_state_reg[3] [2]),
        .I2(\FSM_onehot_state_reg[3] [1]),
        .I3(is_read_reg),
        .I4(\FSM_onehot_state_reg[3] [3]),
        .I5(\state_reg[0] ),
        .O(\FSM_onehot_state_reg[2] [2]));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hFB)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(is_write_reg),
        .I1(s_axi_aresetn),
        .I2(is_read_reg),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  bd_43c9_axi_timebase_wdt_0_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  bd_43c9_axi_timebase_wdt_0_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h04040400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(is_write_reg),
        .I1(s_axi_aresetn),
        .I2(is_read_reg),
        .I3(bus2ip_cs),
        .I4(Q),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(bus2ip_cs),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    eWDT1_Reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(eWDT1_Reg),
        .O(s_axi_wdata_1_sn_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    eWDT2_Reg_i_1
       (.I0(s_axi_wdata[0]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(eWDT2_Reg),
        .O(s_axi_wdata_0_sn_1));
  LUT5 #(
    .INIT(32'hFF07FF77)) 
    \iTimebase_count[0]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(s_axi_wdata[1]),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(s_axi_wdata[0]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hFF4F4F4F)) 
    s_axi_arready_INST_0
       (.I0(s_axi_arready_INST_0_i_1_n_0),
        .I1(s_axi_arready),
        .I2(s_axi_arready_INST_0_i_2_n_0),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(is_read_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    s_axi_arready_INST_0_i_1
       (.I0(s_axi_arready_0[0]),
        .I1(s_axi_arready_0[1]),
        .I2(s_axi_arready_0[3]),
        .I3(s_axi_arready_0[2]),
        .I4(s_axi_arready_0[4]),
        .I5(s_axi_arready_0[5]),
        .O(s_axi_arready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    s_axi_arready_INST_0_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .O(s_axi_arready_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h5D550C00)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(s_axi_rvalid_i_reg[1]),
        .I2(s_axi_rvalid_i_reg[0]),
        .I3(is_write_reg),
        .I4(s_axi_bvalid_i_reg),
        .O(s_axi_bready_0));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i[4]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[4] [0]),
        .I2(eWDT2_Reg),
        .I3(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I4(\s_axi_rdata_i_reg[0] ),
        .I5(\s_axi_rdata_i[3]_i_3_n_0 ),
        .O(\iTimebase_count_reg[31] [0]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(data11),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [10]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(data12),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [11]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(data13),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [12]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(data14),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [13]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(data15),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [14]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(data16),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [15]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(data17),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [16]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(data18),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [17]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(data19),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [18]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(data20),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [19]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I1(eWDT1_Reg),
        .I2(\s_axi_rdata_i_reg[4] [1]),
        .I3(\s_axi_rdata_i[4]_i_3_n_0 ),
        .I4(data2),
        .I5(\s_axi_rdata_i[3]_i_3_n_0 ),
        .O(\iTimebase_count_reg[31] [1]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(data21),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [20]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(data22),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [21]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(data23),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [22]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(data24),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [23]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(data25),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [24]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(data26),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [25]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(data27),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [26]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(data28),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [27]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(data29),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [28]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(data30),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [29]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\s_axi_rdata_i[4]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[4] [2]),
        .I2(\s_axi_rdata_i_reg[2] ),
        .I3(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I4(data3),
        .I5(\s_axi_rdata_i[3]_i_3_n_0 ),
        .O(\iTimebase_count_reg[31] [2]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(data31),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [30]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(p_1_in),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [31]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\s_axi_rdata_i[4]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[4] [3]),
        .I2(wdt_Reset_Status_Reg),
        .I3(\s_axi_rdata_i[3]_i_2_n_0 ),
        .I4(data4),
        .I5(\s_axi_rdata_i[3]_i_3_n_0 ),
        .O(\iTimebase_count_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\s_axi_rdata_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\s_axi_rdata_i[4]_i_2_n_0 ),
        .I1(data5),
        .I2(\s_axi_rdata_i[4]_i_3_n_0 ),
        .I3(\s_axi_rdata_i_reg[4] [4]),
        .O(\iTimebase_count_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEFEFFF)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg_reg_0),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(\s_axi_rdata_i[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \s_axi_rdata_i[4]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I4(Bus_RNW_reg_reg_0),
        .O(\s_axi_rdata_i[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(data6),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [5]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(data7),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [6]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(data8),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [7]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(data9),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [8]));
  LUT6 #(
    .INIT(64'h0000000000002800)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(data10),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\iTimebase_count_reg[31] [9]));
  LUT5 #(
    .INIT(32'h75553000)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_i_reg[1]),
        .I2(s_axi_rvalid_i_reg[0]),
        .I3(is_read_reg),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rready_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44FF44F4)) 
    s_axi_wready_INST_0
       (.I0(s_axi_arready_INST_0_i_1_n_0),
        .I1(s_axi_wready),
        .I2(s_axi_wready_INST_0_i_1_n_0),
        .I3(Bus_RNW_reg_reg_0),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(is_write_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_axi_wready_INST_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(s_axi_wready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h33B8FFB8)) 
    \state[0]_i_1 
       (.I0(is_write_reg),
        .I1(s_axi_rvalid_i_reg[1]),
        .I2(s_axi_arvalid),
        .I3(s_axi_rvalid_i_reg[0]),
        .I4(\state_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2C2F2C2CECEFECEC)) 
    \state[1]_i_1 
       (.I0(is_read_reg),
        .I1(s_axi_rvalid_i_reg[1]),
        .I2(s_axi_rvalid_i_reg[0]),
        .I3(s_axi_arvalid),
        .I4(\state_reg[1] ),
        .I5(\state_reg[0] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer_width[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(Bus_RNW_reg_reg_0),
        .O(E));
  LUT4 #(
    .INIT(16'h20FF)) 
    wdt_State_Reg_i_4
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg_reg_0),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module bd_43c9_axi_timebase_wdt_0_axi_lite_ipif
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    s_axi_rresp,
    bus2ip_cs,
    bus2ip_rnw_i_reg,
    Bus_RNW_reg,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    is_write_reg,
    is_read_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    E,
    s_axi_wdata_0_sp_1,
    s_axi_wdata_1_sp_1,
    s_axi_bresp,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    ip2bus_error,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    Q,
    eWDT2_Reg,
    \s_axi_rdata_i_reg[0] ,
    eWDT1_Reg,
    data2,
    \s_axi_rdata_i_reg[2] ,
    data3,
    wdt_Reset_Status_Reg,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11,
    data12,
    data13,
    data14,
    data15,
    data16,
    data17,
    data18,
    data19,
    data20,
    data21,
    data22,
    data23,
    data24,
    data25,
    data26,
    data27,
    data28,
    data29,
    data30,
    data31,
    p_1_in,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output [0:0]s_axi_rresp;
  output bus2ip_cs;
  output bus2ip_rnw_i_reg;
  output Bus_RNW_reg;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output is_write_reg;
  output is_read_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output [0:0]E;
  output s_axi_wdata_0_sp_1;
  output s_axi_wdata_1_sp_1;
  output [0:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input ip2bus_error;
  input [2:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [4:0]Q;
  input eWDT2_Reg;
  input \s_axi_rdata_i_reg[0] ;
  input eWDT1_Reg;
  input data2;
  input \s_axi_rdata_i_reg[2] ;
  input data3;
  input wdt_Reset_Status_Reg;
  input data4;
  input data5;
  input data6;
  input data7;
  input data8;
  input data9;
  input data10;
  input data11;
  input data12;
  input data13;
  input data14;
  input data15;
  input data16;
  input data17;
  input data18;
  input data19;
  input data20;
  input data21;
  input data22;
  input data23;
  input data24;
  input data25;
  input data26;
  input data27;
  input data28;
  input data29;
  input data30;
  input data31;
  input [0:0]p_1_in;
  input s_axi_bready;
  input s_axi_rready;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;

  wire Bus_RNW_reg;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [4:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw_i_reg;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data16;
  wire data17;
  wire data18;
  wire data19;
  wire data2;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data3;
  wire data30;
  wire data31;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire eWDT1_Reg;
  wire eWDT2_Reg;
  wire ip2bus_error;
  wire is_read_reg;
  wire is_write_reg;
  wire [0:0]p_1_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid_i_reg;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[2] ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid_i_reg;
  wire [2:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wvalid;
  wire wdt_Reset_Status_Reg;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  bd_43c9_axi_timebase_wdt_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .Q(Q),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw_i_reg),
        .data10(data10),
        .data11(data11),
        .data12(data12),
        .data13(data13),
        .data14(data14),
        .data15(data15),
        .data16(data16),
        .data17(data17),
        .data18(data18),
        .data19(data19),
        .data2(data2),
        .data20(data20),
        .data21(data21),
        .data22(data22),
        .data23(data23),
        .data24(data24),
        .data25(data25),
        .data26(data26),
        .data27(data27),
        .data28(data28),
        .data29(data29),
        .data3(data3),
        .data30(data30),
        .data31(data31),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .data8(data8),
        .data9(data9),
        .eWDT1_Reg(eWDT1_Reg),
        .eWDT2_Reg(eWDT2_Reg),
        .ip2bus_error(ip2bus_error),
        .is_read_reg_0(is_read_reg),
        .is_write_reg_0(is_write_reg),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[0]_0 (\s_axi_rdata_i_reg[0] ),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .s_axi_wvalid(s_axi_wvalid),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg));
endmodule

(* ORIG_REF_NAME = "axi_timebase_wdt" *) 
module bd_43c9_axi_timebase_wdt_0_axi_timebase_wdt
   (is_write_reg,
    is_read_reg,
    wdt_reset,
    timebase_interrupt,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_rresp,
    wdt_State_Reg_reg,
    s_axi_bvalid_i_reg,
    s_axi_rvalid_i_reg,
    s_axi_wdata,
    s_axi_aresetn,
    freeze,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb);
  output is_write_reg;
  output is_read_reg;
  output wdt_reset;
  output timebase_interrupt;
  output [0:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output wdt_State_Reg_reg;
  output s_axi_bvalid_i_reg;
  output s_axi_rvalid_i_reg;
  input [4:0]s_axi_wdata;
  input s_axi_aresetn;
  input freeze;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;

  wire AXI4_LITE_I_n_10;
  wire AXI4_LITE_I_n_12;
  wire AXI4_LITE_I_n_13;
  wire AXI4_LITE_I_n_3;
  wire AXI4_LITE_I_n_7;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire TIMEBASE_WDT_CORE_I_n_4;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire [3:3]bus2ip_wrce;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data16;
  wire data17;
  wire data18;
  wire data19;
  wire data2;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data3;
  wire data30;
  wire data31;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire eWDT1_Reg;
  wire eWDT2_Reg;
  wire freeze;
  wire ip2bus_error__0;
  wire is_read_reg;
  wire is_write_reg;
  wire [27:27]p_1_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid_i_reg;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid_i_reg;
  wire [4:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire timebase_interrupt;
  wire [4:0]timer_width;
  wire wdt_Reset_Status_Reg;
  wire wdt_State_Reg_reg;
  wire wdt_reset;

  bd_43c9_axi_timebase_wdt_0_axi_lite_ipif AXI4_LITE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .E(bus2ip_wrce),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (AXI4_LITE_I_n_7),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (AXI4_LITE_I_n_10),
        .Q(timer_width),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw_i_reg(AXI4_LITE_I_n_3),
        .data10(data10),
        .data11(data11),
        .data12(data12),
        .data13(data13),
        .data14(data14),
        .data15(data15),
        .data16(data16),
        .data17(data17),
        .data18(data18),
        .data19(data19),
        .data2(data2),
        .data20(data20),
        .data21(data21),
        .data22(data22),
        .data23(data23),
        .data24(data24),
        .data25(data25),
        .data26(data26),
        .data27(data27),
        .data28(data28),
        .data29(data29),
        .data3(data3),
        .data30(data30),
        .data31(data31),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .data8(data8),
        .data9(data9),
        .eWDT1_Reg(eWDT1_Reg),
        .eWDT2_Reg(eWDT2_Reg),
        .ip2bus_error(ip2bus_error__0),
        .is_read_reg(is_read_reg),
        .is_write_reg(is_write_reg),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[0] (TIMEBASE_WDT_CORE_I_n_4),
        .\s_axi_rdata_i_reg[2] (wdt_State_Reg_reg),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid_i_reg(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata[2:0]),
        .s_axi_wdata_0_sp_1(AXI4_LITE_I_n_12),
        .s_axi_wdata_1_sp_1(AXI4_LITE_I_n_13),
        .s_axi_wvalid(s_axi_wvalid),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg));
  bd_43c9_axi_timebase_wdt_0_timebase_wdt_core TIMEBASE_WDT_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .E(bus2ip_wrce),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .Q(timer_width),
        .bus2ip_reset(bus2ip_reset),
        .data10(data10),
        .data11(data11),
        .data12(data12),
        .data13(data13),
        .data14(data14),
        .data15(data15),
        .data16(data16),
        .data17(data17),
        .data18(data18),
        .data19(data19),
        .data2(data2),
        .data20(data20),
        .data21(data21),
        .data22(data22),
        .data23(data23),
        .data24(data24),
        .data25(data25),
        .data26(data26),
        .data27(data27),
        .data28(data28),
        .data29(data29),
        .data3(data3),
        .data30(data30),
        .data31(data31),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .data8(data8),
        .data9(data9),
        .eWDT1_Reg(eWDT1_Reg),
        .eWDT1_Reg_reg_0(AXI4_LITE_I_n_13),
        .eWDT2_Reg(eWDT2_Reg),
        .eWDT2_Reg_reg_0(AXI4_LITE_I_n_12),
        .freeze(freeze),
        .\iTimebase_count_reg[0]_0 (TIMEBASE_WDT_CORE_I_n_4),
        .\iTimebase_count_reg[0]_1 (AXI4_LITE_I_n_10),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .timebase_interrupt(timebase_interrupt),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg),
        .wdt_State_Reg_reg_0(wdt_State_Reg_reg),
        .wdt_State_Reg_reg_1(AXI4_LITE_I_n_7),
        .wdt_reset(wdt_reset));
  LUT6 #(
    .INIT(64'h002A00AA00AA00AA)) 
    ip2bus_error
       (.I0(bus2ip_cs),
        .I1(s_axi_wstrb[1]),
        .I2(s_axi_wstrb[2]),
        .I3(AXI4_LITE_I_n_3),
        .I4(s_axi_wstrb[3]),
        .I5(s_axi_wstrb[0]),
        .O(ip2bus_error__0));
endmodule

(* C_ENABLE_WINDOW_WDT = "0" *) (* C_FAMILY = "virtexuplus" *) (* C_MAX_COUNT_WIDTH = "32" *) 
(* C_SST_COUNT_WIDTH = "8" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_WDT_ENABLE_ONCE = "0" *) (* C_WDT_INTERVAL = "31" *) (* ORIG_REF_NAME = "axi_timebase_wdt_top" *) 
module bd_43c9_axi_timebase_wdt_0_axi_timebase_wdt_top
   (s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    freeze,
    s_axi_aclk,
    s_axi_aresetn,
    timebase_interrupt,
    wdt_interrupt,
    wdt_reset,
    wdt_reset_pending,
    wdt_state_vec);
  input [3:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [3:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input freeze;
  input s_axi_aclk;
  input s_axi_aresetn;
  output timebase_interrupt;
  output wdt_interrupt;
  output wdt_reset;
  output wdt_reset_pending;
  output [6:0]wdt_state_vec;

  wire \<const0> ;
  wire freeze;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire timebase_interrupt;
  wire wdt_interrupt;
  wire wdt_reset;

  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign wdt_reset_pending = \<const0> ;
  assign wdt_state_vec[6] = \<const0> ;
  assign wdt_state_vec[5] = \<const0> ;
  assign wdt_state_vec[4] = \<const0> ;
  assign wdt_state_vec[3] = \<const0> ;
  assign wdt_state_vec[2] = \<const0> ;
  assign wdt_state_vec[1] = \<const0> ;
  assign wdt_state_vec[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_43c9_axi_timebase_wdt_0_axi_timebase_wdt \LEGACY_WDT.axi_timebase_wdt_i 
       (.freeze(freeze),
        .is_read_reg(s_axi_arready),
        .is_write_reg(s_axi_wready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[4:0]),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .timebase_interrupt(timebase_interrupt),
        .wdt_State_Reg_reg(wdt_interrupt),
        .wdt_reset(wdt_reset));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module bd_43c9_axi_timebase_wdt_0_cdc_sync
   (p_0_in,
    freeze,
    s_axi_aclk);
  output p_0_in;
  input freeze;
  input s_axi_aclk;

  wire Freeze_int;
  wire freeze;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(freeze),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(Freeze_int),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \iTimebase_count[0]_i_2 
       (.I0(Freeze_int),
        .O(p_0_in));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module bd_43c9_axi_timebase_wdt_0_pselect_f
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_3;
  input [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module bd_43c9_axi_timebase_wdt_0_pselect_f__parameterized1
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_1;
  input [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module bd_43c9_axi_timebase_wdt_0_slave_attachment
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rresp,
    bus2ip_cs,
    bus2ip_rnw_i_reg_0,
    Bus_RNW_reg_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    is_write_reg_0,
    is_read_reg_0,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    E,
    s_axi_wdata_0_sp_1,
    s_axi_wdata_1_sp_1,
    s_axi_bresp,
    s_axi_rdata,
    bus2ip_reset,
    s_axi_aclk,
    ip2bus_error,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_awvalid,
    Q,
    eWDT2_Reg,
    \s_axi_rdata_i_reg[0]_0 ,
    eWDT1_Reg,
    data2,
    \s_axi_rdata_i_reg[2]_0 ,
    data3,
    wdt_Reset_Status_Reg,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11,
    data12,
    data13,
    data14,
    data15,
    data16,
    data17,
    data18,
    data19,
    data20,
    data21,
    data22,
    data23,
    data24,
    data25,
    data26,
    data27,
    data28,
    data29,
    data30,
    data31,
    p_1_in,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output [0:0]s_axi_rresp;
  output bus2ip_cs;
  output bus2ip_rnw_i_reg_0;
  output Bus_RNW_reg_reg;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output is_write_reg_0;
  output is_read_reg_0;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output [0:0]E;
  output s_axi_wdata_0_sp_1;
  output s_axi_wdata_1_sp_1;
  output [0:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  input bus2ip_reset;
  input s_axi_aclk;
  input ip2bus_error;
  input [2:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [4:0]Q;
  input eWDT2_Reg;
  input \s_axi_rdata_i_reg[0]_0 ;
  input eWDT1_Reg;
  input data2;
  input \s_axi_rdata_i_reg[2]_0 ;
  input data3;
  input wdt_Reset_Status_Reg;
  input data4;
  input data5;
  input data6;
  input data7;
  input data8;
  input data9;
  input data10;
  input data11;
  input data12;
  input data13;
  input data14;
  input data15;
  input data16;
  input data17;
  input data18;
  input data19;
  input data20;
  input data21;
  input data22;
  input data23;
  input data24;
  input data25;
  input data26;
  input data27;
  input data28;
  input data29;
  input data30;
  input data31;
  input [0:0]p_1_in;
  input s_axi_bready;
  input s_axi_rready;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ;
  wire [5:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire I_DECODER_n_10;
  wire I_DECODER_n_11;
  wire I_DECODER_n_47;
  wire I_DECODER_n_48;
  wire I_DECODER_n_9;
  wire [4:0]Q;
  wire [0:31]\TIMEBASE_WDT_CORE_I/sl_DBus_In ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw_i_i_1_n_0;
  wire bus2ip_rnw_i_reg_0;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data16;
  wire data17;
  wire data18;
  wire data19;
  wire data2;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data3;
  wire data30;
  wire data31;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire eWDT1_Reg;
  wire eWDT2_Reg;
  wire ip2bus_error;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_0;
  wire is_write_reg_n_0;
  wire [1:0]p_0_out;
  wire [0:0]p_1_in;
  wire [5:0]plusOp;
  wire rst;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bresp_i;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid_i_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[0]_0 ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_reg_0;
  wire [2:0]s_axi_wdata;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wdata_1_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[1]_i_2_n_0 ;
  wire wdt_Reset_Status_Reg;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  assign s_axi_wdata_1_sp_1 = s_axi_wdata_1_sn_1;
  LUT6 #(
    .INIT(64'h88888F888F888F88)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(s_axi_wvalid),
        .I5(s_axi_awvalid),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bvalid_i_reg_0),
        .I1(s_axi_bready),
        .I2(s_axi_rvalid_i_reg_0),
        .I3(s_axi_rready),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_11),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_10),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [5]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[5]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [5]),
        .R(\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0 ));
  bd_43c9_axi_timebase_wdt_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(bus2ip_rnw_i_reg_0),
        .D(p_0_out),
        .E(E),
        .\FSM_onehot_state_reg[2] ({I_DECODER_n_9,I_DECODER_n_10,I_DECODER_n_11}),
        .\FSM_onehot_state_reg[3] ({\FSM_onehot_state_reg_n_0_[3] ,s_axi_bresp_i,s_axi_rresp_i,\FSM_onehot_state_reg_n_0_[0] }),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ({\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .Q(start2),
        .bus2ip_cs(bus2ip_cs),
        .data10(data10),
        .data11(data11),
        .data12(data12),
        .data13(data13),
        .data14(data14),
        .data15(data15),
        .data16(data16),
        .data17(data17),
        .data18(data18),
        .data19(data19),
        .data2(data2),
        .data20(data20),
        .data21(data21),
        .data22(data22),
        .data23(data23),
        .data24(data24),
        .data25(data25),
        .data26(data26),
        .data27(data27),
        .data28(data28),
        .data29(data29),
        .data3(data3),
        .data30(data30),
        .data31(data31),
        .data4(data4),
        .data5(data5),
        .data6(data6),
        .data7(data7),
        .data8(data8),
        .data9(data9),
        .eWDT1_Reg(eWDT1_Reg),
        .eWDT2_Reg(eWDT2_Reg),
        .\iTimebase_count_reg[31] ({\TIMEBASE_WDT_CORE_I/sl_DBus_In [0],\TIMEBASE_WDT_CORE_I/sl_DBus_In [1],\TIMEBASE_WDT_CORE_I/sl_DBus_In [2],\TIMEBASE_WDT_CORE_I/sl_DBus_In [3],\TIMEBASE_WDT_CORE_I/sl_DBus_In [4],\TIMEBASE_WDT_CORE_I/sl_DBus_In [5],\TIMEBASE_WDT_CORE_I/sl_DBus_In [6],\TIMEBASE_WDT_CORE_I/sl_DBus_In [7],\TIMEBASE_WDT_CORE_I/sl_DBus_In [8],\TIMEBASE_WDT_CORE_I/sl_DBus_In [9],\TIMEBASE_WDT_CORE_I/sl_DBus_In [10],\TIMEBASE_WDT_CORE_I/sl_DBus_In [11],\TIMEBASE_WDT_CORE_I/sl_DBus_In [12],\TIMEBASE_WDT_CORE_I/sl_DBus_In [13],\TIMEBASE_WDT_CORE_I/sl_DBus_In [14],\TIMEBASE_WDT_CORE_I/sl_DBus_In [15],\TIMEBASE_WDT_CORE_I/sl_DBus_In [16],\TIMEBASE_WDT_CORE_I/sl_DBus_In [17],\TIMEBASE_WDT_CORE_I/sl_DBus_In [18],\TIMEBASE_WDT_CORE_I/sl_DBus_In [19],\TIMEBASE_WDT_CORE_I/sl_DBus_In [20],\TIMEBASE_WDT_CORE_I/sl_DBus_In [21],\TIMEBASE_WDT_CORE_I/sl_DBus_In [22],\TIMEBASE_WDT_CORE_I/sl_DBus_In [23],\TIMEBASE_WDT_CORE_I/sl_DBus_In [24],\TIMEBASE_WDT_CORE_I/sl_DBus_In [25],\TIMEBASE_WDT_CORE_I/sl_DBus_In [26],\TIMEBASE_WDT_CORE_I/sl_DBus_In [27],\TIMEBASE_WDT_CORE_I/sl_DBus_In [28],\TIMEBASE_WDT_CORE_I/sl_DBus_In [29],\TIMEBASE_WDT_CORE_I/sl_DBus_In [30],\TIMEBASE_WDT_CORE_I/sl_DBus_In [31]}),
        .is_read_reg(is_read_reg_0),
        .is_write_reg(is_write_reg_0),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bready_0(I_DECODER_n_48),
        .s_axi_bvalid_i_reg(s_axi_bvalid_i_reg_0),
        .\s_axi_rdata_i_reg[0] (\s_axi_rdata_i_reg[0]_0 ),
        .\s_axi_rdata_i_reg[2] (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[4] (Q),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(I_DECODER_n_47),
        .s_axi_rvalid_i_reg(state),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg_0),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wdata_1_sp_1(s_axi_wdata_1_sn_1),
        .s_axi_wready(is_write_reg_n_0),
        .s_axi_wvalid(s_axi_wvalid),
        .\state_reg[0] (\FSM_onehot_state[3]_i_2_n_0 ),
        .\state_reg[1] (\state[1]_i_2_n_0 ),
        .wdt_Reset_Status_Reg(wdt_Reset_Status_Reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03020202)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_2 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[3]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[3]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFEFFFFFF02020202)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(bus2ip_rnw_i_reg_0),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_bready),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(s_axi_rready),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    is_write_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(s_axi_arvalid),
        .O(is_write));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset),
        .Q(rst),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_48),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [31]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [21]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [20]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [19]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [18]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [17]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [16]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [15]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [14]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [13]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [12]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [30]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [11]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [10]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [9]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [8]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [7]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [6]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [5]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [4]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [3]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [2]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [29]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [1]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [0]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [28]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [27]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [26]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [25]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [24]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [23]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\TIMEBASE_WDT_CORE_I/sl_DBus_In [22]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_47),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "timebase_wdt_core" *) 
module bd_43c9_axi_timebase_wdt_0_timebase_wdt_core
   (bus2ip_reset,
    wdt_reset,
    p_1_in,
    timebase_interrupt,
    \iTimebase_count_reg[0]_0 ,
    data2,
    data3,
    data4,
    data5,
    data6,
    data7,
    data8,
    data9,
    data10,
    data11,
    data12,
    data13,
    data14,
    data15,
    data16,
    data17,
    data18,
    data19,
    data20,
    data21,
    data22,
    data23,
    data24,
    data25,
    data26,
    data27,
    data28,
    data29,
    data30,
    data31,
    eWDT2_Reg,
    eWDT1_Reg,
    wdt_State_Reg_reg_0,
    wdt_Reset_Status_Reg,
    Q,
    s_axi_aclk,
    eWDT2_Reg_reg_0,
    eWDT1_Reg_reg_0,
    wdt_State_Reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Bus_RNW_reg,
    s_axi_wdata,
    s_axi_aresetn,
    \iTimebase_count_reg[0]_1 ,
    freeze,
    E);
  output bus2ip_reset;
  output wdt_reset;
  output [0:0]p_1_in;
  output timebase_interrupt;
  output \iTimebase_count_reg[0]_0 ;
  output data2;
  output data3;
  output data4;
  output data5;
  output data6;
  output data7;
  output data8;
  output data9;
  output data10;
  output data11;
  output data12;
  output data13;
  output data14;
  output data15;
  output data16;
  output data17;
  output data18;
  output data19;
  output data20;
  output data21;
  output data22;
  output data23;
  output data24;
  output data25;
  output data26;
  output data27;
  output data28;
  output data29;
  output data30;
  output data31;
  output eWDT2_Reg;
  output eWDT1_Reg;
  output wdt_State_Reg_reg_0;
  output wdt_Reset_Status_Reg;
  output [4:0]Q;
  input s_axi_aclk;
  input eWDT2_Reg_reg_0;
  input eWDT1_Reg_reg_0;
  input wdt_State_Reg_reg_1;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input Bus_RNW_reg;
  input [4:0]s_axi_wdata;
  input s_axi_aresetn;
  input \iTimebase_count_reg[0]_1 ;
  input freeze;
  input [0:0]E;

  wire Bus_RNW_reg;
  wire Current_State;
  wire Current_State_i_1_n_0;
  wire Current_State_i_2_n_0;
  wire Current_State_reg_i_3_n_0;
  wire Current_State_reg_i_4_n_0;
  wire [0:0]E;
  wire \FSM_onehot_WDT_Current_State[0]_i_1_n_0 ;
  wire \FSM_onehot_WDT_Current_State[3]_i_1_n_0 ;
  wire \FSM_onehot_WDT_Current_State[3]_i_2_n_0 ;
  wire \FSM_onehot_WDT_Current_State[3]_i_3_n_0 ;
  wire \FSM_onehot_WDT_Current_State_reg_n_0_[0] ;
  wire \FSM_onehot_WDT_Current_State_reg_n_0_[1] ;
  wire \FSM_onehot_WDT_Current_State_reg_n_0_[2] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [4:0]Q;
  wire Timebase_Interrupt0;
  wire bus2ip_reset;
  wire count_MSB_Reg;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data16;
  wire data17;
  wire data18;
  wire data19;
  wire data2;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data3;
  wire data30;
  wire data31;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire eWDT1_Reg;
  wire eWDT1_Reg_reg_0;
  wire eWDT2_Reg;
  wire eWDT2_Reg_reg_0;
  wire freeze;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire \iTimebase_count[0]_i_5_n_0 ;
  wire \iTimebase_count_reg[0]_0 ;
  wire \iTimebase_count_reg[0]_1 ;
  wire \iTimebase_count_reg[0]_i_3_n_0 ;
  wire \iTimebase_count_reg[0]_i_3_n_1 ;
  wire \iTimebase_count_reg[0]_i_3_n_10 ;
  wire \iTimebase_count_reg[0]_i_3_n_11 ;
  wire \iTimebase_count_reg[0]_i_3_n_12 ;
  wire \iTimebase_count_reg[0]_i_3_n_13 ;
  wire \iTimebase_count_reg[0]_i_3_n_14 ;
  wire \iTimebase_count_reg[0]_i_3_n_15 ;
  wire \iTimebase_count_reg[0]_i_3_n_2 ;
  wire \iTimebase_count_reg[0]_i_3_n_3 ;
  wire \iTimebase_count_reg[0]_i_3_n_4 ;
  wire \iTimebase_count_reg[0]_i_3_n_5 ;
  wire \iTimebase_count_reg[0]_i_3_n_6 ;
  wire \iTimebase_count_reg[0]_i_3_n_7 ;
  wire \iTimebase_count_reg[0]_i_3_n_8 ;
  wire \iTimebase_count_reg[0]_i_3_n_9 ;
  wire \iTimebase_count_reg[16]_i_1_n_0 ;
  wire \iTimebase_count_reg[16]_i_1_n_1 ;
  wire \iTimebase_count_reg[16]_i_1_n_10 ;
  wire \iTimebase_count_reg[16]_i_1_n_11 ;
  wire \iTimebase_count_reg[16]_i_1_n_12 ;
  wire \iTimebase_count_reg[16]_i_1_n_13 ;
  wire \iTimebase_count_reg[16]_i_1_n_14 ;
  wire \iTimebase_count_reg[16]_i_1_n_15 ;
  wire \iTimebase_count_reg[16]_i_1_n_2 ;
  wire \iTimebase_count_reg[16]_i_1_n_3 ;
  wire \iTimebase_count_reg[16]_i_1_n_4 ;
  wire \iTimebase_count_reg[16]_i_1_n_5 ;
  wire \iTimebase_count_reg[16]_i_1_n_6 ;
  wire \iTimebase_count_reg[16]_i_1_n_7 ;
  wire \iTimebase_count_reg[16]_i_1_n_8 ;
  wire \iTimebase_count_reg[16]_i_1_n_9 ;
  wire \iTimebase_count_reg[24]_i_1_n_1 ;
  wire \iTimebase_count_reg[24]_i_1_n_10 ;
  wire \iTimebase_count_reg[24]_i_1_n_11 ;
  wire \iTimebase_count_reg[24]_i_1_n_12 ;
  wire \iTimebase_count_reg[24]_i_1_n_13 ;
  wire \iTimebase_count_reg[24]_i_1_n_14 ;
  wire \iTimebase_count_reg[24]_i_1_n_15 ;
  wire \iTimebase_count_reg[24]_i_1_n_2 ;
  wire \iTimebase_count_reg[24]_i_1_n_3 ;
  wire \iTimebase_count_reg[24]_i_1_n_4 ;
  wire \iTimebase_count_reg[24]_i_1_n_5 ;
  wire \iTimebase_count_reg[24]_i_1_n_6 ;
  wire \iTimebase_count_reg[24]_i_1_n_7 ;
  wire \iTimebase_count_reg[24]_i_1_n_8 ;
  wire \iTimebase_count_reg[24]_i_1_n_9 ;
  wire \iTimebase_count_reg[8]_i_1_n_0 ;
  wire \iTimebase_count_reg[8]_i_1_n_1 ;
  wire \iTimebase_count_reg[8]_i_1_n_10 ;
  wire \iTimebase_count_reg[8]_i_1_n_11 ;
  wire \iTimebase_count_reg[8]_i_1_n_12 ;
  wire \iTimebase_count_reg[8]_i_1_n_13 ;
  wire \iTimebase_count_reg[8]_i_1_n_14 ;
  wire \iTimebase_count_reg[8]_i_1_n_15 ;
  wire \iTimebase_count_reg[8]_i_1_n_2 ;
  wire \iTimebase_count_reg[8]_i_1_n_3 ;
  wire \iTimebase_count_reg[8]_i_1_n_4 ;
  wire \iTimebase_count_reg[8]_i_1_n_5 ;
  wire \iTimebase_count_reg[8]_i_1_n_6 ;
  wire \iTimebase_count_reg[8]_i_1_n_7 ;
  wire \iTimebase_count_reg[8]_i_1_n_8 ;
  wire \iTimebase_count_reg[8]_i_1_n_9 ;
  wire iWDT_Reset;
  wire p_0_in;
  wire [0:0]p_1_in;
  wire p_2_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [4:0]s_axi_wdata;
  wire timebase_Reg_Reset;
  wire timebase_interrupt;
  wire wdt_Bitin_1;
  wire wdt_Bitin_1d;
  wire wdt_Bitin_1d_i_1_n_0;
  wire wdt_Reset_Status_Reg;
  wire wdt_Reset_Status_Reg_i_1_n_0;
  wire wdt_State_Preset;
  wire wdt_State_Reg_i_10_n_0;
  wire wdt_State_Reg_i_11_n_0;
  wire wdt_State_Reg_i_12_n_0;
  wire wdt_State_Reg_i_13_n_0;
  wire wdt_State_Reg_i_14_n_0;
  wire wdt_State_Reg_i_15_n_0;
  wire wdt_State_Reg_i_16_n_0;
  wire wdt_State_Reg_i_17_n_0;
  wire wdt_State_Reg_i_18_n_0;
  wire wdt_State_Reg_i_19_n_0;
  wire wdt_State_Reg_i_1_n_0;
  wire wdt_State_Reg_i_20_n_0;
  wire wdt_State_Reg_i_21_n_0;
  wire wdt_State_Reg_i_22_n_0;
  wire wdt_State_Reg_i_23_n_0;
  wire wdt_State_Reg_i_24_n_0;
  wire wdt_State_Reg_i_2_n_0;
  wire wdt_State_Reg_i_5_n_0;
  wire wdt_State_Reg_i_6_n_0;
  wire wdt_State_Reg_i_7_n_0;
  wire wdt_State_Reg_i_8_n_0;
  wire wdt_State_Reg_i_9_n_0;
  wire wdt_State_Reg_reg_0;
  wire wdt_State_Reg_reg_1;
  wire wdt_reset;
  wire [7:7]\NLW_iTimebase_count_reg[24]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0000A088)) 
    Current_State_i_1
       (.I0(Current_State_i_2_n_0),
        .I1(Current_State_reg_i_3_n_0),
        .I2(Current_State),
        .I3(Current_State_reg_i_4_n_0),
        .I4(iWDT_Reset),
        .O(Current_State_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    Current_State_i_2
       (.I0(s_axi_aresetn),
        .I1(\iTimebase_count_reg[0]_1 ),
        .I2(eWDT2_Reg),
        .I3(eWDT1_Reg),
        .O(Current_State_i_2_n_0));
  FDRE Current_State_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Current_State_i_1_n_0),
        .Q(Current_State),
        .R(1'b0));
  MUXF7 Current_State_reg_i_3
       (.I0(wdt_State_Reg_i_6_n_0),
        .I1(wdt_State_Reg_i_5_n_0),
        .O(Current_State_reg_i_3_n_0),
        .S(Q[4]));
  MUXF7 Current_State_reg_i_4
       (.I0(wdt_State_Reg_i_7_n_0),
        .I1(wdt_State_Reg_i_8_n_0),
        .O(Current_State_reg_i_4_n_0),
        .S(Q[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_WDT_Current_State[0]_i_1 
       (.I0(\FSM_onehot_WDT_Current_State_reg_n_0_[2] ),
        .I1(wdt_State_Reg_reg_0),
        .O(\FSM_onehot_WDT_Current_State[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C08FF08)) 
    \FSM_onehot_WDT_Current_State[3]_i_1 
       (.I0(\FSM_onehot_WDT_Current_State_reg_n_0_[0] ),
        .I1(wdt_Bitin_1),
        .I2(\FSM_onehot_WDT_Current_State[3]_i_3_n_0 ),
        .I3(\FSM_onehot_WDT_Current_State_reg_n_0_[2] ),
        .I4(wdt_State_Reg_reg_0),
        .I5(\FSM_onehot_WDT_Current_State_reg_n_0_[1] ),
        .O(\FSM_onehot_WDT_Current_State[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_WDT_Current_State[3]_i_2 
       (.I0(wdt_State_Reg_reg_0),
        .I1(\FSM_onehot_WDT_Current_State_reg_n_0_[2] ),
        .O(\FSM_onehot_WDT_Current_State[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \FSM_onehot_WDT_Current_State[3]_i_3 
       (.I0(wdt_Bitin_1d),
        .I1(eWDT1_Reg),
        .I2(eWDT2_Reg),
        .O(\FSM_onehot_WDT_Current_State[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "expiredonce:0010,expiredoncedelayed:0100,resetstate:0001,expiredtwice:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_WDT_Current_State_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_WDT_Current_State[3]_i_1_n_0 ),
        .D(\FSM_onehot_WDT_Current_State[0]_i_1_n_0 ),
        .Q(\FSM_onehot_WDT_Current_State_reg_n_0_[0] ),
        .S(bus2ip_reset));
  (* FSM_ENCODED_STATES = "expiredonce:0010,expiredoncedelayed:0100,resetstate:0001,expiredtwice:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WDT_Current_State_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_WDT_Current_State[3]_i_1_n_0 ),
        .D(\FSM_onehot_WDT_Current_State_reg_n_0_[0] ),
        .Q(\FSM_onehot_WDT_Current_State_reg_n_0_[1] ),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "expiredonce:0010,expiredoncedelayed:0100,resetstate:0001,expiredtwice:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WDT_Current_State_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_WDT_Current_State[3]_i_1_n_0 ),
        .D(\FSM_onehot_WDT_Current_State_reg_n_0_[1] ),
        .Q(\FSM_onehot_WDT_Current_State_reg_n_0_[2] ),
        .R(bus2ip_reset));
  (* FSM_ENCODED_STATES = "expiredonce:0010,expiredoncedelayed:0100,resetstate:0001,expiredtwice:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_WDT_Current_State_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_WDT_Current_State[3]_i_1_n_0 ),
        .D(\FSM_onehot_WDT_Current_State[3]_i_2_n_0 ),
        .Q(iWDT_Reset),
        .R(bus2ip_reset));
  bd_43c9_axi_timebase_wdt_0_cdc_sync INPUT_DOUBLE_REGS3
       (.freeze(freeze),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk));
  LUT1 #(
    .INIT(2'h1)) 
    Timebase_Interrupt_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset));
  LUT2 #(
    .INIT(4'h2)) 
    Timebase_Interrupt_i_2
       (.I0(count_MSB_Reg),
        .I1(p_1_in),
        .O(Timebase_Interrupt0));
  FDRE Timebase_Interrupt_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Timebase_Interrupt0),
        .Q(timebase_interrupt),
        .R(bus2ip_reset));
  FDRE WDT_Reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iWDT_Reset),
        .Q(wdt_reset),
        .R(1'b0));
  FDRE count_MSB_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(count_MSB_Reg),
        .R(bus2ip_reset));
  FDRE eWDT1_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eWDT1_Reg_reg_0),
        .Q(eWDT1_Reg),
        .R(bus2ip_reset));
  FDRE eWDT2_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(eWDT2_Reg_reg_0),
        .Q(eWDT2_Reg),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    g0_b1
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    g0_b2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    g0_b3
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(g0_b3_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    \iTimebase_count[0]_i_1 
       (.I0(eWDT1_Reg),
        .I1(eWDT2_Reg),
        .I2(\iTimebase_count_reg[0]_1 ),
        .I3(s_axi_aresetn),
        .O(timebase_Reg_Reset));
  LUT1 #(
    .INIT(2'h1)) 
    \iTimebase_count[0]_i_5 
       (.I0(\iTimebase_count_reg[0]_0 ),
        .O(\iTimebase_count[0]_i_5_n_0 ));
  FDRE \iTimebase_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_15 ),
        .Q(\iTimebase_count_reg[0]_0 ),
        .R(timebase_Reg_Reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \iTimebase_count_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\iTimebase_count_reg[0]_i_3_n_0 ,\iTimebase_count_reg[0]_i_3_n_1 ,\iTimebase_count_reg[0]_i_3_n_2 ,\iTimebase_count_reg[0]_i_3_n_3 ,\iTimebase_count_reg[0]_i_3_n_4 ,\iTimebase_count_reg[0]_i_3_n_5 ,\iTimebase_count_reg[0]_i_3_n_6 ,\iTimebase_count_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\iTimebase_count_reg[0]_i_3_n_8 ,\iTimebase_count_reg[0]_i_3_n_9 ,\iTimebase_count_reg[0]_i_3_n_10 ,\iTimebase_count_reg[0]_i_3_n_11 ,\iTimebase_count_reg[0]_i_3_n_12 ,\iTimebase_count_reg[0]_i_3_n_13 ,\iTimebase_count_reg[0]_i_3_n_14 ,\iTimebase_count_reg[0]_i_3_n_15 }),
        .S({data8,data7,data6,data5,data4,data3,data2,\iTimebase_count[0]_i_5_n_0 }));
  FDRE \iTimebase_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_13 ),
        .Q(data11),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_12 ),
        .Q(data12),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_11 ),
        .Q(data13),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_10 ),
        .Q(data14),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_9 ),
        .Q(data15),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_8 ),
        .Q(data16),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_15 ),
        .Q(data17),
        .R(timebase_Reg_Reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \iTimebase_count_reg[16]_i_1 
       (.CI(\iTimebase_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\iTimebase_count_reg[16]_i_1_n_0 ,\iTimebase_count_reg[16]_i_1_n_1 ,\iTimebase_count_reg[16]_i_1_n_2 ,\iTimebase_count_reg[16]_i_1_n_3 ,\iTimebase_count_reg[16]_i_1_n_4 ,\iTimebase_count_reg[16]_i_1_n_5 ,\iTimebase_count_reg[16]_i_1_n_6 ,\iTimebase_count_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[16]_i_1_n_8 ,\iTimebase_count_reg[16]_i_1_n_9 ,\iTimebase_count_reg[16]_i_1_n_10 ,\iTimebase_count_reg[16]_i_1_n_11 ,\iTimebase_count_reg[16]_i_1_n_12 ,\iTimebase_count_reg[16]_i_1_n_13 ,\iTimebase_count_reg[16]_i_1_n_14 ,\iTimebase_count_reg[16]_i_1_n_15 }),
        .S({data24,data23,data22,data21,data20,data19,data18,data17}));
  FDRE \iTimebase_count_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_14 ),
        .Q(data18),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_13 ),
        .Q(data19),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_12 ),
        .Q(data20),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_14 ),
        .Q(data2),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_11 ),
        .Q(data21),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_10 ),
        .Q(data22),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_9 ),
        .Q(data23),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[16]_i_1_n_8 ),
        .Q(data24),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_15 ),
        .Q(data25),
        .R(timebase_Reg_Reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \iTimebase_count_reg[24]_i_1 
       (.CI(\iTimebase_count_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_iTimebase_count_reg[24]_i_1_CO_UNCONNECTED [7],\iTimebase_count_reg[24]_i_1_n_1 ,\iTimebase_count_reg[24]_i_1_n_2 ,\iTimebase_count_reg[24]_i_1_n_3 ,\iTimebase_count_reg[24]_i_1_n_4 ,\iTimebase_count_reg[24]_i_1_n_5 ,\iTimebase_count_reg[24]_i_1_n_6 ,\iTimebase_count_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[24]_i_1_n_8 ,\iTimebase_count_reg[24]_i_1_n_9 ,\iTimebase_count_reg[24]_i_1_n_10 ,\iTimebase_count_reg[24]_i_1_n_11 ,\iTimebase_count_reg[24]_i_1_n_12 ,\iTimebase_count_reg[24]_i_1_n_13 ,\iTimebase_count_reg[24]_i_1_n_14 ,\iTimebase_count_reg[24]_i_1_n_15 }),
        .S({p_1_in,data31,data30,data29,data28,data27,data26,data25}));
  FDRE \iTimebase_count_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_14 ),
        .Q(data26),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_13 ),
        .Q(data27),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_12 ),
        .Q(data28),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_11 ),
        .Q(data29),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_10 ),
        .Q(data30),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_13 ),
        .Q(data3),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_9 ),
        .Q(data31),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[24]_i_1_n_8 ),
        .Q(p_1_in),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_12 ),
        .Q(data4),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_11 ),
        .Q(data5),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_10 ),
        .Q(data6),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_9 ),
        .Q(data7),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[0]_i_3_n_8 ),
        .Q(data8),
        .R(timebase_Reg_Reset));
  FDRE \iTimebase_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_15 ),
        .Q(data9),
        .R(timebase_Reg_Reset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \iTimebase_count_reg[8]_i_1 
       (.CI(\iTimebase_count_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\iTimebase_count_reg[8]_i_1_n_0 ,\iTimebase_count_reg[8]_i_1_n_1 ,\iTimebase_count_reg[8]_i_1_n_2 ,\iTimebase_count_reg[8]_i_1_n_3 ,\iTimebase_count_reg[8]_i_1_n_4 ,\iTimebase_count_reg[8]_i_1_n_5 ,\iTimebase_count_reg[8]_i_1_n_6 ,\iTimebase_count_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\iTimebase_count_reg[8]_i_1_n_8 ,\iTimebase_count_reg[8]_i_1_n_9 ,\iTimebase_count_reg[8]_i_1_n_10 ,\iTimebase_count_reg[8]_i_1_n_11 ,\iTimebase_count_reg[8]_i_1_n_12 ,\iTimebase_count_reg[8]_i_1_n_13 ,\iTimebase_count_reg[8]_i_1_n_14 ,\iTimebase_count_reg[8]_i_1_n_15 }),
        .S({data16,data15,data14,data13,data12,data11,data10,data9}));
  FDRE \iTimebase_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_0_in),
        .D(\iTimebase_count_reg[8]_i_1_n_14 ),
        .Q(data10),
        .R(timebase_Reg_Reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \timer_width_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .S(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEAAFFFF)) 
    wdt_Bitin_1d_i_1
       (.I0(wdt_Bitin_1),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_aresetn),
        .I5(iWDT_Reset),
        .O(wdt_Bitin_1d_i_1_n_0));
  FDRE wdt_Bitin_1d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdt_Bitin_1d_i_1_n_0),
        .Q(wdt_Bitin_1d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEE0EEEEE)) 
    wdt_Reset_Status_Reg_i_1
       (.I0(wdt_Reset_Status_Reg),
        .I1(iWDT_Reset),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(s_axi_wdata[3]),
        .O(wdt_Reset_Status_Reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wdt_Reset_Status_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdt_Reset_Status_Reg_i_1_n_0),
        .Q(wdt_Reset_Status_Reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    wdt_State_Preset_i_1
       (.I0(wdt_Bitin_1),
        .I1(eWDT2_Reg),
        .I2(eWDT1_Reg),
        .I3(wdt_Bitin_1d),
        .O(p_2_in));
  FDRE wdt_State_Preset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(wdt_State_Preset),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'h00000000AAAAABAA)) 
    wdt_State_Reg_i_1
       (.I0(wdt_State_Reg_reg_0),
        .I1(wdt_Bitin_1d),
        .I2(wdt_State_Reg_i_2_n_0),
        .I3(wdt_Bitin_1),
        .I4(wdt_State_Preset),
        .I5(wdt_State_Reg_reg_1),
        .O(wdt_State_Reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_10
       (.I0(data19),
        .I1(data17),
        .I2(data20),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data18),
        .O(wdt_State_Reg_i_10_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_11
       (.I0(data31),
        .I1(data29),
        .I2(p_1_in),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data30),
        .O(wdt_State_Reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h33000F5533FF0F55)) 
    wdt_State_Reg_i_12
       (.I0(data21),
        .I1(data24),
        .I2(data23),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data22),
        .O(wdt_State_Reg_i_12_n_0));
  LUT6 #(
    .INIT(64'h33000F5533FF0F55)) 
    wdt_State_Reg_i_13
       (.I0(data9),
        .I1(data12),
        .I2(data11),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data10),
        .O(wdt_State_Reg_i_13_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_14
       (.I0(data3),
        .I1(\iTimebase_count_reg[0]_0 ),
        .I2(data4),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data2),
        .O(wdt_State_Reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_15
       (.I0(data7),
        .I1(data5),
        .I2(data8),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data6),
        .O(wdt_State_Reg_i_15_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_16
       (.I0(data15),
        .I1(data13),
        .I2(data16),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data14),
        .O(wdt_State_Reg_i_16_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_17
       (.I0(data14),
        .I1(data12),
        .I2(data15),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data13),
        .O(wdt_State_Reg_i_17_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_18
       (.I0(data2),
        .I1(p_1_in),
        .I2(data3),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(\iTimebase_count_reg[0]_0 ),
        .O(wdt_State_Reg_i_18_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_19
       (.I0(data6),
        .I1(data4),
        .I2(data7),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data5),
        .O(wdt_State_Reg_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    wdt_State_Reg_i_2
       (.I0(eWDT2_Reg),
        .I1(eWDT1_Reg),
        .O(wdt_State_Reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_20
       (.I0(data10),
        .I1(data8),
        .I2(data11),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data9),
        .O(wdt_State_Reg_i_20_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_21
       (.I0(data30),
        .I1(data28),
        .I2(data31),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data29),
        .O(wdt_State_Reg_i_21_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_22
       (.I0(data22),
        .I1(data20),
        .I2(data23),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data21),
        .O(wdt_State_Reg_i_22_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_23
       (.I0(data18),
        .I1(data16),
        .I2(data19),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data17),
        .O(wdt_State_Reg_i_23_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_24
       (.I0(data26),
        .I1(data24),
        .I2(data27),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data25),
        .O(wdt_State_Reg_i_24_n_0));
  LUT6 #(
    .INIT(64'h00000330448847B8)) 
    wdt_State_Reg_i_3
       (.I0(wdt_State_Reg_i_5_n_0),
        .I1(Q[4]),
        .I2(wdt_State_Reg_i_6_n_0),
        .I3(Current_State),
        .I4(wdt_State_Reg_i_7_n_0),
        .I5(wdt_State_Reg_i_8_n_0),
        .O(wdt_Bitin_1));
  LUT6 #(
    .INIT(64'h0053F0530F53FF53)) 
    wdt_State_Reg_i_5
       (.I0(wdt_State_Reg_i_9_n_0),
        .I1(wdt_State_Reg_i_10_n_0),
        .I2(g0_b3_n_0),
        .I3(g0_b2_n_0),
        .I4(wdt_State_Reg_i_11_n_0),
        .I5(wdt_State_Reg_i_12_n_0),
        .O(wdt_State_Reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h00530F53F053FF53)) 
    wdt_State_Reg_i_6
       (.I0(wdt_State_Reg_i_13_n_0),
        .I1(wdt_State_Reg_i_14_n_0),
        .I2(g0_b3_n_0),
        .I3(g0_b2_n_0),
        .I4(wdt_State_Reg_i_15_n_0),
        .I5(wdt_State_Reg_i_16_n_0),
        .O(wdt_State_Reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h50035F0350F35FF3)) 
    wdt_State_Reg_i_7
       (.I0(wdt_State_Reg_i_17_n_0),
        .I1(wdt_State_Reg_i_18_n_0),
        .I2(g0_b3_n_0),
        .I3(g0_b2_n_0),
        .I4(wdt_State_Reg_i_19_n_0),
        .I5(wdt_State_Reg_i_20_n_0),
        .O(wdt_State_Reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h5300530F53F053FF)) 
    wdt_State_Reg_i_8
       (.I0(wdt_State_Reg_i_21_n_0),
        .I1(wdt_State_Reg_i_22_n_0),
        .I2(g0_b3_n_0),
        .I3(g0_b2_n_0),
        .I4(wdt_State_Reg_i_23_n_0),
        .I5(wdt_State_Reg_i_24_n_0),
        .O(wdt_State_Reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h0F0055330FFF5533)) 
    wdt_State_Reg_i_9
       (.I0(data27),
        .I1(data25),
        .I2(data28),
        .I3(g0_b1_n_0),
        .I4(g0_b0_n_0),
        .I5(data26),
        .O(wdt_State_Reg_i_9_n_0));
  FDRE wdt_State_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wdt_State_Reg_i_1_n_0),
        .Q(wdt_State_Reg_reg_0),
        .R(1'b0));
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
