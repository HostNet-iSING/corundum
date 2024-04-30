-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Dec 19 07:47:05 2023
-- Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_cms_subsystem_0_0_sim_netlist.vhdl
-- Design      : cms_cms_subsystem_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu250-figd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99 is
  port (
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    interrupt_host : out STD_LOGIC;
    qsfp0_int_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_lpmode : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_modprs_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_modsel_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_reset_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_int_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_lpmode : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_modprs_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_modsel_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_reset_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    satellite_gpio : in STD_LOGIC_VECTOR ( 3 downto 0 );
    satellite_uart_rxd : in STD_LOGIC;
    satellite_uart_txd : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99 : entity is "cms_cms_subsystem_0_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_shell_cmc_subsystem_0 is
  port (
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
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_shell_cmc_subsystem_0;
  signal NLW_shell_cmc_subsystem_mdm_mbdebug_tdo_UNCONNECTED : STD_LOGIC;
  signal NLW_shell_cmc_subsystem_usb_uart_txd_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shell_cmc_subsystem : label is "bd_43c9,Vivado 2021.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN cms_aclk_ctrl_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of interrupt_host : signal is "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_HOST INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt_host : signal is "XIL_INTERFACENAME INTR.INTERRUPT_HOST, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of satellite_uart_rxd : signal is "xilinx.com:interface:uart:1.0 satellite_uart RxD";
  attribute X_INTERFACE_INFO of satellite_uart_txd : signal is "xilinx.com:interface:uart:1.0 satellite_uart TxD";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cms_aclk_ctrl_0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of satellite_gpio : signal is "xilinx.com:signal:interrupt:1.0 INTR.SATELLITE_GPIO INTERRUPT";
  attribute X_INTERFACE_PARAMETER of satellite_gpio : signal is "XIL_INTERFACENAME INTR.SATELLITE_GPIO, PortWidth 4, SENSITIVITY EDGE_RISING";
begin
shell_cmc_subsystem: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_shell_cmc_subsystem_0
     port map (
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      hbm_temp_1(6 downto 0) => B"0000000",
      hbm_temp_2(6 downto 0) => B"0000000",
      interrupt_hbm_cattrip(0) => '0',
      interrupt_host => interrupt_host,
      mdm_debug_sys_rst => '0',
      mdm_mbdebug_capture => '0',
      mdm_mbdebug_clk => '0',
      mdm_mbdebug_disable => '0',
      mdm_mbdebug_reg_en(0 to 7) => B"00000000",
      mdm_mbdebug_rst => '0',
      mdm_mbdebug_shift => '0',
      mdm_mbdebug_tdi => '0',
      mdm_mbdebug_tdo => NLW_shell_cmc_subsystem_mdm_mbdebug_tdo_UNCONNECTED,
      mdm_mbdebug_update => '0',
      qsfp0_int_l(0) => qsfp0_int_l(0),
      qsfp0_lpmode(0) => qsfp0_lpmode(0),
      qsfp0_modprs_l(0) => qsfp0_modprs_l(0),
      qsfp0_modsel_l(0) => qsfp0_modsel_l(0),
      qsfp0_reset_l(0) => qsfp0_reset_l(0),
      qsfp1_int_l(0) => qsfp1_int_l(0),
      qsfp1_lpmode(0) => qsfp1_lpmode(0),
      qsfp1_modprs_l(0) => qsfp1_modprs_l(0),
      qsfp1_modsel_l(0) => qsfp1_modsel_l(0),
      qsfp1_reset_l(0) => qsfp1_reset_l(0),
      s_axi_ctrl_mgmt_araddr(17 downto 0) => s_axi_ctrl_araddr(17 downto 0),
      s_axi_ctrl_mgmt_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      s_axi_ctrl_mgmt_arready(0) => s_axi_ctrl_arready(0),
      s_axi_ctrl_mgmt_arvalid(0) => s_axi_ctrl_arvalid(0),
      s_axi_ctrl_mgmt_awaddr(17 downto 0) => s_axi_ctrl_awaddr(17 downto 0),
      s_axi_ctrl_mgmt_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      s_axi_ctrl_mgmt_awready(0) => s_axi_ctrl_awready(0),
      s_axi_ctrl_mgmt_awvalid(0) => s_axi_ctrl_awvalid(0),
      s_axi_ctrl_mgmt_bready(0) => s_axi_ctrl_bready(0),
      s_axi_ctrl_mgmt_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      s_axi_ctrl_mgmt_bvalid(0) => s_axi_ctrl_bvalid(0),
      s_axi_ctrl_mgmt_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_mgmt_rready(0) => s_axi_ctrl_rready(0),
      s_axi_ctrl_mgmt_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      s_axi_ctrl_mgmt_rvalid(0) => s_axi_ctrl_rvalid(0),
      s_axi_ctrl_mgmt_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_mgmt_wready(0) => s_axi_ctrl_wready(0),
      s_axi_ctrl_mgmt_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      s_axi_ctrl_mgmt_wvalid(0) => s_axi_ctrl_wvalid(0),
      satellite_gpio(3 downto 0) => satellite_gpio(3 downto 0),
      satellite_uart_rxd => satellite_uart_rxd,
      satellite_uart_txd => satellite_uart_txd,
      usb_uart_rxd => '0',
      usb_uart_txd => NLW_shell_cmc_subsystem_usb_uart_txd_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    satellite_gpio : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
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
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    satellite_uart_rxd : in STD_LOGIC;
    satellite_uart_txd : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cms_cms_subsystem_0_0,bd_fb99,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_fb99,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "cms_cms_subsystem_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.aclk_ctrl, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_RESET aresetn_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN CE";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt_host : signal is "xilinx.com:signal:interrupt:1.0 INTR.interrupt_host INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt_host : signal is "XIL_INTERFACENAME INTR.interrupt_host, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of satellite_uart_rxd : signal is "xilinx.com:interface:uart:1.0 satellite_uart RxD";
  attribute X_INTERFACE_INFO of satellite_uart_txd : signal is "xilinx.com:interface:uart:1.0 satellite_uart TxD";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_rready : signal is "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of satellite_gpio : signal is "xilinx.com:signal:interrupt:1.0 INTR.satellite_gpio INTERRUPT";
  attribute X_INTERFACE_PARAMETER of satellite_gpio : signal is "XIL_INTERFACENAME INTR.satellite_gpio, SENSITIVITY EDGE_RISING, PortWidth 4";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99
     port map (
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      interrupt_host => interrupt_host,
      qsfp0_int_l(0) => qsfp0_int_l(0),
      qsfp0_lpmode(0) => qsfp0_lpmode(0),
      qsfp0_modprs_l(0) => qsfp0_modprs_l(0),
      qsfp0_modsel_l(0) => qsfp0_modsel_l(0),
      qsfp0_reset_l(0) => qsfp0_reset_l(0),
      qsfp1_int_l(0) => qsfp1_int_l(0),
      qsfp1_lpmode(0) => qsfp1_lpmode(0),
      qsfp1_modprs_l(0) => qsfp1_modprs_l(0),
      qsfp1_modsel_l(0) => qsfp1_modsel_l(0),
      qsfp1_reset_l(0) => qsfp1_reset_l(0),
      s_axi_ctrl_araddr(17 downto 0) => s_axi_ctrl_araddr(17 downto 0),
      s_axi_ctrl_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      s_axi_ctrl_arready(0) => s_axi_ctrl_arready(0),
      s_axi_ctrl_arvalid(0) => s_axi_ctrl_arvalid(0),
      s_axi_ctrl_awaddr(17 downto 0) => s_axi_ctrl_awaddr(17 downto 0),
      s_axi_ctrl_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      s_axi_ctrl_awready(0) => s_axi_ctrl_awready(0),
      s_axi_ctrl_awvalid(0) => s_axi_ctrl_awvalid(0),
      s_axi_ctrl_bready(0) => s_axi_ctrl_bready(0),
      s_axi_ctrl_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      s_axi_ctrl_bvalid(0) => s_axi_ctrl_bvalid(0),
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready(0) => s_axi_ctrl_rready(0),
      s_axi_ctrl_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      s_axi_ctrl_rvalid(0) => s_axi_ctrl_rvalid(0),
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wready(0) => s_axi_ctrl_wready(0),
      s_axi_ctrl_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      s_axi_ctrl_wvalid(0) => s_axi_ctrl_wvalid(0),
      satellite_gpio(3 downto 0) => satellite_gpio(3 downto 0),
      satellite_uart_rxd => satellite_uart_rxd,
      satellite_uart_txd => satellite_uart_txd
    );
end STRUCTURE;
