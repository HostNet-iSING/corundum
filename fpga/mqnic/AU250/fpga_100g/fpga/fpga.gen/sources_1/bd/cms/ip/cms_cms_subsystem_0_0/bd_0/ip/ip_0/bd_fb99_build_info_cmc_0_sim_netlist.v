// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:29:06 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/git_repos/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_0/bd_fb99_build_info_cmc_0_sim_netlist.v
// Design      : bd_fb99_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_build_info_cmc_0
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
  bd_fb99_build_info_cmc_0_shell_utils_build_info_v1_0_0 U0
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
module bd_fb99_build_info_cmc_0_address_decoder
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

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module bd_fb99_build_info_cmc_0_axi_lite_ipif
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

  bd_fb99_build_info_cmc_0_slave_attachment I_SLAVE_ATTACHMENT
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

(* ORIG_REF_NAME = "slave_attachment" *) 
module bd_fb99_build_info_cmc_0_slave_attachment
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
  bd_fb99_build_info_cmc_0_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17456)
`pragma protect data_block
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
Ysbj7UYgUuK5PdZllgs=
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
