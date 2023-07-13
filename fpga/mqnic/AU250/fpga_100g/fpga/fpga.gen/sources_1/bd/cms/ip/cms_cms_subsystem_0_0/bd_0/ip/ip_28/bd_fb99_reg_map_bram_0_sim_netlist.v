// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jul 12 20:20:10 2023
// Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ubuntu/git_repos/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_28/bd_fb99_reg_map_bram_0_sim_netlist.v
// Design      : bd_fb99_reg_map_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_reg_map_bram_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_reg_map_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.734465 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bd_fb99_reg_map_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fb99_reg_map_bram_0_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 62368)
`pragma protect data_block
npl74a9FMn4OlFZIYOC0bMUTMsild/ItsMVl6cncX6uTOFKVJ36Jx3tdjXSo+tUhGwOp4OknDhXB
VuEYA17AEJjTYOMPXMQB5g+q8Zj2AXt0yi5LnG6J7A0OG/apYhypL0Y7c4UR6tkr4HnIpK5IZ3SX
mXotPB7wdfDoLx89T/sS746LsIIq8V2/mi5nYYiWTzIQIJFPsC7DSP//Q6Lu8vAoI6kyQqtbgoeY
HZn5Td7ZQAK7OeIS7CekqBBTapivuMyk1YD8ZHdaVXLeZv412k/wAGMcHTEFS4FJSr39vVBaXHoH
leBXG3JyHtMLZfvyLmrr4EvXzHs3nAlG5+Vp2CfpPK6T1jJiShK9VhEeEuIEFaKO3PLzHhtHOtqV
62vL33+owZk6BM9SLxnqzbItDII23FmQQ+aEpwdR7oBwhmhPxb9lDKkoK5j53QmbIt1ORFrPP2dU
Ddz3ebn4OwHgJcGhPCRQZNnBVujN9a+yd9sxPnPkFCZ4nnrJNufzQNS3m4l8tG070q5CmgMoaAFu
Q1oW3NiA/go63RsvSqAcJti3X2WsGfbgknVQTQ9apOb/GWTqOCW8O2CaCbUTLuc7NxNnSANeCPt3
FM+10PEU3zfsZw05TXP1VKlJCNfaAmp6/nK07PNz3vCNYhTu3Mfo7JDh8d+93r0hfIQdA7vc0uOH
4Q3/eVy6duAHUOtNe2BL4V0/MCF6RUsYg/dA3blItrtO3snB4ozxBxthmkb1zFFxCPgTZ7of5qze
5063wqMyuF30eTIvSnzgKnabWkY7uq5t5iokPPtJMXzYhoCU+2XUvYZm4lr+7fZfYhWuQ6as3VGS
8EtwOWZpsfYpMZXW3nXJEBP80Q9lEpRCbCBKrnxXKV9RN8eAWTKw54icy45MyKfGQbXd3f2g8IGX
3iFU/aXKXPMzNG7ZcQlEaRue4OFbHvyq8+yxO0EIp+cbdyO540adKVWVssEupK8yNCyKPRtWTS4a
VpGUDSaYcgfWh5gpXbMOfe9vJwZ5TM+flnxsCgAOFIdqrY6ixa8td5WfyDZBdeuhiN78WSK9oYC9
vWt5wIbyTc0FPdhujLeWUnsv72Ih+jjsaqNa4eOxnvmhqnW8ntZM4KcJm/1/sh9+cMQSyhLrY72J
PnoABpxaN+WSG7LlvZHQrfVYsC6zN85Z+QdIKQE4onmNXVsZHyMktFedKjaAjyPIolOPtgNoWSfd
10ghTB7cSA18orhQCxAkhG/u6FU5rdr+IikmrCv4p2FMGy3YX8MrLMNY9Y61GaFqtcjFv0dzFMrr
vmhCPyvZsRH7JTPtRQmB83MAqqa2xzVDQDGyvVsoLJ0rr9ZX2ShvonxXr6sIkBGo+xE7wYSAQ28O
r3U9tU2S9Wc1vM9DwSQ0YP2cVorrjboWvPGn5+MZCH+5yzO9yJqSOuqMSiPxCnm/wS7/1yIQihWJ
vsw/lc0B8KxGIjyayzmElcVzLHt8pNRmjW9/xd80l38qIzwZjdnfwggk+GwJ928PVe6GMBBTKRz8
eShYg4MNMB6cWa8O1okwMmSQodFWjh5uBQzfRCJC52ZgwtCQSRkdX2/N2S/YmlfT48gSK1RCFGK2
p4QwbDjWeZqL/6/BPC3OP6lJkiFmyTEU/QiTDQkB6wdc/ItKWfgR1icvOKW3dKnWxXueJQAcIUXA
EOO8jh6drVoqSlZed50RWRr8wfAvfkfmhu6HbLEiNbH/iRbWwa4FAvIVcWRDjz16fgLtV/LgLrZN
V3b7JFc1qnsxZio8FoDBVsupBL3uDiNtuxC3iEvTBJu+7U2fYs5/QxUdExpuwoYt2c1zYVuCKms1
oGom1ZH9tVa0tK9L/iyvK0hC/FPYWGIoB/NKzEIMOdKbRKmFW93KOF117uH/mqroohw/kaUNhTxL
uaCTGaMi6/Bg4W011SDJc+fbKZIEt3srJzaKs7X+zJQryybE9JYd7RxaaakeF4JPdYYQRdFu8mNe
9fKkO4zKjqcb3MhqZm7DKOEyuBKZv3qNhKURc4pf4IHe+tylcop4VMwLbsc+YHTtaFfzsr1IDymO
6VsASifDT+edZULseTBowOTNgf8fa2Dqw4Pbu6itqE7lTeKLs1fU9D6XcAbQpFKGkbpyQoXsnpUl
YuaIjDKqckL0VlZk70acvMONGfUKz3RkitWWnB5QdSejVsRF5zMBYJelxIBvA/BOud9czInxxNsf
XbrkiuTMkXniuIK8XYEtlXfrmyrqHjIeNHRCEBZ3oVUoYXLL6uKFiMVZlhEJvLAgj4YDRZVXY5M0
m6GcuVlxyv8vKvBWKBJAdK2yyaCT1mlCJydt+v6XymJf7CTtUovfhoKFagVoxroktO3L235IR05Y
r1M9g42VQ70LoTejHOTWXyqDBtMFfk5E01xe95YkfKDy8VW04vRHRaTNO2MBFGJ6ujhNZXUSK9km
SPrHTxIISIjBEEc1lK3JtZbqC0PFFOPB3aXW105bH6mKxkwcFFJAfiHpAv8ZyWQ8+tx8DeOpmAh8
dLj3r9BjXMxS495lC8qQdo60PW6KVpw8nbOgAxwhV0S3LnL54bwOCFmhcxm48kIFneB42YkMnVAP
SYTY38TTwd8BnDXMp5xGsBJVeBB6OWSoUw8Ezo4X6T6REtdFvSqo8brajvaamWIHo0m8n+0RPUB5
M1k6BPqblcKh+45uhXRznaxCdAgfzcaS/QFVFst3wcq10AL4tbhP8q8UFlRXfK9Kn/yrdZK/hOm3
XYuQ6nGe2htGSMSEw2wRIL/7TXPhaffg97jMa6Y/paZYYHpjGdErEPaqDgDU/zSuVtP3z1sW/asi
UqefCQwzRJuKFU0zsv1mC0b7yfnJIR5PbKVT0KatihtK0CkHBCVJmJdp2HaeRyc8NdpgK1zwOTfA
SedXhy/2oM8ThvugsXbIMT/C8pvuXu9riZyF0FwG2o2ccdxft3uVXh30JV5PTN2xx+y62tQ0WyRn
VNwrO4vdDBRwstZa3zeHCTDG6tzNQHMblVnC1vST6o2FoQXpfzFsEFYAzx8vnsabqVWnShNFYhhy
Pia3EhSvJDEc5Xq5BG7DSDikRF/VUNaOwgmgR9RfnqXeQW+LdcET9do/ISKV9vuBv2rV4hSPaBnT
D67fQwRmWJ4w4B0xX8wZudlGyI/t/d/iO5Se8DtjlnQm4TWIsShJYD2505Htvsfpx1yKe5QUZGZC
tbbt13+dqCSWWLq7NNN9qg2IM0mmMYR4Zjtum17yzd6k0e34466LdDw+G3DltaFvBHfNsuN/US5G
rYW+mvX3epaYyefpbpKGO2RiyxrzgryiCjLz70XipfZ0Y4zQJWFhjXnKeIlLQ93+iKel4lo4XWSV
zrqo9Hln5oari7GgFfr1YkFs6+4DuBrgPARYvzFhmO3cFyEhjauFOiZCe5th0BSiMeytUFmA3U0c
/Q8ccI97ycXIFPYx6opzxK5/xYfmkFmhxnBt2A6M4L8+d9xAjddx2HMLZseruIZg2j2AmattW0PS
2DSFjCNSaaBPuggLHUgyqKni4s5U3ttRoyIhSTjSrfHIWE6P3v5Qmja7GZ+HtfEP7u9BVxku27NV
8mY+Qt2FLfIClLc18bdvighUxisZ5Bqsg4+Axy+ovMxF0yn6GzQNrEYnBm28xe4YKvQmKaga+XPK
6jwfA8kvvEy+XzVkUiEdVv+cQOrnheZpWitzLdpR3b9Xr+jVihIZ0ueaQzqnb/vFS4O8So3ElgUp
EYG+XEPsz3TwJZb0yBpqPrqnO7VBxtnEA0W047rnzoI5q7TtnOcQKtaiZI9D1npJMhwvc0DYatNB
Jaf/mZVM6FlsjTDYT8WHVegZVrBB+2YTr8epnLUZskq8NYtagfDehCe8Y841qUVm3k2EfkMy6AFM
QQgx7FGEJojSqmzStK0JoK4eby+X5kzSu2Jy0csLIQ1ZSiY365Jb2R8VqQL6nnvMewDKkKRXqHbK
f+CZGjBGiByipUxpanBHRFJxQpfN+GA0J7Nw2pFHyPV7tz68c32zD2rXXPo6Xd/gqjYoZhCf7uTb
P2b4Tuxn4WEfeg2e20EK1fmqO/CJpoqv7OoT9Miw4Wzr06SSqDD06yxDDixZUamL7gEPIyS+tr5v
giF70Vz67GnGzuY0DIF5j1/O1yPGh2oVwY+SGkF6f2Twlpk7USFhH5xE6GHs0yEe3o0GgDlV/6N4
jWmVoUTnkWh/ghEyd8UoqVN+F4A8GWpNF2IIgRTdPdQInoe5rPDzMcKleZZM2IXiLTeglU2lgpcX
t6T3lFK1PJIchWvXoq2K6nwqKUsekelW3O5Ai7EubzEW9//QH1p9SisEFGLsnPUxRmY7JQ7v+Rts
X/3Il55OpcEvEywtBgolGdIcniVr4wxIMdkKkRjUbAWuJStUrblhI0OkFtKLZT1zRJel8x7cvRt2
47TS606A7IYho0tSwWGKyhbi/sCDe2NH7/Xmslv+23nWWB6dvs644W3VoZ1i8q5cBTmdIGPAD+7u
B9ccbUDYA/uKJExV7MAfnJGEF5xefyWl4OVF2HDX62kocGunRWWeg7vbDiVtTX0p05uF1BaAjdkm
ojVjc9Fb0vyqOptNL1qppoum4qYzBebXrjRK6m8fVdrr1S7YarlLLpRqHBSSfXlhB4RAqFlICpOh
jJ8eOj5aU6frn2j34LyF6kSfXdTRhsYnALCHRW1M6ALPgBrnPc10T/UeBy1H9g9Q6LmHuBvt01Uw
jNj4+mhqJfqQ8tduuvsSoSxtPiOCGvdes0bOBUsnCUgF/S4y/NZpVhBpobSbmoXL4G5Upz1NhN0+
OyB8XnTmy5/tzR5qKGYCCXMAIhTKgZViHwZgqMjov4u73jX8CIcs3bwRB08Uq0ADf38eCskmvY0Z
JZKCdnlBYCEOmKbGoiqXlsqqX01fkvw43ZxxLhjt0589oFKMMzgASMr8QYiUb+GaJpxXVA1C2mYz
FtilcNCOMf8xgRvT9zxRhyg0XbNvtLVjtwzz5otPYf8EGGEcP/qKcpzux4gyAHG9nPTjDf1eLJep
2vpWZLGsMlscsdQbtao8tfkzQc033tKJnbycyr2PVE/1loX4Y/h6a8o8V6NgMzj4MGcGWS/RvvR3
LsGyQP3cdKIWtlIyWyGD8NID6FNPuyWZi9fLAxFggkaQj8zbbepprMj98eAB3ATqcIB+MHInxpKV
pkLygtM1PrphPL+JjGuWXaBvJP7ldtlh4INCkmjIrZyDC/ykGkx0kIoaiXssikdCKzdpNCAT923Q
7I0Tcjy89r+flzg75owKTpWHFG+Yo2GZ8rIe+3OyV6xP+9JRMPPOyRmmO6PFFvlnn8BHcF5Y4yGR
sMX5OtKF8eBAodVlVRkMthkbWk5Ly8jVSUfQv4ox5FYDZJiGg38dxHeGRnKaoCPQJw7rT9irHveg
kPR6inm1ahAKBhvhVxHwtkBLWe6wiGvAP9TVr1nhT8QyOchwgParP84xUYrknN9qPQvlrdfGEnsQ
ruCmSuxWJ7xlwFLVakDBiS1n+p1BgJLDSpyIfiNtm/WwYnFAbO1sfJpOqPsucaeFQABdAaATIbVB
s44WlN4cRdZ8VmcPLxjAv9MYFc+/j+fEXmZ58DLRjMdPecOhxITHUbQoeVzbml9LHNaC9r4W4CzA
EXQHT0nHIGhmLB7zf5hjZ0qWizQzWXt3/LFhJcpnnthOtHR018bhLWy5n+eaPfuUtFGNw5xPKNNx
GLMMJ57lgzmZga8CG87CZwaqCItLjJ2DTW2PIHAw8V71CW65+2uH9mG1zpzq5ibCmyGNokPB2GhM
wkjuSoYnyXXoOKg/wbZmPLPAu6ws4J1VfU4E1Yj8h1k59oOug0pwesVvBs8yjA+jSprwt1aqACVV
SMV0sJnIRLLM8QN5Vk6grPKJVRzSO9a8p8JUraequQ8tKMbRcjeg29w+H/uRTcfjpleONH90eIcw
gXXe431L8PKwveTohH1CggqOGccYS9THztuJGSGu9VqW6iXntedYYxDzTDpK4m9RbkkyUvRWs1EH
OfcMAuPixNzvKlhmSaVRGyvuloRlEMRK6PeVu6pY4oD3s7IFk8QMWxB+d2x+coFiA4Yh8kmrSdHz
XZgooDjgWeorH89/m3NtxHI12ORJQy48kbYdyXKplWZmhyTiwdyq8m8K4j4uOqAmjahU3yvJQgJN
QzBCj05OrQAlVyiEBM1trhz9I+g1ZwiShiv5Kx1cpwqtAEIYeJcTyKoLFDOF0cleBbF+1o+eBu1w
uX2fLRzwcECgOnKN+pR7zo+T9yHePqz+CePPnZfoxuE2d69NVlLyZ2Ctk/+w6kNRIwVi7rlzsO6x
5he0YN6jcs1vf4b54FTVcX0/XBMGv6Q3499MeUp7SSx0w8FdHjSlIsow4zeoEsa3r7PPRIXmOF/N
V+2IbPmGL9rJsmFxwCv5ceaXY9Wi28CDxApMsCTbcCGlWbNkymxxXxv7+hwnLWZ6JnkVZ3zQ3mjy
GVmW4p1QdtPGYqobyLxkVTBMG9VjCWpOUrnZ5mzdJ/IMYlhfIfX4DZ0/O3e5TDvUXD90m7OK8vfj
KfDC53IEiJokZZKx85zQ6Now6zQKubrioScF61y4iRd729RS2KEt6ALKuO8NDKVGe8LpOgVH6g32
9PFos2dg9u8GLnP/iF2JnfRhgJ5s7ZnwfCLqxdVX6y9Pk39NKAm+hwKppB219Pih7DpK7YHdBhgp
2nd4VhsFS71/vvYlnixqrEXoriNgpuQ3redLUkqMnxiTULnLsJm0ultVZzy3Yc0zJfzoDQIzYxNV
ZV2PIvLHQ3DqOOor865/mYwDTP36ltYJ7jKlmLD+KcnG0FIXiXF8P9372thbofTO/w8jUmOiHfHw
m94t9lsQ+7SLI8tnqgjXCPW2rsGp/ql7Ju/jst9bGWBLW6pihs8WfVlFRmdsPLh1sahralDargxN
IrUEIVxv2+1qSw8Ljw1xNWNxczUJDWOeCTznxgWZkh2AE8f2SoM5guwyqmGkmHsy9Zz55x0R86kP
xnU212gLCxNeyUg2vB7WxNQj5V90MeV5sZcHF2cJmneuZXqGzQfxUg3NzrVteUBV4cluotKhQEdd
eA5gMwd7OpgQCVQTXR6n8gveUNgI29OL/lkOlxctDZjPO0X+NzB9mbJaw1zsMkivaaUzRU9xYiwo
+PazoGXJqv1ExTdCCopUY4vicAqvVFVYXS9vK1jwb4SlaoJDH6uavvpvSpQodrDlX51ZqclwThvU
kBabNCqlN7zem1seaB/Zm4Fn3ZzB3sDMODH79tFMCrg3e2SkFlCmJATzuWPxawPoXL5gZ6fpZCDG
tl0IERapIpF1qYeUAz+zX9llYiRiDQmu21fiulDwgvCx1XBFNGqsD92muAIhR/dNhFP6XDCPH+vV
xBadP5ZOuQGVi39lafd4kglnfgfy15GiAEXhHrIF1BOR1O5nPnA3SqvlsYgDfp3UWtYfSXZngBV+
z48JO/NUgDRDs6AGeiCYpWoPRwxh/0EVEQgcGYsaZBmztrWMQbxsXMj0bbncRLuz5dV/BLzA+BUa
ksa4h+ZJ74CKqT0yKnaVybHp8OUTSlnGNiv79wiLfy4bXD1ZG5w/bHNCmdGDVAWojKLUq+31nf3M
yAuBhCPinL/5pECBCR0Go7N0KHH22IgYqZuYj1y6knjCwY2jqDdEmc8a0XuNV5zPPEOwg+CTj9tp
qdncodtCUA92O6ue5bEIDb2U3Dne3g3hgGlqtkU+rhjdSkXIY6L8X76SayQyeTvEpnlxO5R+jX0/
fm8H2ezir8tiQREfB/1JkMttiBQzeeK7n/67sFr4sdRJUZWziIpncgHTJSYo9CxTRvK3sfuGC56g
J5byQqrY9N0dGbrJja0pmTywpRo5v9fwGKgCrUebnF+7wQGnYOTd88vG/T5lCPKDxAyAbAX1rFrW
ABS4yf68u3GVu0A82oQ2OPhFp7mh9+nkwetII6SV/xfNpvClterzRhC9VJVN9y8Bq5DiMZzuP+j9
QXgpYxV0Jroq0eXqb753KruLrjbshL6aFsMkxZXMUwN2PPRb/ttiqUD8lCPaFQBgha0lVtxfo/SH
DelKlnUYtldwsoMiEFXga3L/hhJrYOFRpEAcDdNyWfb5FxwfD76aMkYfbtayVGsh6iSt9a/HFPLK
FrbMnL4rURIoPfL9AkCBsNPUZvA2ji6G2c8HPepV3/4RWzrukhN8/kcGvWDWTKPQ+bfFBc+XFwi/
gkTD3bGJ2UAW9nvssfE6+mOyAGoDTLb0D/btYlCN1R6VoCfFm55OI62VW/2KtHTVg+fiPzIKSQj/
4JAc+AB6y6sNYuksgRAtYSa5c/T7gPuJpmWVdgHAKjjVNCUPDapWBb4766IADZb0vodEM3rEAVyb
GF3/NGyj7c/5wNPiD6Kuh/EDHTcMVHYVQcYsU4KirC+8ngckoOn7LYkcZc/0cqu6ITRiVTMcyqSu
vbqSda904l4eGuuh367QYieBLYJiY1Zd1AT7nKyLUPS+0tHRKUIXR8GDZjRZBADp5BJR8NX4JLRu
0XhOjBUBrj336T6b45K5zjdO+9E6hBbcDStBer11CRYzDyz4um+cCIlSnGqgmNUM4ISjpl/EbGOA
qwciWGh6eW0O0FUZxotcmXO5qgZhO+iPLSSs8hrYnBXZrUEyO08UeaxWdux3pR2jQJGoQqY0+ei8
vjb5ziP7cCWMjtzf5+sRmre+N1NUBRcLzRmL7pOmuues7muuUkSHoGxwY2RXRCP8hKrhG6WwTZu4
AUrmdEilq6ZM3o+AWEMthEzz07ab3A06CPQx1P43Iqyr3wEhKw28X9QjBU3qmIxQPvyrDllxWbY2
JTqsAKbZEhRRTeq3r44HIzKNXsqdURxO9lUKFOnMuEXxCvFimIQSFw5sLU8+ggm8Njj3VcTEjh0O
1TgKXOFHDPlNDAx/YabM69qC8Kd70L/Ds3jpNvb301b6RWhiSzuJ6L9E7qnu3iBk6SWcmi4GezQC
UhWYpp5qgq/UPuOE1q0rY+fGdOTIzkqhLI8q0hnypvprgAuLIKnMKnCUCktWLlM3vZItfAmjjK00
kI2FhlO8LuMio/abOVMcKxU016Rqau0M15+OB8L14G+XxA/+eger1+jF34jyO1TPiM/aeZgabhVw
9uNIS0waYLGgbAkb/mzHZJPNQlKR3+tpPhBjwv7R7idtwr+dE6BtxRzOttM60wwykKBCodG+e6cF
tZTq/LnBIl4zcBnaaKOy/rm3gx5zIUrgdDyyDISMxXJ2O2DumeMep4cwbDax5hlYlFaYL1WziO74
Jc3AoB3kekhXujMnhEngriM5AnQhn2HMRdmjAzrBYUu+ZHrROZWnlfUqR6K3fhvDbLOueW1DfzFc
Q52vT0kEj0Z1ZsLiM3iVP7der1U6BQ+0ECh4xgz67GuTDBUpvwYpaCVyleGtNyT/gk4673Va6s6+
H1gQM/zu06VhGx9sX83OmuDv2500pG7jLv53gFG+HkF8XCqBS+FF1SYgTswe3TyIFf2jFgv38srH
ujWHzmIIlV/8wNpB0TL/j4lsa4wh2nZYbqENkss7zvw0D95iEDYjdy/grXOrT6v59Q2rhlLHvCKk
h3+SZV6F2mP/qz3EHvvqWgXaFbPduJB0Wff1h6RIYkJhGRnR0XYBXpvqCah8sqYGaBtpuv724XQX
5jiedOaBhM2odVjpCmDv9UDUwJ6yd8Z6QJxPyU8I/hb1AglUrSSp8LI38k1Tyok9H08DaivbzMbk
m50tPdKXweZw8GNuu2+5alNLnjRXNq29YvVqmu1OOzMwrG+VD9cvyTdkqp17G4huY3LKDvRIOrYy
iAwYZ4pyaP8TZxOBkUz8WylsTrNtZWuzEyW3LjInJDcdRjnFwba/RLyeIBE+YIfjE1WNnOrm4w8S
FGPt+p1OG23Dn24dIxat/rUjy/evU0T8IE4rkEJWP6RbHr1zxjyeSK66ZHeT57DYCmgCTvyutCEp
31HWhijBT+dgOxhhhEDmcgAGcagpjQZ8SQYVdJJuWf5HQcAhFpullQou6hq5ubAbJ+BbiV5oMLR9
XgLANqAXFCNYQ1zMxHEJTcgUViN1G07rBpcZTkPPAVQzjhRTlxYnO2pKFTpJcQmZv/EHy/rLg6N3
GtrDW5iHtUP3m1580vYoiLy3wGZAzKDvDZmwnnyuHxBvPFImk2lcIVwJXGQ0CcAw3Z2YnILoVlDk
3J/szfVHfXTUQisE4+Wqh2sLcezf7wH7rI7BP/21EL2dpsk63wsSwcq7EUjU8MGiA8EVSNhcoBKq
Yv5kdMLDDG38zoP2DT1ju51dSqtjon999XoSqpjQjSjH3YeAP5srxDh+dHekB+nIMVUDohoxFLhg
zB3dVy0hS26jktSbz8itcO/iVZ9l9EFRwbPr6IdKRRhPO1IbaUE4FfJiMtgfgYnccM2nBz336PFX
F1arHf4go9YwUXSrA316Xkh3ijYIsVgDWBiregHmSyWa4CDqxmctPUZs4a6l5VbcInADnOesu+Rd
pY/FlbbwXrkUqwjJVAWY8CsbX9o8hV/NRsWvK521/5WId45wakQ8/McI1kCJXPWNwnl5ZSlphpDK
iENdGDLvaQJuHP/dFwQM2daBfX6lD/KMREtZkNv3nRAlUpJQ9VpRBmE9f7BbTHSTT6wP/gfikcdm
WDx4i4wif8634UrgngnZMyLpiS6fPiiZ0TSb0UNiCFe67ACctPeit5Ew0ilL1M6SaBA/OoD9qQrt
Pgc1Odso/c2Q/KNQof4f1tGQwAc4WpyCSUQFi1sWdXUQG6XWbIcpoFyBR+9gRWudAntBC24lI0nu
LtZB/xXQgQpStUPHNl5neS/H9bfrnYC0m2fcEfhcazTvnHglnds9/CS+kgmyLZf4fE/7eNgeZ3ht
ma94FFoNXMtSQhhCNNRjBHjig6PEMPhZjS6sdRnDXAt8Fl6osdbnAwlOMmVnpMBxYuBC3XfD/nwf
nfiuUyHF8bsVM1gbYB9F0wiJxK904cb+rN7JiimcmQuJZByDmDTUis/FexxjHFYY87JHZMzRSa/F
7P582DwytzGDxmvSDO+LFXBbinwM7znoATxnxmTaryC29IJEsn9JMqXdy4rIM9GXMTZC3/01cOTP
NE12/IMY1wvfZmEI8ah2G3S1bjIpzFmSJ9HHxyjqiEzBzPZj3P4IHEI7KMqaWXuR0wfLX8cIQ0OY
r0krtAcgiK0/BJz/g7YnHn0fK8LcW3nutKSmzH1ey6/5zbySv/84YGwGrgrjIffnvJASBVjQMtnT
nS3jBf5Zw4HOTQ1pXdgsT99lMJ/oj9rBKcOtkIPk0pmfCPS5VqOqJ4sV6Bca1wSjAO/BP9dFkX2f
UEWS0M9QocIVuXtr6rA91o8TBo8VD0ZYKdYC757EAHgxUEn0GVcr8G3M3OORBQs5tyXlZ/rAGAYd
O8gV/3LbchuVrvKeNfQHUCLX5HhoQN4Y0mAscpUCTjCuxlUPikg4rY4NwgG8mP61HkNPJHKPMTfw
1mDnncbzQ96QJoEsKNbBDxxdnEaEcp31+C5c8yyBdpdqrHX3NY0yZyXV2SAh8wz1ex5C4SstU3sG
y82E7inRpjYFZwa3twTnZZEkr9Y5Fi2qB5vyeTseDtqIzuJ1dyGsJgKz/4m2Fb77s9/VufCPuyto
QGgAEubmX3RzHWx4w0I2LEx2mHUCfee4xHAzJP17klW134yIUcDUTIOgMnrEYIJ2aydKRO2U1Dws
0VO78xFjqTiC+PBwkzPBOIeaAOShYxxv1hxnSqRiPKdheG6+Fpv1pj/ed5HqalVdXtZ7qnxVuyu2
DUdak2gxAq6X7w0hoJjv8a9baWyanLq7qswuO2xFBtK+ogYCfyRrEqBQ1TlWwDSc02xnxwJFLP4B
jgDXe85C8bAkWC92PeoMNFpwuukIAWWVmuAcBlkBPOTsNHsDlJ2LVn61OzvCQMTGdrFpii51Y8f2
Bd4HJh2eqL165gYW8UMNnjDZB4uQisCM8AcEe26Hoero+dSAwxc+5/lwQJ+lf2DJLiuEa93xj8Mx
OpNj0xUyrwbCzlLclx5xNrFufBWUrT205CV+CuzNlATSOzhxA37dReEb3rgLmBypLsilMbSIAuxU
zkjLhiRpcX1Jf4KvQvqJ7b3cQSF7NxEsVsT93iNci5C4W6QkN6JHaubQgiW6ZCDxkB6sRY1qKoU7
qNuPJf7t+kE4G4qPGLJvlHpE9rNIxIyveLn62ABbFrsk/TnQadkUwYjmmhfdf50s3VIw/MeQr0F+
BUaYkiVFKRvXw2kXPAVjQjJxdFhoO1D4B+iarSASoz+UvvMPrNwTDonzGUKiigPGOuCzOHWgoP63
fpLU0r8mezzoZHkV9tBWaw7PxDFYIzq8IdGP9vh7o6tsFzcYjqP6IISYQE1K0dhpYyaoZ74dVfYG
DJ1+XuedOsXTJjNyKVvu1rulxr/J0QLoepurEz+/v6endtAC67y4inDk8R0Z7pTLRNMi9kgNxCWR
t162qynQ9vzvSkdrmYTja3rS1JIx7UOFQvrwosG1dwVXgc66qZ5SeA9lxiHeSvMTYl4Qm+x2pYlf
xAH+kYE5KSMdgLKJLl9IR0vFnBWldXnVAOVSxuI2mNqi6bzrslmeHoX4QhigqVeJ+ZhKYO3wD6Br
BbULRXjrOaKwmeAsffR92aqaxDnMW2WU+XjAXTMAh+EpqoSI+CgIdKDxpxjljuVVv+cCZPWeiEIo
apKQwtp9n6m20AiUtF+4t/Rm6TaKRxc+ClhxqxrEBctcwnJ4ob+0UuKpm5JHOrVkuK7rNlq1wUMW
hbyvf9TKLeVx4lrmLRkSuan8KMxXME8hu1JHYvzH8kZI9q7Nn4CFl43bprJzAoh4hGNEQ5KFt90Z
nRdtMvBjysuStQgTaELeEc86dznVSh21g2nGFVuaYWov5kchuFMR/WTTQ308xpRQgIrCcz1QNsTl
17cdqsOkvDTBTo/lvPIVIxWCH1vhOJwrRW/32Ug1KCy19pXTMG1IYNcVnT93y+0hb9dws+1AGNXv
/+UbnaW3Sh725X2cTb3BJr6NsYmGOJER7PNsA9Hv1tQaXhCZqtO0aOyz6J6uG7klciFAVEU/A9Y0
rpkXVe9Q3AZ2C+EONGSqhN0YZwd5P/BXfGeMlAifDKdvVsx7pKnAV8UN3g4HcQfDkdaYMA4brS7k
NAWGIxKJ1xN4WdgYLqaBRE0FlCSQYIBIgieVRk6TUqzsjfF4yrR5siOp1SfZrpMDOcDS0UTcWY5y
pwGtj8te31hhUzKrC6I0MVfFgvrO4tZqmoVFaDoZWBb0vp6YjbEZ33rUM4p9o1PPdIqae/Phmap1
+hkksmypqMoZof0Mm8cnhWq+gIwSdSz+J8VBautUs+cNJTPaYSYDVLWU6rZNJ1zHHbospQlz0YTY
MJUwfg3o64/gqOybakA4xWqxH+G+KmmVLZ+ndKRxhuLtsYtZNMMoeuXLLVMvt++hci0z3/m7QxcE
GAypL2bBEar+xBBPCUd6oFREO8CViFMgLyOJNwpntM7MA01UVWARJTGqEJxRC42jIVMEjeEYvpFZ
8QAVdJ4Y9LC0rvYfwJ8EXhvTGW32cOx7xnCZfAZiay/1ou0Km25z4MPr5RrGw5d2JC/45AOHPHDu
qMRnEFjgpRnST+flC4Ozlh52j+naQLvc9hPTGw82MB1qdnOPl0hU1XCzWiVJ+L70i9S2o8mvGI6x
LOJuc56cQ1/XY/YqJLXdI/oimcZlJKKZXoxW6+dGK1HVlrh+1FIwIqS7mCcZ31KaFxJs7qewwOQ0
mfqeXE6nGdt8uZuWOsCyyjSmdA3d0dRR9CJmy+hu82UhYaRLWkkABPXmbrqFFGaRXyU3rOa/T8rm
LgGsn8XP54v3cJhPZr4x+5d7PB8lY/k1NgN40YdSxxkUmjg+0rTRuLjNzCJ7PqSLqv1EuzSTB0r+
KedPuAerLxAPMR27IViPpryGq/TlgZsn/upVLKlrImLlBZ81PTi/V00Zm3m7SFql71yUitIQfSmU
y1Fyt4z9vm3lW0dfoveE4WVbcOrHuTt9QpiBe7++zmFtzNdWKBLOMAv9bgHK45ZZmiYTwBkER4w6
5LV4oq6AYMnFeQKPz9Kp1XL3T7mR35vgCRuPoRCBCm5iINb+TszjQb4vANQwIcgaWeER4LwDelDV
NhdvEyaZNfsjX2CCfDIwMXVEoESC1MlCyDUC/rHimOYXCCURP4Ffpmd5eXpLRYNPvpvTYkgXsRE4
Z/ZpKMqAoGWx+2nIfJ05TWL3iykuFvkapSRFQVylEeJtHW5a9N/MIdUpPHcVNBzfm3vm7xT/cg6P
gcA/RUrXtY8TOUcef7+0NYTAxMmgDK7qHZd1cnT0qqZWyT6kd8TrJK/2jb0nw4/1eh3idUyqdROo
vHPe49Al9YyOLFCYl48uzRrNyNcT4pE25WNrAHlcc1l0oIZfNpKu/RDUQRy03/DGeOS6kvHVTc8U
iqG5x99GgcnpWWF6IeuMmtDexZnwKdeda1LoFRwuLuIA6kSbE4O67vjKlnGzykL2bLjoVXbLKTb6
qhjx9wcq/q0Ar72Wg5zaTCNvC9TzEZQM6oE2VxQuWBCpXt8cbigpikBoY5GKlRL6b4S3q3bWdzfY
hCkiV2U96c/5Kn0GQsRbVZnuOkyT1/0EX32SNx4Uf84xumGBFKbg2z8ok+6fxCBWh7YE3jjW/jSI
q90LdIIhcWOD5MMetEVNCwNNvq6RSy0kN2zwE7AsrpMDe/F1zAgbTu4aI/QqRpQ1WuGEFS3K5JZx
aLInrwTW4oqWAQvORvVJQv1xSp0e9GTrk9NVg6z/hv7NvEwcti3iRAbCKxQjE2wlmyM1rfTDCzte
qTmm7ozQw21B5/YF1V7odkkEZ/ZDAgLKgcvRAcZYTTaMAaOmj9efpTA16VLjhpUGLI86JDQvSgkz
/z2JKkPHl5FSmF743pTZ0LQbCH+NpTayESxEfDWj1COVYQqB5rDpNTNN3N9d7zc9VqYbOhyYM5n2
l+q2pnZ+8CCGt3OjDeJpR+STmX0AY5KHzId2t1ltb/QvUBVKaKSm6k8HgAVIuwLczFz+hbBmG8C6
J93rMQfgWXGlTdlWDcx9uC6mfOuDKxeu9ntBch7OVeFpERal/6mpHKZI/Y5bKWRknMy4WTXJDWzB
kiH92dJj7SYrfLvUoocN2hhxvwThJ21Ps/dGfc7gCMqUnBPHXszXeqs4K+LjkBMNskGwzUkCpudb
n6GlIZEWhBKtySJ8SMGfzmDgOyZjyzkIbIACvybcY6UctltSjedRlkYigje3ohZroyaN+dNhsXor
YeHqI2qOvlAB6JZnJPr63DArlHb31VTlvHmIuCCRTrpFkJywvc1PWCqx4+U9+uW3KsrIitoIx+LT
aBKgrgDUZYPLMxjHU0bR3E3hP6hsg+ytOXgxdvk5tbBI3pjl/gIIGPxOdfmYSdspLOOWSEA4k6nE
UnTdPHWNjLihDnRUerZ1d7RDER+/RD4bSxv1/bGAC/l+29JI+iuQtqCLLkz5Cz7P6iVTuzNBRhCL
sgLrqYj/8ulXU/rjIpJPwAjGEOkoMwb2yYMnyCvQ4svZyKWaMlekIJ4u905sr6md8gzZw1Io6VeJ
XBjuI/7X2C/WUiZdK2QyFYF+3Pang4x0TtRf/IPOI0YV69flIo4PJ4WZtxIFJNfz0kvqZGD1E9w1
To4rpWmcVXzab29e7jWXD8MEEI951MKKgj9Z90vcNnMqPh0TIlrcu0WGsGc1r9XXlYPBoG8NzO/7
6boQKjShfiTp2gokbR5ppdPzat8Z2q9zG1UUuzVG0flQDAOncghuvkIzPUqCbsP5lppDGAupq3W0
vheUY6/lwb5BhZqgjlubNgLvnOzPox+rIlHPE5EkO7E7s40mbiTYLK/wITCC53mlt+JoIKI+hFHG
Ce11Cbvny0qCWUdjMgB+wETJ0e5oo+un9L/SjgLnTGEi2yoW4UCoWkaJIOHaSMsoyEdLv5fqpIan
fL5uA3Lj3A/4g1O13fMG4lI26v70nRpiNgvZSwgWmhZJy8KT0HQr1oOKMm7sm/LGI0GLRZQcsa1x
/eAMLIZ57Rr5o76jt26KEDh+nH26SGSn+diSQmZAs7GopW+/KJJ/RBp8Z5iU+oVUV7qrv7fJ/Key
kk3z0aphBqcF/ZGRg6LDMwXswLm2kNzYlbr7PD1Q+k/KYhgkhKiybhhwdCuurF7s9EMo2KDCPek0
8E6Q4p32qKaVo5O7Z0selh7O5KPAC7vV96JvdKy4FlO3bypxc6vmhLGWc7HcWCDol2gn78O1s9Ep
WX9EGYfLgK+1fioBsHgDfbb4Vcggg1RnqMDNgGg3h+x0Nl14Tuu8eAc94h2++CJ/agY7eynrkrFe
ity+jEaM/n4lUIqpeUBxGx/UNuEHVTKpBDWJlaYHP3BJgx1LFuPnYBVBZ9p6N8KTj+mnlkbpOR+5
/w/wh3VHv2U1Dc6fHjpL0p1UF9H6qgmwnHLB5Gde2ItEWY+BHuGw8B8mlWK2OVwLPoLzkC5OmrfC
IwOifT8xTcsrXxg/1fgqJESbFEqFpJAn1NzjOSeNle1XueExdgte4uZIFUeseHibPsaSgYndFzc9
30R8RdADmGBYXxTucm89k7inZutFAw3alliR+p/xMjdee6xqtHUm/4XDPvTOD5eWd8Mh+dcQ4qiR
Tv8mszyPJstzKcB90F80kRTJDkUOXvt1ZXbvQfhbn67vQowHqJgGGZA+zjlBW9LM4a1KWWLj8jMA
3oHMKOJS283TPPLAYjR6MICMA8Gjru1iPHac1//gsizktIEXkAdjCWkuYRK65lgAjs9w1DXQuo+p
Orqwsy9C2TMdYwk8ITH/fS9ehkc3Kbw4/FLK+p0HmbkQTf0C6y4gV2doo0/rn4Ke77JyFDaUMsFP
K86OMhAA0F/GQ1jPxrbO2aQfpWcpdvk22wT+SeaAwIsbYZmf03Ri6mIM6Wub9iGLUITHjhEs8eOP
zZByPSdg0NkuRLRWqbd70qeWdBCyOfPW9cwNmFbkVz8SBIlYLbO1BovcU8QZFvEj2QrAk1a6TMJZ
mHYqJB7WphQTaX79TF1z7O9HMImJmOWZM+UHWR95XC26zOrBpvIE1oiwBPh3sjbb6wheKYq4aH3C
PF6SSHm13ant9GLojKSHfT2ApTd250cNzYq+wdhacRGy9zOhctkV3MrOViQ0IWOmEUsGIo1sm3yC
qPLgl5kFZyKrGgmpVk6UqXuwyOPdHZIhDXwmJX2u7XhIwBLbAzqemmd7mT4fBQ/+OemRhG2X3jKO
UXZ47SPqIvd5Ded4GZEnKW4IYgG93ogVFKlc+K7QBawhiu+rrPM7zrsz6KVQwzi0kiwhuSNaJ9kk
dexDYWtSpCrY/bOB0J9alfN/APi+6p7bLxQwEnQRcJiAq1hoKHF25R7gWzdqfF867MAHKqP1ds++
Uy8EK4yP6n+KLkV/5QnJMzeK8QIuplQbGYwZdnPrgAmDfmO6wN5Vywc1MY8xY+kVPnX42+lLkevh
dgLZmLbLlKRcso6KEQJozQQU/XlSED2Wp5qcFMo2yqVlurX0Qi05OUaJgJz6LAcTQmhIhfY56VBe
MWLeKzXzGKfx4NTd4fBlJM2NQtfpobF6mlORqMqq1me7xC7plI4xSP2w/GbSIiZ/r+VduUtnSai0
fUc2uDNGAQyM62e55QFfnNNM+MjQ9YQTwJl53cRNYvHlU3vj+YY10EEK6AJlWWknQan1t97TeJFI
EfF8imk/iJ5uolOinKMqrYeFHeWFWx6+k7aKk+r/sWj00P9KbD/H29n+7Ws+vTH9fYmfjntP/ttl
Rh+jc8j2UAZeOlPwx2chy+iWYhXwU/8WYq8ZKeOqtethlG46A0bErOlHHHw12hcV+AVQBfhXHBKe
+r2Q3sQMieL+2LZx1vAuYN8TXfrX/+nAvLXq48N6zdjvq3hpIAYgqaHVVZHt26Kbpvy3/Yg+O8C4
vQeT4YruOtM1/oZ1pZKiXyE4cIuM9zhlkHS5zlA19ZJA/GAYkijw9F1+G6vCzYH7fLLQgcSkDSJ5
v8obFMYQL+WgG+EbHYpPg/Wnk0Z1icRE/eSjrOO4RfPQQKbLvMeQJhmAkzMXkgtazBjMWED7KQmB
Eo0GA8uPOFMcMj69lItxQlt/Csz5hFqQcRkqfzSESY7qqEsvY+tvt0LnqbsCQiG8DzGPxXUdUEBq
BthBFv4gyId4jqwzRFNdKIJMDzzZKnZqGBIxYQ9wO7yb4z7DubEmxJ+anvT/cDB4q42wVc8NfHCx
BOySuad7xy0FvwDVO/NLclazIdAELZpdkrB/tYc2tDdHZOFbMAaWP6iTunWvwtaYfxEramx//y9F
GVf9c1LHd7C0gYAjHap4OgewvL40Syo9nGFTDfZNs/Ra1m1bywZRAoSlzgdVYdGTAALnYzy62QoE
kvyedEL6xDZbCCk7JGkAdzLYFRlST8nTW9G5q+u8ufAXfiCz0uneirZxGfT4i4Y+otvj9xV8RFM3
oHTG3NiQUdSAVfbpKJLioMClXZCNikBX3dv0rZHQcnRUn3GjLTrynPcEsNKnzGN7jlyFAPCkLnEP
qhTV/6sOEhOUU/cEOp5/Zdtebakbg7BSQE/K73sf/FGdMW1dFvxERplxQysK/F0mGamrYhJr2gEL
KC/d4I2P63UjRzS6gihAiskFwGzdfaMXyuDkx5DC9xFlR3f0JtP2Pide5u+pfiUa5kDHpAlFp8S4
0832QRQdfaD+vqqXTnpDF4cOTiLZ4sQXU+/5zqeQaVLpSIsvCg6lo8Fc0+Z+DNnALknBLTsRb/7T
gb4zkQfiDKXHNqalcDEswHWStH7Wj8CDgF8Gg743z+OkSKz3AnZKM/MErpEIzC1PxBSbh6HmQC0b
9oe698QJCw7VcGH2RfvuB2DCpda7gJtHIMbSP/eI/ake8ciBbipFteodhPoChjZF8u5y4nxz5vTC
lyX3UfydbPOKryflBOS0Gcqpv3qH7FZUQv0tJMbLvfUuLMikBGFoh54whW/Rt8ntVum+oPjcbsfv
0BM4/njLgF3mtCMIb8JSKv1VCDw4VLuFdi9ueGTWL79+4yZ52Aub+w+iilrWaPQvRJESXOdW2RI1
/Q6rdFNzbkAtF5FVJCfnA3BHj3MWzeiP89jcgaTa7HabJCIz/6XKqu8tKgPn1S09IY2UqMgY5XkR
p/tYyoSSWbPDEQXYjQH7Pk/B48+3D0XQYfNhKUciFCK8zlX9dnhM4tWnmQ30RhZTu5nAqv5UGpGc
glnpAWHSjPBj29jT+8w29y86HsS3l+k7fmRBMR3mvXa0ytW+DnA5danQIXLZMOWrL4r/1io+oDW5
QixnWLWp9zzJ0A4OQQLpkD01N9tVAW6aOVuKLTF0PiuvBYFoJNz5cbqYToHHZOak45Enrasid3v8
1xn5Eh8fdpiY5m2rhdaVIov/qwR6CnvARX5A5RCRB8+xU6mpk5Htr9u8g4ySEsbrdCwBijz5CGEL
RShkDVGh+5oeoVOu53vYfGCh62ZjL49vlWHcC7Jt+7ANiBnDGK8kxJ71QEYgwT1xH6j9pRCFpH7y
hXmDew8QfaWYM/eD90zsJMVTjhiZA3bTrjTSaagoxCDn1YHdQADX5QWB+JKMfFGlHPRv1SGZdHrp
ogAx2cJjVrlhACKi7dctuWG1bg5UlHGs0bVh4KlbjQZSq3bHiM+/V/whKQFwz6dspyD09VKiQhgw
1lQqQBGZgNL2DxXtFYFSPKSz9ZAiqrFfXpQO7QHQENzGe5UKjv9FBW+o5XP0EUyoOq4/k3vcHior
anqC4fNUWTRcCLM5S+dmsf4OwYpM/kQ2ZXEeU8Sxpd3+cDUKv4/4bgBFmJhN4fl2//Ad5kg8OXFN
xY0l8JxUmyz/uA/0GUFN9w16RlU8TTbxGLOR3v/H8vvhwGcJ+12Z1/qQR+dn2xo+Y9MRjikKJwbA
iS/GvDcJM20CV9tQeG2U+JmPWj0F0RSmERUesQQ7azy5M/SEiSxBD5OGSmdqdf4vtwsZHWCrTK7v
/8d1v8C9FFkaUuZdMR3TQdp2IKyY3AWW83t+Cnjuzvefqd8uWkp69SqrPENbUtwEIFcsX3Oy3Dcy
nktQze2VTrv8Sn6xQzKjoBxrYCATBaqRKCIgfQ241EpgbE+Fv7BT4mtwbsaKSef5/uEd6OkO/+aB
b0eKpyZOyj+PyYm5KHtXnPEnPNV99TG8C53/QdtAUlB52Nxd8Y2veL7nOO09RbLMAtI+lCfnJ3xS
nXkIcBaJTiEc7ta5MhInV23mnrw0suglVgj5onrhvf/SqWlqeIH6yYmRdXJwnXZbYwaJCQexF9pk
vvEDpchVLVJZWZhC3in9wnVxBsMbLJ/9YjKUSTnGYPF2gusrzvhfy7QbiHichUE2UHVEvsWigdqz
7ZcRwDhinZlJlVNube9O+s1xsxQpFrVAzSw8R5xspFL6QkwBz2DKLMesLqA/cuHYBvA8Nb3g4Raj
JXegUFcrJArwY+l1kczy1jYB55kJMV9gemVcTb9wpcKZLCNIljP13piq7HKb/Jn74owHs+fBRvtk
SkgDvn0a0ga26pLjhABQoAs+ggGEd8z/xjzwQAVhFL10Eqz0FXHUkPv5rXUIac3acogPboeEBQPD
GvyBXXY9digjaGPdjHCY1mPg2TD+m45vzqZC9s1+YaIs9R+RsMSoVv7GW61Gi5d8dfnJBgwZBEmJ
exGsVFoweVpD5zulJei0VoGnBwLAMgmfuAtaxR+5xtokQJzIOqr2u91DjcjsyuNry4gwfNpbRgwI
SvuwodQ0oct9oPAJBhBXUKD8eAp6fRj9/43EeuifcQrOPmHG5XQk0LG9VMa+VrXr0n74lC3QndLx
Uv9WEtMrmBJyIuv8mB+94jTwJeE4nMlUTMpq9HsQtmjCLEPs+9W+NES8fPAg13c3BgMqIlDhO1XH
sGrPEWWQm4bW92pGw9OV7Re8spHPMwJNFD4diOM87FpVKFkSkAUrtMU/ZnHs8BdsPEf3d6tGo0VV
Hwfj31hM5Ps8DuL4ghtQ4Zmxul32olo0QyxLV3VWV7zVyMt/1WzCSIZ5aNGWUeuzEBJbOptM6HrO
qwypzXI94mffrcQUJSebak6AZWapZgh1yEWk0XMFm6wxEcHooH8ocfmpX1Uy0LFkBPnN9D68MCpy
Y53ONZrbuTyznJ0lFbAT/HbarnbAa2esZue0Q6yBlx5eipn+l7rBLDLxsSU0pLRo0fP+o/6x0Fhf
3D6Z6KOQyU4UeboHQB5+gMWNXA+fEDwQVgFECWPwRRWHz+BKC/yxVCMq4Yerebg5ZOxcP3U63SMh
1M3L+JdZMM3HGjVYjpPMewJPWbTJnWXDDT1poSKlrUC8SVBPPEo6VRzSAsJPxggNADrBEQ5Uyrtg
6FBj2NFPaGDWRfcI93y8CVECRimNBDEqAWsLt36WEd9DrZJ58Pn9gwyIUV1h8VU0wn5UVxl//F2E
HKvz8RGUSw2MbXv0pgkdMVojwfWAFnd9vFwi5if2zu+9ODcAZm2yKrZWyltoSeSJ8EdUVMiaTRpp
8fDAXHtLw3G2KsOTgeONNIiXDmy0rBRegjzFA0DfHkmXCXS8YrCwN+lnn4/6qg0HD6b1kvJANVUJ
fBxMEkcnXtbuyynAiBFp1i7uSLw9a3jG3W7mSpFzOs16rllQ6HNPTHD707rxn3sBmaC1uVgSWUNh
fcC7PW7pvPGeacyBwKr2KOcBwkEDjsTWkyvLrDJycBaCdFFiWNzvEDP1FPxIcWGOEkTPvqUS4mBy
WfnTLENmsz1zYjNNkIEXBzps8qv1dwDjmQZ/MMLBMC1OR2RXhkUJTMms0SmPNiB4QK8sIPyLm6wa
/Wx2Aytjv8GxycG5lJs5cP4BuEFumyfTQ5YtEuy6EnhmZ7EjD0AuLKbNsQRz7s1MeIi2EtNX/74u
4PoogL8LIg1OSejPBdPoZRMHX3TlZV1O4j/t4qJaKUOHdVZNWv6xHPezPMkDpQkBSi1QBr+YCUyC
HVGf3FrgbuXVczicBdvT/BFWghjq6Jckq9KPWRHNV9pd+h4vYs9zymwKgXyAXA74XcSQLbz6F+eX
fgctxxHePkzD3ipoPp+PA5DcDOcxQgphvrckBySi5tbWf8ncfJoeu5SqGuLwyn3M9bBbvi1ep4lg
DfulyA/nRfgWhyeSvsxnVIKlaHfj3Vr20D35kF/FYODr4rntZ8u4qjfjpdAz7H7ag5L4vMkLklrw
/6GznhXDJzFOkRuH3ZLZHHorwlIBqsqBPPFpES7+u7yHruwwlQFKd2s5fU+BQX8OlyQaCcYLaDJb
Ml6rBmD84OBhSn3QTeX7jbbPotLA1HRMqOtbW8qPvVcsu0nX3Xj2cOPissxUXmBjapN/umDWJW2d
mT46ueCVPIglch8UaWLEhIIr8PqHAL1PuEKToAQaNuPF91gLWPCxbFT0FqOBmLmCPofDE6rJsqlf
/LIMoBWuwlJhLKS8WPdAoO02kxxpc9Jmv0TjxvBPYAF/XxiQzxJnbKzyXMhJnD40rNb8pvQiFmry
jFB+Mlhz99v4s9OF81n7q9lFm3SEtnFfAYJejZohIdYQB8PUFb81fOfMk2y+Y4E1f+IiU/d8fOBE
O9iPfInFWsT4HHCSV+Yq77OMynTXsc5wEtIt3vBBGV93u88wXBFoq99+JtW6q5fGkplcN/heRHeQ
BAtOsQYmXLsnSsn3HfGdpPY08V3yA/mHImeRLMEOgdfzaPLM5/xkdhZDDNF18XdWge1/ieFaOaA9
aSJItBLuPnZecAe0pKx4wOrYj/AhkLsSSCZZCULQ4kn9TZANagj/jzDy6J4+f3XrMV6RnrpaKZqa
w+8MMdGi6+TuytnUAEaxWoHeDqSZXytubZYRz4Ye49pwKLEfx9Xqlrp/bIKuyZgtOpDVH25GcO2i
XTvlHMIniDATRQlLTDwB8MgBmv3YsaGA2OjhGJIoAHmW3Z+7hvI75Ft8WW8kLqh6KqBXxYTdbVJi
lJ/XKPEO2Y6dYW14KVOM+BOMiexCzVLW/8RFGrlHYK3ZD4u1XkQ2hHZ/Xi8+GL1t3bub/Ys7FrJf
MD/zv9/w6ypqa5ekNA6CGeHPYvK2gPlQFhq9HMOK3gBBaJequpHGf2mUsw9uzP4bYxonV+gMdj+l
KK7Cit95TMgl9BkReWLof3H3/P6rQjvuu3z/q3HF5UmhnebUvjR7of5wCDtfXyN1iJVnR6qvfmei
ardJSfoiV9NqKsepZocgY4LPUdXfQlvMdeSPodsAa5RJr+8WYJm0TTHiFFcIL5x+Uwi80ft72XR6
pA0gVyt9QBieQAGctMmkhwCm6cblaM9zK3TtcM7Cqz5PUy/FmJ62hVAp1XA6oiXDxobA5IcK/TJQ
V5O7r6aTcPiKcv2irCMilHUsVP0U4sz3fuEGYH0+e8Gv/Jr3wvhfvT/p4WXRnx3SJ7uVMwtmY7fw
wL2Sej9ZLVx6nwZrT6Q/E/kQFkWy4ZMoY+qSM676EZXanNLVOv5j0vcSXQiSniw/k7HFeQMs/XFz
pn3F58HG2D4egXso0s7xSSzH1UFhh5Z8KArwthRj5KcNvw0C/eFPua8BIl7oy0I2EWAdzsesl0bH
IHVNUaEY/UlHOVox05WtkhNFaBX2ZXH+D4iXydpvrpgk4b4IfZhJJOlhaEDxv/JgbFzUANO375L1
cJZaD2rPdMGr5jfUldWK876wgcUkoH/pzEvjaQd/f6u8/rf9clP+VeqZgHzNaxtXyAfrAFZ+LmlU
Z2gHV2SJaKkTqsqAnBsk7vadrG1IoxbRrT9sy8t6ECy1Y3Hcrt7wh3T5dJEUSKQ3ts/O91iniS5X
vrUpP4tCPvJ4klPhVdMl7F72E5SlLelhNvlKvBR52bPAk1bOwzdRdEJLLNu4Hy6Cp6nKTBHmpI01
Sj3eRnJ9gsTvqfde3QsB/dXQvmgbjsa4l8JbTEdLmZi+GUbKH5Hqu45UiEFaPhCE7eqmMlQJbJHA
SRKlPgy5MKR7daD2wvzb2UpxqoG+sYV1+jd0uPEvOQ5lDBR6BD1sA6xPtNoqBWLLfQGD2SnhXgUw
URTYSEQSS5kJ1ici5GylnDwT2mwlzfnfrS3lbWMDgL/aszdzev55HIbPr5eY4BPzyk6ampKIVjxZ
jhDoxUhh/FpY8d5jbLaOkK2DqOp0YhKQUyfyNdpwpCRVfxpUBbFJkdFQFcbg17fQX4xGHfUAZNnM
OxoXk9HGt9UoDZKOVyZjBobWwLpoBuurQWzuB0Ul6w330vtl5atU3wFgUxtEpDkvaHGej82DOGws
woIfxseJHecqswyYB0pm2gTGBJRG19v50po4Dq5dZuPS2ectLoD8sbCm38rOFiTih0u3aPWX4Vt8
A4DYtnm1t+rrJlA5p0HdNBtbAndkLMn8s7rXDZeuY9vNqvXnU4aJ9qW2w8STqwyILhQJSLVYQ25w
xSYTbpCWujDseAJ9NrLHbuvgP1NBa21JpkIvMjx5RK/q+g1NLtwTUrfRftLjD6BX7vwGBU7n8g5R
oT4q7x6aW4XjG1nj+BWS7QFHKw/uLd15hJX98Rk2cegxH8ThHxXfzUFZ2pEq+KFs2hcbkrcLQeRQ
oZuE1EAWRKNbL7Jxzo56PGqN7pWigyfw1vdYnBP4z1AGqojUOuotevmN8iAu44uZnOrv58hEGJ3d
AF9lTbP+fHDl8ZFNe4j3OMzDHnjsu3ieeI03NWJHcF8LCXEoKoq8aceaxrY31w9x1vmMoXNXZB1p
5kL86QQeU0ETnipTfgEyHyUeBI/ywJk2SxnEhWu2SuZl5UNTDAtdtHhsbLGQMZinfIM2rpcLFQx5
vUQ+nS7dXCunCQp2dVJlFzSpryXYsZMt6BObNXABk4ZqWGZDgchpGsg9nQKAfwIQnWaUOQjfJqLZ
PWtm7y2SiIKmtJjyCRvVGmyhCxz3uraOeVNH9YPsDhsLBVOd0f4gXbUjlzV4ebwp2zR7JvJiRYCN
ExdVwoEv56aCUhmTTo+NCSuP8xDEf2C06KWxs3wCfYHmtONj5/Uhqjz6MBaOGqPfVfxDLrs7VOlJ
DBfIdSZb65PahH9oV/2oYFI4H/y3CBRwdDRod4LyjqRjpVDlFt6g6uuaJqaWIUoH6fBdMOlan5ei
32pEkwMR4C7CNAUlMoh6UUnGPnwKqC98qiqidl+vqtT9jP52JvZznf3Ltx5qt7yjHqIGoGfFpjwc
bHSaYGcxQSCruaJiiXo4OUckpbS+9uIj7yWsYTcuhvydNPPDlG5UvBDINux3Gt++w7ntoI+ys/c1
4S59dOnfgiLGwkk4sIBrS0eIv/g9mVTFCZA5SvH/liZpcBLpz7ITX5wbEYbs1Fh7MhlU1efdKAY3
UiKqskA00yhLOuav1HYPXFjfOJfI/glZ3+n9CBKmGjcx1FejlxI8HPH33F2CoyJ7ZT/saqzRK5i9
+1E7VgFt7p7l0zVup7q+jcEaH353x1McmILBWeRA0lr/rLpP3nEu2hrCQIxsICfwpxtsYBTEmiAI
sVoLtVYHwEITEUYb9SHsEuhG9OiIJ5z1kpKh1TwpA3Gi0i2SVlZSI3ZVrq9PrVE2RA7HavX9aR4J
plllXRH8iUC2jxf2EumNQBdX9GbogvUElfvrfBJrMVEeknaKhH9uYndB9lXbSeHjxCSKcj0fmxCG
nAozWlxd4zForI1pDiIdUQri7e8d1/hzmEokrjS3zbYjLMkB6Mh6ZZwvJeY1shzFxcP5KN7atwkZ
t9Fm/6tmefrDzbey7ymqu+e85RZTZdLhMa1Q68hZJ8YWYSOZcUK3iVDk9IaIg9lblthg49nofdmz
vQbf54gqQyX39nHMUlzSsLG3EUy2g0wdpCKWHvY1HQ0v2/b19KBRd4f3qke0wV/TEfV9jcp0PeAD
wdBNmgG2wppPwiNeBImtqwjtBLyaZR5BxENahoKfV+9ELObSIoZOJOcizHMi1DkN+NPT5I3UZ+UL
yuABpyUX7Dja44fmGoLIe4WvC4AV/1/EXJJRXa6R4L1nptR/m4rz1+BqyM5Tp1UlKTr23D2GmKXa
QR4hjHMZyimkhc3p/hMqJTK8j9FnsefE2ftW36YXcvaZRBQ/3ICvdt+ZJKzrwOXATgTSdkCVLgiI
I+CL3dws+Kl9zuMcMpzk+elCqtqe86Nr6dS57CRCKcwvM81siXDqR/IjszCB2f/7oRQen31sLbtT
p3N8ovNNlkAbiOQqKN59gxly7VEXRv7Q5J65FyaIUdrdUOLz9aWCPCyjYxAUP2toTIAwSx6O9nF/
gwHxiB1poiBzcztEOZYPzfl9zG4YJDT7gRY45204mo2UaLYbOF0Wn54vUFof1LaxGfHZnRD9tW1d
61Ahj294xN8DUi1he1pysmcARi6GxwbnrNVdZsgoYgTrRan29fB/ViFqwZtkxn1qZru2N5FoUkoY
QINTPj6dVssGyMUjr4HnEvZK26KW73FTGkIyqc53j5Me+irsd4/qblcmsnrIqui1aFrovlYjt75h
cPGmdjHhzt1krJN726G0rb4Ga57VCbq2e5mLQI6CRP/Iu4NyNWpfKrdDSxF5XXpdiQWbOfTZ4I6m
j4f69tFVriagPi2L6vNJhuiXlccQZdCkE7I0s/14yy3nwjglw0p3OX2e28yRcv/noOZ2CqfPeyRx
IIpiIrWok/2dIp9x6GZ6Fy6c1/YP+gVyKUAnl9wQvqNq8F82RsdkLn57Aur8YMpNTDnIXEZtpGbZ
DB4H6aJKx/tRndJPpr6C428l214etB3+J1j6zQZQ8xWdslaSvfmA9T4f22ot00fnII9knpwIoum5
vAG/BHeQCtBCRsChdu7SdLJFv+A4wVpzM/YzSXVCps/WJoSqjDOPZkgne6Rwta0Lhp2TNTZNBCuh
cBPVkQ15MRiK+WEqZ9MvnKZ0KRUBm3wZGXUQgyrTtRZcV3E4gcbv9tR4yyEqO6wxYA/vNGjKfdad
L7rKCvdoM2fw9PcGcI0dT1+J4+FEspQarr2X3TYIMAHN6xOt9ZtnUiKRM/dz/PUJbrMql1z9U5vh
2vt/qEDRowvXB6lay3WQsNNGWS4qA1lOVUGS9uztNG7H39yk438oJbu/aZA5KKoR2FODtd8e6Bb2
1KRRX/ne1K8tdB/5El+ObUwsSRVW4cETUTontr2Z0uH7+ikyGgj6JQUzDW7mVODvBKZos6vlOjyn
QiU+aSVxYQuiH0n2IL1ew2IxGRyCzunT/+O27iixnrLcuXjYW1ha/MoJD+yjmLO6Fchs3hvkk/e1
T39xrQf7bLDxvw2sIgHeKXtCp3jKsNWf2GRqVUhLHj6pq900VzFgs9mSF2xfdyWk9vQDeIx64Ynn
fOIbIj6soG0xCfYhojjQNNHmksMiFdQNuC2lwgHk455PDBhrNMlMEQX9e8iWr6EdR8+0d/OF3s9M
vkvPL0pECoELR3dYtvtMSkxs+CYMGyhNXBeyUTypCk3IGezB8IXBBc0BS5pnW0uWnN6v46SZDJtv
qAh7zJ7uhCsG1vuz6pqi7aYL/wTO1omcBP3ClWx1aEuckWS5aWbGRYk3Dr/fsMAjSezF3Mm/zQrK
v1xPsS/vqI+RWp8zLiv4+Dx2WXQ6wLoC71oYdRquGE7I0cJMrRCR5PdI+oA66sPIhPJGGusu1pAG
RvthvtdBBe4RVGD51XHE1Yun+EuCsJCw+rjVOfdW7vPS8DloT86dQi+ygJ3aY0EnQrjQQrxN48W5
Y/m6hdSNaQt2wqkeRw5KsE7NLpFkO1Q7sPciBs1LJupAVST51e82DLxNpmGwXfAM7pTQbInwADu4
7ZZ1/wnRnbhAfwvKOPwdshfR8PdsMcHz6E7ebAcG9Nzn1lLT88+ylgwe84D65heiV6gKYbdxa2zm
9wUdo5EKS5bJD7BwnKbyJfWhcBvZ4Ez0+HGft2HC42yUkIF06UvdYNYPGqNbys4HCsvxDHRhH7by
cLq3F7/NdSqKqisAY6F10L9EwFnuDS8P/4BirovsEbqAxd5J1rM3/tx0Iplbyl6Bd/HbuXVocEnu
6r0t6oVQHF95fcUALne5NWmmo0R9pWV0u2o4n0x96Im3SwpiNFa7Q0D4jIAMjWa+IFYt9k9ekBJJ
tHZiA0MmwMtRouU+IL1QRMaoQ2M+pMC0ZxRd5D9tGO5vS9CdXn/zNUzUtszVjBL1zr65uwEVOFf8
zDTQVVITWS3luof7esvDMlh4wnVS95417j/sJO54XOdJwMwWncCNSSwLfVpKklZj1477JLnUh0Ne
2rwhPWiR3OKLSpkly9EIDOb8ThJERpTv93ymwsC4YnKOf4Kg/Xk6ziOQdoUFUFsCtRt+CuJOxzTP
Y4EAS2yHm+t1/QXEEy0KHatdWG+gobex6YmcqDQzsB+NuNzje5z1RKSR+WojY79phX+GsgsgOrHP
w1RqNB/gUbEg2dsf2k26q5QWi9lMlYrAK4u1utvQQQIInpOZXjXRl9DIfVX9CM4izMpBYpegdmUZ
wtW3vA8k54G6jqMg0ghBow4M3EZgoTHqWmeAJMX2Beys/r+bwHhmUL88yPENMGKii5EG65RjhlVk
tm6UePmnWpUH9GlGQopGn37RFEgC9jXcMBxuWSdo5mTyQcuxA5dgVSwJ+xxkMp3m4LbDUn7pz4yW
g0Ck+Dd9SNh4AQpgdNv0wQ1PrRtEjPn0fME9eka+UKyCmtBSDLAtvQyNycrU5bfTW5PhRFULz5Q1
BgGyiI9mfTDe96V0/QPoiZrBPj15bN/ToY8i5GScuZk3iA2aKqvYhvM7KhChWLCfCIUI5K/LFoL/
6QetVcw5zXXMgy4rQcpouq0adfN29aKE7QREc1sNf9axttMBRgTbwo2hdVTulQbiScL3aJuDjywk
QBc8DTD7A6/eZDNaDIdp3KiPKix9vN5o8Zp6p/1AGoZMQZv0vdvBMpGgse9Kw5kKDgnmTPEM3jQi
u42hlFxm4YKiHolY8w6x+Xt9PYMsZnmGiUNHJK2FJetWVUACWKy2oRdet3E4DRyXOTrS9eedJV9C
rDN6pI7dq4F9L5n7xUgBQ1z6MZh2qyK6LRDBJLshm/VgBHWJdtgItSzSjxGKDlx9jJ4c95Q+p5mT
Vq/9JbWCkOeXCgPTa8T4kXXbkZZlmSiPxpi1IjeiyCOloS6hken6DaaFKF+k2osqHKAdnbQaOEUZ
RCbIey+EFC4cvxNd9ooPJ1qtn83TDzLcsJI1M7i8Fiqs3n2IwAMGMnUW2V39Zn75gntbDBxO6/hE
EzRLzSZJotNxgYn7iF5ZcRQLcaXbrJkwom98gEHnmfYjigZ4uRqS1b5zlYewoOW+RuV1uv50jP8z
D6tAsvXk2BBNZR4v2SdQ5G3OEO2YzFPAxe3VOwqfI4F3iKkwfLNSU+jpYCvfkX8PvCbcMqmSMtVO
ALi788KEsHBsRa/ROO0mJpT10aWJdZiBV6QA5mguLf+Hdf5VGsqeZUl/fH2SDYqTMyCkNx65HGKZ
Y9Sh1LdktXZE5I6z9tUebj9TyfGzj6dYjn0p2dbhcpIrSZnTdpct1KZZlvMS4piEFRqm2lQApfv3
o1e1IVq1aFYZHp07LWyqrsBGeB7DRt/YWVOyx2W9FldUg/zaSwjIlMw5Eb8jm9aPfFcvwfpzv16w
YrmNqurUUQs3VV4FG8uJDMdjllbDeX/Ew4wnWxxne0VT28tzWbWRD7FiuONchOeL5vveriFGJOxc
TxZtO5tuA8fs2XHxoKUS16wjI9aIaHodchIYAcbsD/U5Ql6xlSgrqbmmtlH4r8YACx1mIHQstF7F
wKuZAEWuWqKNC4IQPbOGqUc+Kc/HE8tFUhiq6ADWBgTnUAC5IeV655XbUUkoGzA97AENGxh70qd2
N+RBXwOgmpDsqPtuSrweRte0sanUFTwpPsqpDjT4XvtfyD4A8+ur0bRfQInFPaW+39F/OPqsyR1H
1Iq/cRIg8AipvdXVMm+L+FXIAZr1xbEEEOtTd/6zTIB/NeURlSGKufSEtVx0huWzjU6Ll7ZfIgOY
qVFtxqgC3tvnK+nk8ti02DlCY2qb+sFAXq722L87Qx+FKTw6oOIevtHcI0/7ObDvQZVoGny3nhYX
IQyqXxgx52IE2hUblhvHTqLRyPLqh8FAbIMRGjQBwrV2SsIXApfgXyKafGCUJesSk0smQCKtsBG5
oGOiMC/hhnll1CXsTId1w9xTxjYVn+SKsh+tcztdJCub4Wa1cwR25G7AKWv5zVElmYA2xsDMCyMW
D1ZNxI5fbUwgcxKasdx+n1QWvI8gqG6F1ITEgM4NqvrQZILz5QI2jotSiHlNGmLpa6P+ooQcQbAg
JYmSMobYFjQY5laULWa9cvhAxu2/kAW4E31IGYndISVPM+HVm3B1MJ+2Dj2boL0gV6sRxJ8UTaIp
lgHEmx6NguJNOBT9GI8fyMTuqOd3QPyd7mIt9qDrUvuiQhO+oolVm8qZG451FQw7fNZknC+wicj5
xV9vn/NPpmucSACml5BUmhQfLyglV/a5NgLm9fXM5d1U6a68S6N8w+LXuAmZicyquIPs9pPqlufi
n8hY1rL4m1xzNr2NKUp97XgGGm8mCldNGuG0iR0jivffzdXYusmtcrIcXuutgD88HuRFqMRlBend
pWHDIAe8i6TJoJcCkttNcrK4MM2JVJsOcQJgNFzrzZP+IkxBRdCSpnq7Ed9S8IU7FUNl9AOd5xbX
4FaujneUM19sGfupDzRxIPEA4JZvCMpHr7m1aSgLgbiIGoeSs8eJNx7eKeywRhY6TFn72SbHRf5m
TAvPoJzIPKmODMoBwn4/NRfJH3aZuzsmDtRHyImIufBfnxux97u+8/BY5e8ure5aDi6TRQgl2wHW
8FI/9fkfaViQ02GAFZAbpwWrJo3HYtN7Fsa58t8gM7jUUq4RRoT73MnzDF+8SdN21VlUCjmk7gCC
nSEcxh1AE3N0EiHzlKujKqIB0ht8hXRVoW67i+9xgOmdX9zFSwy0Un2SgN9vsQlQ1ufbcqq14LIS
GNts0n2OaQ/0j7Z7drxH5s9mSS0Z2rsC58XUa0FqCnD5BSdWxPikNPoftDwqJEoa4nzIIgzopIkJ
P3Uy5x3ZzScMZ91jsN7vM3iVvSIns5T6mWJSz1B9ZxhAWnT79nLNWNgXR7nwJPO8HKsi9hbSiW67
bJJE80rWORcmpavp13wuuQjQGETm9E7lWa25seE58u1KhUpnDrArffvfxSw475EqDKX7xPZ4PkIp
OIWFXXO6eq1kjDe3qjL261unKzBF+fFy61ia7yyUqywyRkAFL2ssaAbDT+IpdZr0wAIU4Z0zvy88
TCzRak2a0O+mn9fUxQPSHSqEl+CJMFhJiMRnlY2wZsOPJSEmwZ+BiMlyCFB2TzgRZAEeOjOAfQZa
UOKItwUP9/LDF/pfWbCp1jTYJshS6vu+VAUDrqAmhQm4yv050jBhKz87E5ErRkhYbBtRnpgHWRfy
2AORnqef3jhCOWsSvLnNSWRdJkVPpg6BmH8I8UPoCVCih9eFMv10gsRbGiyNoE+BPGgMGh9ll3Wp
IjaFNstvDQOd0cRTNHN01+maICyEg3Yld1RxsjZHbpmd380V3/Ufx6d0Ck0YVa7iQ7e+Dtn3lsYx
Vyx41sF7Hd02Usc/ZjVlXlBxfTp614QOYufqHlW4l/Nofa3NoKBiuk5QH0bHNqpRUv9w7yWK7vcJ
e2L9/Ulc4++0ucIckqz7ZEkvKhs+gCeEvo6atsP8GQqJi4bTSBrmYw9krEpklKmcmpg05+RI7ayJ
CX6H5zKAPD2HVxOnp5OAE2F6eNFp4r0P7NSuyOOU8SjUXwmQiwYoKOtcGOPsO2JujDSapkK9jYHq
mOTWGYg7o3QtWnWGArCE2guX8f8cjFzGcAqmDr+Nayb17JJymsCyncNMdtqlXhoM5IMpDvjVwwsD
hVTf3KYAe9C7IM7z9xTWennSrfHczdaWvccQEPUE2RGXlC0MNrXKyRq5gw0vhXN/mc/Br7xH9JF4
AsvZ7Sb3IYVBZuNIQ8HhspqPIAXsw+1uP/KYGn2Kthl1bHo+7mQiK1wIHNXwV9sIebNgnA+2czKi
FxYniOkuAnbZIPb7Uk9UDgXEmPvEjeFdEBYLngL+4MPBg+9qDCnXobDnDEPSxd6C9vL+NYuDjar1
pSSDJUqk8c6a0jWyEblRieIMsRS/1pguRlJUYh+8ztmt0SiVqvxTNG6CYCzxJsK6+KTLpaNom5kK
HAXM5NjwFlFU9vH6y4o8FWvhhcNf/c6ASXGLqR3NJ8nEQ6Lwl1wNPnICkpKXjR4wjKHFPTSnrYeH
SvvrkK8lW/ujzZpWoBW9aFEfzmHuXjCmUQObqx1yeGRebKkEdzdpL17+iYhpBkAolV5uMxdZE/c7
R+oTK5vC8iF+qZsCsGXhLHUKJyuleX17uoK6p2iISZ1LBUz2NCBgpJ3/uTEKHgfXUnrNaI/N6qWM
TorE216QPhZA33os0fim+d0/29XSW87Gr9jLZPGWJRJ/BGbGTJsItrr93cx1Bd424uW0iq9Demgl
o2lsNOdkDyKucaxjxYibimFucv6O0RvvmqMI30EtBJNGItNqvEWgbEBf6O488wNNdAEIl1kWZkTJ
BH1nvyVHJnFvuANK7Gb0qmopc6Ao4vvbgZLpMXEV5N9cko+BY6+j4PKSyXznTdfbejkDO8eTGuoU
poIvGnZp/9G2XopxMILGgl+soRcvHFYEz+og0igYmPB4FZT1zwKRHsDir33AoOl0tjA95cMrYv2w
vgdQMRWe9cDhL8Q1oAim/Tl8jiNUXYPuMEPRv80TdwWacM5J1vozarRrCAlCAYK582hnLLOONbE1
ms+6Az1H2XjhC8W4g+Hf3wsLoWGq10nfBnFhxR4AeXYqv6txqtqwsremUuAc56LaFP2XDkDpiS0k
0SjMC6f+Ql9PTbK1s0KDXN4Zqs6QMdEc/fek3fYqEkiK6rCm5LGtaylfmnyGIXuA3+h8m1H7QAUl
t6NNNTZXlpWsS6DNPEe3c75MfXyRLIUwd/5nKWTZfK42ZKpxfIprABTk1f7HbINiwrKEQAMD/BgJ
o2juH8qTZEvJAGXNNtqC6AiDziiuMzpfMLPzDb/XaDp6GcXTO0aIhCMow5+NaMzvXaQBzlqAAZHW
h6i/bn8vNKM7vjIz6z78Lf7JF0uNcQ0Gr00n47W+APe/aa2MhwCm2tfPS+F49bb2BiAB18Rf0Jf+
vu73lxsfo0N8lzcayar6mNGPUXocH+ljaqDpVhzc9iyAVHqxZ3BPRaOogYM4lKUUEL4A4EgGOh8+
5GupqlLnFCHOCS/l26QSuYQ6mlSMfQT0bOIYc8EKtqQvAXsPjnS2XVdUUPFDSfRVB1KGpCZ+fJwQ
WUeLfNM98kv6cAOeauliWoxDNabnZrr2WZcAWJmyViCht+8GcDJnZCjK0r3jxP5cOWtpUOQLKhPF
QKaJ8YriGPsNs26KGZgymhUSgrlP0+lXcicJqnt5mB8ZLa0siU0TxQmarDTNrzf8eTEod/LMNjiA
17HJRjAdok88212BILrBQAq/fzNieacqo6Bx5tCyVWgO9nfz3kaywEc/qWir0pfzyL83e8RMfRwo
kraAZZknyXRZGg0uEJxY+v1cXQ+smXnGaenKtM58nfRE0/uDJR0beNDPWHy4Ybd1AN/xX5gnFX39
m4XYtORo3x4nq/RhGtfVlx2nK1n+ksBLVqH8yGVtSwQrv1pglCBfcsbFedm2ApymBmH3xYIXYgeg
7RPYeVGfewmrIcsvrsoZ8h7gwEBnFqHr4m60iq+Q8Jvof90yRQv3GJsYBuWg8uACZFHmzpuEiO3x
zGWTftqheefr84ZkcodTRUhmrdGye/2NKWQ9mqVDa7A0BMZl1lvmncGPUr8Rmae9K5aUmUABazH6
/NCcoicIzqFkx2pq5PxnwgKq8EetN0uBGsZJkL+wUbfuEuZ/FFFDJiBMT+oKrelu9XltNivqAhd/
WFjSwRqUtqBGYLv0OtjDYLeX9yAtBorG6C/mO8hnDfEt9tYeRYNHTNk5BFFSJ3iSu6opwh0uTvbp
Nzc5H7vaqwnc2pAX0LGgUTYmle+HcV2xUliJW65hWUYRj0Mw8zYNAoKkQIwDIv83CYXT4I9QLefD
7IqoOpBPqTp/BnqzUoYlg+0YG/gT2bEgasN7Lnly658+ZOoFvs8BQZo5H4H8rXV6Zp+3Zzr/5XyP
ZKCeFiRLrYXtofYC4wC8tsw5f/328r7g2lYp+besqjLCcvAcHl+fiFQkTD35miUWVzgHMhR1B7AP
moyxs3WQBnEosJ+2kA/I7dqP2Or5/+Pk0MFeDL+Okq48OVqQcKNbNH+RKg7zjhxTKAVvpqzrKxa7
PqEBGgH1sLbkdf78Nx66j/u+pPl9I9zV0eQ8POu1X7jczbhWfwimTjwBltQ6vBgzfYWYWMA2TJ0k
Camj+ajDEQMiqMdHTEOVMNZ7jW2ryv5yi1UlJWnisZAsczWIZT3bd4ikb1vOyf5vtQVuOtwAjKFi
8dkXftxkLbG8zWJ/IQ4Gtz8e/KJxOiz0xjuuNeYUbz8R44NGAg+Kd0FAX52JSCZ8RjP0yypA3kGw
3bldTjD+WLuFU+YY8kfcwNwJP0FYnUjzXrYqU9I2D5rabnR4b0zwzbJuXkz/QG0Hmmd50WE/pFmH
0T9Oj2yvtCSkh9oPeL287gM6r85PIyXRcXS/Ee9h/PwWB4xa0bV1c/FPj9tvPhofs9M0NluzaBOb
FeBX7ylAcacjNwuwS45vMuTVhSVhfXnolGMQDcyIuzg7g+VN7+JExIZXJ4/IixDQGZexy8aH1YJR
/2j2Y5JF+Hiuvhm3LN6M4mjJ3SYDmUYfPj+K4pWwC3/rpqTJmcEJ+sLdvt3olHQ7ggfGG4+EMH5w
XuZDqC8ETjL3cTjXFrWNyoHK6Zw7OF8rDen9ttNMBCILHkIiiro9EnqbEMTN8uNZXI5M9I2x7OUq
uphfNyv6EMec1LSj3hRDB04eSIh+RXoXMAc35XieqbCNSIYS5yaQRWudqQhmKU7S0iQPmaVcVU6e
NwBkiV2B6QkqJe7yS2W/daYEfbI08+m78jd/l2u+RYtSHJz166sl95DSkoM1d3KQ9FhMmyCx5dHr
HbeAaBvI8ZLn24U4f8nCBh58UFATyxUKrE79UzyWdiOGMR6rY5+219eYZJPCsJCN5j68akSc3YlK
XnbOxYrSrvvXwJiTsR/SCvWtZ5BgU/jYzQqyo4qapiL+Jx7XPtvJMZnmAKzgPVYe+I7uPzobc51C
CUGBD79LITKDA999d3u5DJGI+pLLMu5tMmUeNT8eqJfnbCAlG2IuiSA+lxCMaz18Sdseio6L27in
Ho7AhJGHj0JBA6MeICilTcNhPuqSH6HuXod0k61reM0FMgEoaO5sGQDtoM/u56146Sfyqzq8HcTP
pKImX6a1spm8dmMJbjNVtPSqAoMZrsbX6HKfdFEuZ+ux7ec8cIgDoELdMOvbG5dHa/Qk1ACS7dVw
yg/nz+BKaAC8iyrlAC1OCrtCiZdjX7n7MIofU9xQoMlmh93vuaIL6CBnWqJCYZMrAHPoHo+2Eehq
wtaK5OwqP0DAG5Jkue7RH7H7O9jIpG3nc6We3tuU0csvNQ2jc79dJhRBckARttD3Qt1qraVOUU4F
Q8wvgqp5+omWdJQtAI2EJn1Vr3TQrqWOW9eAgULQczkkJPU3lWodlVL6IQRjE3gP3uhT+ef1LLb8
wVxqV4oqgYrEG2jkZYjGfokYwO/9dKYcGiv5hFjgai7pPatkmvdYaY5+g1Vnf1CmLNPbGAoWlDd2
dQCOqQXONOITbqvmv2BKwscRc/jPJsgLjkfyfo0VY8zdkIVFFNEP3QayWtaMe2QAlLuYllfLkHy2
jXPmSZE0qfW26K1s+wP1+ZhHZQWcL67CPBjR1i25oCVv5mwyLg7SIp3MM1t67q0HH8SPR8XjkbQr
vZvIfVSalDzR9YxjwnRnbQErGES6f6gdtkf84lQdqTQUsupp+ykHOTUHznLRc7GQqNu6KWACwYLD
PKMXFiQj/S1gpffxvg6JvZ9Q4a+dOrg1JCQD/EubpjQbj4TZYHUKUC2r/Pb2uBLXWxAYB86Gi3LI
rNLzNnEcWhwHJQ7JfQ1TEZhVEKy877JJl7KIuYQSJRChQ+Qqm2GKmZeyQhbby10g4uc4Rw+3+8O4
qg8BJy6dDV7yNnMY8yr0/+yKjnqVkRM2JZhz3KbidNhtmxBxZqh9f3F/WTQfyAYknOwq4F73QoM/
PBNPXYOsLHh7w0t9Rlx/2BCJmmekEQNCxee+BJ2HP0FcU35HzbY7zofKCp3q8J9rER903n2bJSRT
UcG/tC5ZhjoRjBCPEIDen7aHbHLdK4kS1xxWjoFJ3JfpL6VJrSpRHW+WfoaYBSAopSDYC+8e+aL/
RNjfh8OY1H2ji79cRpSyZqC69cHSfQR65bcCWQ5Lhw9E967ql7NBjRH/WhEOOAFvrSCl1sh55D9m
aCjzRUArDAbJl4tBmu0xsLt/O5cNcU7zndYT2DFactHeH7iDFtaqA82CLSocr+LZ15ucwMse/J4U
deAkQX7QQ5Tyk8XnJxCaRVcEvhVrBELIB0PMO7knOgJ2mTXj5vqt0+AtSmH7MjVVqbUpAq6TTXdH
0vXcLtcopruFy1qvwWSS3I+KYsM/b3v81+5AyaIhXLOs/CKABfSVJsGpOzEm8hDG5etkGOTf2Jqe
7Dd5d8aHZqNeJADryW0Z9ju1abPEN6XKpDLax8zNUnJKaa1fJnXfNcODozjbJgjjskCAY9CzgX6w
35SyLjf8uX7x+vHNSOBkg3CdR/Csa98uL4kbLm3HhQTSpmc0vqpzPt6vypKUABQXlxRUY7iMqzgX
FVtiYDQRP2OO24Hmxe6tCRAOwiQ7LfKJFAW72oJHeT0Bs+3MIOvkdeWttVuVTMNrXXAbs1QzMCd+
fu9KxtfpHRKbrdAcaQsleo47f6hfndhb/M2YglfS9OlxYimE9uCJaJR0bnBlehTtQMPvZVwtr6lK
zW/1ET8xi9MLvpRCQ48ys2USm6NEJgn0oaf+EFWYxC2JYxkfIGbaA7FtXCTLKmfmqeqs0LqezpsT
F9cxGfd6QYdoyDfthR1PaHg+PANi1TpCQ0V54KDUU7I0mCPD4axtBREZ9tv0lexHuAeS1otgIJ6S
bIHoH2itVG6IL5p1BWHIq/gXThR8KCi5sPQWyNVKUA2sYlKIO+8VyVc4558WYC0PDO+AsgVh18VD
ggZjI48G2OTqMUMdXcigKhyUbbzaDjEzzSedx8OhAtVLv0u/CypX9eCx1+ovrMqYvC0dtPbZow1e
9H+NmH/m4QuR+MxLTlNP405hwnzONCDV3Vg4TGBZPV0G828fbpt5bx3BZkY3wMZfwwwX30h1qtMu
lIfs6Z2qCn0XfjWHk5bl5YbKVFStkgUa70t5qw4TUc1KMtQ7N6/d53eQtbwOy+O3YVhRucIicViK
nrUn9nKdTw4Ng4ZMCbkBGQKgcRFChFTzCHc9J/ittWGL+zOerws9xt4my5ohTYzCGVeWm8/PLhbn
LWj/JKBLwAqj0MbBqmlCIwcQY5LPie3cmZq+e0IBzyto9lMu5GzJ/3pnpnLysp1tQH7t1rCKAoSh
DO6pSSJQv7fJDDF5u7WLIYZPxIAMMMuIkGCR1RkHXgK07O88Uawa3wH4P44TUwItkCmtqU+Us4Mk
Jj6TkMRhdf/Uecxk8xkOUzcB/VYGnih4dbaJ3za2NjPHl0FUMiDHUW25BbZtlwCQIJZLPa3aYPg8
5j52R05Fxf+uYY+3ZKuQuPPge4CNf5KgJdxVZRjBCmiVLaDRdvReb7Jc+50JYzjvTnhfR+PtuTMY
HyeWWTNtr31AYK+VLx1mpseuBvRJKMzbBIAJid2zhdNSbu1wPC1XZwYI8HWuRG8E7XXxW8Oif/8K
WQ6MfqT9ZDRKSEdVic2hU2tlOkRW01DPmA+R29NJendvE6+PyNo1b8GGJGLAEO0Ro0D7UgStHNNQ
ROoXhxLtmoozHie6v6PJdimsDMtoWcXNEL8bsdS90zAwXPM29zFRa+L8t+xievzuEaqd2xAZuYGG
MvssjJ+AvHZWviHm9YuyYp3aMSd42B8N2sGgiKpX4gPFTscf1mhqrQiqz7NGEp2LgPujJUJNaVMk
tlGjGP5z1dKjNhExqb+sEJcpnlJwBXUZ8vDgCjVOajmEKoqrC/In8ZaFwpJ9xAY2Ygl89unkmDo1
3e+WRVDvTLr/wqd0qKVLobZ28ksoHHUILFM7DYBJXAhFzgDW20TWvLiuIZvMeuwIDpCXpG9o7YIo
LsxZ1OgVH6JxSM5THTLPDs+UAicPnyes1QNdG9fYoItGqSj5ZAX2GVm1t8+dJzlQCpuQ6uIeVlDc
6ELQeM6Eqe1xOW1kBbF7m2gfzY3QWLO2QCk66mREWHXZQGxcPcyVCVzs9fwDhtYfR+fvTtgcrZ7i
IBXZyS5fmU1zjt0BX7KuvEO5u3gNUVIUcgb7OXDdmAW2sPRNAa8EvJMCeGZ/3qtOM8KpvBDE2p2C
Dz6s/Z4ZkcesCDMrCZM+s0YQ6+1CvuliiNIPwPeK984ObI+DyXwCvf/ZJVFPxIr514+6irZjwgDa
AnT52Nj5q5smNS0ssOfFgFbRLfaeFqAYzXAgydAoYLa0L3ykwSaX2+sOU6xxvF6aN0R3fgnHNwiX
yEV+A9ATxuisRtlI3/km+Ia7u1GWC4aqceG75P6fJVn8hqcehM0sNlaktoaNuJknh8SVx+iwBuHN
b+Y94ABMs7DYl2GOh5fc0Sds7vST6bjL8PpTc89Zfn+/oWd+Uy7k/OSGBuH5XF7SJv6xAOF5DVdF
WMDjgs9D4NYv427GtPZIxVckgpAAcWx0ImxR7nxSokYJFCY3/4kgbSGjXRlzjZzgeAfgoPPFswqm
AxDrVUL16KyorZvo7em2sZ2eG0nXYCOi1J/IGP+oO68dHGkCKNLQJBmVdYx/4kWmcm+7Hsv/ghXT
2b2kPeZoa5UWS/EjBHg+fI/bCoT7p/zWjwqSR/tGA0ZAet0fX8wRP7GiuHmq3hXgH3eD3XtTdzwG
Vpx5i2DEMlC19gwkECPFLvth+oiLYYDS2Jffa74UiIxkHDSk5gNGbXsswgbncyeP6zgRY6r1C6QX
W1cVRho01JHDM9xCmuZoQC+OqfWh6BrfWVq1iBnrFqOW9eJ+z4/CK1iId3qva0Zx4DlbDMD59Yd8
PvnU/wba944LAelG8Xp7943hWty7DkmkjSd66gnPB0Sv5r9/djk59ZmNUSIkq4tTO9o7pegIZQvQ
StPcNK3ySSJOb/DhrrJ3ub/HDMSOdZE3ifufQTQqa/iI5agjMi+xCRkckxLvSZ+Fkeo6LjucOy6d
DaFbm5DfzaoXqLZJpVowKjNMUZytFyUdBBTPiwP5kyt63zKmbvfs2Guod66iO/3YA2Zuj4gUsn1o
+Jdna4SbQhlUtVAyxawxOLlFph9PIBO2riSfPkQsOPaMIBd5yFn1oJXTel+5ZQQJJ1aifhF/13eL
XisebSYmF6ERQhho0EJolotYGH4kSKUOyINMjvak9uff8an5y5XQgBrf7Qf6waJER9EEkfjpO3Q9
C+XD6WAExjjayeOtD8NxS5p2mVyJDVsT987k3BeSzQg8WVjQ3XSI7jHUcka7F9U4lZ7dQdoJDqRt
J/eB8vHBqOvuM+cFviWsGcv5Y7bB5B7SGgg4oRixIfaAZpw19cD6q8Kvr5DG+Fu4nl9mXJeenxuz
Ugt2hIogYnyEtko9MAzDGSMfkyV8ZWld2VffYZx0F5h3/a9Xkwu+JkkKbmRpI1YVDII4Mz8OY3oM
Q5BjKiD4noxjr5rmBG+P4KCPem+XTfsd3aqzWG/Wgm3vBhiPFy0ggxdPsqIuNrtcJVCE3+hKGDBd
xYT9aDdZhxOIbPOTpzCkM9d//ccXnp0MAirw313ZGLSHnPRPOY30B9gAcbX9aCmzSuyaw65oyFPY
6Mk/7ABSrihs61x2IHtXpclJXHJc+05477OOw+kZNyZfBba8KdzbgdtMYUZicCBBdqjyLOEHEJ5P
ffvPa0CCk68s/3sdvsphg8/V5qLlwkIghVe13vT2Sb3WzdVUam2Rimx4Y8U+I1G1we2Utxh757AK
858nTENk7XXYtYGZ+xcaSsdYFvH+lHmYhDMePxNIbQv6ajbCoESChWRpOY+iWfgvsRoloeF4D+jP
s4Ip5XQUWo1Fn7Gq3tL43h8u9VOhZ2+a9StXcSVimVVjZ8lU4bJriO9Zy4trC3Q9WSN1FS9mrgQH
c1L8Tn5/svCJksswNFI1LdwtrqZKySMtNi0Km2VNysRDUi6R+6kxw/WOv8A4i2vKhlyYl932/b2K
G3sFV4ubKEz3zifISGZjGOJ5m2TqnzsHNigEeeUgrhy/3sU2UWWVTKE68UNwz4gSDm0Gz6JP8t9V
3COV+1HQV3Gt7outECVS52uRwnb/yrjPpntRy1s/QRP343oJ8pKu2TcQHxWiBu+fT426cESYVUqE
DYNHhSX/23B8xbrhTuCiUxRLKpm8ASi9+kdYAhJaaKPcqo7E6x1S8uwsWQmLq1OdA1BnuW/SU+HT
pgIBo587uZ/1EgonXZ2YOVBU/E05IthHkxULX5JT4C+I248UOg1V74/t7v833tE2M0ZoKAy2qL/K
h/16/5txQs8Bji6q1VhWRaKYyXcr2QFN8l7EPY3uiyaHi50OlJIa1gfPBXIR1UOkn5VEJ+huaM6+
ZqZevVrIjomg79Ib5SFeMPGKfJp0NNoK2v1rSJChf9kB3S3n/lPhL9GvIWhV3D5M7EHfifkpALp6
gMUee9aR+i1jncQ8nWTphOiIwuE9J3BPoHSCFZaMnm248o0+vTKaE4C3LITwVhWZYpBu/h79KCHx
wJS8kyK7XqKeAmhIsfJYI9fOV0UeIK4O/N4cswzUqUJZjW7SqVC2feT3rHWLB0dsW01z7knJJDDk
6izfGmVab/9K/3gDF7mcf1Dd+BSr1O0auTMgEKDgsCce7MSMECfFbMskaLkOV2+XZAhDhELnwU2B
07qkuJnA1B4/vWIABjpw05R9Y+k2fYOjZDVzouuBrzlkLYTRkP4+FUnyxQSDg1lg3UMTSoQMkLOh
jmjyd3JDNsM2W7eFsu/4BEuzo3PFduVrPbclXFWHppuEPomcabLddum9xdwWDNtFmWlHTaaC7hmM
J3SgbbL2APJeNJUGKnGtPlS6HQfp0AItzW8UScf0e+wKnqEyI31jSw4LYV+uOlHCILkoZ5KoDt6N
0jN2Mx0jwq29K41gNW1y50isrU+P7k8yrl5udjgPvLLmsW463CuPSd4Lsy4RUCTyeVU+Q9lRbyE/
Ebcww9Rc/s8rSu68jFG+eotn+fYG6cKZj3sjhgyc4G8ArPRTenfSGHMIY6hCF6yHvHDpWGebjb0a
99FRNVIDEueZY9C58tLXpuAEGuW9MSOHGNSYm8Z6OUZ99IxpADtK7cuD2qSX2ChOgw3s4vZtmhKI
vOdZZqpQ2kA6/kviOdXFebimshzxIfEs6Tg2Mwhd62hZUP0goXI90v6D1heFbxLvUw8awaGQfiKy
rWPtnuBH3TEXN7aKmE9P1fm9pVgmF7w1kB/Aeyw4asuHGkm4yANnQtV62riPZGbcVEGgqOe+JYuM
07blwzFbY0vMXmrBbI5vIuiSTQnx1wsNb0ME+vHG/H3mm+aqVdRIptnWBaW2dsmZtNh6+k2zidIP
MWU3s969EUGC/+4GZgWQ2z7MZAX+OnsrCVlgAHS1B5xodpLsEUG01thRZOTg4hDTiAmoVDWIJveP
9LpOKqW9sWJJLNN1Hz9q7Nyn51Jm09T9EHNGmgkgeR3fZKtrudUgKY1zimyI25uZMSuuQKXfHNRK
gwbYKMZoKCLP/gol30c57fQPSXCZWNXyGlvfIIRcNI+fow/68wOasJSCkN5WWMKfXNnPPGU6zDvr
5nmU1pKMtxlc+HQ1j0VrfwH7fUERF2dePl0AzWVojbXQBkogi9rOFdu4xMB50OAUIQYg50ZgOTQG
hZbiD9lpLQohl9VcPGXSw6rThb+DtkeaYvzypKdzX4++fF+x/vWQnVQJHtkmRBYmhc21sOMqU6z9
utnIiSIYLUGjIwn+i0iFBKL17r9wlRYTorFvGH18y8ZXU0rDgnBKFizecVmGFBnBYh+8pmanCr3x
e5LD2oieameKogbrmJymkLrYSdyvfO8f860bdTk9UYNYtt8LaM6c33/snzgezWZebaMawysOrnqS
O4HXU7Sb/i30tyOldxt08xM67m3MHyJW0G6TZU1HmpVIm3dM5C1Hukn/T+hvaSwhYNSjo5BIGX7R
vl8kaHNN9wEXH5dvgnCwqx6mlom6qn7x4tzmsAYj9ijw8Cq7vqW3eHgXmXE7UxmoJuY59lfVbvTT
PlvT3gDXXxJA9sWg5b4MrEUWh0/+SVXYt8OLejS0cpR6fcKyuelhc6+ptYJDl++/bI24lGDsuT2p
mbxfOOsZ++rBxIlF5SA6iMWy8XYayQf5EQLCM5fTz9mSKioNeJRCbBHMnxs3XQG0mWDFa/Iub+Bt
0OqXpmXq5aRowsxr4Sq6Q1sj9WvQMrf+cC5qtHbMp89qsSyx5VL/bYiliWZb3Ocid5hVazFneMeY
TJUV9NRvRGDaqxmI5Dwlb3mk6mK4pvvbyAQu7p6hSNIrEIxKmxKwU01zUhrnQVuj3TfpfK42rVyL
B1ElDiNLUlBxBxS+hYubFdxr6Ui91X82BccdZEyD/giX+y/lKZCmUW5VtbRXnCw6R3cT1HDroSO7
qaGOof/7UAEdydb0cTJeqVcux+rnzOONuoCofVETMRjp+d4bKHrN2M8e+Z66gQUkFGHZX2+QOXra
J/ZHhlqTuXiL/fbubP9PO4JH4tz+YmvoZbflJr+JO4DjL5ysBKvkzcn/+1JD3zhO7XG2KUea93qj
DmzHpVm9+hmC4RFlWqAhzHfdvjiSaYoTmW2Qul89cNwx2iJx4C4wqabmG+smRstwVqF5vbt6cxSG
yhVGXZXdd24gz33lthQAO94Ey4wM6wNUi1SQdUuJARBTJRQ3W+LgLfbiGr+03Z88z8MRsQMB8AIx
//0+p+h4HgEQD+ftVqCiCjPvCBAdvJQShsN2pYyI9rpJ7hJLQ67jFFtHeL8trgxnlHN/1jdEJDCY
ov95MxuACaYF7jIuaqxiJHi7WJ1njLtwXeB7O+KBuzEHNVo8qNAD0LKRDq75F62t8bHQjxDpMC5T
oz0ZONdod68lCpJtU7aPLwfrNvGOFxZquyN1dm/Pvh4ueFsfopBkHFO+3kMBLI5UlC3lw3sUxsoE
AE7A4V5g2Q3vdJVCNrVlF96tPCCH+S0t4JrlWyZbLEJqbmG14af2rnQ3kugop3aReNaaFgWs1GQu
NqHw03kXdmqGIoda1mOQDvI/E8ZIwmH2aM3RuwQ7Gz4LyCZdOBOKw1O+8Mvqoq7jvpDUk8Ba4DtN
kBlXaI4ws717prxJ+Qdxe5yU3ixY5s6fCrmBaifEK+1MZJKAf+L5lxMcSmwTHCnLzU4lpVota7T+
q6A0d3bFOzfXSxT0hs93Eab9sl0enJo0/v3Rp7jHcxeW9VuFd1cjn2zthZM3QFMqiFHoI7HKbJ4s
5P/lWZ0XBYUNkwqjf0qp0B/TpSLNTsluh/OtI0VVKhsJX1nOXyQJNNS2zhFRoCjV0iR2ZFmvzHNW
LbisEqb22cK2FdULomgXCGLNqjyFWieL8+nbNtZ+gri7J307NxjxTJyimltdhvtNg21bv02uoaE4
vd5vqKvRreFHSU2yNKFdTLB88KesRPfdNxbkP98d4yp+UsuCmb2BU5gj/ZTgeZp1IahbS+A4QXNG
5pbe5mTx5D7h2lkxAFMMEhkb5BpZTFn8VX8g80289hp/MonXDoLaNcKUOmkIANNgsOxegY54QZMO
LsZ2OUchKVpnm2kvDyt0PTESkNDCRLKOdHSoIXj7NkZ4jeCJjhdpQFbFx0+xkVNVZZ+8PPTrNrMY
Ans8YhlQLDSOkRpySeuGw4HxtyJmA+3CsMtIh/5pPUZg59xfrKDd4GPp2/eWS+Yaz9MhY7pcxvyp
/QWTKUbhmSXyZEIDL6wD1O24HDT+lXfQUsCjY82Grvz1T2VnC2U6OfTZblCMOxgO9tCb/eWT33Gt
z/IJllIvKXxqnI79wN5cgH1fLOr4hUDVAfByXS4qzPNDOpp7O/d6dKWhE6fkhyCcf81ZTx8MvAvq
XYJfZapnYrWdpO20tlqTkowmovQqm1f7DwC6DGCFRMF9ZgfO//mCZsZGRJo/8eYgjAXhUqSMR+Ql
x/or1Wy4QyfN7IfjxnBJToptqs9xjcXKllzh2PpdvEU7pRS+ksWdHFIiCBCaqX5xo4VNgq4Yx9IB
cmX1D9FUbA4KlAP1iItnAiMGNpdTaaHXFH+Wyh3c2KGqOHoU3x/JJwHur1owvPae5CtL7Tw2dy0i
fVdO1Molw7UCfL6k+hoavP32NfAsvTDwnOYNQMAKHX606uLA07vK+2nWxBzfeuKzikPOb+tt/9nf
kDRxEU8f8cf658Xq2JZGfGjXBYPHERQnmIeVyTBGa0ZCc5vw3G2okqaqiI2Gu3dHquywS5UL60Lv
E2YaHhyN+cJL2CFKCwPq+KqzgRa9qZauq5N8YprOh7zdE2Nw/b+89mRpHAWACVoPRJDJ/8UGUke4
yziTyw+cFP/+U5RiT8b35REBqfMtsFVcUnhassNby9F72yYfZKSFEKHikGMCSbmxcciQNNAMpdux
QRTKVuuPEDEvjE35mZXHI7oQSUXFhIz3QFenBuVsu5E/KK+eAzJEphfyt3yR2Og4WOkMpSsCFYip
h2SETnfSXJ2Gjn1RKWbyIEsBjsh3gMDmNPxv+TZLEXiaw0v0YUlm92eWaNFG8akxA+KKq4FSv4Kr
dRfwxASevwXCZqx4FLmk5/ylInLMbWV2xnjHfPu8EDthbMsEisnZM1X0BjeYIkB3NaLpU9039+22
z18OszJ/GC1g/Fi94RRuJWwGghM0wAkfzatRF7+cBuHBQbDiRhLygWsLX9jn4r8MMZAYEunvTOaX
8tWQ7BUb78szIpCBheWBpqVkmkurroR0X8GG0mfc8BOzYlmEw02AaAtYOVfAVEsRw37UBCK+KN2P
JJ1NvjbPE8JTjV3vFJPHWkrUKu5n9f6JnTOtOWjSI61ZMLewmVWtxYqK8tdOGK89RkeHj0kSQdc3
SoMn71SvNmXqqycAs7mEvXzZfQaoU3NqbRyo/KTMlc19cOcz+XZ1tCBRCNkO7tIRw+7Q3YaTuun1
yqoPfJyffwc/ppqxKRQYnRuCrv/6Dy7lPU4nED0Hutnicm+bcbIyLwzQNG/qZiMzU8jjtcuG8t02
elqe6ET16BTx6UzWiBYNYn9LGhzyquECQ2Vpnfze/oMEepD0qGwFXv5hQfrjMFGhShSHAcEVyuvS
gbQmksIG9yBPzrS2K4foT6ueWBWbel9VLBurZY09HhTKVt+1eVRL6hX4KCiz7BPPX1xnncNCbMGh
rudOu563cJulE8qWfI67CPj/vZrOoS83W8/Ttw0omhe2mlBNjopqDt/qxboBQSfmMLEHu3xbTHdp
koIHqqtGAKQNwG2HdhaI/HmNx2PRMuTkBe77HQkMy+i0rGjmfntV/U0PTLcGfMsj3qlELpO6VOiu
5P+kOTRVPzVh+qoO+UsiU98gVAvnrDibD1Y1XoktiV+8GdkgRmFumckt1ym4FAmlwf64TmD/0Zyx
qwGogTwne+Z//8ZYM8BFHqT1u2ucuaedB6DFj5SbTpyGPwg9SgnTDQqey6t5oUZYAr93I4YecmHp
bt80XzCZHcNTS+estqbW3otof5ICskLEdrk5R/eZXjApCwxJKHTICMKgvU61m77IEofnEdz9ulUY
RHrdwv6F8F3z/tni9OIfPIyL8lsfJJtGgGmtVszACVOm1lPif68oD82sD8yjB7Rkf4xlXyxTOEiH
bhmQuuWWidsvikovacCAImpaoyxWYx9S2in0Zkbkv6qr6jn6TrI/gPN1dJLh2cZIhXIYaY+qAISz
zSpQAFu+Q0TUOf8K5Wls2udNoMnwYXJA+ElCNWutWlnr2tpArgOGAgz7Td95I3Y5vG3EiefBqk9S
DPZWY4UC7Ryh0i42DoXCXyIAiurk0A1okzV3F+TINghMtQSYE43o9B0GbhSJxNK1Sf67ZEh3opTk
Twymn+GzU3Hu65LiQkJUzWVszedp1SPQXWZgVBkkxNOr59eSDpGhHiIszNzF6tyHtg0U8nU/t04L
1sXuLa3F7pKLUHxheMnO9nxJ1n8AUBMe9kQi6pcC2mZoYxMSsFYxnETmHbR070t2hUdLZyGYik6q
Sbd7/zxBMvqCmLv3CwsFRxG8kBf8ytsXsinSG1Sj+o78jtW/QQZLp1c4w4rO2KR6Zck7ao/47bRp
hxBGIE116Q+rTDzzQ1sun8MvoCdGM3sCyQuyDHYbQ1BM9H2cv4PjeNLfYgp8FA19zZPQ3ByCGWUe
oCBsA0YX1q2OdFzjfJu5CUdVPXGCbJ3Sb5qF2z94v8OoXoRgB1N+q30vGPPZ70X9MLGo81dXXqUO
RPTKEOHkBrNmbDleBjBthZ9qRJEtq1J27vSEC6UNZ6DshH0Mi/xj7KqpQl4bePPFvVbXiFixi+EJ
KhxDTLVhAYWuJVgLrwh8g2SY0CV4zUef/oV8NX0GujE5PZ/lNHbfqLDlZ41u7asDfcS68fDUWq/5
B7AguzAq2ZuJPFVOxv9CsX33Rc0TbAullHdb/hPkYnxVacxzIOqb9F9IimrY/Jdsa/5xJHel3NhO
XhRQzJDGQlD5gWEXlj4cn0yIKxKzv+W801lIXcQm+cdRvOvnX8aMPghLLmhbDoa0uOi7BH7OF2xZ
7KnmbOrbQNrt3Q+ix5WqESNX3zeBKuC6AaifPST20itA8aPSp/XhvKRVpe5as7/JUTJVwtmlW+Vr
xXZYDr/LZ9QMmz936iEb1MSa7bpTzl6RoVMCEQF8W2MkA0HUy+aVxMsW7BW9kA8KDWObaNO09svy
7tGOT83T00KiVgLK5kUlMmfe1iz8GEZ43ul9RD4aN9C016j1OF4GHccNCEygUrCXwOAA+d0GD/Iw
xLukYlmL+rZrx+KsoHErLjdDDoKgwUIOVM1y1VVhqJ1NqCgraDiXOp/x8v2Ui/JEdf1SVu+b12t5
LF7rjSC7ftbp+cv43iWZA+6Hl7ykv2RcMmh09IX9SCk1Q2eWeFF9SIxXynSLjXcJRJm3EOSH1j5P
/ajGfsyYvKBXpODMJXFQFRdqgEvChLzFj5qKzjNs8R4JhtSJmmFlQ7LD/wEwdiEnSl36JlRgGAN7
xVg7K5GzzVsWEF5W0B6Bqdffag0AyfLdCRT3wN5kERBDFjIelXpXWc3+46l+2Q5jupy0dIw/jF0M
o6iRbCAkIJ1xv+lJaHJF9gp/lR/Nq20SEIGCyRIPDGenmCW11I9PlyOeH1TLlhdh58n0Ww1OQFp2
1gIQT1YVFaNEZfCuZATlxV7aqq+3omAYufUkqenu9icRj6eKZu7hCj4Zt+9oJ3Zh3jp/pMziCEJO
NByezpvMiH726UooZKDnalpMJBdVNFjYFolaEx+Ya7NRgoNEiKbzdPh0gxE+i630b8uA+CBf/+2i
tF99XHgD9l8V1KiNmd9nH8bJKUkiUFOF2DGjTICiLCtXRnLOPLE06ujb9/dQE45R6vNtVQw8N9Sm
i+mVj+oTrx+lqFX17PNzEtliSWY647Bd7xl3CXkuNRJ3Cx54N7XpV+SE89ioIZQE1VKFnLksD4xn
jl9jyVkfJy3kXUtNqRtnedyVjAXlIaPwOs02ui27+33nOnVWMnkxUWblGT0VgFDBjVYZ3Y6N3+FT
zvjKvIguSFiNDMDkW86ylv5CSiJsjaEfdCcJOqMtTl3bEv6kqbkQhoa751+NbMi2QBlPf6Nzc+cN
8thRxZqrdd9Q36+lFMEhhZ/OtL2CaaI0DALs8O25wgUPj3XTP3k4JTdBPtB8DQtJ/GxVIwFMNnTo
yrYvgoBcT2ESHAICc7q5JowIjSDxj9TCvglPkQDM/+9tVBPVywF/rICDfiI2pKGGhPblNUVGXO3B
VnmIR69BfSaUnMSRgEYGfEGFkIg9vor2FcnS7L1WXWHpPeyA15LCGTFm3O6lKb8VQPHw48xM79s2
wXLjuGeZs1wrDmiFqybPFrDMEQXSM85KisiqIrjqN5TM43hr6QRxdbzSPFqb3e8bWpJbcXpv7WiG
ZfOUyjt0ws2LR6SnEoan71FoPqFn48dkGakM1gpGNrkCJOYS8nagq28A9L8fO+0vnYWgL8IkunXn
cpq2RluZKjNc3ccentuGHupgq+hXhDtpbOl0Vpn8BzAQbUKgC/HJylW45Yvuw5sag0hfJlHPfxjc
IZqRYdfr8+8CuhMwgKhmuaYx0z4mjOwEUHH0ZqR6tJljT5lw3By8V4EWC4LTU2v04voaXaItHOVG
3jTlehP3m97cokBrkWHAXum2vxGbZLSITMQ2I1VzMBeStnsO1J1XpNaP+zqgIEbHd/IfM4WEHjLU
isRH5uGk6pOPdNtkW63ML6jDORMjC2ao3iav6Fpqio0WfqJKxrwQFNp1U0sX9m6+z1Cc75P2hk1e
5WFsOqSaJci+IZ0BctKoXDiVd8pfqipgdbfZjea2erUFxG4wpyCBGOwt+IXoFnGrPLGfTjYRA6z8
f8fWNsGhvDu7iE3DzmetnwoT0HrWINRbZVoHyNcTjdu6Q/w8MGxYGihu+nkXoUa3gFEwLmqBDeuE
+NnoH4uaDT+9A4XCXAcOjPzjpUqU8c9uzquPo3X7u5w/yJuZ+H/CfMu9Ba96CSAbbtQm23qDZXzr
dGg09IvxvBZ+JkCLZRzqxIQsxyVJEMMYkayFAVuQeSoa+4876UmwwuSA2W9t4mW381kjqSNOdQCW
uFjOmFFYdkq8QHb/1F1vmar5mrlVW4t694BG4gX5oLLdhzdIcHyBb+aW7WtGPYt0Y4gg2MRYycM8
tAOslC3Fuw22Fvid3MqHRbB1puoG8eqfsnFhpDBiLeYvXpoF+rIS0rxb6vA7U/kjWCKm5MtpN2no
R+wUJgS+cvMjcD2oS2ybe4JL6M+GCtyXLrw3kfchIBmuj/FHxYbzz9Sj40oofZFylvvK+WB24fv6
xOUhuCQMk6KM1VyVg0P+eCvs0HhJ2kkWAhH5C4/BRM54tJrNVY2vWhZ/v6HYgw4wUc6i80utfz1T
NY8iION6DLHxADY2FjaGeD6Al6cVcUbEUpMEezajxG2GXEPkyzzRhrbmpbmUIWISHoDPtBA1rVpe
n0XcU3umcrDyFKwtLowOHgRQ7TDXrX9qbLpo/KihOqEFGgMFtwblhTfBXdoxLOR1iamHWYrczAlu
f7NsaJDgBQvPoj5N89GOuNmFBEnEpy3E+quR6A0YbpDt0lW97l0GtJ24pJ5LQjQaA3hyIiror8xy
3OW0lIvSL+xvuzL75uQPgiNj3RGfuaB4AQjqu0rfGEZ/XDoLyoi8Lq8lY3dYlC7iiXoFEBkEJ8O5
nXpGXnwKioE3ApCUjg8Lam40gZUreyGVfdI7gN4/Pk6hCKvmeQ02rJB/sggvIGCRppM8dsReNJcd
8PZ0H5TxwTRIyPdAn+X0eeEXoAgdIEB3kSn0veh+Z0u1Elxg8fwmeZvSBCKppgrLKGyULeQ75v7L
QeqTdI0LJif7hkJHaZVLuG0MWrQvQ+A5dEr524u9sAudtuUMWlGCdMJmfR2sNx7Tz/YoeujFIwU6
oPpsrEGgXiQbvX0Y1DfJ3u+kknrAY+e95KBuA28WJattzZbNoyRK+EDvx4OGiomqcB4SQF+INVAI
ufnXyPlbrmb04yFtwNLmj49nQ7dL6yIkfWVHB5uACXywrzK158fQ7nfIhmANd59iH0wEwHZBSse8
xO0Zj6bxMYJm+rYXIcazCjrgk/qTvhuWkMddw7sCewgMCFT1o8HhftdzguQZcZB9/TRf/kv6z6Ue
c7EZ2z0EAvd5le2ZoeshUN+LvB6BHm0W52K0l93rAdFlGICMJIBQvHlOT3/l/ju/kZz46xmYJQAw
hHJ5zEiT8TOGXE5mu3VOjv3fNaIb7bXLqS6+01BdeZqm3bqXAnzsy+rEZvzI9uukgalexowN5CYL
QWM4JwcOP4fsRwJxVu0ZjeDxvBIiOjFxL7OA/i6EiBK45aY4ucZqnpcgCLy9BG6oMHd82OWEYrLo
xejAf0QKu1cU4UsbNQX50GoeCwDx396eSH/HaLxhvnEMNysRAQvbe5tvMzqxexI7Exr7vVKFaBdj
K4dUJgVexFPQbRiohD0qDKUgIKI+xF0jxeW6kWxRddCac9ybXKyoN06P2l29vG6UjqexD8JS3hX/
H1fLAUn+PRlQs3+TKn4+pk7DU8MKYcCz0BcGw63L2FJ8ssvASyFT+oeLL5D/HCTXo+SG6XDxtSkE
G+vk+Kpyc5Z8MYIFkazieSCVTIXLDhU0MI3CUkq8SaDICsy148WTkxqCF2+ywRHsrxKNTjORPAFv
PAGgYcDElX3scuoBOKnt0Fe6k8Y0YrTOI01HqumSSeWvR5jniyD6EANeCF3iKh91AZxT4kYxolmy
mOsYqfKdAffxoSBI0LWEq7aEC8uP8v7GJp+grgFp9BztG3WAVTQLZJt4/GHErHb8qEfYlwwwqYxG
z/Tub7PS64zSSmaOHQ3N7BSM3zgCnHu5FzUcOL6h5muaU4ZCaREaIdAJ2gK0wEGPAGpeshVnO3YT
pS0gcpnP6fQf0/0LaV91L6ld0nGPwzn6XKpgs7cYIe6FTdMStOASpmFOQ5PHYMmYekYfrdwl0QAh
j5N2Afh1vnclgnSMb7WKnYUvPEWARFlG3BjimAou7ao94ZH4Dor1hvUQ1HdPVft5EpjoBfooTWSK
blT5QBq9VyHvjEw3OnKNvY/YxFfP04sFzD/ha8EPDvjO4c7HZU64v23YM3UcPWnsLlEazdj3UduX
hz089qvcHSLeQUmlyQNdf7sxBgfMaZFWS5QCFi9xHhodjhjIHygv0n2xgLoFnJf4/o4OHxaGR73a
phIoQfJjNW4OFBuwyvlkxugd2LkWPiaTngCEj5QDHryxVY/jHh/dvlOFNrchabz8zqQr1G+UXgC8
08kWgloazd/O8QQFSIS/iJ5JHA77TYBFr7jkyHh5dKXsXAnnb69uzn7BUvk67OiRSYEfJLAQbNZu
OhQNSPD3YtMKNCzqgF/Hiwfsu7Iv6uAQzR2Sn7p6VmC8/DzBNn3Ym/D3nPhZX0Ce4DJgwRrUBrQs
1a9ZiXF39I8W3YKeylQOvm5KqqBCVOLibd0wF4V7IbAC9OJsXAmOhJ5Eu7aGcnBu75XUpyH7Vqf5
pAI5yojeyHYInLI0/0ENbgap40udQUc015MGTYZrDFAV/jPeAE6GhwlwFHkIFKzhj/0DydnaIe6X
3o4R5RColVEVBHo9VDpuIYCEwK5x+QJlM1w2yOEmWu4Nc+2vM1BkNh2MCkLUn0JuQi9k3kIbvXLR
MHRZ96S57DJIU6sxM5tsEgo9jxJQU8P4N1heW1DDJdrVDZdL+pX5/p8eRzj9b5NwsbUDNtqDcXYr
qslRO71Mr/Bnnc6NEM3ukUxgz/57TVJIYukpZTGU+lDdn5GU8394CxOG6uNqpeJITJOHBZfdbhVs
mVAxHB95rOBIwAt6LsvO8awSfAvgRSLvXzS1Mc5Ohr16QbIH216w1UOkJ8p7yJEgaWepKU2ZILLg
R8dipEV6qlcsrXO7qJQRU5nhvvqKyuVFV1ufCKTEScxglZC9pjggQfEsgZZLDe6JjVzThb83SFpJ
KJVlXz11GAWJZbLscpHmq+1d+z7K8PeGK0qpqsxqAjgAvZene+j75IZwN08eGv65FNroASW/IHNC
hzEgbtfDwgmmLvwB6OfAEW3+3x5JoIS1FiNg1xoZsPzbfFsQMPFFWF/fbYF5dVGTg+HCuyU3m2/a
xkyfohYsGsHaDv+M46poyQkGBZNU6zmGeIgXAc21RRNeRhwiKayBEzYMn917LkzFTF7UxmuZeh4S
zmQoIi5Kkws4HLjXLydSO6mDHJR591lo46cukeQCAntK2O67snHrfzHMHACsD4edI35ZQFDqSGOq
kjocr8+IdpVcYRAd2eDmJ6mCD20vXjEGH7fIEo3/W9cd9LrMHAY+mhY9Tn1bF54LrxiZOTwWSGT4
onwY8ee0D1blaaAX7JCiDz1G977gwMR3saGxTkGCO923k5yMTytdVlCBkhrawplmMCMaAeso6+wl
b0voH/zPxlkY40sPpwpYJEadjoFV3prQYxHmnYjULyI9wd1SS9mDzFWrUn6gqL8kg1+0nNETHoM3
qpDRJ0CasVegCPw2tEVN52AP1WG/uL2Ralezh+XuUV0XvPMc8ed3fkK3FoHuKRU1TyyqnCNf2jnl
h4HuDSnafjC9sSEhi7h9++ZE/CU00HpzryXFb2LcxP4A9jDbLzSnzOKD7E2BICfBrIOdlBNpj23L
O4cdDmn7VITsFc4jLjuFIFmu4qKN1Bq/dOEx469qe7BciiPoGxfHh71oLA8PH9o8z/Mg+PYgTgeX
kwSjQrzo0KuM5VleqWjE2T1nqL4/SYQx+k9whWo6ExlDUpIGzvtQ3BKHOMLCqb73Dxi9dzrA8ZSl
8ssjwIzQXlWZ9oHESS0qmFZcc2rKjxkZh8E5xcRk8MqN22bs3T6BWibfwKERXLH+BFnwdSvK/Ek+
eRBSNwJUACLmMAL1EFNhCmmFMjS9bVBnZoa3/lU8Y0z8M8MfMB6Mmop2CywO9XNm7yAC/iu4c4bL
a8UkpErhRaWfK45MQ8mJMvI3e3VzfsWC+jXqJ9BJNsDL8+OKuLQCU2pa32sokuUmM1CgqiNL97vZ
OZPazON4Q2igZrELhagkbzalaKu2ZzkaKw07JcVbUfExYRYqqXganp2V5z9BcBMV2gYk9Yx7DLOm
RwmL01yD4AJrzebQiIMKKQLsOZ/wWwzMX7U+NkBD4DypzsyTUltTNfTjNRiksFg5gCNb2RaISPqF
hpUthr7CZ8EzCFRfxTQTJXfjITbYkEub3xy/ZfnlV2K1aJ98uiT+8/w6E7Y2hbRDyjBeNvRmZlHe
iIrXMJBr+GBrfoJZ0AXc9noMerNW9BEKNEDacYcC7utkhn+Rcb2SxqwixojDElubESXFD49t1tuB
4aSMoK10i+RtZHsxPMnMA1JFzZh+TGynixmTCJLZaz8O9XnUeCWswPusJDK5usVuKhvsekbI/j4W
gQX1HfuMkn8UnEB5Cr/OGPz4VVF+4C/HEeY5wiZVWpXK8DaCL6V5Ix1m9uLtvJTmqIUBsGleDXXB
VkSKVXVzGOQ84FUsBg9uyLNRRJYJTDw+dB3V59lI89wOJ7I47h1pib0qvRyaH28WVIFn0U0JhKPS
/7TJyQ2MFe/q0L1B62kYVJ4Wh2Oj/2X/YNWXxoahrCgenl/ZmuAMJKPU2Qq1C7eSQJXILL1WsX8R
neLySEy+myk5Pb/Ht4MIOIK2nPPZFxhiLmhC2dvlJSRAI61YROJU1zL3uSdGuy/lW3aO5PgLcvH7
x9sZZXz7LC33UWlk8DAEyZhuERDbysjc+dugmh18cHXD/DMdclMqtfYPbcTGwz1WlyZrJkq+3xTi
26mdMFhWfHDqlnm/tJQJtVrFMo7kiLHQLwtzgf6hMfKs0kaefYfSjlG9ntDnnFR/Gy3lKcnEhzX2
1T7NmGS75+7SgxCKziVS6ezhTJNwd3LjFK84Bw60FFUCLC9ylO56A40mCmbeYWVhpE1m8Ue1PDRD
mwR85YQsSqw6Lu4XDxWM1n97t6EufeyLtcjmVfzkHH3Hyiyvz+V6G/AMROzwrqsF7AaQhSQLBBvV
eVF//KzumMTimTj66C8jnQ/efjiIReD6cp4ZEFHdxi1oZjlZDES3DNfQXpj3UcqNraHoYESqLX+m
yzLQ6k343ZUHXs3MinIT4coNUw/FloP6VB+8E3pj5tEnHzitZVpo7B+I0B5LVIx/hBg4fuZSpR/v
NXpqu9pRaiAFop4UGDX27fqDqSIK/7Bw0+8E72dYrEgeyn0G2gaMMOh4RAZRrkJYFVeyYViv8FRE
JSkrn1bu5lRcCdMlJapociSdX0hC9tP9LkwQTom5r95SeLaN9u0rlsLZgd+HaQei4o/7kzsPpmXF
2H4zL7oJRg2N9i26XgpFf2ErXIRsq2vx3hP9fz+Q9r11lVFJORczejTVVXKucuUienFTnnMJiMfI
AXqZmsL437qg5Q7VihMtuWbbamTNuGWAhxdG+nsEzjzCJ+XlL22Hz2P2S0yBn9AOpEce3yEETiK3
1b6soJKxabXCRpBsEs0kOYV7qmNKB65VmTQtVoH07w3rXMtUnzLAdYVq3W7Mj6CH2CM2WU4TI5fc
oQtB9A+EGsMeNEU6K9afwlS3SfRQVbyx3dn+KVunj6jclRO7Iwy18lbHU7Vk1omYMtMljjMR1W4j
eoRY0mfnIGaP+/4eE//c08fjQrS5EQKHF36ux25v2yNYEyH89PVH6wgQv0Ho+SoaUtmPMsa08c7i
F+obz4ahoYxRTqxVjUvuMSCsGQhaD7phNF/mke7S9SfxqmfeyjEzuVOZVSluT+kn/q1zcuRGuTqF
t2qfIxe4BJI4imIHGBWl8CNfdPXyyJSXdwsaPJIMgpz90JuSfC4b4Z/dr89WYxdUevDlIASiG5Hj
FNac+rk5R3i/WrtAL8onPnx/5wO0qKaP5gAzGjE8dHOfbbY9nG28A25QAiGcXh9A+Ps++gYVMynd
FTg0zCTHuWV7cP9uRxjUnMKQCRsPWB4TKw7Iet7x4soLTcDIOOk7WNuBYTVOnbnSbHnCsRZRE36u
4R+tOu4vubNVw18+i1TLqoTXLMpOd78iS1dAh+PP1gHw6vHJEcToOb+Rj55wrewZ0yu9Sd1ILiOg
ICYCNyIhh4XLmF92NnZa8JCe1VwEwwS9Z6nq7Nd53ExybZlCJNMZX43kvz9p616n6onYcP3HDd2C
Alb14Xfgdxqprbr/gaj36Lm/CX5cXoSl9m6KnNK9GxBksLhZuQ5MBs6wqDg1Y11pQjsT4ckmFcV1
Q5sE03nQ8nS6h7/PpJUaxHc/b2tr732xnFXVTKc9bisH8rWz0wX0sXOxVpYkNwuH0R83s6AZ7ZQ1
eioUgT1W3ONbPtpSUrGE45NUq6E4M97kP/SRoPP2GFd7kqDO4y0ZIDq2/RRqNUeXHW4GYADm3zmu
imcXemk8dj9L5Lf5Cf5uAKllNov9g3wFbox3RMsjzDvy4fQPxPlHev34b7BxNL4dFxRDDPxcUP3n
K7IGgkg6Vmt92FrOypdZj2GZZ/UJN0szSeWF5Cn1O6OsNxtt6dSiH0N4VdgS+Qv69P8FroAkmBJi
WdFNp+XyAPewldESYkVPZxyPhBE1frG5Ff7Rze95aVrX1WGAUq9aef6X7QG8BKmw54iZwOWInV42
xEFYD/jL391uQF6xBdWjopYf89iKgTCbuvr/E/m5tjY3/2LwzaicmQ+c6fdgYv/M3lZND880T9kw
y+ni6F/SDesY0DdKuPrr5mvOh2pFYaMqWBq292vqTMxtbju+xTw26z5Sd6ELPINhdzjkoj129O+R
NZQs0W44lt726OlJGFRZL5DMRDIcsFhCge0mLNegBhLW+9sYhZza3qYq1WI2GisInJih36QNkWgm
1i9su/Gx65DBnehKvVPXSpCVSdoxrItmmXmDuD/DJN00ZABDcXxmO0FnqXhatupPl/92+jmWwFGb
ofMvA0zxxvWz+A74DWst+o3M8cbDlIRxnNqfUJOWbndtbiXDzGbwaxRhpodWH0y4ih1M+taGu3kJ
xxkx11W5lG+wVuqqpcpUc+C+rekaJORkXCLke7+O4RLmyiIw8dSC1UDRAarjyraVbPhWOBLn2Z0U
AViyLxUOV7mHGtIMSln6qxf7Y7OfkHMEzjJni0KuSRO6dFkBwyrzk4HTAPK5fASQdxAe0dtsFtqT
6GvXc6xEiNoUGW8SvYmDff72tKnNaSSr0643QP7idg0LjDsrYYhw7uqJFSb4Qq5KnedBN8G7GoXH
q9fD9/zpjJeqfVc1r6P38xd1oBv4tTmTyD4XDmpm/e12KoGcYYlUlIjlKAaaYAJWLdeXY32AGCHv
cQqXrf1fFDnx8pLJgPvWw62D7ku40YWIP0I5m2GOixYYvllYNdF4zmKkv23JYi7dWLTxOD7fpPqU
OtCXFBi8nRs27vT9ZjlitD3vJy2Zl16DZETBkcgecHop0qk9ZRHhV4ob+nyWtTC2rjGOTPRICve6
NOSvvsJH1tb50gnA5iot5ISycch62ILsc+qriSuzEKhNqgdxSJ3Z2iOOGW7o9Lxm0u/fOV0zR2mz
KkChSXQl8vPWjhnk1epvRKLucOFv6vQV+lpgDkhhB/27AjnC8M6eXBlv5OPqOafEKYCGH4abYLA6
zmaCRcOgN3HezT73/5ND+UqFBua+3gFbJl5P0VHk+8tjfWiA6gV29RcBMNNNJ4ENP8uaAzCJ7jVk
qF48QdAEyUySvNnM1soJUk+QiD/c60LWUkM7i41mNiXWR9bl8B/8PsY+bRnt/viOAzOWaFnn/YfD
N4NdUCV+DN2uZeAZvqv9VCXdV7jY65a1SLlIuV6k+YvzKG9vFRJ82jf2pwbSiJUPDa3TqbgRh0ph
x1BtZ3E7v9YsYm9Qxo4XPsluYlygJtxgpAgblIImmP5q+mTTv0vKHxiAqrA0IILdPHUpfYrAKw5f
gvX9oeEOrhZ5fbBWotFpkuGeWxpm5tA/gmgNiDElUZHAuwG4UBWzXh232k9kG1lCorscrx5O3ZDM
ZQ2xAIkiBifBRjNok4LepAZe9A69EziT4rN8f9HyoWabrfsdRmkIo501yZkA79Ls5OsfxTYmRswl
K+pOQkt9wl95LWJCf09qNAtreIBiuPmdRp4tYkgKE5l38Qo/Sxvl6BHg2Hr072Ol+i5fsFMWXXUk
bXjOrCnEdf3HuMQSR5lDKSS5lXMEgSb8T2jJq5VShUvW1akJfhfZaj8mUq6aaQs5DFLmqXw59tYY
qjXM7mlmxdk1zRp042NZ0aBxJXlsSdm3B32Ag1DcJpbtht41FZKvhHDTREmAWvLpiPUJPfE0kxdv
o8vb+UCIaQSVQBWR+LRYImyMqWZQtCqRzzOq5f5a9eRXYl4bgpKhsKDeFd22uXNR3nc+S296hrgH
O7KAafvCo8IF+9qMH6E9IHhtGgIrUAJdpKUkoiE6y22eIptN6+dGnvFcSuzpN+U57EkF7LpqiLEf
CjBEmYCs78DbuHQDv0Vs3UE0OOA/tPxuhspjh7n7tBlKhT24cXcGnJuuRwXdk0SHChasSQ01ELEB
g4OKcWqhLGA096JCkVCg3pKuY7fdFAgqKo/daqIlWTWCwiNE/WZ5PYH0MI6GJIOrb5+c8ogQxT5I
oO1ezikyEKxjFh2r25IK17JNA6zsSxQ6ZKLLJp1iH1JgpYlNzokYZM4E0CWUi758shqiEgPTtr/B
mYFyOiJoLREM9sZu1zi+8MABz9ssePSTKQL4yFqckVB6xuwg4vX96xAFW6CqpQYXsehUmVX6NDXR
O4h1Kf90YDzeBFnF88UTBKvwnVz2Ul7zqwZ0wJxqujjrFNBskPNN+kVWCcnFCPO3lnowlpGPggNQ
jdQY5rS0UAojOvA4INipXsB3kPYU9FYU5riX5qAIY3A9huOXHyle3uDZ3ZBmShxoxg9tUbMQrkn6
FIKaER8WP7xOEwg4wVPIEAGlyi8GJbkUzzkeH+v1UVJI9Ljvh1X1n2cHsH8AYUi4cFQZrFl5ixUr
QjdDtPfuWI4/jBN9BDgPJsPp9ofgAdV9N6Dt1fGsE7JMwjN7yXvkk/11VMqkGf2GkyM0SONx6uhR
mBOrPQUx9tgdkkLBq1wRu+0bwuKPMqFpEARMg87dcAPekptZs7fGuBGs32hoFQT51EeC+diRRqjc
MeU84xJj5T01oI/XIkWJrRJgrMA/AzMHe1+l6AU4EXh40+Gu8q19C+SApl/4k8tzU8vbPdAr1/XW
lc66rxMrL9F59sFlOCw8pGf1mCUvOjbkJ9sw8OflU04FQkNUNMWUo0nUB+d7othZG0iLZy0rs3yj
phIOwSip/qq9ftVkou2OSbGl5ZqTaI1Mvx4Ev72h7y4CwbfTVqzqm+DEebESrdJY3sG/WbkbFxnA
+KpQoyMWB9LSMvx6MO2oUjD5YQ0cwOooVfXTkTtoUuZJUqtUW+m1MMg/dBgSmh3WnqWEylLkk1sB
/fTd8wrrB22Q53PgJKbMab7ZfzOifqVqUTOcWkenKG4uTHKQ2X1Lr6cj/fUqg8sQZeuMjDcvT4O2
GrQDtx27WFNT2Tmb++5rb9Pp4qgel1eK8qBfuMTrMOWqP+ub9Fr0MPePm2tf8XyhjuJg/P9YZqVo
gQ2ip6ifCaHK5xpCDnLG1iLAb4VMssBDafruHgq0jHTNl75Pwg2uPjjrH/wAgOzU0LfahazHTp6x
vmH5fTWoOuRsf+NSheEMNpMHW8lFJjO5bdyDKhAu/5OwcfYlUj/5UytiM83WSTdyE2dBnkuVxNcr
TzOW//mSXYtrs+7ygL3yGP4nBtpqwBLf+zEtD+Yq7TR4S76eHQ+9IFKz7+/N5TTRbTBPR0A/RJs1
EiDziLAeIJi3feozOdzjlFPMSdeOIGOuihEKqh9bZLPfecT4yVzIBreHk2JpQkv6vwDWlIowyltU
DnwooACqjPBi2Hyrk/Hf/GL1K6jy/gki3uREwUfVXTnlSnXWMZn3Y2hmEDDnVMVkyYd8uwfWagmo
GVM08D3p4hOxXY8ZxDZuBn03S5UQN1wTTkwLg8be6FdKwQMNlYmZGKhmw5nETqBe85cSvC3MPcmi
X0BgmVY5yCTU9dSbCB+Fwoc2CmUfmcrxmhtLzrhI1NR5Ag0tCwJZ0442jvq/t6yoFOagLjQjuhwY
0Kqew+6B3JrgNETIu86MQCpDjkFeu5i9U1USsTLUQHMAl1+rURvqEDwixxCbiiFYVXK2xp0b0Yco
l6pC73Nvv796dSjvL1KKm6JNmxnKEl4TOPlnfubblsOyybQZ+Iool1FmHZAQ/oRfr/rpp8Qh9jlW
iigOHMrMRNVSFpuxM760sG6rL0v12r/Ivr/Izuior+pby8y06BDOUwh3K0S0ARmEpjtLoKIG2uRQ
gj1N3RrlEUjNF8eX/yn/nZzoz/td9dcAgJi+mc4L95WAe2+oi/3sKTSxwngsHWiUMGhn0Ty8AVEr
k6UVISf496BJcMOXjoKJGbJHo9H4p/R+zjJPkk5pr99XOEnzdvCYqZ1uGGwaPY5nvNxS916ps4RQ
0u1F8/bKKdCbD69T3/Uvzo9wLlMTRKh7YH/60mYbq9xvyUXsofo+N/LWtSbf70y5xU9VzXi4d4PA
y4TUqmAvGM7b177RmbXtjtpmkZxE9xT1PDF4dc04YR7W9YFq+A46ovq3kjzxrXT66qG2D/IMjIXf
6YETBKlunVD/koIR73chLa0pneNGy4Ak6QtyvoCyrXaeuUTkVIdmlt08rz70dbsI/yBX4eGfSlWg
Cv9AhEr0Ut2YK6nT27Lf7NN1QeYeGji7Cr+ic9OuOsnLhw6mOtfHDJTMc6s2yl98/Bom+ulpzdfU
po2eRqEcg3AALiWIlhTRQNPuK3M02POMupNLzDSo/Q7T/f8ofIGKC3dY+2LVn0L+rZBS9g6NdOwb
gOY5hoFc/WUj6WpRyaxnHK1TlUa8XbRcPDzLx33aDpaE9Bjbqcd3sArxVpmbJpfT4ve/2WeKPfQ1
QK4IWEnN6LIbvmPbYqHpQBxF1Y7OC3T9MKF6uGmGymL01mJqfsIz0og0n76Jm84gNHR/gRecVgjf
gAqSOwO/9/mxMTIzxcll3pRnr7ARklcn3M6oyvYFVpaAJOD9IZ705bjGTorsXcNjzEY3YkC4PvO/
Tr/lCbu2RrvrAzc7cRDHz8hoq9iwM+19MSkiZoPpZGxXZ3PE6jqJDK3A+jTEWfQk/Q/6O2GptAes
h8U00RGiqJHpW0dvSNhJkQANIJxEOlJJ3z3uRSPCIXrH51SIPllut43+zo+o19UAUYAZvqItHfnp
K0xBMjs2T9fwCdAFsskrgpFWMTidq7jXCCkeQAZPsnhW4RnYlEps8oktzg6noQna5LuihTfJb5vm
X7vPhchja/yPM6usSEtWorzYaxj/N0aCugcT1DK2zo8LFcNoVc6WEL3mHGCwdJYqeKPCDuBj/BuJ
1jyo0npyFt2qM5ClbJZn2jG55q4apPBlz9cMi8VLEqyw2gp1r5v7aYZapin2lE7WOMNXPclJ6HvL
6sfMA3tlSKVkUI8Z2uGLpaONpMeME+8+72BH/kF8dXK5qEvztNaGP0b9sSsMavFVL8fteMJizRk2
SKc5EwkJHPVBKS5RtHFc3au3HSV3m9e2McOvKzEUGVOJkbe3kzOaBo3zerd12RA5DoNI3b0Je/uj
7513pj+Jpet1sKiKxTzfos6bcl9yEbRubIHE234P22A1yDTXhbWLHUFZ9b2pAT4/tGdN3ZSUV9Gc
ds/aKwK4/sGJ0NaR2Sol4WIYNw4xml0Q/eS61XxnUFNVd5aI8rh0OTPwlU4f31mbUkeE7fnVU+XH
GF3hbG5y4+tFqv0VoaxBOIVSoSxAzwX7FTqQ963y4bCIZSs75jXldZPvyA2rI/H3WcdWz4z5tqQh
OyLgJ3uNO4sBozQUI1k5lz9S5SdmcLxBa9pOcYCE/bK9g7wZDVZ0M5rJYQ/8MEAvlqCU0O6rTtPQ
ekXedXlOPCsdQmyH6bl7l3m/GGFUA7PlJCvJ83CXAXTOszsnssIODHlpJEeriAnW8+SmdKpYgmMn
2r89XxfRJvnemQ8EC6YPLxcoSoe/JAEPHHAT50LCdq/0AUEM5kG0jYBMjxvmfSEWbLW8owA2xZyy
TZhxXebteikvR+NX+MWnlbIgpeyt7vLUsbdt3HOLiWXa/bM0g9MD7MEubd9szV9dpMelljv0F/lU
FBglIxUmZY8Rv8YJF112Fw7gGoke085h+xYXqhD8Za74xdoJNMsSkWwhAPR6xtmQUxsZHuQfpEp3
/YNkO4mRrsgmU51hN8CLSc1vY0MLgAChiu1t0eRbBc4UaDGqBoSspNcawK+hH5StNt0SCysVbH8b
1ss1UzGLR1UGIAKZ4GPjDCYZrfP9M0P7CSCauHyUNz6s0s4Y7A0UPoN2Mwpaj2xgknMX/vGvlBhk
ac8INAyutGMBc+B3zUCTjKBmgH5aHKkt9yizQONXndHZZ/z7v318SVrZGZHNjbvac9u3UxkLYK+r
Xrg2v9dCz/O2S/alQmua7qHt36J3AHrpfgnC5mHITjRujdbRGJxdq2VaFD0XRRK5Xa/olCpSfxgk
QHYRBBmdBhEqsQgiCq0+PGWYBEw8Wa92wDg2RThGMnOphyHPmXZ6ARJl1CSD34PQhEvypHrLNDxn
h4ymolUWxVz8Xx6dcr0OWnnyDyKWuuoE9Ev/8BTQrxxfv6qDLHAs98GKZIYVybjcrruAK44W2jL9
5nP1TufklYQF85lK2LgMyD4GkPFb5pcPHanUUtri0RK5Rt9eXHuc8qZWGbuFCKc0pVzrgYuxNEae
7KSTxpb1xYvhA6XXMIo6LRlXoZy/HkATiheFaUJQssiT6DVmeRrDfpJEqxmAx/KEj+UPi0+Oi8+B
zJGzB/VBjCl42NnmuiqjOyhCuiE8jSvR6pmKWm0uipWDNWJ1NQCuLqM7hBA35qrhKVENdxNJZ6Xm
iVn7+2dSkvGuSmh9QZM2sIj4tRYb2e1PTKZvrJZRUd+tg5FNP9H6h5TOrglHvKEpzslp0trPdt74
4rpfdiyVW7QUZS6+LWpSvzGla6Ig5Tu+iVqnJRk8i5b2e65jiJ5Jg6nkTdKyf2PsVHrCja8UaLHp
AwIWj8gvco6CIvo1Wo2vwsnk1VCyOI3qqizpFyV4Q+3KTdE65iDmxS9zcTiDrUgWIk/no/rlWnSf
Nzd0EVeHxcHt5jLpTqDzOCqLYshU7mJBfnQuHvayooxIYZ0vbzwWlo3g9FSjH03QqQgakKz0jiQS
hWpHq3V/Krjp8kcPK1Hb8hfLUa9gEAshe4kT7FEV7LydJ0S+seYSzSnGXm6d4nv4sEw+lkYj0p+V
paNrLdX6doqc75UjZcxHUPrGMgaRf37NLjaymwygia2WRbnAQLu76UXogIRgAobYM8iWVOzPu5UG
9um/LPEP/t28SmbK8BarztMuYgKSRVtVemXDZDnkiHUgm9sG9sPW+9kz9HEV5QRN+uH6/jwHEuOX
gk4YJ4Z5IiRkhkJj5joj9hN3P2zJugDuB6/sdClYivlfhffsHvJjRSAqptDkYSno/cOun07WfJ75
C236YLI8pjGjn0x/2UNMXAKM7B92Ls8nbB2nKOx2/nJCTRB4OoXj7aPoCfaJWI4gJacheXDHO4to
mnhZs69JFf1p6JLubmnJQ5ffHDdLbkRXL9G23+J1yfQNvE9D8BJMSgjZBnFIls0sbwpiBAqw6f4V
qJMNS82MlPyLuNsb58DJLCYsEioSN1kwbKSXZXd12hT6JzsiH4qttslqWXmUGRega07XNrnK5FEb
Rs0TipUJBI3yEsdHSb/9D8QHDUu+t4bWS2RF5lC7pZRDGui+aZFWo0NkKhtlOu8QxHHurdT2fCBa
26MDshHAgyhoXu8nm4ee81HNkDuBS4kmE/ldVNgK/pn4p/P0zyQgOVqfC/4VPXqmzmQdx0OhTx0O
UqMdAauddZhz6s/wI6P77yTP6msv72ZwxLAoppZ9DJsd1fwr/Q3lsLsTO9OgpYIAhqSxgO4bgmJq
xeTrmzMBu47Mfk0G9pISgHeEx2K5IeWHa0lKQ22MQMd6ARz+Fo81fnx8roxWKXxo2Mv0Lj+QeYPb
DzPRz+qeEmxKTv4UFTkmSFvKeqyokpExfF1XXjZRcVzJ9NPDWqwf03qXmI57lOwBs80YywA9WcZn
UR7LecRyd9DuhntSCvGPI970zbNQTYtaZonsSlx0LKiZs/u95otaDd7hDXmkHOGICItkopO2rR0y
UiF2gE/LOT2Dt/6smHBLC7jbw5RoOCo+/7bYG4pXba3hM5ECfq4Dg02wociUMAKqnPCj2cWGsViX
z7cYvV7Df4PYMXImHid6OCqr29X97mdsUWrjsx+EuMtaFsAbJm6kemyYp2JMMXxSLlkTpm3zrGT6
9CrzYmUB7jSvZzWDEsLLPatOqRKpjP6uf3RgzIg1oPziGEczsUaObDwPid4HTcdrYcXGmefnOiqK
hYQ2f/ztbz1vQ5bvBNAZi8lP+Nx/UjcXILIjGIvdCGK7vDBBnotNw30x7cuMiVNrweZStDJ/d/nV
nrdwZ+RC1ixjMNvN1XYyk0eSfsVCR6BVGPZTM+uaUMYg2eLmPVrp8hcYL8Bhmry2sgOCTxhLdwBV
LwOjT+3KTHjegdQRTsAs6s/iw1Aq/jQ5MAhZKO+8AsHWfxCTc98donxiLI2MtmKU18zS6yV0Pb2M
ATVw0+nYWvIjUDWCPBW+fBzt0vxKmgpB0p49aWbIiC7sWLBRkzPuFgrLDUn1vd58FNbJcVXE8M0x
3WT/VAEcFI3T+udynCEg/pYznmKwXMrQl7V/+m8NkuZie8W5bbDALrK6h7u5OOQ1ONsQINzIzhOZ
zr/3sEEyOJZcpXQCLiUEZtm0OZvy8eSL9eU7vVjE0TN540cSTDvNsrRKJnLq5l7KcsqK4BTb5h5q
5XLZDJg641fPTi1axbpJnRWgaVxcgKv0wpqaRlJEf70nUN/q2ebYhucSpeFBAn3XnlcxyXyiVK/7
N+50YhKXdaKbPutBIve0Bs65NQERqbNYvkSKkP/7yolm2z8JqmHWkahdZ8lW8lWyr8HYpQH3RDs0
SEND3QgyyQvBvevaEZgsCHIkhw2STMbqzFGtO5UCYHTUIuAUSQPW/fna0n/9GGbzcqnyRpKrKL4k
d46nDdJB8D7FlgYneBw3QcTZS9/uf4YyTlk30G//zFvyFSemG1ogtj9GYPR4CMvcUSPagOy0/3OP
xUFc6L4adi5eYF4ZOWFwJtsAldnk2u8LthupMXgqv7pTgo3jCwxnI8RAbxZTZXuNLZqalf4MD293
oHDiL3o63ivkAVhR1qMtDhvsF2Dn1nl4YhSZbRmv5QPEi1bNvOrTaXUKcAOiVy9vNg/lNQ7Ym2qp
q1xa2R529HEBnfjQ4fy3Zu78KD5LRAeTgWENwnW3OSkVwxQoIv57zLQH8HJSmJh8lJyHmAx5R5OT
Q408FQnyphSKfgm10Ayze7nv3gnY3PO7c4B/Cwmu3quO1c0r80zqfEO64r1dl3+7Uk6FDJWaIQfL
zGDdokhSGjMhzPA3Z0TrMxc/cs87z8o2zPVeCk4yY6jQ2f+svQHSx4FTmSnkRSp7QOFMenD3E4Lc
GxlBkTrmYoVFFXiH8dO53V+cczIeGl+TLhhNmUVrP+APTr4N0Gw5+mVbN4bBtGvklHqtf/L04pd2
y4yfckSLVhvO5yHab11mVSzXO74gPDs2gvk30X0l+SMR6j6+pnnyQ5Rdi34fbUqxIl0M22g+q4pM
CrjEgrIfkA1wzmEVgK10dnPtJOgiGqst0V4+NFPGeKR2YI413cgZibA7GU4VwcfIUOWjHWKz7L1i
Tl9jpuqk75/kxFncWeKywpiPNhWkZkjKXJ8a0PklCSqXCOs2qfSISN1YwZVEyfgDZMbfzYm7fUhG
Sw8x4vodGv7CwI7ZRWuMwU26KXYM358GboP/9ZuTWOpzYoPWJqleHR6PJ7NTeyf5Ax3qOnqueXep
no4kiuoecaJODZ6GHvaR6L9Y5Lr4upsW1e8tbgksnBb1Ca0KqbWRv6jy+YyUZQoA8J+pVCkRv2Qr
Fd4nN47aOORsGh1BMJlPcIqK2lztrVC8tvEKrosHGnApao/+wku5zifXbSEGdXAE19Uc55GSawQ7
5Fsojel2PFlvcy4F88kxBusSXK8pMMM3lsAoLSfvApveXJyCDM01VjmmwnzXGo6OKjjYw/XnE1Ok
r76hORgYmAjcJDlV8B68IYSXxJGQyhH1737C8krsd0k7sI/R+UBs2Numv97JhwYN5MkCmBZFDsq8
Mz1TIZd5YVXEIUDM5SkqXUq5FgaYwzVgxS5tzvB8bE+FFsrl00uR+XidRnJ9wX5GGw+iVdntRNKz
gfO6MH2WXA03ktzfD5MNrDRXq9mWyGlCTkiuxhmWAnSYGDAtLUxbE4nDw0VpPZ3se+l8PlkFPC9o
LS46y2wpx+3wH5sCnxolG61U/fZcPxnVUsziuYV4iOZGV1VQkS4QvGfyEALPT2Rw0mh08du41AvS
7byKVozIx0dxCnkK7ZjHg7yBwy+jZW4GwLN93pMvEeV73orc4pGdUMKCh2WxXlc0uJeYuIUFfnr+
UYNeZolBTRuQ9w02DNkHDYAWw8q1hwnKP8y3/XVUPoidF7H7KGXfsq94eAm9zZ3697Vi2xAVYtwN
vCFua6jUgVqz+TLr/LG57/Bw1jKYqJXVzcfNnE2qM5a1vK8E2K4acBGAg1kkYbZB99Nqko1IfgfL
yxajzDFfdKoZ8OElFUuss3RClJrJN7aH3cBhA6KXKXl+fT8sr7K+nhz2Stk2cx28CGAdmZm01f9/
iOSCWPAWJC8WxqwzFHkIAluT76jbOvMBM4lsHtHu6L1k4cm+ujlUg7geNNiKTHYAKPI2WYdpV9Cm
Tw+lmyr0M2Kk97f914fneuWIVyVxyMVzlPBwgjK73GVz1E5y41EXjQsy8a/WDHpGSzL25yxcfWv5
OfP4JYV+8D2RdMbxBWALzJN8vaYTRhvHLCIu0SEep4ckhAj0q0a/2eYuEBkRn9HMaABs/zRMmXPF
wMcoRxUTJbj7wOrdu3ayzA5HLRzC1G54bq2ZgKE6rcARSrCEL/5L3BMJu6YravuAwcT0uE9eYjys
Y4vYUZWr542My1LWXvOV4THRf4bqJP01c/OyiogvCIWwb2AqqaZRHlBcV6Cc9H5ygPNdOKNKTmki
vS2yvbrsNXs6mf6uR8g0nHInlTwPSNZHNevsnRMVa7sEkl8y+iop1LYiVoFQMObAzM482pYSggGI
aLaGexcPHTfJfLHxhm1lS6FUreY6xIMLe7DcKqgHlSLaZG5XrThMWEklUw4F+5fRJRPN+bcrZob/
7Kmx1W34Hkp/fmyVVGAnuMiGcRvczU2KFNKnPYGXJRaCplHUpn/ke4mOQjky/k+z1HDPsyqnuv0N
yXNVTdJptzvdRLVhhVI/BLXRIJ3SdlnOrUOZGRycH8FwBJO6ReTLwKkNmoNcWzeewrf1BJ0rD5PL
Ra9uS5EgIUNxu6L5b2qHGDfQBY5aruXMasubYeSmM+r9uAt3upErjOuCzxPmbZAMHpIqS13HL451
v+hI6lcKNrf1PpHc7wsxZpsz5K7r9YN2oM1Q8nSSkSe+eEhn+qY9AtcmqY3jxILjPAyRH8fj37dk
Klc5XD/qpIEUMzlG5pNOZlinL5J/HPknWtba5zpqSnEGKj73xis4fw+ipvwTMeMYi+DeLTy3DeAG
nbuk5Jg4fC+yEqkTwo5mIytSQi5p7+ZtGDxaTZf3B5U81E0L8vdocgXo2nOnzyy36Tq0Pf1EnzI+
OkKJgKXSWySjvfNJTR5ZXxs8ZhXVcRc0oD5J72lDDQCAbfqrwp+0NrAxh8AmxE46MZSTCEoCSfdF
lWh9MdTQQ6fQGkv6Myp9IS9jU9u/jCS9fFZ/jdoqw20BX/5VBdiQe2Qv9kHHePfRCVhHXYaUbk20
R2Lz4Z7CMUGpJ/OFAOuqlspqwvfwhKuR83UPwZX5LU2OoV/wf2jvxJB45Kx1VXNnq3UH22rBsX5W
bXaiC6kq77o8J1RO2qJEuk7cjp9kP7xAHoY/XZfVSq02AIDgsh4aTH4ojzGWbXmMeNvd4ztz5GmX
xgF1w2XRG9fUYg7qg7R1WdJdtZUsle6b5zCmJYsF8c9xdkinujiGk9ri22frnLu6jpnSoGlyAwW2
btIuM80RuH8AkKTo0MNoDHoypBtO0U2VUamJwEFiWYoEostwG6NYSLdsI4pEOa0YuKCI4sFl7PRO
GHYil9Jcg3XAP/1HT58xh6TUHh2b+itbNrTGY42+XRlu44NG26RkCjVHOuPbOckGwxc2KuuKT92L
8Wzu8G+B7riXGHGbM6rPuXBQPx18+c5Fml9I6XHp8Ast1D8XklLdxyDgCIBJ7G0/Sx0xhsfKSpfn
6JP4+Jn8wYFoV6LWThkaUe/YBYCxZIYdz4ailMdZ00HBa+ET6CqvVMrh04BZtp0OWY4LJL9zgktx
uAUSyc11CbQyZCDBQTlIDL85C9oDPoBYyy65u93rBk0KAYWm2q8HYGX2u9YgN5qcoBp0sQIXhpKh
LPEpJwMbq/C6OmWw92cZVDHCPXFysl+LB1ngLqJTuk7+KWEUnk2WE182m/lv9PblRz1sGpkqXH5L
ma6u6eYLUSYGmSprOpvUSZsbYc6e1VtCv3N8aTjvD3sbrfmO+FPfBJH12abRn4hrCNOby3vQGe4g
3BslvyhbGok5wqgi88qJt5cI9Gz9VI04fEHa2FgJ3LpFksTfToFp51O2M5tGnm/mVlSjzGXGz8AY
fDI5rm8C/GwOQxpnwccHBKl5svsT+bVDyq0EHo3/ool7Zy4TF+aO2OAxckZ0l96n57kNIQP0IOcd
NILB73J4EW7iUMEKwpYiQ8G5925OEFxZx6h9+e2in1NhioV0EzacFkEHJQ7Lx41dLEikeFWGqdMS
5u/U/ekJAWwdfJsf785Zwg+xwbiYioNon7Rql1120M4FGRafx0li6DsMF3f7wDn6hL7ON0QrRQ8Y
8DGXmKcQtMN1vXFF48emg+NgMvhYk0epXcPYhiw1H8wkkj54FACYU83l/dnq4TOJLJYPqxU9DDwT
LP4NE+F93Cj+yPAyroeqALfEYwmAokfI1t7XNRFzJZDh2omBmpypEpIjsMS125BJkA3cLvzBvCXN
dIyd1UdcQ+iW4i38LVg1FvZenBm2eWONj8KZV1N/NxbM0dLTYGTz++FzC2bx67J6NckXb8tYFTC6
PRgcSYxJlFLtnIXqaQSlr3HKStdI/PJORYADlNuNx4yq4tZM6x62ZbyRWIw96IUTj1s3fcGXhYQv
hch2jtOUrHekhKu3+IwVan4jEYyiq6HPuSzBiKDuaWh1bxmaJbCBfeprHB66w8i0/dyZm0bhWJmU
xjYzIcuyZRdnKAHcUKMKDoloKgbIT4XzqBAF7c/i9+Glc0G+DHmxJlOV1cs2gnezoExdbqSVzS2B
BUl0280Wpf3kq4z5Ey1mt2GCR0YES/wp344VeHXKKeyUZyyHV1onNEzjMu1xX31h2LNDD31XrDAL
HYX9PWPgg8wnUx7SMqIVAGkV9wxclcMyr4OG4GA9gmezurQo9Jg9+b9D+vKTKu97nMFF5Dk4pv/O
7TrY4QBS47D4RJlPAA6mRmumapDeXCS6QwejCBKL2OV8b/QAZl1MFg2hLg30cuOk9Oz8QDyiM/Io
JWITVou4wMel+NNnlavZacdA2Kud46v/xRUYXp1iqLTXTcJ0hjYkzruZhMLbVmkkphA57cyOdM51
IOR9wXnNxtQfjyeIZjDeUz059t/Xy4T07BBm84CoFhkIzxmf7ekw5Q4HVhdrYuVHH+efifNszhDC
xoSEKWtOFyBZHjDliySqPia+4HJuvZqSdtWynNxyA1zv2UfhVMkghscNIyCWqBg/rQsvmOH/BFA9
eoc3alok/PXht93OpAUZudjVofbTBDeb+/tmsdkzLiMuLNBJVUhKKwh0BEMlk/tqhPAUvIMabjqW
MIAimTfqPaDPU4cTeMct+YH0kF6GME07NPwdOXSZgrkz4Ntn5y6VjcRjVKt1tFQydYwxP11qx88e
hc9IffGQHZinyd77i6Atmd5pOgSP3Lx1c/bUViaDaDioPfe//VAERpASOTlM2GY7wTQEOZrveL7j
mQrRdcBEWDDniqAyueelehJfARPBdP6OqAwloHFGF1GK5VtpZOnLjv9GugvLbwU2DkSK906aPQiL
bxHi9TMSchIqk7wnfZ8JPgOCF9vAI3gNnQSqEqXjCwJKlmz0N8IFj4UdSSMrI52jIpPWk/7hwM74
FJSTBGOqvWOyFrXdjiHeDYcYDq4BBXq58Qbbm8XVkE8gvhoTW5aEv3QbxcWuIVQU1rz0s/yOizWM
iEPsKmR+Y3r4csJpYj5yfZQJyaNtjFpbL1vwughoQxnoa2OsYieOjMQc/PFRHpKp2oxSvxsCH68p
CeLlReawi5htzrXJe+CAtVFOHFwW6M12d6i2caQs9YsLHOg15tPWvXlLCfqjRi8cuwukPeSDBqGv
c+HBxZPD3B+TN0Ep0o7yFgyV66ewshC6iaf2BV1YPI+DDyWhn1eEQdUyI+qdnYfLyD1NWORlWaEf
GBkQzSuG5uypPDGnf7oKYB3Xy0KiApqEEdrMVzfx+H+uXiiTdAos+4EilJl2BRXxT5OY9JlBeAcQ
Y9XtyLuSwaXW6VAZ0s9w1OY0GfIItgrD7Kxt6EJeQ7R5jALKUhoGTYx7ulS2c5R2G7KqG9UklAQs
/sklFC06GI+YZVZ/kRcsQgwqsS61+fGcdMG58cNq8WAZ10jhTvnXAnhzG2d9Dba/C2Q24ZbbJZdd
MEXOt7a7BHEeEjkuC1wUkUm98nH5pDGn+EYaSfoeH+bfPzzYmXBj417cFqo9BM8l/XRHk36V8olt
7H7jcon7HMjLzB+ywfduu0EledVcuqDto63ycXw2zFDvVEsVSefFpykFSTUEBKynI7vr2Zooit35
/3+Kx6/yfW1/CedwtrNe3iJP8gG99sDiSIv3lNuBNIl0wDI/AewXwVzPRF8W/rSPiQbAGCT8ZTih
7vGkn8WEH0KifoBMpVC4QKZlBRhJQiHtPJA1QRsh9IwLzAaAq+EP4L41puQI3syrlAMkKrhrt5pb
WR6DJ8ItDb/UpKhO4xTbbVmwC6emp3WMxEA/wkp6rvkzt/h12Siz2j1nAtrAB80Zh/RQAYUIqG95
k1iddd3a4KCsJclcGZyfHy+yaF2mTF66KUnuH7celo9+rfXT9JXBX/hudSXexUAEnMwh2Rq8tvdR
NrEWtgzboLNW7tCEGNa+QIPqqCN5uqqQs+lWCI+N1VwHDAgOYgQOAX/DFnaQxtFbJ1MB1Hhp19ag
Y/tdW0PRhKNOqKCTNRGsAajR1uUCjQ6QFNGYobFl8nWWR1ljJ1WFx2HTN0IqGbp3++WI0miiKI2q
sH899aW7O1Dvw9hBFIvlizb+jyoHHC1Cq9raq7ck161kzAiPlC6UEjR5dvKBbg6YBlGSs2vaSNC8
DeJhcBcHZJI8o2ytJyaIp7OeWpJVE0jLxtC3qnz35sLIV5udijK+GFjUN70UsznjhmH8F+ihOyeX
oJEqx23FkjwR1wnBii7R0xwEv8mnpVIU3wLclqy72u8UtXN6si5eFD74scXcx9vgUNhO4DFDklrZ
4UWZu2CLQ/kc4eXHDbzZ5QCvj1kVBDUFktvsLITt/FPDzTw/lBa5+AQoKz3qq6IrDaeprq4pj0NF
U2rjeXd6T9pMfaoMHWAjSM04/zl63LmD81rOkbg2UqPbTcyYv9SLFgiFR8hwqkfUeSFRCS+EQ69w
BSZM7Il12+hkD8SU830EQCI/n58WdrkpHVhurzYr6hX9CNSvzKSM1ZCJw5bNen1mu6+2UxjQem8/
jzdDf6o5+Po5Zm3MgYizWrB4tTcuYU6ykBHBKrQqS55nD+My32UrQGuzV4aaUBiFEsfoqbPyLdIn
iObKFV+DHGHeq/Si1oBsQ5tlVL56OJ7iEIRgnvB4XlO8G0wU+r1RW0d4X+Pv3OIag/oO9YVVSy2U
1crGHLMISyAdFfFaJcXjYoCrBYVGkCQ2Hkw6qfVUsAEbtRI8iULS189Sj/GcFtMrKMdHTD3GgIF5
5OHlyrH7BYIK2iQtlV9U3Ep2f3F6rmp+2Cqt2MNMnn3Uc/BPU5wm4NgAicdXVOEGkPrbF0HdFWuz
bALcr3oZABaGQfQFJxfBpyA0VcncXq4FOLzghAIlha6awIghWIidtpg2tq9+6Pcw8OLAUNaSpvxR
q2NJPxrNmqiWvjuxtbeEDIokYPMoGahZH/9j88Q+GzypAC8mY8p9TsYBBIwTlbciALRihbdHGjRj
tBYnICEKwlTQMZifmLQkQMbN/B/klt9Csz2eRpOrA8Jr/6zJY9gbJeoIO/kECGcOQsJMZWRsR90v
DLQFqmmt2wviYwXz1I8ShP1lHEp5bxfuHjiFubvXbMD6oTKyo1pfru/iICwBNtx+fFa7OmrP1syE
ANU7q5BoCocqnaPDFz3yJpf2VSTycMWfmd741XcTHxAxKmqLWyoxncwz1pygXQlW1kaTZSFwEayM
7TRn2tdUIQNm9UQ+L8ZMx/CTHkQIdVJ+fXHwITJG/lN8LKJZ5lqBPYEL5H32n6PnJzOtNeZ2FMOJ
6HIxpBWFpGURirh89LK7FzUZsbLm543kf6JjorPosjo3v7PLehBhOldtayS85R8fBNe05RkMkkbq
2jScHi4POLIQhKXeaQJS9H62giZcK43vedmMHItoTtLPbBzl0dQduVMIjIjS/VrNYc8XdHekHsh0
K1I4iNLkRDAYtRIbWPFywvwLLaoXF4m1/XUoL1idWCLzFbsRtn5QdH6ighs4rDrH6ZyrZHLNuSnA
dDSACP2LTyHV39mDHbUUW3x2GXOitu+0RBXvu5aghLH4DC8XfQ5XDAl0MuUY/ht3knHRWKcF9tZS
1o8GJpW6gfQ7aGqgJbL+cg5+ayEYMukuoRE7AtbwsaQjql9h/E9bfRqhHIs6EWHr5mJUC1b6QlyS
b0ttt0YBfK9LteGep4dv0cqn18DiAfyfjSXWrzuQsjo3UOiJdqZA3Kzc6L11GV5I+iY0I6qTzeUP
/uLE02k5VFdPEYbIQuDvEYYK/pyrCrvI2U/FjIvCc6Z1P3Ri4suZW+G7Dd7D5N4JnKJAZhFOSmli
p9lHxQuqnVZg8Z1bjqSK6l3/ORfvpWyrMcjX5rLAOSibdGY0xbJdPzDgxNGOlCgVeibHA0xxgbId
geNkWfAPFzC89y343ZxBpY3dhb3ota5aH08l9fmf9WWUEuntfnU8mfZfU0q8fQJAsIJ016jjXVPR
KkOV9/zvCZFR6RLGKOukvz5cTOxyvbT7HCmdOBntj0zyA4jG2M4zWBUhyivxAHUpQZhv0TG8C7nw
ToYFyrVL7Sw5pGD+/F+l+b9SXcHQqOnRjrSdIzPi+XkAqDPgUR2JYJ1dERCwBMbkMhslN5tv8l2p
ENGjYPr1Z5iVl4HwmwsCFyI9/p8HasGovMyDIr5zyX7EbEScJMC18In+uRg8ooOEqZgcD2jtWhnM
H9p5VaC4hK2qAbv/ze9px5QppYSiKTxcMVGbHmZ7zaJg2sWpKNyNqTkiGK0LtCs1KYkUKOXvC7SY
ZPHcjYh1ogrvkh4XldBzmtzDj+LEKpqt4kEDcuh5DhZNazc1OS/B7e58uLg9UB8QDMFTdIhMoEL3
Vrj+bUyf1C2f+D58Nyko+CTgVXq5q0LZfelvV8jnNZFFi1tSyGufQovBqhSMqsAxFyjHDEbEa8gg
CglVI9ojYem6TW3PfctVVMMg/9qOnYhsCITyy6KbCbFCIvT7nrRyu+tFXfzaKznH6Fb+pVO3g/9A
cpNHn7Ob4OzZLBYLAjct1AYBF7GAomlA3WF/KWBE6ba49oiIeyTX3CCEevSXQWic6C9I6tjP8c2I
USaIR9sE2NUkP6LGAvniwrTxBA5lDL1m4BjJnDCUo26qNSlQGXFRFNQbP/gZCCXmlSEtPoFzcN4z
I06kortHFfeQ6E+WqkmLzPBRwd1uxgv2f4mimuUJ50Y69BpdIO2f28MhF6sJzFepupxFEShQ/q8D
WRwVucMUbGgX/E+zq+jUv/HT/TXszW7x4MKmDFz+ApzpBUuKT6LGIviTUH/1tZGum5UCWNEOuf/A
CuB716b49Q2B5C8u9kGycPWpFz66DQ5yw6/vyfgGhhodMQaNyyTDmonKH0yU3OKdI9+3ry4499Qd
KrgJMlJaH9x+NhKhU4bCgZ9qqobCCkD8+e5s+6BJsfKIdE/67aTCn5+pjkQBKIxny4AWpZcEZIew
1GC+BNyrXZcm9Ok91kUg+hGXEJZopCBBo+MNZx2GGp1MZZtJDwHWDfKFLgBxRpijcr7w3jDyU3s1
Ms9/dxt5f4tkHgmsr9Pn7IgOWIPuNVYSwA/lICx1/5rJTzzUNXf1Ini6G9uSmZpr2KUJu0ki433a
r/HjeqiKCmeAVCKJngKces1uS5nhDUXdnYRpF8xTPJygi6Pu1r3uSS1gDArNSoeBn9cEQnivRbEI
OsZF98Z/n+pSdg0gFuLosvbuqQuCPBXm/2wN0DpcTzz4ZDZaPameqJF0dypF+q/Q4XPlmp99NMIv
dVud+A9aI1nek+BsMvIr9iioequKn6u/934Ho3XgDuZRfbFyPce/5OWJt6LSuZsGAGGEjmqq46CW
rV/o8rCJQJN6byEOJadiOzUbAVco3B994fNVGRLVN9WZs+jhBUoCSHES+vO1NzpPK9wWm2SavusN
S8dlTN4vFGrrMX3lFDJArUDXSQhTlV/RWv6azMRRiFY5VQ02UrZ2YXimhIjOylkndXz0jFAVftKa
EGu5CH+2IGbr9R6WD3OWHHC6g9Xp35bFVBQaa3hnmKQVmdLgDvBOReKNLLdzGRa3cr0QCvEDVZry
uRjGfNYycnBIV6uKcf7uM0Rdln3H3ahBULczJT8t0fuVfSbcOWIbk8YaQ0u0q8GljLroSkGu2Jzm
fz0qIRaANy+870SC1ssORK7+edM2crPDQKCxkkhN4dYcbSL7rjyZQ8MZPV1o8kDd1eZ6igJwR/wW
WoQDT9UvGhyjVCr7FGiwZvMbiENco0R6ftlLALl+dnLGgddM3l6WTwI9NIPOP5DkzhAKG82N41T8
EyaDuvVZPSjq/2XYeqQxpWxjKo9V0IvuTDYZulh+3zXsjQJjuS5CoOdCAMjz7dHlDy61sjw/YyG2
JA0NXoTmvNbCDE/3+BFnWD0Rx73OUakquWuRTGsdl82wTd45cGkyDiXKhNELDbn8RtACaqncNhR/
6IvMj7XU6XbJCCmFpyWvwXCK368phoLKZuieMzOL2GfxEi7ND7bcpysBfD9wC6jPIhTOZNbYNU2Y
yaKQvarauCa+JRZVml7LoP0tVzrIkoIZJsB/cZDLvRJFGRl+VCbgHMCeKvuM220rBVNfW4IwVmxn
/n1GZIxdfhNx8oFVwJbkTOJHPgMlNvAlkWw1uX0OSVQG+5HyJxa0wm1X4FkCxBfOoecr9BR6jo2P
oGjCIzonNfs2l1I/0tmLLrhEXrR6R3271+Fi7qASgVR3FnLRcWgPNnwAoSCMugvehX1sW0PRHGJc
1QL9VeBRj9nggpNibYsXsw0hdKNZyzoFkeZ0SObJWhZiFAWibl7HL9P/O2SpSCSmLsUsqAIeCWGu
cIkJpVxuI6IpKujwQoozW55BvMXfo1xGpikOCWmkF7A6u8T5S2rQCFLIkPFRXc2OhC/jnwyhxSHl
2L0UVWnKUJCUwSBI8gf3yaFg/WsMiLDJbawdnM0X6T5FICpW1P2hrNZlzjvs3IpbqvEn2QgQL/Dg
+qz+EkEbLu3aQVe+CzJxJMOFqLv8LmKJ3UshOAOqOQcksTdpozOGDbFiKpURTbtX3AYoP7vd1e57
0ROmaxXxVwM/htFxYaxRSvK5CjZ3M9Wq9YXAQCSt72jDCE+OEsJ6SFvW4DRhpV/SD8OYjsnS5ymd
xqiWhlAw7Uis7n+6q6EteJfvRLAN0yR/nNIKUVIZoW/SeQWhqx3mqWgzd+6RhcLjFfln2elqzODJ
J61pnCDP0gWTmmo4mMTSeXSZLNPzt/0us9HDAz77V4mQWYWEahKe/DWrw3ymt0YmmDVtYROiJ8SH
f+igC76HteWjFQLL7K9rZ7BjabcqlJvjYE0OP5Y5QTos40QBP7HZ9cOkmeYK6GRfTt11LCK1bndH
Af+hfrZaX4iNFAm0E2XbsTFSEiXRr1Vl2Yv3nt0YJ98o8UhVzUF2vTGYjJaXE32gEhcVQKJSgyQB
sj1W0Ay9t/ZMvrfkAdDDPi0YjvLtsfP5LELhZ9XsLE0C45Y1meIeAS1RZWnBq2PyzIL6bBj+9yUN
aN2POymZ/dPDYioUAHuHBWCjC95/SPSLpcsyy04MNe+EtJVBdYzE3BE3rM+Mnk2h5L/5q7+Btuz8
l73CKiEOdQdyYjU+AmT8MgI2RUuqijFWT/lV9zVy8CheFI785AghvvlDfPCVF5J7xT8WZuxUF3gj
JUrnwxIkQH9jMSzDs1v5rvmNE4RAQo89Vzr+88jRSbidU+cqwdpoyhYN8ZrFDF7wVWs0az1AS/Qf
rXp1qaLhrpU6B4rFYxKUj+U/h6tqdFuS75IhSW6vyE0cZCQWBoiPiqhFjdCt9osv4xc3UFz7FnFW
/ikQc2Q+WRK4uGEUcQwAjxDvFH3FFda/nUgFwI2Jx2LRkybn/u0HdZQ9wn867dvdS7PxjkenmOfg
nT8PKICQVdTNykYaW6lU1oPi7lNcD1bLcApxc60iF8JgO7RrUcRULuNsXZqtZlxnLM2sdHks7uI0
jUJLzIm2u7A+vzsy5rzowsg3crzcbGdlbjp2KnjvVaA0Pj1sRguY9AjjeuQh9124BB5/zBkUMuOP
BQ91Yilg5f2u3OhJKqzLiXV9/pKbBJGo7ENdbqPAzl+SYT5Jwf78BI8G8Tk4WtK27kSP7tVDfjIs
ivixMvxEqeMQR0UMkZqKMdoG3i5vxhRp9e9kmB5xv4gNk0D5PmZxLiMX50dGdiw8H0SZpUZo/Yz/
/tFuUUlDxPBWSUea/DsqDH0WtQTqXZ4gCOIcJWT3dHT/v2FsmURJcGDEIkqwSHo81mTGWU4KoHkI
nGaUQbg8puwz9E5bB/cSpwPQL8DDszjN7fpQOC2NlYzeqJAfvZpN1au/DTk7BxqLdNITxvcykYEP
7FXQyK/wj43yvNRIM3tCGNBfOX69BRMI5Ma5fhEjaOKf6qvVUxXJYA/1K6IIFdRu8ZZHz5vrdiMn
bVnSWC9Lflr/OnrWz/roW5m6wzobPmhSpar3Xb7030qBeghQDOBVqQHUbRfCMcQGhOAN1/jbHbJJ
lEVtGppGNKO353a8DZRnWYj8HZsfCY8U8I+PKqTxljmPoj+AFyCWpyH2UR1kQErZi32Y2tIqzT1o
OmSOeXONhZegrx9WyLwWed3R6QSFnOsQen2PoBquw/3JV1RwYwwnGrJMgixFniJyOPcjpOOcqatH
wLep8YD4n69vWUAuWlXZB5CGhElqkUUjc4ThWN1am9fhCBnJBHtNmHpe4T6CzhJaPJ8zeGD4MO2q
fX1+1jedarJs5IX/32iC3zSIZD7b3YLP106jaVX0DBVmHRJ3wOOcEwALAN7gFjByw6JO2x0sw/Re
t7IEgKRBFkkzyrEfDDOY8prUUWHdnvUeo+dYUEFXFo1P9D0Ly3vdMqPqVkP7pu8LMWYvoPdYTlr4
i2BLAWL1U1894FMc3jylNtO71CPCQB7TprQl9I5OfCe9EjNV47Xwwrz7C5VJ+iT94dlX69xehajI
3sCK+QeUOxNQfNH+oVV3JvCsZ88f7/seh5Y7Sx/HJaJ6axNDkT0biMrBSw1ety5SeXf9yZzlJU5v
MEgtdLl0ukzdeKBi+6GBJ0h0FI/78xVYBwo4FRBhGnVfHl1ZezVA26lSOPEdCBRjMCQjEDE7SrzC
xVRVo1kSPY2nQNw7mnEdlpuswzt12/rClZ2k74qG5m4pUpwnD/HUi2ogSOMUISXh2nt2Wa1PpCtN
3jly7b89Wqmn4q0y0/wZ8aknvyzCAyMufv9WUmEQMjWVZaKv9Gy+TBjyhDqVkJNmM2n8q5JcKKCn
fZ2hOa0z+ZgN9BtejcTC0CCUM4hu1XitJ7aJrsgyxA5sKLix8/5TdMYmUopkVcc3oImafUuxiCoG
InuPIwssyPyMmVeeI3KcJP8CJlCVglD8DnnZCg2oWITtuEKKZ5GO5OGlQAReruZ8TxpmJDkgzX4U
y5z2/S+lu2Mlips4EtwRLdrlV5wtRqdVAnLquHp3PllxUWv2KpWAYW6ZAB3fQKyg2NTr4eonddy2
84d+UZ+BRMZ6aWTUuoAEhOvY7G83LNREnG4nopXiYQnMH30btWWaIgw6ZUPEYEv822QYwT8+rPmZ
DFHaaVatJQMNXyYE6kTqJ95Rpweximf+Bn7i+yZvbq9DqGZliDMX9c/iX1bwEMBh4yOHaETnZl4N
No5W2VwB8fvIUIz1Db/2mYrzmS8Ck/lOjlmd5lsIBPpfbOZAL25+zo6DRC4a3lnGb3mrVhUZA+tr
+iSO5jzDqKYTPDEvYz8eTCwH83pvxF2W6qUTmTPA8I/5wfcXqR+EPw0tSEH5cus5yAIi3kO9fCI4
/HV0SDGa+MV3Har7pHalNN5sQ/FHQ21Eh8Zm1tmeRZyw0dUroN3uXQsbVSrCJWwl7ZaW9em7Kk1p
O4yGfXo9RMnmrBhY31joqgR+LR7uAdtLSvfwa1k+ugL/l8IGPlaLiBVsZ2+S6dYwO6ttZJwXNhQv
Td911I0uHw8JnDnhUN9htjB1sZqpa18QodIV8fI3W18v3W9B9Wqe7+qugYTm8ZrviwbgJEcUscEM
iR1WXQ5cz/64IXMlBqA3UJIbFpjPrfJhK0JnXY+0AFUtSS0B7f/EkUPDSArkvnOCnl726Tblh4+g
v0vKR2+O7YAVJLylC2mmtbPS6DGoAiNBCa+OIrZhV+REP7v7QDsCeK5gtEBx1qnnsJ0YErwgtufG
kKN1mYLvMhlfyFis6y9JACtI8cq25RHSByufYpZkK1YeI7qsIK41VRSfnzsT58PWDcAYAXG15PfM
S41z1UrxCCeN/Xs3Y99Mf1ZItSnD9y+nxVS5ISN8Wksc+gaDkV4dNlb/a1hYf24m+3dha3HvBcM/
Ku3j5U/xJ1pTFGjkY05Kz30OjfH8Q//Os52PcN5Poqjfq7/+HhnpixKK0b7oH00TcsOi1pkhB8rl
Ii3Awwp3bQyp6il7JdK+Sf8ilok3nQyZmD/ZxBUrwFdn9X7bJV9NDrlKW2OQu2qXKJnRKkoBge+l
AiCBTjMxnO5jArk2jPumul0+p25qvneBBwYPfQ8rJIkaJv/HzxhwhbUVYPLtnmQBXAc9x/+TUiN5
Ftv+1ze46ZTtVpWl8z7QZOmoWkl5b2eKAN0qUWvgylxsLG11pRIwQWOLjOPhjN8sFkK/ou21akQf
EEeiCkhtxpzG0xer5ZM5LqxxwF/yunQ8/kVHAQ++I4kqdw3A9QquLkgMKBd0wJcX13tOz0qxjph/
0LbO/y18MeMUkHI5VpiONLqD5IWw9F+tIZVP1FKV3NkvLp/7DpF8Zm4cwkpMG7ZcP7nmcMnn06AT
u4gxEpM7sp95uo7D/+qmJzsBpl8k3XR/l4rNGwwoNJxjatmORv+XMtpvhxamGzioxVU3SL818j1i
hw2mCpbizB+TcGBwdJg/vOPTQlIQsvf8lZOkNyFfhLQj5Nbe4rR/dAWW0jlAV6SXkvKNP3mz3x6v
pLr4E8E9PlHTYZLhmYVMkmJXfiS9oxnsR7b3loSrf1QHyltHzOa95RgdIOwpTakd56Hf2KczIle7
D/u28zGTzSU5QIHjG+W+ZbtSYxKqBSGzXSsW6Fjt7iLnXjeIHnWKci9x/4g9zmymLppHgozSN+x2
nlxKViCfIachBp5JDLvX045uRSX5uPVNOHU8Yj/AcCiTEdxJ97YQnKycCgq4sCcpvdPjstd+E7t+
AEsxvwlkOpiBaJ84kv+CPQJZ1bEks7ceRLCInYqijytQnyMSpPB7avGVnWsaL5U16SRMguL/FMrw
lA5QYXD1q/RG7f9rTKDa2kSMHOby7DOdnEYbj4TTuhOyaYHUJGh3n0ITfT5c4Z8UAM3AqZeSZgsu
ddNBtCUrDqoex1IRkoXRNHhnpWkTNem7DgREUBOyJiDFJhM+w17itf0LujAmCXBPhlz7GwdM1klt
D4+9Cxny3kQzitF3bS5mSKYT5vsa5ZkoJMdAdkQmwWRu2zktFJLsOGvikT78vHC/wud4AAhR1WhC
7fWlufONmiKcUxi0wLM+QOI82qAftzhNzDkiWQL9gGuwIDJL75GPqlLq3b7MHWG9cik5Clb+OSpT
buS6inXKAK/hLaQZAvJlMlpVUL2EhtID51+up/UUhczUCAy/zGjnZrdXijjEsbLjteMfdQCRXgpe
wgIHncO3vTEQ9deC1Ah2b9O9qIzgYO5lq45p3DuPmn6iyDQPKI2Tpik5ddSIxMo4OcCRwfF5Kzrt
uBSDyL1JOlh5LqP2rE32jRT7KSJO52B8cwJOiICJdw+8yOgmE32HvlpijrQedlVk8mtJ3KHmrk8d
7MlyWX4V3qm2v4p/I6c/u9syiD8jkLZtkLNQkttVjNVo48roPW0x0sizrRq/jhbuYLzlOdikqYDm
Kx04NF8bj6raGA9V+4G1xG8oCNgkEQT7R5NQy4c9Zyqp7Jp0QQRQA1rWEXXgjwV0/i2oIQGq45k7
TypJyg35f1BT3uiKF5X5rpZozfTXwH3y91FwqaePHz+7hfv9PGYv0NaXwVqhNqRDZPTc5fSma5HV
hDix9H3DjX/Bx+272e71yhMJgY9yULTdTiEH+VUR6aIHahrGpOWv13r4L/hsVhjMY/grDCE5XEk2
6AL5PxkZn5qTvgn0xmedt8rifL8YtLG7uHQZSwZZJzhBpz0dUDi4DpUo1fAVfxv1/0VAgT4gTHGP
tmAJ8IbQrh9G7z+Q2llw9C/zd3GUSG0KCBNIE4W4pQvRQC3i3vBb9M3l/SE/otEEpDkKk/bIm0uv
mEBblnX/GW4OH32PtJw7yGOinczBueHQ0X6LbJ0wgyJ5un10fCgGwUG5yHmi9e0L1JrU69QR5VPD
lKPVsjImbKeS3xYw8KUVid9+dbl5NAU/Nbcf03MK/2PdidKctEpb6yb7KEjKsMRaufXTrUcm7X/7
763lUP/eMcIXNc/k7hZbIjBizRPxw9ftHhzaamH7j0O5BKXkR/DXu5YTHnqocaxNgiW7Qixzhdc/
U6UEKHNvnf69A2g5ewVExIe/m8RCOZZiM5ryJgt6n9z19rVfGXlYq3cUZiqi0vQm8kYPCLdfpg6Y
beOgn8AypP6mLns3rhCvFP+g1BBOvU9nlG8NsUPcBOongZ/Q863qL/cGISGWdGmRTTRr92IY+XBT
pOjLQ4FFjOeoU2gB1ctPRXU5ph2GXWVsLq1vyETDWi9OtcMVj0kaK5TWQDqjYURodcR2z/NuV6vX
V6Lo/rbjhG/89F3m48K9xU7WrtJJ8kw2arJlkzdRyXL8hRHY4+CzBKXbWrn7Eg/qi/hPClCAPaKa
D5tMYjxfbgADO5gQIcY5+ryuAy+AaoPLDW/Ptp5qbK/cNWOLU5HMleXbAgy5FLTOpE/NPZASFKOB
pNCICGhOPzB94o07NrYn0ypYGqt5oLRxJU4qd/4km9ZF+v5ELeJm69WyaqiB+w5DsEGcCgXCog4/
VzipVquh26p2rKRYuN3Gp+hXLFcyciZjocOj24rmwGytPf3QM9Qje2oS8cH8pFgxCAond/PVET8H
32K9hRwFAFtAUGbLAegw1N/celnBY5+8EsnEnRkpqtObr1wnej3Csm64zJd8SGd2yuNIvT2l9Wxi
69QWrJJe9zKj5EjG2JDdqzHKHJPc+RB64JQixwQpCV9CfKMsAgBO5zWzZIs4e7zfm/9fCV3AY+N7
Jkc/yKPgIRopamLk0vIaNu7UcCKiC5ACLzqF+kQ9zsd4d/S8EiJKNG1tHAoJ+dK0rCn4G6rt4yWu
XzIWzWjC0dk7wrlZEatIeIpULzq77xJ+3hY5JBtMUNBfmiW0CdXBlUt8KitfdrFIkttjyXhr0Ez/
BWE3M9gOAMGvpOaH8Poiz2b16HF4/BPg3zHQg1mWfy9Zq5t+iV4Hb9c13kG38AEAkiQkadmCuSyU
5Mk1qOPhx/30EmumVNf/rbRvKc/d7u/4dswhRzOlXq+y9PBTsnjEeu0jLWWk14r1Vb66XAnwtNZt
dCTgjhPgaH/iBm0I04tbXMeRmW62JV8UDE2Ll41R1qN1RhLyf+iTmTSJSovrUymbc/IHJsOJPDbC
vjGh26I8cFTpFDqf7dlZ6g26/Id3FU3JU8dABc+x+lL0fnjAEgBk/AGDWkIlrsTLWR6XOxvUxY4A
XvUpS1mYYtneK3Umsd3amTNWyCsq2/zxM1Eo/KpCKI9Rrb/LCkpxPwRhlHozG0FzrlH8fjiaHjLA
aORKfweeykw2NHzWx0TgL4wgwvrxLkzQ5xm/0Up9XSBCaVmeW2UKLt6gUU05qeOfJkowKIWfkPo7
aqWAbT1JqYTDxP+q7yN0qOaxZEDnxFr+0pDA7qrz8/Js6UPfpyFo2mYTEobPTEdBdcAQPQcUDdZ8
LBGmf0jU/f3t+ooDfwZoX8j6ns6rogoJ5o040qb64qcRjA9am472LpvMKL54Dui49fb4PYUzzT4k
mB/mUFQJl3n8q5Eh+JjonBI4IOYYIAO79iIQZmNi7dtFgFTooL4T30lzY+D5uPZE5Edzog7fajfV
ADAh3wdATaq7pBX6NO9zxKNwvOK0zarhs8AM8AYL+MnJU6awrTo9GYRLs2Q1eYwZ1kOvX1qL7/JG
zn3rwyFkIeKJiOAHm6XEb80Mcdy3ZJz6MxaWeRP1FnMYUrff0FbPVTtOTMWhtPyC5ZYnVrj3mOMi
KyGq25JD0fsdqUJyAQZjukSz9CPlXjK8y0QmBy30jej/P5DVN9h0u4Z4oVRPWiOD6kFN4ruLkAlZ
Wkgtii7RLYhR0Oevxs5L+zHahs5UB6iVOvg3qH5fQ8deT6pxc8AP/saarfX84BntDo9WqP/SaHSC
1M8QWBk0pCJE4QcU4uZAoQEjAf+kMEegDherg7wZW9wdHeJNUf6tcCu/OAzA+SkMLtuhSVPvm0bX
AlNT4wI1VPSh8mIs9qEZOms1zHNz3Ux+V3PkcXhI06vr+BQXfcpUgEiD//DPcI/ovryS/rpg3tCk
kjD8XHiR3XJZ6dUQcoVRy8E1blp00a5vXz2tYnuTTOUDCuLJNrCch8CSn+PXTHNiyQf1yWk/kDZS
HGYxJD/XWNR6T6KwTLT2tePS+BJ+j80epki3T5ksU7HkTtBrhkYOY/nkOXRflGOhPUGyQK4jCYh+
vg962M9i6IhfBYfdb6VMmeCCgEf+Mtv71V+H2BD5+bJIlDGzc2tfIHUN3p7mF7yoRtzdvtKDjop3
2mDvl9FvxMqu3H7tXZyZWVNt9uZihb0xZDCEtKDnJTeqjQRn9Db1jnu+SY9bLgNm3M1Dprb59qeD
g7F0dZ1TIN6JA/Mhhq+CwrQNtSxzrM+umv23J3A2zd435QZoo1T3FJNwPP6Vf7yTXIH4WCicElwF
x0JOW/noFQjTJGvcDH3bxFl8vu52uvZNzM/MIRJ86ZLkszrvliPy/m2ktD8CMq6atyN5i9t3fpEg
rFjipYWEgbywDHOnvxy/RItCO8Bkj4Dpchn862z0ckf4q2o53E5zngGaumwCh275BVHJ7ROqRSuj
JBd2os3AkN0RH9BZRxSKuVE/xR6bm26AVAJJNMSmJhK1IwcB2rVQ9xmS7JxnpL+akuZmwFuvAwC7
tjwHBFn4x8fayXC9IBgD6Ns5TUWVF4/dwXhw2Yro+JEt8u6B5PMGHp3//VXb7Mea/imvd/PlQe3s
LQ3yUW3y2IRBxIUA6Qnw+h7nnhhuXmdBtMAZziDQayf7xBY4dVUy6EKRh+HFNb0X4/lBvBe19aI0
VUDFS3R2e28wBj3ectbW8dnzliyuzib2GCqXAgVjsn9sQtYFKg3duMcSU2Fm0Y8Zgb8KSpbKofSK
Xbpfo1uWn+efIvtlZXmoNLhMO9pkcwYV0SBKGG4/OQzwkpK0bIQh2kMZA5gwOtL1lFA0zE2CQ+wj
b9IGvQY47tfq6NhD++LRJoiqEr2zlfk7V7ih+dYJVf+9rOjd82KXBtoNX8Z4ORry9fuQhK4dZ7q3
njgCVsQ0oT2XthD4ict+GZSg9/02lr75ar55YK0up/AdfAIYA5NncO3GcXpX+o1RMLcwN71/4v+Q
ow+n7pAPmadrOQ==
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
