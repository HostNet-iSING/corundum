// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:35:44 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_build_info_cmc_0_sim_netlist.v
// Design      : bd_43c9_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17408)
`pragma protect data_block
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
xDdUAdSncPpdOrGO0lVqxXdgjQp5dPY=
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
