// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:21:22 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/git_repos/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_37/bd_fb99_freerun_counter_0_sim_netlist.v
// Design      : bd_fb99_freerun_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_freerun_counter_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_freerun_counter_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fb99_freerun_counter_0_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I0dY72QqMXcfehjiw760x3CbuG+B0X5ubmHBUTI0UCBiu9AEArdfoHnpbTpzMpxaPhgCTBgB00xw
e1i0rA0sUIvFj74UTjhfvGA55faHGEGeMsNegNzAjOy2/bSv0HE/evddLZ+F26uRFi8II/drRlK4
IpXa1mXuHZ6aM3Y1VdkVStFBsTcOSL/xDSRAdl/zEwOat/22QA0RT5mu/fvA17OqM2a5Q8Z5hJCH
DWIqA/DBCxCUh4lJxRhpOaqKh70zMA34E0Xj4Ccy6NXupQ5fQHGHzDp0jYfLPLWBHoC8QhiL4qTA
J1VGu46q1V2KdMV6RQXK2EM+vvBCissHDouEJg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R0Ba0ARBSVsxx6g/hml1j00VWqdf51k0NOs45/0zaJgNI5YL2hIMrwxDRgJacdwaAOd4RF/1BKeK
8RRO17TujIjl0TQUx8NwDU2dGo47EDd5/Ia+50b8/95sYzFiaHVCvi4Rsffs18k6l5bunqxY7FzE
LtPO0IS1MxXb5p3rT0o1q4LVfNkl6+66R7jo+K/Vrxgatut6Q4gNBGlMt4HPlZTZZKD7eFcYGhof
9HPTQTbYuxSqsNPphITFssJQ2hYnNisd/UL3CLZ/XU0octgHEgdigRhw45z4bFky33zJi+faTC3y
7gxOnQnDERGxhNIBfuzk4Db8jyO80zTQoGVDmg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18976)
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
