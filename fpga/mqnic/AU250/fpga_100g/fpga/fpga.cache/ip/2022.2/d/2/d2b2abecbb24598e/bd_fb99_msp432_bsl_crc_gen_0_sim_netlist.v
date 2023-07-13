// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:19:59 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_fb99_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10352)
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
