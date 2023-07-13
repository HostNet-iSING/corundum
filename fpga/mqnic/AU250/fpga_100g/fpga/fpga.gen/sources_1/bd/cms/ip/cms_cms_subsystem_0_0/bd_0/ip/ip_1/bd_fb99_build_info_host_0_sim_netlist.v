// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:28:42 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/git_repos/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_1/bd_fb99_build_info_host_0_sim_netlist.v
// Design      : bd_fb99_build_info_host_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_host_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_build_info_host_0
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
  bd_fb99_build_info_host_0_shell_utils_build_info_v1_0_0 U0
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
module bd_fb99_build_info_host_0_address_decoder
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
module bd_fb99_build_info_host_0_axi_lite_ipif
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

  bd_fb99_build_info_host_0_slave_attachment I_SLAVE_ATTACHMENT
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
module bd_fb99_build_info_host_0_slave_attachment
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
  bd_fb99_build_info_host_0_address_decoder I_DECODER
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
VcAMImkQSeuVF5mOZqU=
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
