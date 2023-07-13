// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:29:04 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_build_info_cmc_0_sim_netlist.v
// Design      : bd_fb99_build_info_cmc_0
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
        .I2(\Scratch_reg[0] [0]),
        .I3(\Scratch_reg[0] [2]),
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
    S_AXI_AWREADY,
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
  output S_AXI_AWREADY;
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
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
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
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
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
  (* C_CORE_REVISION = "4" *) 
  (* C_MAJOR_VERSION = "4" *) 
  (* C_MINOR_VERSION = "0" *) 
  (* C_PATCH_VERSION = "0" *) 
  (* C_PERFORCE_CL = "3669848" *) 
  (* C_RESERVED_TAG = "32'b00000000000000000000000000000000" *) 
  (* C_SUBSYSTEM_ID = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_VIV_VERSION = "2105888" *) 
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
    S_AXI_AWREADY,
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
  output S_AXI_AWREADY;
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
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
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
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

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
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [10]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [11]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [12]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [13]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [14]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [15]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [16]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [17]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2F00)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [18]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2003)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [1]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [20]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [21]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2003)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [29]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h200C)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [2]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [6]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [8]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
        .O(S_AXI_AWREADY));
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
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
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
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
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
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
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
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(S_AXI_ARVALID),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4440EEEA)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(IP2Bus_WrAck),
        .I3(I_DECODER_n_1),
        .I4(state1__2),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0008)) 
    \state[1]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WZwslNUvxQZsXn79NcOp4Z7PnrnSD46zevYDg8mrJzjCbs0tTTR2HP2nzMCYcU9SOXZhegwLOvnB
