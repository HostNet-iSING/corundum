// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:38:19 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_freerun_counter_0_sim_netlist.v
// Design      : bd_43c9_freerun_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_freerun_counter_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GTqSEFfdw74AxDk1xtNQd2f6GHWzPN2yfLbDluzXTaZpl4W+sEd4lTW79qJytbO6Id+EKMIQA/Rd
JoOZOfWlzssuRG26ui4Pta5Y3JPgDAy22thMZez0bbLCexUp/MGwpsqeiAH6fB25CKwqaY0ZeWU5
zVSIuMCwrJjkXNKwtns=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zg7QdpS0h5qvdN8jDF6+Uy7LIqhoofwxBC4VSN6My9UgXglQ2uXgzJ3C3R8F1pgtGLa4D+ow2y/Y
AYpFHE8foILr6fC+wuHZ1AVOCIwn3jyrqkyC5GdfavPR782wRbs37sC/s2HdBL9KBYEYx/5Jns/o
UYIX6hvN50LZfVhiFW7hgfl90zqrt0dD0p5PPQIo+CjylU1iskxRQklRTt4e8CiQG4CDFV4P8lOl
A8j9h1MbVgW67VZNE2bmg8yVzCpLZWRMG/YJVq4c5A6ijn++/Skhq8nBHcw/pDZM2cPEt5tIjCsi
RX7+h5VqjxnJIDLE8NjzHmZqaYqo0f46F0d8yA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sraMSTIusw2vW8x6E/6NjBaBni1BYS47l8DJ4rLdHpjUsGIjJyCpbYaL5fGuk9CxeqtrDOjYVAi7
90gKBWdO9PFhDW1ioDW5KOAL0Vn4jIu47pX4jDV4qeNvNk1diz69p4CFg1STDlAXZzrSuxsj72WP
87dmE4nl3SabfGRMBlo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DR1bpsHn3evUQJqCy4fwFjV86IgidayNbMB9OsXIxw3etzwha87Cnp5nA00lGLG4fZ8pZJyrI6L/
fRkMyndVySdfcAKVuezHlGOupplByaJ1+yCRdSsxFWClOxzxu14UG4YKPeaiNLetLoWeelB5Tnqq
1hYi/BGV/rThTOY71pF8la+OJtDpWMFLfoXJoOTVCegrm5gqKtFY6w/8XsbGVdyg3iSIqj8qCkwB
BZ3YsrUv1TDfRwq1TYRCI1n8zXr53wvSW/5PP77E4inmNHCXCVXnOKsizHIZJAkA2UmS1vzkurzr
VEW+C/svU60NnxjcTMNcwEEDircH1H9DE6aBOA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mOBk7oA7/Fcn9XTT8ZhbYFKmYzC49P630wnSr28owJKgc5uh27BumG9Lb7w3/r45RWv2mmSUb6eo
4mxciLVWSDIdLhjlTf7LOhgrJMOQXh5LGfsh9zwms2iOvCnCe0hfP9CL4UIgLUV2jp5cxrFr9uAh
yJgNcg2fWFX83mbc16nw5NIp0rSQlbrOKf65j+6+CDDgfV9oxBoALy3cgRDvV7+fgxQgopIKdFoK
b45HIQkxV/IjqDH03Avy68Ukar+0zNvwBgy+ehioNpAXVylHbDXnHQp4PrgZSO+OktFUy+3UBAwI
dJq7YaBh/R/fv/SlpxdK/xa4Qvtzq9l/9JB4GQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bCy2E+cIonplnhEbZmGvC1heHQ60MGwVmU2x15ENdnJuhBjqhnJc/OjcmXCnsQ0PVFLIlQ/0wpvC
IqfKU1GFE+M+qT4h4wnc/x1JQXagKtMY5JeKKAYfWs8npp6CsE1Cg65poSjyPQsgppvcKCQkY5IZ
90pVE9LqdAo5VyBUFrKhK+FCFJMU+3N2xsv05aL9/AGTNG+GXNZ7CkLFnRb50dABLQ4Ku2BMSRvn
+UuVYirvcztxNT1gNuOrcoLmom1iYxT/TCqIeQROkp5HGgunWatU6fYC+ht+UFU9ygjggNSGfAnd
nCf+NSTYx33GxKIYVtgmZXwyP5cI8Lk/NmSxwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TmV0I8CXrLN6NcEG9hNmTThTTkBIattb9yt7bm+0yRK6TSd3xiYqQWx5SXI3IMOAAqoYeCKDQiZi
cDQjcnh57glJKKvIBsctOLK/D2Kxyx3ml4Bjudc5vHfUEcBa5y/gEA0EWGBeWkllUdY84GtJEUsS
AuoWUgMw5h5ipQAj5iVYp95KGgk8eW8+W7GSh8cLYOV/kSvykcQxSrHFcgdJFnmCjN2aBEVI+6Rq
fnZfZDbZGAJB6fq14VDxtFeZczuf+wg4xmxBX+Eh2/eWWs22Kj7qYMcbKvAFaRq5iGeydCuQBnIu
ea3TVf+OoBqLQ94kHgaoWr2qD25EKHXRIXHKzQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Qes+skSjlfcngFHqOonb/14mf4z1xOJPJsFQklrcQMwgfeYnzbXPyi+VjQno7oMepbwl3h4WW5qp
aNXYP/ZpN4wr42OVgYVRglpc1gbAeMcellSFa1b3aa0p0MTVbZLuSRBHvAHGATaSH+IryuDZhdQK
2ph4EVLTnZlFXUBQTpyMiG7KQBeQ0fae3hCn5gCL5DSdxeRA3jjvxvbhmrKdOJ62//GfreJsyaWw
nYXtlk7UFCVSSNpAlj6KeazG3ySpvsPARbSw7rVBZlwuxyyVaNShIrT4xyocuG+decy0RByiaxY3
VVhRV6XM/SqfxlhSmSAQ5c9iR+Z7Of4EW3OPW3xuRiFX3j2RMmv7RZJ+grM24tWBNfD7vubT/uYx
LHeqF03tFF/s6jlupPE6Ss6Jdt/rNxPq1rM10viJa0v0aNFc/a7FhHHO9CmpZ3V18zUmudbd6mIi
itL0+u9Q5BeihF1Yk/zHxWnMDZ9bzZzebHRLl4tGiWOJMHyTnvLtg/uj

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fT9P0busnHFhNtVhuf1ATqDeNMlqjQwbhvf0x34wZd35mjARDv55SXpRz+pBacoaxyo8g70Zt6by
jhGGO95tzsD9Cq8TIfsQ2B4hmI5lT4QzHGYby6xuklbwvPhpcpNgdDV9apT+gdvPWZnNk+R5awyV
uNxQNzyZblMxkJinicsdHysCQjzYlps9O1mEE9ZZTZ6WH4+e+k1mrmPmUBBazuWMZ2/cw7t9XbZT
/zm9meBtxtVaA35lu3qeM0Of8DV+54hnAG4sYgN9RRwmHgxE//V5fc/cyV6/fVWSrBIACq6lNplr
Gs0JTuAQrPaxxhx39ruQXEKIuc1vtVdzAuNhSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qIgTxCfDXeNmoSHfDnA6usWcI50Sn5G3KkK+tn+Xv6CTNxmLtCdGJVYQNXFeAncw/JwYx3G7kwR7
1+4u3NL0e+TC2v0DX5t9/H6QKvVriwV3PRByaeTFGWmRtWNLhYiYqrSz7td66XDsjm/Edsrypq6B
k9nlIo5F/vhihuNQ9n3u9wVoigmNyQC6z9ZXz4+e/T5b3aCKdX3ejOa9ET1Igt7LJ8Z1x480QI3K
tUBAmeZpJfIRjYnUhaU0NZ2Jug4XuFZkVazxM12mKKrKOU7RMB1pzIh7mUTeW7l4bscmNuSpJitO
EqmYAxelQwVzrCgtri7AabcU57CNhqCX07fm9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
13z2Hz0ZLYThlHEITdUAjokp1b2coDaXei+KpIfpRAA7LMm044JcBItfpaVsNqzK+o1LrB7FuXVT
oQn34B2wBqvMNNL5YDibuMsqMXJR4HrOVpZNJSBu1HppPPUUGz1cM2z0fCYgHf0fGPhrK24Q8cSn
owaSqntN6m8PWvAE3/SR2qz25BmIKMN1Daz1xbM5QiGkC1GVY15Ovw4gmERaBi7f9aa9zkieoDk/
6y2olUuGxDhW7MKFJ/JYpHjdaiIax5BuktA4CbTJ3VdfbkehAXmA9VqvHPJv/uZ9G1XG9UN0o4Ms
G2hSb7cnaSu13FzP45hvktZZeg/7CmK5uLhl6w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18816)
`pragma protect data_block
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
s5x0R/rb
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
