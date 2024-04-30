// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:32:29 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2021.1" *) 
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tffgh1cqASyClnB0JS+8qu5B4IwXFlryUlJJvPUcjfT8GyCURNmsSBH++bRaAaC/YeHpmZE1528i
MUo1Znnjzgh3I+njLWZQgdIkReU95NTIEJ52hFHS9r1u2hKZMwOA9hNSars3PVB401fcjU9m37qV
JZX1qO6J1y9/63vFqv0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mBfhLM0oZxJLiN+kEoUfJmxQEz7ddtg1O/omDFMqneEqJ17ow0OOpfvp6+BzUOUJqnRma7/GlxiY
BT5EPTvSoT2/5mYBzYgs50/kGOIwKIEhspWzOzh4RLtSuejC07wDzQdXTcKF5KPMrSQ9iYRwsarB
yn2UHiwJdAGQg7TIZJhzGQDc5YEK0uAG6S0957lb5pKWAjRSVc4m5StJB8oebbqIQeo9LTg+Owhv
M9uFqSNassBLkYrQPqiWkr8x5vVy3BZ+xfwUEM1I6CLY1CudgI4AjmJ1lBt5Jy5Auy98DBmQNLB6
uQ/2ulXYn7Y4cAbpW8HoEIhjUUxEiljwM0rfJw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oSO97NY6g+W1zo5mXs7xa3TXqlJQWIFr97puBevMTHVCD1IUipyi7rSEHcZLFCE6UAIq+MQUkfSe
rDrCFtT6ubicWHcAb8/Z3E6QmXJ17XZajq5IyHEWQKpBtlPczMguRiKmCMR+UQy+mzUp5vItbUXH
ZMs2mub3pokLL4dBBhY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OAd+BVyduU2MqhPHz1Mq9t6aQvunlFNcYBi20wqF5/cwLjD450fQJXBkC8t2SDar9e8Y/cI/4Hb4
35Ndjv/fUb0MNlXZTAJ4GFX3mq5jzSEQJm0PuN8Bp4fKrAP4pLgXTg+slFpUXa0j30mpF2SSVBlM
DDxqIN614s+4QUmTZqlgJlBxB8f/epEoQuJKIj+NL5gVIbNf40+Dwskfugy747wk0WvDB/rAiplm
gUaggqjVAdC69RJuTfCnDkl12hVp1fbHT1a6PLzteYuqucypUrmcyjvW6HeMpLpiHp2dRrgFI0Iy
860rhWV5N7wOau4A1exrFAF41juEckUt7ZdjHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Id8z3M/MKxvH/8UoOxHJaYiJCHHFIPHtTSHIBo9HbkPjO3ITLAJGvd+e4e6zTCHTjIXtOF/ebFIx
GOjr5M++atPt5IrDBB7c8Pe6FkeCVtrsn8Q9rgc3ewel2IIztRUBiA+PwNZFmipDQdX5EHgcRgBa
ss3h06UCLR6z2zoMAsWY5vNsvktsjp+rd7YUkLznXq8CIITjzBTsqVfOMFvSuhP8NjaQq7Ha/f46
iUo+1M9/NAmS3oVGw/Kw4h7aiXcWXMmNaYWvIofJZ9g2D7E35vTTsa5wQ7oalrlZZwOFCkjIlYSF
x92E0I6sFL4xVIfBvko+maERTMHFlmQ3POSeOQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N7wsl/qi2Vjm5oXmIJGiyoI9iabDbTiEBsTneGgnwBTuXVWqL9wM3wP6gc/LqkT7HSmyt7qjP9H9
so8R9COHEv2HBx/IYw5bx7biDPooCNTDpe0yoeIpGOmyBkXXuIPdxoGP30nwAjfKNrxVTl/+2WSV
76rlY239Qa1tUxF5AwHfUdeAi3Tfu2Q5juzmnVuKq8d+cA+Ro+090F6pb/L/CUlMShhpQvugFcNR
20G2gFHD/fiMkbU5qeYlQgXRQMDJAJmsz9840rWaSeeV4AcDAvAaRaBxpYaccV0aDfArCBdbyP/e
Jp6vJyL6OXdFB1YsD+YIL2t86H2uPbnQ0ygftA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Nb0gMU8NAEJwu8hyI6tY0SsUdkkJBzdwi7pyg++u065HzI6VIenbpqs/cg94cNswlz/6TYEoB9fN
SoxPcRzGkFnO0iBGtUw9b3yBLZZpza98XFVhofZD+y30WTp4kFHGcts7IcsBM78Ug2/frs0fg1fB
aEiCo30C9FkGMoApARv1MK7LDhC3fABQq4sD+y0fjMbEn/ewpDcx22KknPjdkdfqMk+IDLW+u3IL
yZcSdtccDaSVFcqnxPHcH58k8+1qs/hxRYwn9i+WGpSgv0XjWlwaT0waZuZH8wE0YT5RrX6vQxXI
0QEl6GbMLZcwUA/lRiSf8skByicDfmGILy5hPQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Me6Hjoc2pW8kis/AMPEhU29qM7hUGJwBDJ490chaymBsU9HQL3bYjNYgTbnD1Y+fKAyt8nHE2MXi
utLs6YJbHRunXdtuBbNRuZ13SsUi/EEQSlkvRHubtJJQnG2QalBos6/S8XrEKgnTHW9PzUtTSPPw
0GXyPWFZUgXP/C9dp/k6dD65zxP6c1YALC273QRn3Fb96Qb2KgoQJ7yp5aOMwCuQw3zcKA16KPJT
MjG9AOY7s0h9PhcptxzO6E4uDRWia9RSooU1xV/PFMSMCYErNpGnKdRFuZIKZMTKeQS8+soqV2gP
PW8IL4H54LY7k7DMZR7OknXFYacplgs3g3rQMbhWGyiOqPho0CN3tkd8XM9UlCCNEAY9Tf3FIjr+
oSANFJ1LYA0yhOu4mqvxVX/2YBcJxYg6TrvtkSfR/lSMii+iDxu1vk2jB2bvIw5iBd5cBHvqcaG7
EGYFzeF+UcRjc3alGKQM3BDnDHUi6My6aqRCW8ZYxJKsxqZc203ou2nq

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mShLE0m0bxGI26YO+URmTbICSOGAyJSIWQqQk7V0P0RRbUsJQh/wOujJc3k5hfCsn8oaaGnwHBJt
GVw8xin3Mn2SJ3/EEC7+/wEFRy6pO3SIX3xRy/z+eYTH05S+aVFvIRXOuaCROP9P2eHQUOxatM+H
4mEk/sToenQ33IXCxhmerPsTupye2NioIUuRo62A70pzUIb25HClHbWlZjDv0Mk8PKgJTkVwJJ/p
Pam1T/D2zRUWrHl4ghBYU+9q/bWlXtOHoN7+bQ3fXwVYE+RabqSBPmz+1/NdOOG4UgJxL9SDcSfX
Z104tNGfIluGikDOQXFadebkeXwvI8kAtuy6rw==

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