O30Iyp5XXROMUBQRmKf8fZZFpYHaaXSRoR5wqANJ2TkmuhI9MgpEk73ld9Z3wJP6HT6iF2298vMz
PTts7D9wDSg5vkZfJws=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sUWJ31BiZTj2f4k5NGzDlohns7ylf5BzBT9A6CMfpso6OQ30HUbbD85LtCyhBNn4KqYu15f+TZqf
Ir3LEXHXgIFTzw8GwzYL/GyBRhaFkCNe17zfLP0jFJM6V2ranMQZ+O+8yOmTLuYFkQbjKSUrywGm
K+m+9fLaoext7iOzkbmNZtJtii9Vq1qU/WqUDQwHPAuMep5V7JkOb7GS5uBGx3+mfqF4MNvf0ViF
NsJGrIbpll0N0bG3a0r0nEcwJlsiYtQizHfIa+FSbfAxTdzaxWsizG3tZVCbS6SvlojQz9jPo3ZS
ytboOAKx5MZNKc/za9ZPZ/jkE64GvGl1iE/Q6Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CdUNiwPuTejJrcMt6AY7FVIA2RhCFMisZC8Yht8scwAWQmCb2POfNQ10Heq3bwmDmjaugOrSWdil
wjAX4eGII3n0u5+hwf+uXmyQLlPGjH71/vAt/+LzRDIwdqsMKFI1UdiMEOjbkwgZ0oFObsbdaZyr
A5UBEGSsab8B9NWWwYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XcflpchNS+sCr6VQWlYOThmE1Ae+0tVlnoG2iiBh84HjVfsckhNspygH13FQJbEoJT9vaX8S1g2+
fgaKKcaa/E0CBF25ck/u0Im/oW/CZAmhFSwSA8JUk1e7O6dNB2ucuxAAesSyOvjNGat0ULEP20bP
HqtOcyI9xTrRgLwOfP7iqQzaY/qILuAHVB+cbdF94jiWdHu+dnTiDP2ylvDPQAdYfJttGvHxmfJe
YLlg+Nvnwv8uXPJXfIVspBzIK4kH1NJgl02y0bNoYfeDnmTP0M2nYSLze0oGxzKTJFEphCxN/dM6
RCmgmciv5GzH0smW8uxcfr5Cqz7avJl3B/tlqg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5IwwyjV6MXUNvlkzsRUVC2F6OeH/C+u9FXZEUMsBBXIra5Nbbw9AA1uPwdZcebSdbH4YK9jFsafH
q4CTrFJtI0qRxQKC4Y99k7cRaFd531sl2AeVtd8XkUyyuFdDD0tNoERgqZWiBQ5V9FdHeLgl+zP+
Nq/GE/fOCv5EewIuXW4X1azNEZp5zVfhulc/x446MqqAOtZQ2w4yxty0K34fx+x3EZH4FIAnwv2u
ACv4uOEP7CwifmpztgoiCYpi9WzngYYRiIfanLsqZ65kp0Oqa8ZEijhX1n5pWx066LCJO6fTdq/Z
l1/5GvGXBALOv44Wt0GnRxWKGq16F9IKWb9/3A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Sf536L0PKWnB9CUbE7SeiBOZ4ay1X/JZ8r1Br50dSjYUDrqC4OWQ7tsQSI03J5bTYSF7ZcUyg89p
Dd3dlAMZeFOxAaaRGQU8PX24LCIeE/1SOQ82rfOn1fyAOsj3b31FuPzBUITIacVy4N+PVHahELV/
xSvaQ5oWDhIzJV72Ft5Lr5vQvABXMy1nNF8oZ5AsrqwfmHcCjgAb0sIWpQ0C3k34wgu970OXuagA
eCu8MnX4ECzCe3y5os+2/JzMWwaAi0SDjtO5DAlLbDkqCDbHra1jakp7/6cGPI+uHybt4kljCSBk
+SUk+cDjz5k8oiv90jmBv2W6QcA61xsJMFBEGQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J+udShblpCk44uoSpJJv3IeIhXBy/pm7iBsJZrKJDQshqtuPikJLuWbU7fPfFiWF/8N8LLSd/VJp
O4wCWggUSVP4m37elRJnQk59lGODXijRVkDr4qp2HGu4sU608862GAM9508RkveHH5B5rzT0H4io
w5OpUin0atQVGUq2+AAB8aFdmrdp/v1shkaVtYI1vKolU1gtqTPDnc5msL4UK9qCgLPIVaZcJ8zr
/CqYvoxYcY1DUg5OBv4kDrQiFoExV0iDlmEE7CBDNkKBFmELjyx7TInUTDsRnMZex9EDoj8BHz9s
zgCoUR9xMlQtbE6VWRg0YgFAPgowMZOdR2b9ug==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
m0hnNYI4KBfg22EMBAM4Any+pGxSNVq7hUgvjS1ubEfxVn64wRbP126WMhzM5EdO0zI9j23R6a7b
4ZqW4SPIe2qklkGkUbQmPQK2zOnG2GVzn6d2WhUBpqcbWHztDFl8ffW7pYJeQKeAtfJPJfj6i/No
xA6gY9nYizhgRwubaRuQOMF40lUUzSEJeU7CMBifQs/zEPdgBvuuMTzlK0fCelr3Vg6tmDZqIvwB
c9TiANezN0+VijvnTuMZvh1USszTcmrXChLnrvzqc10r7RpkmU2jCqc77JG4xaG0fkonEexOgJab
aT6gtHmHkIuYSTs8Dl5zDhDpqB7c8UrAeSh69vRoW8WxIpccO7r2eNXcvdJHg3YPWwxO68oCuJQ5
jTZgKBKpVwrEAX8ARuX7iyKY5m2yOT6hnOxE35XIx4/+HQEJ/UCvzuaqrzSvGTwOJxXX5OsgMZqn
b3kqi4zWplC/cr/7igK5TbN7fF/iPVj8aI3YtUZ9UKnO0SR87odx7VLV

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ianLYk2aKRCDUrXK5yhKlVJ6wt4sTkzAIQeajG9vWOEFN4SxnRMV443Wmltx79hPfBS+tVslS8sv
+wToO0J4cVqQqIVBuqCvEZsBYdHK503OKRqfbgcsS484gKRpKOpxbn6Shy0ecsKA7MI2TtHoLByB
3i3wBy9GHCpdAzV9Q8QOxZ5fJUXXSOI0odOU2htGRyyD/1Wmgz5Rw8yUv9DDiKzSI4evzVjWHcMo
vsxGo+lGGYG38OgnAWRwkcxj2t4XgHIKWbg07WNVwuwlU0bLsIeSrcpfI3pnro3voMQO7x01DBcH
stNVSO/kt/452JP/kmUf3RdTGMYm9/NAuTvTpQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17440)
`pragma protect data_block
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
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
