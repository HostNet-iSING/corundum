// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:28:40 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_build_info_host_0_sim_netlist.v
// Design      : bd_fb99_build_info_host_0
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

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_host_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
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
