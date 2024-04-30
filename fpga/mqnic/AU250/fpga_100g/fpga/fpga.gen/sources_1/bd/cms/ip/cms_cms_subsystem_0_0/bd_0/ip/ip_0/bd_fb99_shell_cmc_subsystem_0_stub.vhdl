-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Dec 19 07:45:53 2023
-- Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_0/bd_fb99_shell_cmc_subsystem_0_stub.vhdl
-- Design      : bd_fb99_shell_cmc_subsystem_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu250-figd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_fb99_shell_cmc_subsystem_0 is
  Port ( 
    satellite_gpio : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    mdm_debug_sys_rst : in STD_LOGIC;
    interrupt_hbm_cattrip : in STD_LOGIC_VECTOR ( 0 to 0 );
    hbm_temp_1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    hbm_temp_2 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    interrupt_host : out STD_LOGIC;
    qsfp0_modprs_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_modprs_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_int_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_int_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_lpmode : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_lpmode : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_modsel_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_modsel_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_reset_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_reset_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    mdm_mbdebug_capture : in STD_LOGIC;
    mdm_mbdebug_clk : in STD_LOGIC;
    mdm_mbdebug_disable : in STD_LOGIC;
    mdm_mbdebug_reg_en : in STD_LOGIC_VECTOR ( 0 to 7 );
    mdm_mbdebug_rst : in STD_LOGIC;
    mdm_mbdebug_shift : in STD_LOGIC;
    mdm_mbdebug_tdi : in STD_LOGIC;
    mdm_mbdebug_tdo : out STD_LOGIC;
    mdm_mbdebug_update : in STD_LOGIC;
    satellite_uart_rxd : in STD_LOGIC;
    satellite_uart_txd : out STD_LOGIC;
    s_axi_ctrl_mgmt_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_ctrl_mgmt_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_mgmt_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_mgmt_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_ctrl_mgmt_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_mgmt_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_mgmt_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );

end bd_fb99_shell_cmc_subsystem_0;

architecture stub of bd_fb99_shell_cmc_subsystem_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "satellite_gpio[3:0],aclk_ctrl,aresetn_ctrl,mdm_debug_sys_rst,interrupt_hbm_cattrip[0:0],hbm_temp_1[6:0],hbm_temp_2[6:0],interrupt_host,qsfp0_modprs_l[0:0],qsfp1_modprs_l[0:0],qsfp0_int_l[0:0],qsfp1_int_l[0:0],qsfp0_lpmode[0:0],qsfp1_lpmode[0:0],qsfp0_modsel_l[0:0],qsfp1_modsel_l[0:0],qsfp0_reset_l[0:0],qsfp1_reset_l[0:0],mdm_mbdebug_capture,mdm_mbdebug_clk,mdm_mbdebug_disable,mdm_mbdebug_reg_en[0:7],mdm_mbdebug_rst,mdm_mbdebug_shift,mdm_mbdebug_tdi,mdm_mbdebug_tdo,mdm_mbdebug_update,satellite_uart_rxd,satellite_uart_txd,s_axi_ctrl_mgmt_awaddr[17:0],s_axi_ctrl_mgmt_awprot[2:0],s_axi_ctrl_mgmt_awvalid[0:0],s_axi_ctrl_mgmt_awready[0:0],s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid[0:0],s_axi_ctrl_mgmt_wready[0:0],s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid[0:0],s_axi_ctrl_mgmt_bready[0:0],s_axi_ctrl_mgmt_araddr[17:0],s_axi_ctrl_mgmt_arprot[2:0],s_axi_ctrl_mgmt_arvalid[0:0],s_axi_ctrl_mgmt_arready[0:0],s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid[0:0],s_axi_ctrl_mgmt_rready[0:0],usb_uart_rxd,usb_uart_txd";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_43c9,Vivado 2021.1";
begin
end;
