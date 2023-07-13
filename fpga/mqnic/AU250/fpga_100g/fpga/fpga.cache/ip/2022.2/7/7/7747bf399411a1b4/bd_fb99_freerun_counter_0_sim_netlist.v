// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:21:19 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_freerun_counter_0_sim_netlist.v
// Design      : bd_fb99_freerun_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_freerun_counter_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
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
B+zDhvV6K8M2AJotktCRcKpd3os+wnXprlA4pdez52+Y6K+RUbzpQbEIPUkECCxJ3n7qdhRyO7hR
3cHltqDM0JHgPNvyo8JK+3OitHmAOmLE+++Opgh+8uSYCaPSJp4DvzUswfpkw7vQ3kMwbeScJXy+
VVrrJ6LFIHiZ5aZEKHXiwrZr3zOSNCyStP5WoXLOR3rjKgb2/ftOPHGA55Cc3PrTyUcKzJlMl2se
llB53mWRDORqmT0ljnO5wap9ECWhhS2MpgE5DIHGXV0/9Iy5cwHRQiaJgqbqeroJxoUA5F8oK/Pb
PCb4YzjEc52N9+oUSQPT5ZHO0VZGN7i/SJp/Hg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fc+c1ukFUORigzHO8hQU7cl4kYPjCzkHZB9YIRf75sAsem1k/Rjmq7RMXbI630XqcnHa9fIick80
p/lnJvheBwQGf9AbnmSDVxanj8XRyJ9KoxWkMz8PS+P7+/VLKVOwYfWhIhKEA72CDPUyuZly0JkE
SWKl8Sg3X4gmgAhtdE1x5iDxN8L9fDCT2xWwWlB5UYretdPQHxaihpIg4UphGtwKcLASwnoyclni
qA6dQ59Lvt8B225W62hMjvfu0RNRV7g8T7DY6MyShJoZlYhUhRzfdnVjqsEQAMvVe6tng7TQ9a3J
zDma9Mru7U74f5iBALzEo1Lp8eCOajWK9GKVXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18816)
`pragma protect data_block
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
thzCZi8u
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
