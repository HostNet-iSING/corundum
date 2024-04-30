// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:35:44 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_43c9_build_info_host_0 -prefix
//               bd_43c9_build_info_host_0_ bd_43c9_build_info_cmc_0_sim_netlist.v
// Design      : bd_43c9_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_43c9_build_info_host_0_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    start2,
    IP2Bus_WrAck,
    Q,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    bus2ip_rnw_i,
    \Scratch_reg[0] );
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input start2;
  input IP2Bus_WrAck;
  input [4:0]Q;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input bus2ip_rnw_i;
  input [2:0]\Scratch_reg[0] ;

  wire Bus2IP_CS;
  wire [0:0]E;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [2:0]\Scratch_reg[0] ;
  wire bus2ip_rnw_i;
  wire start2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Ack[1]_i_1 
       (.I0(Bus2IP_CS),
        .I1(S_AXI_ARESETN),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(Bus2IP_CS),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000000000005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I1(Bus2IP_CS),
        .I2(start2),
        .I3(S_AXI_ARESETN),
        .I4(IP2Bus_WrAck),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \Scratch[31]_i_1 
       (.I0(bus2ip_rnw_i),
        .I1(Bus2IP_CS),
        .I2(\Scratch_reg[0] [2]),
        .I3(\Scratch_reg[0] [0]),
        .I4(\Scratch_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_bvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_rvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ));
endmodule

module bd_43c9_build_info_host_0_axi_lite_ipif
   (SR,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;

  bd_43c9_build_info_host_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* CHECK_LICENSE_TYPE = "bd_43c9_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bd_43c9_build_info_host_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]NLW_U0_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CORE_REVISION = "0" *) 
  (* C_MAJOR_VERSION = "2" *) 
  (* C_MINOR_VERSION = "2" *) 
  (* C_PATCH_VERSION = "0" *) 
  (* C_PERFORCE_CL = "3246043" *) 
  (* C_RESERVED_TAG = "0" *) 
  (* C_SUBSYSTEM_ID = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_VIV_VERSION = "2105616" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* is_du_within_envelope = "true" *) 
  bd_43c9_build_info_host_0_shell_utils_build_info_v1_0_0 U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[4:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[4:2],1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_U0_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_U0_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

module bd_43c9_build_info_host_0_slave_attachment
   (SR,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [4:2]Bus2IP_Addr;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire I_DECODER_n_1;
  wire I_DECODER_n_2;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY_INST_0_i_1_n_0;
  wire S_AXI_WVALID;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire bus2ip_rnw_i;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [1:0]p_0_out;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire \state[1]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF007000700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(S_AXI_ARVALID),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(I_DECODER_n_1),
        .I3(IP2Bus_WrAck),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_ARVALID),
        .I3(I_DECODER_n_2),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEEEEEAEA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(s_axi_bresp_i),
        .I2(I_DECODER_n_2),
        .I3(I_DECODER_n_1),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s_axi_rvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_bvalid_i_reg_0),
        .I4(S_AXI_BREADY),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [0]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [10]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0083)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [12]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[3]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [15]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4909)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h008C)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [17]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[3]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h50D5)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(\IP2Bus_Data_reg[31] [1]),
        .I2(Bus2IP_Addr[2]),
        .I3(Bus2IP_Addr[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [20]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4909)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0083)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [29]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[3]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [6]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [7]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [8]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [9]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[9]));
  bd_43c9_build_info_host_0_address_decoder I_DECODER
       (.E(E),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] (I_DECODER_n_1),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 (I_DECODER_n_2),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (is_read_reg_n_0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (is_write_reg_n_0),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .\Scratch_reg[0] (Bus2IP_Addr),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .start2(start2));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_read_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_ARREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_WREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_write_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_WREADY));
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(S_AXI_WREADY_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IP_Addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Bus2IP_Addr[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Bus2IP_Addr[4]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(S_AXI_ARVALID),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    is_read_i_1
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    is_write_i_1
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_bvalid_i_i_1
       (.I0(I_DECODER_n_2),
        .I1(IP2Bus_WrAck),
        .I2(state[1]),
        .I3(state[0]),
        .I4(S_AXI_BREADY),
        .I5(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[13]),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[14]),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[15]),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[16]),
        .Q(S_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[17]),
        .Q(S_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[18]),
        .Q(S_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[19]),
        .Q(S_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[20]),
        .Q(S_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[21]),
        .Q(S_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[22]),
        .Q(S_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[23]),
        .Q(S_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[24]),
        .Q(S_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[25]),
        .Q(S_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[26]),
        .Q(S_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[27]),
        .Q(S_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[28]),
        .Q(S_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[29]),
        .Q(S_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[30]),
        .Q(S_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[31]),
        .Q(S_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_rvalid_i_i_1
       (.I0(I_DECODER_n_1),
        .I1(IP2Bus_WrAck),
        .I2(state[0]),
        .I3(state[1]),
        .I4(S_AXI_RREADY),
        .I5(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT6 #(
    .INIT(64'h0FEEFFFF0FEEFF00)) 
    \state[0]_i_1 
       (.I0(IP2Bus_WrAck),
        .I1(I_DECODER_n_2),
        .I2(state1__2),
        .I3(state[0]),
        .I4(state[1]),
        .I5(S_AXI_ARVALID),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4440EEEA)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(IP2Bus_WrAck),
        .I3(I_DECODER_n_1),
        .I4(state1__2),
        .I5(\state[1]_i_2_n_0 ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0008)) 
    \state[1]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(state[0]),
        .I4(state[1]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(rst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EKWP51QmnzflhD03a4rylVH6KGUck+3azLRQ2MZ7iJi15uV5rauIPzTaFY4wG4224b//7AdJK34q
gxm6oR6yVGzEMWwZiojRbut0GfNzkIzG6sKGq53xX1xbIR6sfn8Xpta4RBvbwIFmHHzs4YcRYKFv
X86bJ+NQH4Oh30AVfzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FeBflxxw4skn0tJHTwwuhQm3Io5yhKGLyaE/iUwWFSNJ3CDKMP8B3jlSGcx4dC0kiEIAup0NrClp
QxWg96Ja8oQqv2VcQZvNxQhEmwK53xR2YwK57Jsn7+AcdtFP33W+lGfKFg5gvHb8iUxF3xd9F3Gu
/Hq3ReHQFuAyv4+qgD5vGpE3l5ULYG7Uz4pIr5pMdBuCFGuRwM3y4PjAYT3Zklcm/5g1DtshLT+7
payjSiUqsge8gI2nm++uB58hXSlfFsDfgSkQOO1EWAkopXrEOgmAgBIcPAEu9acNy13yDsV/GTVO
paCJ8XaqZusJ++KVSvHL4929fEu7QjEqmpfWxQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QpJv1oPcLMw7H+vOtxDE/bZpyBz7z8dd62eEZuH8+iBngmWTAggCkYN4MnDnuUVcTg4JLbaU9YZf
O4VcvIBQU2vp0iJnR94eKRCEHWfVEoWDBN2Auwtvfk8Kv+q7GoTTu/QNlP77VfurgVkyDJjz0ywY
HfSHVK54iJJ0XMyRFpI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNaNRGK+cPQpJGx8/j3lTFTGFtnAoZlKuWezEEXehieFCBbInWGGOMeBKTBROj34xSXHIFGG0qHX
kSdWqPJM/fMtqz5BXUte2FKpsD7//nW0pox+rSHiLgOS4qPEdZKqDuLpeyaCA/fy7NMDkbnHV32h
DCWcUBdQRxvBA1H4FmbRKOIgvCI+oSRCEWOMKKiFn0R3CPIvllGWQw9Ly/nysS4NWu/U9Q043EKe
ObemrjNfYnqwBFmIrEXeKH//hxsiP0eJssdmNrHUj/UMSHhc1OLjQEL1Luc64upkb2tRowf/+mYz
hQy1AZCzX4OCNrZuW6C+qkWYt+wXNcujiQIwBg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vnnoBt5tK1Bc2F282Q3OddIVhoU5D7usSIVUOooJk491brGioC/2bvyX/RDmatCFTORnM2TBSsSy
1jz+PLAQ1/mx9pcGoRlaX/cAHXFPf3W7r5ZoBYnyEAH+pbVeZT8OllXTBMFe/CmyGDAURbYxsY0O
leW5FsLYol/ZwE9ioqJ4XRkCjfI4OYLMbkJPZG5hghGRtK4YzH31ZBdzRlQFt7T9zjWkWeauuDZb
bME0TlY8bblT75BDqI31wk7v6fgzK+58vZSi3tu/m0DfRW3PrdrSumJESb9d7nppY5Hi7gkW0PLc
d+4SWCZ1dvgof/5c754hKH+1BY2pk6dWDWWnkw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oT8oPulq8tnUtwwxVdme1rpiouUwnECnUsFLriohJS22JBjDv8zHx04vvjCvTMLsza5PFef4Xh/O
lOxapWGRRWSiyXlt6b1IB9IfhHSOssXwJan9XS/TAmd2LgRn5wy1dI6ewjT3svavnKfgnkY56oSS
s35/0aBLoEcu7Adm7JdcD8AMlPdIs665JO63TYBz3XHqTG0TrNIpfUQWJPLxbN6ZlCFtsmI3EnLm
JZ/hHLjjZHZt3NWpEotco58vsCbwS5B4np3wFz3FW+CudULzjxUj4br0rVqPV/ZyaoPQLHgFZD4t
T5VVVhtUAzLg5NBdlIcwVL3ctsSRQ1IOb9caGA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TorjAeG7t6p4wdNigBbzNCaoYR+Ll0wrjr9hsueBw0KNWhyeiV4RetO1leoxcgW5Vfv2wgiRdIiO
eTF4edjM3fDt024eXoV+lTtCj+0+HPwCJmhkCT2NemQjiX4VcjDg4PYFo9eTkvUVsJ0YHGPDUXRb
Ehhq6AjBuQM1mD/XE5QtSzloTIcPdWMf9SkLnkogKDRQK8NpeEs4YFDt1GAY/OpdUwjZPWkigMqk
NErFQrL9VASscJQWcE0qS8yo5hapvmgToK8msO5PYjaod8L+I6w3aNUoYpgcg5Yx4Pwu6X/kKGp5
Q+mIMjNNaQGOi2I6GZnndVmVk/1PUf91f8VW+g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
AAtXQHuoo1Nv/SjabUEolCx4nn+9GlNP8B/rvhF84MeowmWYe6VFPBeEF53wmub90oWp0yIo9tc6
5H1V29cbKTO54P9KI7kv64BuJfz8WDftINyTUtRDO3lxUW7AWx7mH4K8UIpvGgI5h6fMaznHYifZ
g+RxoOj4Jrf3Bo4O1IhouDQfqK8lEm1eSM6iw8+KsxykPB54HoY3Gg5bKQGpPrDIxoJ9aMLa8hed
s8uwgdNuEmpjtze/qLWKJsAciuom3N9xwCBzUWooL6Mkxxj/H/jEOKQzcGwITjtYCm7fZo6XB9Q2
aR6bmO2Qf3jwvro0KRMVIJgqxWn029a01lh95+fNzb5JAQoQaTe2ezuC8WFGqoYdaQbA2xJJHX47
WK1UZHLGISeLoKotxD3CW6ppHeQfBvBZ911ByiNMQ4wYBR+izMcD6OWlaxxxuJu0iAHSTy6Va2Ia
aVJSu9xKwOrznPz2Fx6fY/tMXfYhGVjTkQIBjzwFFFoWcvdIx6UrMPKz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FegyjaKxGqZVGhf/5982sc6tdEaxKPa3qmiIWKRzYbDLFwDfl+84V7hakT6Ap4UoCOxuQsBEQ4Bi
rVGQ9br7BpCSRZldWfsSLFP4Fev3+hkNtd1IN7vgw9Vjn2uSA33C5MVTA5k1iV+0uIuKIscn+clH
VcpnUNVUeeRc26I+ku1GfQ6CEMyuKQVAfa/cMQLKM4MfkSf9bHflY/4sN4fTEFQlgkCX4yVxhCCf
XqOguD+CcgwP7i5UdLVFGUV48xb9A9ARauaG8clsVy2RXxk+fsOb0pwYtQmkbj+/6bFt+FPzr+s4
7uaSiArGE77XjmL5LD3h/lUfRxBFOYPjo7Cc5g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17376)
`pragma protect data_block
+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
`pragma protect end_protected
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
