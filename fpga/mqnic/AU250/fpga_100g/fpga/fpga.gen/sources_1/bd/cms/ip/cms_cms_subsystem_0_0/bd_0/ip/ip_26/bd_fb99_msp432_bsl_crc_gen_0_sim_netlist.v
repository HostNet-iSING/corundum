// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:20:01 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/git_repos/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_26/bd_fb99_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_fb99_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_msp432_bsl_crc_gen_0
   (clk,
    reset_n,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tready,
    m0_axis_tvalid,
    m0_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s0_axis:m0_axis, ASSOCIATED_RESET reset_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) output [31:0]m0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m0_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [15:0]\^m0_axis_tdata ;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire reset_n;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire NLW_inst_m0_axis_tlast_UNCONNECTED;
  wire NLW_inst_s0_axis_tready_UNCONNECTED;
  wire [31:16]NLW_inst_m0_axis_tdata_UNCONNECTED;

  assign m0_axis_tdata[31] = \<const0> ;
  assign m0_axis_tdata[30] = \<const0> ;
  assign m0_axis_tdata[29] = \<const0> ;
  assign m0_axis_tdata[28] = \<const0> ;
  assign m0_axis_tdata[27] = \<const0> ;
  assign m0_axis_tdata[26] = \<const0> ;
  assign m0_axis_tdata[25] = \<const0> ;
  assign m0_axis_tdata[24] = \<const0> ;
  assign m0_axis_tdata[23] = \<const0> ;
  assign m0_axis_tdata[22] = \<const0> ;
  assign m0_axis_tdata[21] = \<const0> ;
  assign m0_axis_tdata[20] = \<const0> ;
  assign m0_axis_tdata[19] = \<const0> ;
  assign m0_axis_tdata[18] = \<const0> ;
  assign m0_axis_tdata[17] = \<const0> ;
  assign m0_axis_tdata[16] = \<const0> ;
  assign m0_axis_tdata[15:0] = \^m0_axis_tdata [15:0];
  assign m0_axis_tlast = \<const0> ;
  assign s0_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* IDLE = "1'b0" *) 
  (* PROC = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fb99_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
       (.clk(clk),
        .m0_axis_tdata({NLW_inst_m0_axis_tdata_UNCONNECTED[31:16],\^m0_axis_tdata }),
        .m0_axis_tlast(NLW_inst_m0_axis_tlast_UNCONNECTED),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .reset_n(reset_n),
        .s0_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s0_axis_tdata[15:0]}),
        .s0_axis_tlast(s0_axis_tlast),
        .s0_axis_tready(NLW_inst_s0_axis_tready_UNCONNECTED),
        .s0_axis_tvalid(s0_axis_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gRSpMXdCuxiGD6AiKOKpAgrtqamqzjsr5XSg63YEwMS/AObbdFu1CJ154ks9CEpbHGSODVWry+Wx
2vpf2gHEbB3GSTUiU1tObED/l2EfR52hk0QuWFqJRoG1Y63suJo9cFYp4guTPUxa7FV2HkxT92fF
gjiw1ln2YKuoqCkfglk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s5GyXbPbdwaO0ji4uvnR8P9KCADWzG4wsUmS6NcI8MeoC8xiSzk4Ocp8CqowAa0jH1eTo0LkzC8V
VBD0NN31dB7D3KCdtfIuTfUi9jxwWQP/mWeoC6yDBvU56MgQdKg9gYPwJ8kAWiguA7MUlIXjVILD
Ak8e4gSjPMi2v+caTwpfkWLcgH6gdWKJanEHnMlT7RgakDCKHPTrUwKcdDXpiFTYwiOhhahmJfxe
RIqin/Kz75Om5yJ8Ak0eKYw/1U0ngSQcv922atuaDlDs2KW79wvtYArcHXXs2pczx+DXRp/Q/l1l
TcdDyF27TJ8YPX01xGwsAF+AIrAiOs2qNVu8sw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VKDD0Xnc8FYMrGFLXZmqVGzYIbkvoMuqDDIpgrsbuJ+++DgYxfPOvhw5kW5zk7Qvql6pOVgP7Du1
rAkQr7sKkjAPsB3aXfV4Mf3yADeydjXpU4k3N4zAspvpXtx1U3slQDtwQrAi++gVtKWijnjP/QKX
KjeE2z2Mxp3Gn3XDrWk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N/kRdjIQauSodghAwjc+f5vhJZjDvyDmZ9X6qMUc99GAuU0BqCPpKP58UsM3OPuY6nrT3JttCmkT
hwG/a0CcrUTZfiMn+gejS1qfr3GcTMMaL6M5ZijklMYwvLDXgIPRnUQ6e9Fi679U9UFNDGyoi4tY
nGVHAAPRwywpfAj438ds3vLps7txCEZjZp9eiIxhOLPgaplI6A5ind821Vt5OIl508HTa3OyjgrQ
HdwxPitAn5RftKuBu7ZJkiLLdrwpJuqmQ5sOZ/ac4g21E9oonxn9qHWi/iLwDQxhaZRYlR05X3QC
s8rVQ9LQNJ3muy+DTOc/285nYHrd1jFJhAwhPg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N8hVFGC1eqZJHvS7WWCrJmls+Cwy8ptOepi7Emz+BmUpMnMrexaxp2dqAzzXZfc5NpRwCqjmu4uL
u4vBMliGp/pqlJ+bl812NHljf8rbH8MkXk0DUl//0Z+O4uZrr1+uHZhHzQEx0lYMf0seZ3StffbE
ZaSghizsS3zhCvxvpdKnl7HsrECNNgZuJMJVGb1eJ6EiMxwSSxf9ZvpiPQuGDXyF/em+74VYPoKD
lLLR6jdJs6SNyV9ZDMrJ5J2x9La94EiZ8X7tyPHsX+k8k8lWcL524WV138Cf+x9iWAO1hfxft3+V
x0t3BIt8C2TMO4REr5vmJlOWAz3qZ6LNdlqpwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J/TKAD9ciBRQ/tT0UxT4UWCjn7kO8v8obunowngaROS2AXvA6lQUM4Rzybejb/0UVwdw4l9TDEXv
Ejn9ul6MWEtfyrjM0DoAObiZH8xg9F8ym/4FDr2iDQDY66d/me18WbeWEIJ0l9TrWBDbAkSmIGyB
5LL8dNiXg+JlEnUOpiHqAioip2E/D5ile9uF9vu72TYAClU6ssqlN5EbMCOCFzaLKgfAqfFj3FSG
r8RE5h5jtOPpo3rhLcdkax+WdO/696qcHFQ6UedkEmLNfpHKRsVupa3zaoUoy31XHuU9t23Qi3Jn
TrV5OSw5hu1/I3qEeCD1Y0B67EPV5RpsjT9sUA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XjTzP8CSEwtMKMOgh8InbRwTa3w9AU36nMUZWUoXFZd+xhP7edH9aJmTwd2SZVdIq86tihpqH0Wq
rEB9rz9FSZDdXG0P31/AA67P73NFkXgWSt9y3yBzD3ClioZ9z3Qmcvbw6YvzpzyZDc5WL8MjyeJS
lhcQxrCvGwRYEudvYRkOpi1+PJd8MDcoYWs67rmkCH2y/OPkUPedym2qpOzijMZ7QMGwm6bWTUnJ
UYiwDLaZmiyPRwXmcNhQ/WR+TJ8IP6d+te4ftXkJhoXvZJN3mCPxsvvkLzDrfgHb1zm9RCmMYUBs
65NkE4m4epU7L0vFbHEL0SzGWkwM6GM9+kLiWA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Eb7FvNB4vcE6HPpTmVW4islf4/x6C1HYiTzLt1pHS7eHY1qB/ofMbwKZu2URQj5HJGZjGqJM4V4g
N9UctbDm3+EaMl2ItgYk1/EnsWNTh5vqAv0WxjWLgHrwR+79iGq+Mn2r8OgmbqMYzi55qBFmEtFr
jizpR3mAn6KOcoXP8g71zRrj0gheIB0W87f3v8dYyIQV8YppQ8W1/Z427ZXU4kljx70azEUSo/tV
4C+xIx4odDfTenCK9nPgLnnAarcdY59GOzrwT83DDc/K4qQW/ShB97YpYleUJmOsp69nSH0XrXUx
zNbOBMiEqVe76rwWAYWL7t6u43tpwur8HazaPld3vt44E3hbM74xPmXpeZ4awU5XKgXNB4Lx41aa
0G3bs1/rwFn7ZHsGiAYbgMhqlhieIE9fMoNOjRLm+Cz4nPSY5tM1wBiqmBWPSgmZ4d+36ROKZFjo
cypbn1pFSwzyoqmlLLzhUuSmGEBADc84LH4uDtEFJ4TTadqjF0te290R

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RbrMaEshrN85kzg7trqCsHsIH5YzNbNot4Jvf5IDqp2sTrGKKDYZQOKsMSgUtJ4HQDN+Hfdp1/tG
MbjlyTDQdXZmNy+iGvQfCwEo15O4J0XiaNjOMymzQd4q+Acuj+e0dWIOWD0EOdRy7OOiWfH4wEZX
mO+kEmsX4zgrpMtNZNHOtHGNCFuv4wjqVobFRudaiyWVoI/5WbXiozTf5DQ8292G6022XJ+kCclf
5VPVDzdQMN1RyWCFajP2cuDj/U8n2m56NBIqsBjOVnFo5gNVD/pPPNQof/lIQPZKDWjEBaY+Ksgy
y7By7ZefssA/tC5/OKv2ElZA5UKNU9XSj6MewA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10400)
`pragma protect data_block
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
BMGy66vYwXlGLgOlWdXwRMPDkrL+K0iXZRw=
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
