// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:35:46 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_0/bd_43c9_build_info_cmc_0_sim_netlist.v
// Design      : bd_43c9_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bd_43c9_build_info_cmc_0
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
  bd_43c9_build_info_cmc_0_shell_utils_build_info_v1_0_0 U0
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

(* ORIG_REF_NAME = "address_decoder" *) 
module bd_43c9_build_info_cmc_0_address_decoder
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

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module bd_43c9_build_info_cmc_0_axi_lite_ipif
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

  bd_43c9_build_info_cmc_0_slave_attachment I_SLAVE_ATTACHMENT
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

(* ORIG_REF_NAME = "slave_attachment" *) 
module bd_43c9_build_info_cmc_0_slave_attachment
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
  bd_43c9_build_info_cmc_0_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17424)
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
