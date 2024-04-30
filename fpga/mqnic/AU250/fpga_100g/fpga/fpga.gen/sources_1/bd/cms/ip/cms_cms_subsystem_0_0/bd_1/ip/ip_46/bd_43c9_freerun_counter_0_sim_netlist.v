// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:38:21 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_46/bd_43c9_freerun_counter_0_sim_netlist.v
// Design      : bd_43c9_freerun_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_freerun_counter_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bd_43c9_freerun_counter_0
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
  bd_43c9_freerun_counter_0_c_counter_binary_v12_0_14 U0
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
ULUJqbLbZ4cnZPAAiavqMIyEgZihB5/fjzpl44EsOlPrHnavKYvTW767wRQdTPSXSThMrdKjyU65
A0PhfCpTolA1TpW5TXbquCHyTnTuFWnAyh0w2VDVCLB7Wvr3F9tqBDbWScnQv4Poylr/bXtvmecn
Re1SRBSMMssFAGCxT07Gjg7ahMEu1sMaEf6l4tpVCL8Jq9jTcf+NZ0hWMlDWGBgO4Y7TA8lVpRVZ
ldMrsJli7Gpwb5f2lZb4AWD8b7d/baHISznKob5WVUNytbmL0CUxWjwln90mYwddkAaCIDTnoI+8
wS5cm2/q9WR4lLg3oHn1Bme1iyIKbFndfovp9w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DR3YfqUgNeKtFNaJi6+UQO/wbtqIjs+OVGmlCsF/3WPWifJp4FgQKOQTQe582NQCaN83uxxKo70w
u9/CkMnyhkCL788g7g7O42XFGsMgqSpRClVyg6UABVl6H9xwzB3tr9PyuOicqzDuzEIPjanAgT4f
Bq7STkgG1AfzjH3LTaZD2cAt+LOUlV6xN9u3NpqlKsUjH+5bgxEMoPWg9zQFzWAJ/axtc+DPvg1q
v5YPRhKWmDtNpCGO+471tGkyjTBH+IItg+skLkoimChR+plAOl2b5YGr0poyPD2IntUFW5m4Vqid
EnVUDrFyi+R8QT3rCcYmyMbS5eH6kwAULmukvQ==

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
