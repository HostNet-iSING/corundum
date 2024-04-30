// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:32:31 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_36/bd_43c9_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bd_43c9_msp432_bsl_crc_gen_0
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
  bd_43c9_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10400)
`pragma protect data_block
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
et0r4qdw3L8yIMqdQhHud5m5Ue6vx3P7fG4=
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
