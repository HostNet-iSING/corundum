-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Jul 12 20:31:57 2023
-- Host        : desktop02 running 64-bit Ubuntu 18.04.6 LTS
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0 : entity is "bd_fb99_concat_1_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in4\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in3\(0) <= In3(0);
  \^in4\(0) <= In4(0);
  dout(4) <= \^in4\(0);
  dout(3) <= \^in3\(0);
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0 : entity is "bd_fb99_concat_2_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in4\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in3\(0) <= In3(0);
  \^in4\(0) <= In4(0);
  dout(4) <= \^in4\(0);
  dout(3) <= \^in3\(0);
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0 : entity is "bd_fb99_concat_host_interrupts_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 30 downto 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(30 downto 0) <= In1(30 downto 0);
  dout(31 downto 1) <= \^in1\(30 downto 0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0 : entity is "bd_fb99_concat_intr_cmc_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^in3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in8\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(3 downto 0) <= In0(3 downto 0);
  \^in3\(0) <= In3(0);
  \^in6\(0) <= In6(0);
  \^in7\(0) <= In7(0);
  \^in8\(0) <= In8(0);
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \^in8\(0);
  dout(10) <= \^in7\(0);
  dout(9) <= \^in6\(0);
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \^in3\(0);
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3 downto 0) <= \^in0\(3 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0 : entity is "bd_fb99_slice_gpio1_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0 : entity is "bd_fb99_slice_gpio1_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0 : entity is "bd_fb99_slice_gpio1_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Dout(0) <= \^din\(2);
  \^din\(2) <= Din(2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0 : entity is "bd_fb99_slice_gpio2_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0 : entity is "bd_fb99_slice_gpio2_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0 : entity is "bd_fb99_slice_gpio2_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Dout(0) <= \^din\(2);
  \^din\(2) <= Din(2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_cmc_local_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC;
    M11_AXI_bready : out STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_cmc_local_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_cmc_local_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 383 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_xbar_0;
  signal \<const0>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m01_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m01_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m02_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m02_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m03_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m03_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m04_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m04_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m05_axi_araddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m05_axi_awaddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m06_axi_araddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m06_axi_awaddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m07_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m07_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m08_axi_araddr\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^m08_axi_awaddr\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^m09_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m09_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m10_axi_araddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m10_axi_awaddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m11_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m11_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xbar_n_100 : STD_LOGIC;
  signal xbar_n_1000 : STD_LOGIC;
  signal xbar_n_1001 : STD_LOGIC;
  signal xbar_n_1002 : STD_LOGIC;
  signal xbar_n_1003 : STD_LOGIC;
  signal xbar_n_1004 : STD_LOGIC;
  signal xbar_n_1005 : STD_LOGIC;
  signal xbar_n_1006 : STD_LOGIC;
  signal xbar_n_1007 : STD_LOGIC;
  signal xbar_n_1008 : STD_LOGIC;
  signal xbar_n_1009 : STD_LOGIC;
  signal xbar_n_1010 : STD_LOGIC;
  signal xbar_n_1011 : STD_LOGIC;
  signal xbar_n_1012 : STD_LOGIC;
  signal xbar_n_1013 : STD_LOGIC;
  signal xbar_n_1014 : STD_LOGIC;
  signal xbar_n_1015 : STD_LOGIC;
  signal xbar_n_1025 : STD_LOGIC;
  signal xbar_n_1026 : STD_LOGIC;
  signal xbar_n_1027 : STD_LOGIC;
  signal xbar_n_1028 : STD_LOGIC;
  signal xbar_n_1029 : STD_LOGIC;
  signal xbar_n_1030 : STD_LOGIC;
  signal xbar_n_1031 : STD_LOGIC;
  signal xbar_n_1032 : STD_LOGIC;
  signal xbar_n_1033 : STD_LOGIC;
  signal xbar_n_1034 : STD_LOGIC;
  signal xbar_n_1035 : STD_LOGIC;
  signal xbar_n_1036 : STD_LOGIC;
  signal xbar_n_1037 : STD_LOGIC;
  signal xbar_n_1038 : STD_LOGIC;
  signal xbar_n_1039 : STD_LOGIC;
  signal xbar_n_1040 : STD_LOGIC;
  signal xbar_n_1041 : STD_LOGIC;
  signal xbar_n_1042 : STD_LOGIC;
  signal xbar_n_1043 : STD_LOGIC;
  signal xbar_n_105 : STD_LOGIC;
  signal xbar_n_1057 : STD_LOGIC;
  signal xbar_n_1058 : STD_LOGIC;
  signal xbar_n_1059 : STD_LOGIC;
  signal xbar_n_106 : STD_LOGIC;
  signal xbar_n_1060 : STD_LOGIC;
  signal xbar_n_1061 : STD_LOGIC;
  signal xbar_n_1062 : STD_LOGIC;
  signal xbar_n_1063 : STD_LOGIC;
  signal xbar_n_1064 : STD_LOGIC;
  signal xbar_n_1065 : STD_LOGIC;
  signal xbar_n_1066 : STD_LOGIC;
  signal xbar_n_1067 : STD_LOGIC;
  signal xbar_n_1068 : STD_LOGIC;
  signal xbar_n_1069 : STD_LOGIC;
  signal xbar_n_107 : STD_LOGIC;
  signal xbar_n_1070 : STD_LOGIC;
  signal xbar_n_1071 : STD_LOGIC;
  signal xbar_n_1072 : STD_LOGIC;
  signal xbar_n_1073 : STD_LOGIC;
  signal xbar_n_1074 : STD_LOGIC;
  signal xbar_n_1075 : STD_LOGIC;
  signal xbar_n_1076 : STD_LOGIC;
  signal xbar_n_1077 : STD_LOGIC;
  signal xbar_n_1078 : STD_LOGIC;
  signal xbar_n_1079 : STD_LOGIC;
  signal xbar_n_108 : STD_LOGIC;
  signal xbar_n_1089 : STD_LOGIC;
  signal xbar_n_109 : STD_LOGIC;
  signal xbar_n_1090 : STD_LOGIC;
  signal xbar_n_1091 : STD_LOGIC;
  signal xbar_n_1092 : STD_LOGIC;
  signal xbar_n_1093 : STD_LOGIC;
  signal xbar_n_1094 : STD_LOGIC;
  signal xbar_n_1095 : STD_LOGIC;
  signal xbar_n_1096 : STD_LOGIC;
  signal xbar_n_1097 : STD_LOGIC;
  signal xbar_n_1098 : STD_LOGIC;
  signal xbar_n_1099 : STD_LOGIC;
  signal xbar_n_110 : STD_LOGIC;
  signal xbar_n_1100 : STD_LOGIC;
  signal xbar_n_1101 : STD_LOGIC;
  signal xbar_n_1102 : STD_LOGIC;
  signal xbar_n_1103 : STD_LOGIC;
  signal xbar_n_1104 : STD_LOGIC;
  signal xbar_n_1105 : STD_LOGIC;
  signal xbar_n_1106 : STD_LOGIC;
  signal xbar_n_1107 : STD_LOGIC;
  signal xbar_n_1108 : STD_LOGIC;
  signal xbar_n_1109 : STD_LOGIC;
  signal xbar_n_111 : STD_LOGIC;
  signal xbar_n_1110 : STD_LOGIC;
  signal xbar_n_1111 : STD_LOGIC;
  signal xbar_n_1112 : STD_LOGIC;
  signal xbar_n_1113 : STD_LOGIC;
  signal xbar_n_1114 : STD_LOGIC;
  signal xbar_n_1115 : STD_LOGIC;
  signal xbar_n_1116 : STD_LOGIC;
  signal xbar_n_112 : STD_LOGIC;
  signal xbar_n_1121 : STD_LOGIC;
  signal xbar_n_1122 : STD_LOGIC;
  signal xbar_n_1123 : STD_LOGIC;
  signal xbar_n_1124 : STD_LOGIC;
  signal xbar_n_1125 : STD_LOGIC;
  signal xbar_n_1126 : STD_LOGIC;
  signal xbar_n_1127 : STD_LOGIC;
  signal xbar_n_1128 : STD_LOGIC;
  signal xbar_n_1129 : STD_LOGIC;
  signal xbar_n_113 : STD_LOGIC;
  signal xbar_n_1130 : STD_LOGIC;
  signal xbar_n_1131 : STD_LOGIC;
  signal xbar_n_1132 : STD_LOGIC;
  signal xbar_n_1133 : STD_LOGIC;
  signal xbar_n_1134 : STD_LOGIC;
  signal xbar_n_1135 : STD_LOGIC;
  signal xbar_n_1136 : STD_LOGIC;
  signal xbar_n_1137 : STD_LOGIC;
  signal xbar_n_1138 : STD_LOGIC;
  signal xbar_n_1139 : STD_LOGIC;
  signal xbar_n_114 : STD_LOGIC;
  signal xbar_n_1140 : STD_LOGIC;
  signal xbar_n_1141 : STD_LOGIC;
  signal xbar_n_1142 : STD_LOGIC;
  signal xbar_n_1143 : STD_LOGIC;
  signal xbar_n_1144 : STD_LOGIC;
  signal xbar_n_1145 : STD_LOGIC;
  signal xbar_n_1146 : STD_LOGIC;
  signal xbar_n_1147 : STD_LOGIC;
  signal xbar_n_1148 : STD_LOGIC;
  signal xbar_n_115 : STD_LOGIC;
  signal xbar_n_1153 : STD_LOGIC;
  signal xbar_n_1154 : STD_LOGIC;
  signal xbar_n_1155 : STD_LOGIC;
  signal xbar_n_1156 : STD_LOGIC;
  signal xbar_n_1157 : STD_LOGIC;
  signal xbar_n_1158 : STD_LOGIC;
  signal xbar_n_1159 : STD_LOGIC;
  signal xbar_n_116 : STD_LOGIC;
  signal xbar_n_1160 : STD_LOGIC;
  signal xbar_n_1161 : STD_LOGIC;
  signal xbar_n_1162 : STD_LOGIC;
  signal xbar_n_1163 : STD_LOGIC;
  signal xbar_n_1164 : STD_LOGIC;
  signal xbar_n_1165 : STD_LOGIC;
  signal xbar_n_1166 : STD_LOGIC;
  signal xbar_n_1167 : STD_LOGIC;
  signal xbar_n_1168 : STD_LOGIC;
  signal xbar_n_1169 : STD_LOGIC;
  signal xbar_n_117 : STD_LOGIC;
  signal xbar_n_1170 : STD_LOGIC;
  signal xbar_n_1171 : STD_LOGIC;
  signal xbar_n_1172 : STD_LOGIC;
  signal xbar_n_1173 : STD_LOGIC;
  signal xbar_n_1174 : STD_LOGIC;
  signal xbar_n_1175 : STD_LOGIC;
  signal xbar_n_118 : STD_LOGIC;
  signal xbar_n_1185 : STD_LOGIC;
  signal xbar_n_1186 : STD_LOGIC;
  signal xbar_n_1187 : STD_LOGIC;
  signal xbar_n_1188 : STD_LOGIC;
  signal xbar_n_1189 : STD_LOGIC;
  signal xbar_n_119 : STD_LOGIC;
  signal xbar_n_1190 : STD_LOGIC;
  signal xbar_n_1191 : STD_LOGIC;
  signal xbar_n_1192 : STD_LOGIC;
  signal xbar_n_1193 : STD_LOGIC;
  signal xbar_n_1194 : STD_LOGIC;
  signal xbar_n_1195 : STD_LOGIC;
  signal xbar_n_1196 : STD_LOGIC;
  signal xbar_n_1197 : STD_LOGIC;
  signal xbar_n_1198 : STD_LOGIC;
  signal xbar_n_1199 : STD_LOGIC;
  signal xbar_n_120 : STD_LOGIC;
  signal xbar_n_1200 : STD_LOGIC;
  signal xbar_n_1201 : STD_LOGIC;
  signal xbar_n_1202 : STD_LOGIC;
  signal xbar_n_1203 : STD_LOGIC;
  signal xbar_n_1204 : STD_LOGIC;
  signal xbar_n_1205 : STD_LOGIC;
  signal xbar_n_1206 : STD_LOGIC;
  signal xbar_n_1207 : STD_LOGIC;
  signal xbar_n_121 : STD_LOGIC;
  signal xbar_n_1217 : STD_LOGIC;
  signal xbar_n_1218 : STD_LOGIC;
  signal xbar_n_1219 : STD_LOGIC;
  signal xbar_n_122 : STD_LOGIC;
  signal xbar_n_1220 : STD_LOGIC;
  signal xbar_n_1221 : STD_LOGIC;
  signal xbar_n_1222 : STD_LOGIC;
  signal xbar_n_1223 : STD_LOGIC;
  signal xbar_n_1224 : STD_LOGIC;
  signal xbar_n_1225 : STD_LOGIC;
  signal xbar_n_1226 : STD_LOGIC;
  signal xbar_n_1227 : STD_LOGIC;
  signal xbar_n_1228 : STD_LOGIC;
  signal xbar_n_1229 : STD_LOGIC;
  signal xbar_n_123 : STD_LOGIC;
  signal xbar_n_1230 : STD_LOGIC;
  signal xbar_n_1231 : STD_LOGIC;
  signal xbar_n_1232 : STD_LOGIC;
  signal xbar_n_1233 : STD_LOGIC;
  signal xbar_n_1234 : STD_LOGIC;
  signal xbar_n_1235 : STD_LOGIC;
  signal xbar_n_1236 : STD_LOGIC;
  signal xbar_n_1237 : STD_LOGIC;
  signal xbar_n_1238 : STD_LOGIC;
  signal xbar_n_1239 : STD_LOGIC;
  signal xbar_n_124 : STD_LOGIC;
  signal xbar_n_1249 : STD_LOGIC;
  signal xbar_n_125 : STD_LOGIC;
  signal xbar_n_1250 : STD_LOGIC;
  signal xbar_n_1251 : STD_LOGIC;
  signal xbar_n_1252 : STD_LOGIC;
  signal xbar_n_1253 : STD_LOGIC;
  signal xbar_n_1254 : STD_LOGIC;
  signal xbar_n_1255 : STD_LOGIC;
  signal xbar_n_1256 : STD_LOGIC;
  signal xbar_n_1257 : STD_LOGIC;
  signal xbar_n_1258 : STD_LOGIC;
  signal xbar_n_1259 : STD_LOGIC;
  signal xbar_n_126 : STD_LOGIC;
  signal xbar_n_1260 : STD_LOGIC;
  signal xbar_n_1261 : STD_LOGIC;
  signal xbar_n_1262 : STD_LOGIC;
  signal xbar_n_1263 : STD_LOGIC;
  signal xbar_n_1264 : STD_LOGIC;
  signal xbar_n_1265 : STD_LOGIC;
  signal xbar_n_1266 : STD_LOGIC;
  signal xbar_n_1267 : STD_LOGIC;
  signal xbar_n_1268 : STD_LOGIC;
  signal xbar_n_1269 : STD_LOGIC;
  signal xbar_n_127 : STD_LOGIC;
  signal xbar_n_1270 : STD_LOGIC;
  signal xbar_n_1271 : STD_LOGIC;
  signal xbar_n_1281 : STD_LOGIC;
  signal xbar_n_1282 : STD_LOGIC;
  signal xbar_n_1283 : STD_LOGIC;
  signal xbar_n_1284 : STD_LOGIC;
  signal xbar_n_1285 : STD_LOGIC;
  signal xbar_n_1286 : STD_LOGIC;
  signal xbar_n_1287 : STD_LOGIC;
  signal xbar_n_1288 : STD_LOGIC;
  signal xbar_n_1289 : STD_LOGIC;
  signal xbar_n_1290 : STD_LOGIC;
  signal xbar_n_1291 : STD_LOGIC;
  signal xbar_n_1292 : STD_LOGIC;
  signal xbar_n_1293 : STD_LOGIC;
  signal xbar_n_1294 : STD_LOGIC;
  signal xbar_n_1295 : STD_LOGIC;
  signal xbar_n_1296 : STD_LOGIC;
  signal xbar_n_1297 : STD_LOGIC;
  signal xbar_n_1298 : STD_LOGIC;
  signal xbar_n_1299 : STD_LOGIC;
  signal xbar_n_1300 : STD_LOGIC;
  signal xbar_n_1301 : STD_LOGIC;
  signal xbar_n_1302 : STD_LOGIC;
  signal xbar_n_1303 : STD_LOGIC;
  signal xbar_n_1304 : STD_LOGIC;
  signal xbar_n_1305 : STD_LOGIC;
  signal xbar_n_1306 : STD_LOGIC;
  signal xbar_n_1307 : STD_LOGIC;
  signal xbar_n_137 : STD_LOGIC;
  signal xbar_n_138 : STD_LOGIC;
  signal xbar_n_139 : STD_LOGIC;
  signal xbar_n_140 : STD_LOGIC;
  signal xbar_n_141 : STD_LOGIC;
  signal xbar_n_142 : STD_LOGIC;
  signal xbar_n_143 : STD_LOGIC;
  signal xbar_n_144 : STD_LOGIC;
  signal xbar_n_145 : STD_LOGIC;
  signal xbar_n_146 : STD_LOGIC;
  signal xbar_n_147 : STD_LOGIC;
  signal xbar_n_148 : STD_LOGIC;
  signal xbar_n_149 : STD_LOGIC;
  signal xbar_n_150 : STD_LOGIC;
  signal xbar_n_151 : STD_LOGIC;
  signal xbar_n_152 : STD_LOGIC;
  signal xbar_n_153 : STD_LOGIC;
  signal xbar_n_154 : STD_LOGIC;
  signal xbar_n_155 : STD_LOGIC;
  signal xbar_n_169 : STD_LOGIC;
  signal xbar_n_170 : STD_LOGIC;
  signal xbar_n_171 : STD_LOGIC;
  signal xbar_n_172 : STD_LOGIC;
  signal xbar_n_173 : STD_LOGIC;
  signal xbar_n_174 : STD_LOGIC;
  signal xbar_n_175 : STD_LOGIC;
  signal xbar_n_176 : STD_LOGIC;
  signal xbar_n_177 : STD_LOGIC;
  signal xbar_n_178 : STD_LOGIC;
  signal xbar_n_179 : STD_LOGIC;
  signal xbar_n_180 : STD_LOGIC;
  signal xbar_n_181 : STD_LOGIC;
  signal xbar_n_182 : STD_LOGIC;
  signal xbar_n_183 : STD_LOGIC;
  signal xbar_n_184 : STD_LOGIC;
  signal xbar_n_185 : STD_LOGIC;
  signal xbar_n_186 : STD_LOGIC;
  signal xbar_n_187 : STD_LOGIC;
  signal xbar_n_188 : STD_LOGIC;
  signal xbar_n_189 : STD_LOGIC;
  signal xbar_n_190 : STD_LOGIC;
  signal xbar_n_191 : STD_LOGIC;
  signal xbar_n_201 : STD_LOGIC;
  signal xbar_n_202 : STD_LOGIC;
  signal xbar_n_203 : STD_LOGIC;
  signal xbar_n_204 : STD_LOGIC;
  signal xbar_n_205 : STD_LOGIC;
  signal xbar_n_206 : STD_LOGIC;
  signal xbar_n_207 : STD_LOGIC;
  signal xbar_n_208 : STD_LOGIC;
  signal xbar_n_209 : STD_LOGIC;
  signal xbar_n_210 : STD_LOGIC;
  signal xbar_n_211 : STD_LOGIC;
  signal xbar_n_212 : STD_LOGIC;
  signal xbar_n_213 : STD_LOGIC;
  signal xbar_n_214 : STD_LOGIC;
  signal xbar_n_215 : STD_LOGIC;
  signal xbar_n_216 : STD_LOGIC;
  signal xbar_n_217 : STD_LOGIC;
  signal xbar_n_218 : STD_LOGIC;
  signal xbar_n_219 : STD_LOGIC;
  signal xbar_n_220 : STD_LOGIC;
  signal xbar_n_221 : STD_LOGIC;
  signal xbar_n_222 : STD_LOGIC;
  signal xbar_n_223 : STD_LOGIC;
  signal xbar_n_224 : STD_LOGIC;
  signal xbar_n_225 : STD_LOGIC;
  signal xbar_n_226 : STD_LOGIC;
  signal xbar_n_227 : STD_LOGIC;
  signal xbar_n_228 : STD_LOGIC;
  signal xbar_n_233 : STD_LOGIC;
  signal xbar_n_234 : STD_LOGIC;
  signal xbar_n_235 : STD_LOGIC;
  signal xbar_n_236 : STD_LOGIC;
  signal xbar_n_237 : STD_LOGIC;
  signal xbar_n_238 : STD_LOGIC;
  signal xbar_n_239 : STD_LOGIC;
  signal xbar_n_240 : STD_LOGIC;
  signal xbar_n_241 : STD_LOGIC;
  signal xbar_n_242 : STD_LOGIC;
  signal xbar_n_243 : STD_LOGIC;
  signal xbar_n_244 : STD_LOGIC;
  signal xbar_n_245 : STD_LOGIC;
  signal xbar_n_246 : STD_LOGIC;
  signal xbar_n_247 : STD_LOGIC;
  signal xbar_n_248 : STD_LOGIC;
  signal xbar_n_249 : STD_LOGIC;
  signal xbar_n_250 : STD_LOGIC;
  signal xbar_n_251 : STD_LOGIC;
  signal xbar_n_252 : STD_LOGIC;
  signal xbar_n_253 : STD_LOGIC;
  signal xbar_n_254 : STD_LOGIC;
  signal xbar_n_255 : STD_LOGIC;
  signal xbar_n_256 : STD_LOGIC;
  signal xbar_n_257 : STD_LOGIC;
  signal xbar_n_258 : STD_LOGIC;
  signal xbar_n_259 : STD_LOGIC;
  signal xbar_n_260 : STD_LOGIC;
  signal xbar_n_265 : STD_LOGIC;
  signal xbar_n_266 : STD_LOGIC;
  signal xbar_n_267 : STD_LOGIC;
  signal xbar_n_268 : STD_LOGIC;
  signal xbar_n_269 : STD_LOGIC;
  signal xbar_n_270 : STD_LOGIC;
  signal xbar_n_271 : STD_LOGIC;
  signal xbar_n_272 : STD_LOGIC;
  signal xbar_n_273 : STD_LOGIC;
  signal xbar_n_274 : STD_LOGIC;
  signal xbar_n_275 : STD_LOGIC;
  signal xbar_n_276 : STD_LOGIC;
  signal xbar_n_277 : STD_LOGIC;
  signal xbar_n_278 : STD_LOGIC;
  signal xbar_n_279 : STD_LOGIC;
  signal xbar_n_280 : STD_LOGIC;
  signal xbar_n_281 : STD_LOGIC;
  signal xbar_n_282 : STD_LOGIC;
  signal xbar_n_283 : STD_LOGIC;
  signal xbar_n_284 : STD_LOGIC;
  signal xbar_n_285 : STD_LOGIC;
  signal xbar_n_286 : STD_LOGIC;
  signal xbar_n_287 : STD_LOGIC;
  signal xbar_n_297 : STD_LOGIC;
  signal xbar_n_298 : STD_LOGIC;
  signal xbar_n_299 : STD_LOGIC;
  signal xbar_n_300 : STD_LOGIC;
  signal xbar_n_301 : STD_LOGIC;
  signal xbar_n_302 : STD_LOGIC;
  signal xbar_n_303 : STD_LOGIC;
  signal xbar_n_304 : STD_LOGIC;
  signal xbar_n_305 : STD_LOGIC;
  signal xbar_n_306 : STD_LOGIC;
  signal xbar_n_307 : STD_LOGIC;
  signal xbar_n_308 : STD_LOGIC;
  signal xbar_n_309 : STD_LOGIC;
  signal xbar_n_310 : STD_LOGIC;
  signal xbar_n_311 : STD_LOGIC;
  signal xbar_n_312 : STD_LOGIC;
  signal xbar_n_313 : STD_LOGIC;
  signal xbar_n_314 : STD_LOGIC;
  signal xbar_n_315 : STD_LOGIC;
  signal xbar_n_316 : STD_LOGIC;
  signal xbar_n_317 : STD_LOGIC;
  signal xbar_n_318 : STD_LOGIC;
  signal xbar_n_319 : STD_LOGIC;
  signal xbar_n_329 : STD_LOGIC;
  signal xbar_n_330 : STD_LOGIC;
  signal xbar_n_331 : STD_LOGIC;
  signal xbar_n_332 : STD_LOGIC;
  signal xbar_n_333 : STD_LOGIC;
  signal xbar_n_334 : STD_LOGIC;
  signal xbar_n_335 : STD_LOGIC;
  signal xbar_n_336 : STD_LOGIC;
  signal xbar_n_337 : STD_LOGIC;
  signal xbar_n_338 : STD_LOGIC;
  signal xbar_n_339 : STD_LOGIC;
  signal xbar_n_340 : STD_LOGIC;
  signal xbar_n_341 : STD_LOGIC;
  signal xbar_n_342 : STD_LOGIC;
  signal xbar_n_343 : STD_LOGIC;
  signal xbar_n_344 : STD_LOGIC;
  signal xbar_n_345 : STD_LOGIC;
  signal xbar_n_346 : STD_LOGIC;
  signal xbar_n_347 : STD_LOGIC;
  signal xbar_n_348 : STD_LOGIC;
  signal xbar_n_349 : STD_LOGIC;
  signal xbar_n_350 : STD_LOGIC;
  signal xbar_n_351 : STD_LOGIC;
  signal xbar_n_361 : STD_LOGIC;
  signal xbar_n_362 : STD_LOGIC;
  signal xbar_n_363 : STD_LOGIC;
  signal xbar_n_364 : STD_LOGIC;
  signal xbar_n_365 : STD_LOGIC;
  signal xbar_n_366 : STD_LOGIC;
  signal xbar_n_367 : STD_LOGIC;
  signal xbar_n_368 : STD_LOGIC;
  signal xbar_n_369 : STD_LOGIC;
  signal xbar_n_370 : STD_LOGIC;
  signal xbar_n_371 : STD_LOGIC;
  signal xbar_n_372 : STD_LOGIC;
  signal xbar_n_373 : STD_LOGIC;
  signal xbar_n_374 : STD_LOGIC;
  signal xbar_n_375 : STD_LOGIC;
  signal xbar_n_376 : STD_LOGIC;
  signal xbar_n_377 : STD_LOGIC;
  signal xbar_n_378 : STD_LOGIC;
  signal xbar_n_379 : STD_LOGIC;
  signal xbar_n_380 : STD_LOGIC;
  signal xbar_n_381 : STD_LOGIC;
  signal xbar_n_382 : STD_LOGIC;
  signal xbar_n_383 : STD_LOGIC;
  signal xbar_n_393 : STD_LOGIC;
  signal xbar_n_394 : STD_LOGIC;
  signal xbar_n_395 : STD_LOGIC;
  signal xbar_n_396 : STD_LOGIC;
  signal xbar_n_397 : STD_LOGIC;
  signal xbar_n_398 : STD_LOGIC;
  signal xbar_n_399 : STD_LOGIC;
  signal xbar_n_400 : STD_LOGIC;
  signal xbar_n_401 : STD_LOGIC;
  signal xbar_n_402 : STD_LOGIC;
  signal xbar_n_403 : STD_LOGIC;
  signal xbar_n_404 : STD_LOGIC;
  signal xbar_n_405 : STD_LOGIC;
  signal xbar_n_406 : STD_LOGIC;
  signal xbar_n_407 : STD_LOGIC;
  signal xbar_n_408 : STD_LOGIC;
  signal xbar_n_409 : STD_LOGIC;
  signal xbar_n_41 : STD_LOGIC;
  signal xbar_n_410 : STD_LOGIC;
  signal xbar_n_411 : STD_LOGIC;
  signal xbar_n_412 : STD_LOGIC;
  signal xbar_n_413 : STD_LOGIC;
  signal xbar_n_414 : STD_LOGIC;
  signal xbar_n_415 : STD_LOGIC;
  signal xbar_n_416 : STD_LOGIC;
  signal xbar_n_417 : STD_LOGIC;
  signal xbar_n_418 : STD_LOGIC;
  signal xbar_n_419 : STD_LOGIC;
  signal xbar_n_42 : STD_LOGIC;
  signal xbar_n_43 : STD_LOGIC;
  signal xbar_n_44 : STD_LOGIC;
  signal xbar_n_45 : STD_LOGIC;
  signal xbar_n_46 : STD_LOGIC;
  signal xbar_n_47 : STD_LOGIC;
  signal xbar_n_48 : STD_LOGIC;
  signal xbar_n_49 : STD_LOGIC;
  signal xbar_n_50 : STD_LOGIC;
  signal xbar_n_51 : STD_LOGIC;
  signal xbar_n_52 : STD_LOGIC;
  signal xbar_n_53 : STD_LOGIC;
  signal xbar_n_54 : STD_LOGIC;
  signal xbar_n_55 : STD_LOGIC;
  signal xbar_n_56 : STD_LOGIC;
  signal xbar_n_57 : STD_LOGIC;
  signal xbar_n_58 : STD_LOGIC;
  signal xbar_n_59 : STD_LOGIC;
  signal xbar_n_60 : STD_LOGIC;
  signal xbar_n_61 : STD_LOGIC;
  signal xbar_n_62 : STD_LOGIC;
  signal xbar_n_63 : STD_LOGIC;
  signal xbar_n_73 : STD_LOGIC;
  signal xbar_n_74 : STD_LOGIC;
  signal xbar_n_75 : STD_LOGIC;
  signal xbar_n_76 : STD_LOGIC;
  signal xbar_n_77 : STD_LOGIC;
  signal xbar_n_78 : STD_LOGIC;
  signal xbar_n_79 : STD_LOGIC;
  signal xbar_n_80 : STD_LOGIC;
  signal xbar_n_81 : STD_LOGIC;
  signal xbar_n_82 : STD_LOGIC;
  signal xbar_n_83 : STD_LOGIC;
  signal xbar_n_84 : STD_LOGIC;
  signal xbar_n_85 : STD_LOGIC;
  signal xbar_n_86 : STD_LOGIC;
  signal xbar_n_87 : STD_LOGIC;
  signal xbar_n_88 : STD_LOGIC;
  signal xbar_n_89 : STD_LOGIC;
  signal xbar_n_90 : STD_LOGIC;
  signal xbar_n_91 : STD_LOGIC;
  signal xbar_n_92 : STD_LOGIC;
  signal xbar_n_929 : STD_LOGIC;
  signal xbar_n_93 : STD_LOGIC;
  signal xbar_n_930 : STD_LOGIC;
  signal xbar_n_931 : STD_LOGIC;
  signal xbar_n_932 : STD_LOGIC;
  signal xbar_n_933 : STD_LOGIC;
  signal xbar_n_934 : STD_LOGIC;
  signal xbar_n_935 : STD_LOGIC;
  signal xbar_n_936 : STD_LOGIC;
  signal xbar_n_937 : STD_LOGIC;
  signal xbar_n_938 : STD_LOGIC;
  signal xbar_n_939 : STD_LOGIC;
  signal xbar_n_94 : STD_LOGIC;
  signal xbar_n_940 : STD_LOGIC;
  signal xbar_n_941 : STD_LOGIC;
  signal xbar_n_942 : STD_LOGIC;
  signal xbar_n_943 : STD_LOGIC;
  signal xbar_n_944 : STD_LOGIC;
  signal xbar_n_945 : STD_LOGIC;
  signal xbar_n_946 : STD_LOGIC;
  signal xbar_n_947 : STD_LOGIC;
  signal xbar_n_948 : STD_LOGIC;
  signal xbar_n_949 : STD_LOGIC;
  signal xbar_n_95 : STD_LOGIC;
  signal xbar_n_950 : STD_LOGIC;
  signal xbar_n_951 : STD_LOGIC;
  signal xbar_n_96 : STD_LOGIC;
  signal xbar_n_961 : STD_LOGIC;
  signal xbar_n_962 : STD_LOGIC;
  signal xbar_n_963 : STD_LOGIC;
  signal xbar_n_964 : STD_LOGIC;
  signal xbar_n_965 : STD_LOGIC;
  signal xbar_n_966 : STD_LOGIC;
  signal xbar_n_967 : STD_LOGIC;
  signal xbar_n_968 : STD_LOGIC;
  signal xbar_n_969 : STD_LOGIC;
  signal xbar_n_97 : STD_LOGIC;
  signal xbar_n_970 : STD_LOGIC;
  signal xbar_n_971 : STD_LOGIC;
  signal xbar_n_972 : STD_LOGIC;
  signal xbar_n_973 : STD_LOGIC;
  signal xbar_n_974 : STD_LOGIC;
  signal xbar_n_975 : STD_LOGIC;
  signal xbar_n_976 : STD_LOGIC;
  signal xbar_n_977 : STD_LOGIC;
  signal xbar_n_978 : STD_LOGIC;
  signal xbar_n_979 : STD_LOGIC;
  signal xbar_n_98 : STD_LOGIC;
  signal xbar_n_980 : STD_LOGIC;
  signal xbar_n_981 : STD_LOGIC;
  signal xbar_n_982 : STD_LOGIC;
  signal xbar_n_983 : STD_LOGIC;
  signal xbar_n_984 : STD_LOGIC;
  signal xbar_n_985 : STD_LOGIC;
  signal xbar_n_986 : STD_LOGIC;
  signal xbar_n_987 : STD_LOGIC;
  signal xbar_n_988 : STD_LOGIC;
  signal xbar_n_99 : STD_LOGIC;
  signal xbar_n_993 : STD_LOGIC;
  signal xbar_n_994 : STD_LOGIC;
  signal xbar_n_995 : STD_LOGIC;
  signal xbar_n_996 : STD_LOGIC;
  signal xbar_n_997 : STD_LOGIC;
  signal xbar_n_998 : STD_LOGIC;
  signal xbar_n_999 : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_28_axi_crossbar,Vivado 2022.2";
begin
  M00_AXI_araddr(31) <= \<const0>\;
  M00_AXI_araddr(30) <= \<const0>\;
  M00_AXI_araddr(29) <= \<const0>\;
  M00_AXI_araddr(28) <= \<const0>\;
  M00_AXI_araddr(27) <= \<const0>\;
  M00_AXI_araddr(26) <= \<const0>\;
  M00_AXI_araddr(25) <= \<const0>\;
  M00_AXI_araddr(24) <= \<const0>\;
  M00_AXI_araddr(23) <= \<const0>\;
  M00_AXI_araddr(22) <= \<const0>\;
  M00_AXI_araddr(21) <= \<const0>\;
  M00_AXI_araddr(20) <= \<const0>\;
  M00_AXI_araddr(19) <= \<const0>\;
  M00_AXI_araddr(18) <= \<const0>\;
  M00_AXI_araddr(17) <= \<const0>\;
  M00_AXI_araddr(16) <= \<const0>\;
  M00_AXI_araddr(15) <= \<const0>\;
  M00_AXI_araddr(14) <= \<const0>\;
  M00_AXI_araddr(13) <= \<const0>\;
  M00_AXI_araddr(12) <= \<const0>\;
  M00_AXI_araddr(11) <= \<const0>\;
  M00_AXI_araddr(10) <= \<const0>\;
  M00_AXI_araddr(9) <= \<const0>\;
  M00_AXI_araddr(8) <= \<const0>\;
  M00_AXI_araddr(7) <= \<const0>\;
  M00_AXI_araddr(6) <= \<const0>\;
  M00_AXI_araddr(5) <= \<const0>\;
  M00_AXI_araddr(4 downto 0) <= \^m00_axi_araddr\(4 downto 0);
  M00_AXI_awaddr(31) <= \<const0>\;
  M00_AXI_awaddr(30) <= \<const0>\;
  M00_AXI_awaddr(29) <= \<const0>\;
  M00_AXI_awaddr(28) <= \<const0>\;
  M00_AXI_awaddr(27) <= \<const0>\;
  M00_AXI_awaddr(26) <= \<const0>\;
  M00_AXI_awaddr(25) <= \<const0>\;
  M00_AXI_awaddr(24) <= \<const0>\;
  M00_AXI_awaddr(23) <= \<const0>\;
  M00_AXI_awaddr(22) <= \<const0>\;
  M00_AXI_awaddr(21) <= \<const0>\;
  M00_AXI_awaddr(20) <= \<const0>\;
  M00_AXI_awaddr(19) <= \<const0>\;
  M00_AXI_awaddr(18) <= \<const0>\;
  M00_AXI_awaddr(17) <= \<const0>\;
  M00_AXI_awaddr(16) <= \<const0>\;
  M00_AXI_awaddr(15) <= \<const0>\;
  M00_AXI_awaddr(14) <= \<const0>\;
  M00_AXI_awaddr(13) <= \<const0>\;
  M00_AXI_awaddr(12) <= \<const0>\;
  M00_AXI_awaddr(11) <= \<const0>\;
  M00_AXI_awaddr(10) <= \<const0>\;
  M00_AXI_awaddr(9) <= \<const0>\;
  M00_AXI_awaddr(8) <= \<const0>\;
  M00_AXI_awaddr(7) <= \<const0>\;
  M00_AXI_awaddr(6) <= \<const0>\;
  M00_AXI_awaddr(5) <= \<const0>\;
  M00_AXI_awaddr(4 downto 0) <= \^m00_axi_awaddr\(4 downto 0);
  M01_AXI_araddr(31) <= \<const0>\;
  M01_AXI_araddr(30) <= \<const0>\;
  M01_AXI_araddr(29) <= \<const0>\;
  M01_AXI_araddr(28) <= \<const0>\;
  M01_AXI_araddr(27) <= \<const0>\;
  M01_AXI_araddr(26) <= \<const0>\;
  M01_AXI_araddr(25) <= \<const0>\;
  M01_AXI_araddr(24) <= \<const0>\;
  M01_AXI_araddr(23) <= \<const0>\;
  M01_AXI_araddr(22) <= \<const0>\;
  M01_AXI_araddr(21) <= \<const0>\;
  M01_AXI_araddr(20) <= \<const0>\;
  M01_AXI_araddr(19) <= \<const0>\;
  M01_AXI_araddr(18) <= \<const0>\;
  M01_AXI_araddr(17) <= \<const0>\;
  M01_AXI_araddr(16) <= \<const0>\;
  M01_AXI_araddr(15) <= \<const0>\;
  M01_AXI_araddr(14) <= \<const0>\;
  M01_AXI_araddr(13) <= \<const0>\;
  M01_AXI_araddr(12) <= \<const0>\;
  M01_AXI_araddr(11) <= \<const0>\;
  M01_AXI_araddr(10) <= \<const0>\;
  M01_AXI_araddr(9) <= \<const0>\;
  M01_AXI_araddr(8 downto 0) <= \^m01_axi_araddr\(8 downto 0);
  M01_AXI_awaddr(31) <= \<const0>\;
  M01_AXI_awaddr(30) <= \<const0>\;
  M01_AXI_awaddr(29) <= \<const0>\;
  M01_AXI_awaddr(28) <= \<const0>\;
  M01_AXI_awaddr(27) <= \<const0>\;
  M01_AXI_awaddr(26) <= \<const0>\;
  M01_AXI_awaddr(25) <= \<const0>\;
  M01_AXI_awaddr(24) <= \<const0>\;
  M01_AXI_awaddr(23) <= \<const0>\;
  M01_AXI_awaddr(22) <= \<const0>\;
  M01_AXI_awaddr(21) <= \<const0>\;
  M01_AXI_awaddr(20) <= \<const0>\;
  M01_AXI_awaddr(19) <= \<const0>\;
  M01_AXI_awaddr(18) <= \<const0>\;
  M01_AXI_awaddr(17) <= \<const0>\;
  M01_AXI_awaddr(16) <= \<const0>\;
  M01_AXI_awaddr(15) <= \<const0>\;
  M01_AXI_awaddr(14) <= \<const0>\;
  M01_AXI_awaddr(13) <= \<const0>\;
  M01_AXI_awaddr(12) <= \<const0>\;
  M01_AXI_awaddr(11) <= \<const0>\;
  M01_AXI_awaddr(10) <= \<const0>\;
  M01_AXI_awaddr(9) <= \<const0>\;
  M01_AXI_awaddr(8 downto 0) <= \^m01_axi_awaddr\(8 downto 0);
  M02_AXI_araddr(31) <= \<const0>\;
  M02_AXI_araddr(30) <= \<const0>\;
  M02_AXI_araddr(29) <= \<const0>\;
  M02_AXI_araddr(28) <= \<const0>\;
  M02_AXI_araddr(27) <= \<const0>\;
  M02_AXI_araddr(26) <= \<const0>\;
  M02_AXI_araddr(25) <= \<const0>\;
  M02_AXI_araddr(24) <= \<const0>\;
  M02_AXI_araddr(23) <= \<const0>\;
  M02_AXI_araddr(22) <= \<const0>\;
  M02_AXI_araddr(21) <= \<const0>\;
  M02_AXI_araddr(20) <= \<const0>\;
  M02_AXI_araddr(19) <= \<const0>\;
  M02_AXI_araddr(18) <= \<const0>\;
  M02_AXI_araddr(17) <= \<const0>\;
  M02_AXI_araddr(16) <= \<const0>\;
  M02_AXI_araddr(15) <= \<const0>\;
  M02_AXI_araddr(14) <= \<const0>\;
  M02_AXI_araddr(13) <= \<const0>\;
  M02_AXI_araddr(12) <= \<const0>\;
  M02_AXI_araddr(11) <= \<const0>\;
  M02_AXI_araddr(10) <= \<const0>\;
  M02_AXI_araddr(9) <= \<const0>\;
  M02_AXI_araddr(8 downto 0) <= \^m02_axi_araddr\(8 downto 0);
  M02_AXI_awaddr(31) <= \<const0>\;
  M02_AXI_awaddr(30) <= \<const0>\;
  M02_AXI_awaddr(29) <= \<const0>\;
  M02_AXI_awaddr(28) <= \<const0>\;
  M02_AXI_awaddr(27) <= \<const0>\;
  M02_AXI_awaddr(26) <= \<const0>\;
  M02_AXI_awaddr(25) <= \<const0>\;
  M02_AXI_awaddr(24) <= \<const0>\;
  M02_AXI_awaddr(23) <= \<const0>\;
  M02_AXI_awaddr(22) <= \<const0>\;
  M02_AXI_awaddr(21) <= \<const0>\;
  M02_AXI_awaddr(20) <= \<const0>\;
  M02_AXI_awaddr(19) <= \<const0>\;
  M02_AXI_awaddr(18) <= \<const0>\;
  M02_AXI_awaddr(17) <= \<const0>\;
  M02_AXI_awaddr(16) <= \<const0>\;
  M02_AXI_awaddr(15) <= \<const0>\;
  M02_AXI_awaddr(14) <= \<const0>\;
  M02_AXI_awaddr(13) <= \<const0>\;
  M02_AXI_awaddr(12) <= \<const0>\;
  M02_AXI_awaddr(11) <= \<const0>\;
  M02_AXI_awaddr(10) <= \<const0>\;
  M02_AXI_awaddr(9) <= \<const0>\;
  M02_AXI_awaddr(8 downto 0) <= \^m02_axi_awaddr\(8 downto 0);
  M03_AXI_araddr(31) <= \<const0>\;
  M03_AXI_araddr(30) <= \<const0>\;
  M03_AXI_araddr(29) <= \<const0>\;
  M03_AXI_araddr(28) <= \<const0>\;
  M03_AXI_araddr(27) <= \<const0>\;
  M03_AXI_araddr(26) <= \<const0>\;
  M03_AXI_araddr(25) <= \<const0>\;
  M03_AXI_araddr(24) <= \<const0>\;
  M03_AXI_araddr(23) <= \<const0>\;
  M03_AXI_araddr(22) <= \<const0>\;
  M03_AXI_araddr(21) <= \<const0>\;
  M03_AXI_araddr(20) <= \<const0>\;
  M03_AXI_araddr(19) <= \<const0>\;
  M03_AXI_araddr(18) <= \<const0>\;
  M03_AXI_araddr(17) <= \<const0>\;
  M03_AXI_araddr(16) <= \<const0>\;
  M03_AXI_araddr(15) <= \<const0>\;
  M03_AXI_araddr(14) <= \<const0>\;
  M03_AXI_araddr(13) <= \<const0>\;
  M03_AXI_araddr(12) <= \<const0>\;
  M03_AXI_araddr(11) <= \<const0>\;
  M03_AXI_araddr(10) <= \<const0>\;
  M03_AXI_araddr(9) <= \<const0>\;
  M03_AXI_araddr(8 downto 0) <= \^m03_axi_araddr\(8 downto 0);
  M03_AXI_awaddr(31) <= \<const0>\;
  M03_AXI_awaddr(30) <= \<const0>\;
  M03_AXI_awaddr(29) <= \<const0>\;
  M03_AXI_awaddr(28) <= \<const0>\;
  M03_AXI_awaddr(27) <= \<const0>\;
  M03_AXI_awaddr(26) <= \<const0>\;
  M03_AXI_awaddr(25) <= \<const0>\;
  M03_AXI_awaddr(24) <= \<const0>\;
  M03_AXI_awaddr(23) <= \<const0>\;
  M03_AXI_awaddr(22) <= \<const0>\;
  M03_AXI_awaddr(21) <= \<const0>\;
  M03_AXI_awaddr(20) <= \<const0>\;
  M03_AXI_awaddr(19) <= \<const0>\;
  M03_AXI_awaddr(18) <= \<const0>\;
  M03_AXI_awaddr(17) <= \<const0>\;
  M03_AXI_awaddr(16) <= \<const0>\;
  M03_AXI_awaddr(15) <= \<const0>\;
  M03_AXI_awaddr(14) <= \<const0>\;
  M03_AXI_awaddr(13) <= \<const0>\;
  M03_AXI_awaddr(12) <= \<const0>\;
  M03_AXI_awaddr(11) <= \<const0>\;
  M03_AXI_awaddr(10) <= \<const0>\;
  M03_AXI_awaddr(9) <= \<const0>\;
  M03_AXI_awaddr(8 downto 0) <= \^m03_axi_awaddr\(8 downto 0);
  M04_AXI_araddr(31) <= \<const0>\;
  M04_AXI_araddr(30) <= \<const0>\;
  M04_AXI_araddr(29) <= \<const0>\;
  M04_AXI_araddr(28) <= \<const0>\;
  M04_AXI_araddr(27) <= \<const0>\;
  M04_AXI_araddr(26) <= \<const0>\;
  M04_AXI_araddr(25) <= \<const0>\;
  M04_AXI_araddr(24) <= \<const0>\;
  M04_AXI_araddr(23) <= \<const0>\;
  M04_AXI_araddr(22) <= \<const0>\;
  M04_AXI_araddr(21) <= \<const0>\;
  M04_AXI_araddr(20) <= \<const0>\;
  M04_AXI_araddr(19) <= \<const0>\;
  M04_AXI_araddr(18) <= \<const0>\;
  M04_AXI_araddr(17) <= \<const0>\;
  M04_AXI_araddr(16) <= \<const0>\;
  M04_AXI_araddr(15) <= \<const0>\;
  M04_AXI_araddr(14) <= \<const0>\;
  M04_AXI_araddr(13) <= \<const0>\;
  M04_AXI_araddr(12) <= \<const0>\;
  M04_AXI_araddr(11) <= \<const0>\;
  M04_AXI_araddr(10) <= \<const0>\;
  M04_AXI_araddr(9) <= \<const0>\;
  M04_AXI_araddr(8 downto 0) <= \^m04_axi_araddr\(8 downto 0);
  M04_AXI_awaddr(31) <= \<const0>\;
  M04_AXI_awaddr(30) <= \<const0>\;
  M04_AXI_awaddr(29) <= \<const0>\;
  M04_AXI_awaddr(28) <= \<const0>\;
  M04_AXI_awaddr(27) <= \<const0>\;
  M04_AXI_awaddr(26) <= \<const0>\;
  M04_AXI_awaddr(25) <= \<const0>\;
  M04_AXI_awaddr(24) <= \<const0>\;
  M04_AXI_awaddr(23) <= \<const0>\;
  M04_AXI_awaddr(22) <= \<const0>\;
  M04_AXI_awaddr(21) <= \<const0>\;
  M04_AXI_awaddr(20) <= \<const0>\;
  M04_AXI_awaddr(19) <= \<const0>\;
  M04_AXI_awaddr(18) <= \<const0>\;
  M04_AXI_awaddr(17) <= \<const0>\;
  M04_AXI_awaddr(16) <= \<const0>\;
  M04_AXI_awaddr(15) <= \<const0>\;
  M04_AXI_awaddr(14) <= \<const0>\;
  M04_AXI_awaddr(13) <= \<const0>\;
  M04_AXI_awaddr(12) <= \<const0>\;
  M04_AXI_awaddr(11) <= \<const0>\;
  M04_AXI_awaddr(10) <= \<const0>\;
  M04_AXI_awaddr(9) <= \<const0>\;
  M04_AXI_awaddr(8 downto 0) <= \^m04_axi_awaddr\(8 downto 0);
  M05_AXI_araddr(31) <= \<const0>\;
  M05_AXI_araddr(30) <= \<const0>\;
  M05_AXI_araddr(29) <= \<const0>\;
  M05_AXI_araddr(28) <= \<const0>\;
  M05_AXI_araddr(27) <= \<const0>\;
  M05_AXI_araddr(26) <= \<const0>\;
  M05_AXI_araddr(25) <= \<const0>\;
  M05_AXI_araddr(24) <= \<const0>\;
  M05_AXI_araddr(23) <= \<const0>\;
  M05_AXI_araddr(22) <= \<const0>\;
  M05_AXI_araddr(21) <= \<const0>\;
  M05_AXI_araddr(20) <= \<const0>\;
  M05_AXI_araddr(19) <= \<const0>\;
  M05_AXI_araddr(18) <= \<const0>\;
  M05_AXI_araddr(17) <= \<const0>\;
  M05_AXI_araddr(16) <= \<const0>\;
  M05_AXI_araddr(15) <= \<const0>\;
  M05_AXI_araddr(14) <= \<const0>\;
  M05_AXI_araddr(13) <= \<const0>\;
  M05_AXI_araddr(12) <= \<const0>\;
  M05_AXI_araddr(11) <= \<const0>\;
  M05_AXI_araddr(10) <= \<const0>\;
  M05_AXI_araddr(9) <= \<const0>\;
  M05_AXI_araddr(8) <= \<const0>\;
  M05_AXI_araddr(7) <= \<const0>\;
  M05_AXI_araddr(6) <= \<const0>\;
  M05_AXI_araddr(5) <= \<const0>\;
  M05_AXI_araddr(4) <= \<const0>\;
  M05_AXI_araddr(3 downto 0) <= \^m05_axi_araddr\(3 downto 0);
  M05_AXI_awaddr(31) <= \<const0>\;
  M05_AXI_awaddr(30) <= \<const0>\;
  M05_AXI_awaddr(29) <= \<const0>\;
  M05_AXI_awaddr(28) <= \<const0>\;
  M05_AXI_awaddr(27) <= \<const0>\;
  M05_AXI_awaddr(26) <= \<const0>\;
  M05_AXI_awaddr(25) <= \<const0>\;
  M05_AXI_awaddr(24) <= \<const0>\;
  M05_AXI_awaddr(23) <= \<const0>\;
  M05_AXI_awaddr(22) <= \<const0>\;
  M05_AXI_awaddr(21) <= \<const0>\;
  M05_AXI_awaddr(20) <= \<const0>\;
  M05_AXI_awaddr(19) <= \<const0>\;
  M05_AXI_awaddr(18) <= \<const0>\;
  M05_AXI_awaddr(17) <= \<const0>\;
  M05_AXI_awaddr(16) <= \<const0>\;
  M05_AXI_awaddr(15) <= \<const0>\;
  M05_AXI_awaddr(14) <= \<const0>\;
  M05_AXI_awaddr(13) <= \<const0>\;
  M05_AXI_awaddr(12) <= \<const0>\;
  M05_AXI_awaddr(11) <= \<const0>\;
  M05_AXI_awaddr(10) <= \<const0>\;
  M05_AXI_awaddr(9) <= \<const0>\;
  M05_AXI_awaddr(8) <= \<const0>\;
  M05_AXI_awaddr(7) <= \<const0>\;
  M05_AXI_awaddr(6) <= \<const0>\;
  M05_AXI_awaddr(5) <= \<const0>\;
  M05_AXI_awaddr(4) <= \<const0>\;
  M05_AXI_awaddr(3 downto 0) <= \^m05_axi_awaddr\(3 downto 0);
  M06_AXI_araddr(31) <= \<const0>\;
  M06_AXI_araddr(30) <= \<const0>\;
  M06_AXI_araddr(29) <= \<const0>\;
  M06_AXI_araddr(28) <= \<const0>\;
  M06_AXI_araddr(27) <= \<const0>\;
  M06_AXI_araddr(26) <= \<const0>\;
  M06_AXI_araddr(25) <= \<const0>\;
  M06_AXI_araddr(24) <= \<const0>\;
  M06_AXI_araddr(23) <= \<const0>\;
  M06_AXI_araddr(22) <= \<const0>\;
  M06_AXI_araddr(21) <= \<const0>\;
  M06_AXI_araddr(20) <= \<const0>\;
  M06_AXI_araddr(19) <= \<const0>\;
  M06_AXI_araddr(18) <= \<const0>\;
  M06_AXI_araddr(17) <= \<const0>\;
  M06_AXI_araddr(16) <= \<const0>\;
  M06_AXI_araddr(15) <= \<const0>\;
  M06_AXI_araddr(14) <= \<const0>\;
  M06_AXI_araddr(13) <= \<const0>\;
  M06_AXI_araddr(12) <= \<const0>\;
  M06_AXI_araddr(11) <= \<const0>\;
  M06_AXI_araddr(10) <= \<const0>\;
  M06_AXI_araddr(9) <= \<const0>\;
  M06_AXI_araddr(8) <= \<const0>\;
  M06_AXI_araddr(7) <= \<const0>\;
  M06_AXI_araddr(6) <= \<const0>\;
  M06_AXI_araddr(5) <= \<const0>\;
  M06_AXI_araddr(4) <= \<const0>\;
  M06_AXI_araddr(3 downto 0) <= \^m06_axi_araddr\(3 downto 0);
  M06_AXI_awaddr(31) <= \<const0>\;
  M06_AXI_awaddr(30) <= \<const0>\;
  M06_AXI_awaddr(29) <= \<const0>\;
  M06_AXI_awaddr(28) <= \<const0>\;
  M06_AXI_awaddr(27) <= \<const0>\;
  M06_AXI_awaddr(26) <= \<const0>\;
  M06_AXI_awaddr(25) <= \<const0>\;
  M06_AXI_awaddr(24) <= \<const0>\;
  M06_AXI_awaddr(23) <= \<const0>\;
  M06_AXI_awaddr(22) <= \<const0>\;
  M06_AXI_awaddr(21) <= \<const0>\;
  M06_AXI_awaddr(20) <= \<const0>\;
  M06_AXI_awaddr(19) <= \<const0>\;
  M06_AXI_awaddr(18) <= \<const0>\;
  M06_AXI_awaddr(17) <= \<const0>\;
  M06_AXI_awaddr(16) <= \<const0>\;
  M06_AXI_awaddr(15) <= \<const0>\;
  M06_AXI_awaddr(14) <= \<const0>\;
  M06_AXI_awaddr(13) <= \<const0>\;
  M06_AXI_awaddr(12) <= \<const0>\;
  M06_AXI_awaddr(11) <= \<const0>\;
  M06_AXI_awaddr(10) <= \<const0>\;
  M06_AXI_awaddr(9) <= \<const0>\;
  M06_AXI_awaddr(8) <= \<const0>\;
  M06_AXI_awaddr(7) <= \<const0>\;
  M06_AXI_awaddr(6) <= \<const0>\;
  M06_AXI_awaddr(5) <= \<const0>\;
  M06_AXI_awaddr(4) <= \<const0>\;
  M06_AXI_awaddr(3 downto 0) <= \^m06_axi_awaddr\(3 downto 0);
  M07_AXI_araddr(31) <= \<const0>\;
  M07_AXI_araddr(30) <= \<const0>\;
  M07_AXI_araddr(29) <= \<const0>\;
  M07_AXI_araddr(28) <= \<const0>\;
  M07_AXI_araddr(27) <= \<const0>\;
  M07_AXI_araddr(26) <= \<const0>\;
  M07_AXI_araddr(25) <= \<const0>\;
  M07_AXI_araddr(24) <= \<const0>\;
  M07_AXI_araddr(23) <= \<const0>\;
  M07_AXI_araddr(22) <= \<const0>\;
  M07_AXI_araddr(21) <= \<const0>\;
  M07_AXI_araddr(20) <= \<const0>\;
  M07_AXI_araddr(19) <= \<const0>\;
  M07_AXI_araddr(18) <= \<const0>\;
  M07_AXI_araddr(17) <= \<const0>\;
  M07_AXI_araddr(16) <= \<const0>\;
  M07_AXI_araddr(15) <= \<const0>\;
  M07_AXI_araddr(14) <= \<const0>\;
  M07_AXI_araddr(13) <= \<const0>\;
  M07_AXI_araddr(12) <= \<const0>\;
  M07_AXI_araddr(11) <= \<const0>\;
  M07_AXI_araddr(10) <= \<const0>\;
  M07_AXI_araddr(9) <= \<const0>\;
  M07_AXI_araddr(8 downto 0) <= \^m07_axi_araddr\(8 downto 0);
  M07_AXI_awaddr(31) <= \<const0>\;
  M07_AXI_awaddr(30) <= \<const0>\;
  M07_AXI_awaddr(29) <= \<const0>\;
  M07_AXI_awaddr(28) <= \<const0>\;
  M07_AXI_awaddr(27) <= \<const0>\;
  M07_AXI_awaddr(26) <= \<const0>\;
  M07_AXI_awaddr(25) <= \<const0>\;
  M07_AXI_awaddr(24) <= \<const0>\;
  M07_AXI_awaddr(23) <= \<const0>\;
  M07_AXI_awaddr(22) <= \<const0>\;
  M07_AXI_awaddr(21) <= \<const0>\;
  M07_AXI_awaddr(20) <= \<const0>\;
  M07_AXI_awaddr(19) <= \<const0>\;
  M07_AXI_awaddr(18) <= \<const0>\;
  M07_AXI_awaddr(17) <= \<const0>\;
  M07_AXI_awaddr(16) <= \<const0>\;
  M07_AXI_awaddr(15) <= \<const0>\;
  M07_AXI_awaddr(14) <= \<const0>\;
  M07_AXI_awaddr(13) <= \<const0>\;
  M07_AXI_awaddr(12) <= \<const0>\;
  M07_AXI_awaddr(11) <= \<const0>\;
  M07_AXI_awaddr(10) <= \<const0>\;
  M07_AXI_awaddr(9) <= \<const0>\;
  M07_AXI_awaddr(8 downto 0) <= \^m07_axi_awaddr\(8 downto 0);
  M08_AXI_araddr(31) <= \<const0>\;
  M08_AXI_araddr(30) <= \<const0>\;
  M08_AXI_araddr(29) <= \<const0>\;
  M08_AXI_araddr(28) <= \<const0>\;
  M08_AXI_araddr(27) <= \<const0>\;
  M08_AXI_araddr(26) <= \<const0>\;
  M08_AXI_araddr(25) <= \<const0>\;
  M08_AXI_araddr(24) <= \<const0>\;
  M08_AXI_araddr(23) <= \<const0>\;
  M08_AXI_araddr(22) <= \<const0>\;
  M08_AXI_araddr(21) <= \<const0>\;
  M08_AXI_araddr(20) <= \<const0>\;
  M08_AXI_araddr(19) <= \<const0>\;
  M08_AXI_araddr(18) <= \<const0>\;
  M08_AXI_araddr(17) <= \<const0>\;
  M08_AXI_araddr(16) <= \<const0>\;
  M08_AXI_araddr(15) <= \<const0>\;
  M08_AXI_araddr(14) <= \<const0>\;
  M08_AXI_araddr(13) <= \<const0>\;
  M08_AXI_araddr(12 downto 0) <= \^m08_axi_araddr\(12 downto 0);
  M08_AXI_awaddr(31) <= \<const0>\;
  M08_AXI_awaddr(30) <= \<const0>\;
  M08_AXI_awaddr(29) <= \<const0>\;
  M08_AXI_awaddr(28) <= \<const0>\;
  M08_AXI_awaddr(27) <= \<const0>\;
  M08_AXI_awaddr(26) <= \<const0>\;
  M08_AXI_awaddr(25) <= \<const0>\;
  M08_AXI_awaddr(24) <= \<const0>\;
  M08_AXI_awaddr(23) <= \<const0>\;
  M08_AXI_awaddr(22) <= \<const0>\;
  M08_AXI_awaddr(21) <= \<const0>\;
  M08_AXI_awaddr(20) <= \<const0>\;
  M08_AXI_awaddr(19) <= \<const0>\;
  M08_AXI_awaddr(18) <= \<const0>\;
  M08_AXI_awaddr(17) <= \<const0>\;
  M08_AXI_awaddr(16) <= \<const0>\;
  M08_AXI_awaddr(15) <= \<const0>\;
  M08_AXI_awaddr(14) <= \<const0>\;
  M08_AXI_awaddr(13) <= \<const0>\;
  M08_AXI_awaddr(12 downto 0) <= \^m08_axi_awaddr\(12 downto 0);
  M09_AXI_araddr(31) <= \<const0>\;
  M09_AXI_araddr(30) <= \<const0>\;
  M09_AXI_araddr(29) <= \<const0>\;
  M09_AXI_araddr(28) <= \<const0>\;
  M09_AXI_araddr(27) <= \<const0>\;
  M09_AXI_araddr(26) <= \<const0>\;
  M09_AXI_araddr(25) <= \<const0>\;
  M09_AXI_araddr(24) <= \<const0>\;
  M09_AXI_araddr(23) <= \<const0>\;
  M09_AXI_araddr(22) <= \<const0>\;
  M09_AXI_araddr(21) <= \<const0>\;
  M09_AXI_araddr(20) <= \<const0>\;
  M09_AXI_araddr(19) <= \<const0>\;
  M09_AXI_araddr(18) <= \<const0>\;
  M09_AXI_araddr(17) <= \<const0>\;
  M09_AXI_araddr(16) <= \<const0>\;
  M09_AXI_araddr(15) <= \<const0>\;
  M09_AXI_araddr(14) <= \<const0>\;
  M09_AXI_araddr(13) <= \<const0>\;
  M09_AXI_araddr(12) <= \<const0>\;
  M09_AXI_araddr(11) <= \<const0>\;
  M09_AXI_araddr(10) <= \<const0>\;
  M09_AXI_araddr(9) <= \<const0>\;
  M09_AXI_araddr(8 downto 0) <= \^m09_axi_araddr\(8 downto 0);
  M09_AXI_awaddr(31) <= \<const0>\;
  M09_AXI_awaddr(30) <= \<const0>\;
  M09_AXI_awaddr(29) <= \<const0>\;
  M09_AXI_awaddr(28) <= \<const0>\;
  M09_AXI_awaddr(27) <= \<const0>\;
  M09_AXI_awaddr(26) <= \<const0>\;
  M09_AXI_awaddr(25) <= \<const0>\;
  M09_AXI_awaddr(24) <= \<const0>\;
  M09_AXI_awaddr(23) <= \<const0>\;
  M09_AXI_awaddr(22) <= \<const0>\;
  M09_AXI_awaddr(21) <= \<const0>\;
  M09_AXI_awaddr(20) <= \<const0>\;
  M09_AXI_awaddr(19) <= \<const0>\;
  M09_AXI_awaddr(18) <= \<const0>\;
  M09_AXI_awaddr(17) <= \<const0>\;
  M09_AXI_awaddr(16) <= \<const0>\;
  M09_AXI_awaddr(15) <= \<const0>\;
  M09_AXI_awaddr(14) <= \<const0>\;
  M09_AXI_awaddr(13) <= \<const0>\;
  M09_AXI_awaddr(12) <= \<const0>\;
  M09_AXI_awaddr(11) <= \<const0>\;
  M09_AXI_awaddr(10) <= \<const0>\;
  M09_AXI_awaddr(9) <= \<const0>\;
  M09_AXI_awaddr(8 downto 0) <= \^m09_axi_awaddr\(8 downto 0);
  M10_AXI_araddr(31) <= \<const0>\;
  M10_AXI_araddr(30) <= \<const0>\;
  M10_AXI_araddr(29) <= \<const0>\;
  M10_AXI_araddr(28) <= \<const0>\;
  M10_AXI_araddr(27) <= \<const0>\;
  M10_AXI_araddr(26) <= \<const0>\;
  M10_AXI_araddr(25) <= \<const0>\;
  M10_AXI_araddr(24) <= \<const0>\;
  M10_AXI_araddr(23) <= \<const0>\;
  M10_AXI_araddr(22) <= \<const0>\;
  M10_AXI_araddr(21) <= \<const0>\;
  M10_AXI_araddr(20) <= \<const0>\;
  M10_AXI_araddr(19) <= \<const0>\;
  M10_AXI_araddr(18) <= \<const0>\;
  M10_AXI_araddr(17) <= \<const0>\;
  M10_AXI_araddr(16) <= \<const0>\;
  M10_AXI_araddr(15) <= \<const0>\;
  M10_AXI_araddr(14) <= \<const0>\;
  M10_AXI_araddr(13) <= \<const0>\;
  M10_AXI_araddr(12) <= \<const0>\;
  M10_AXI_araddr(11) <= \<const0>\;
  M10_AXI_araddr(10) <= \<const0>\;
  M10_AXI_araddr(9) <= \<const0>\;
  M10_AXI_araddr(8) <= \<const0>\;
  M10_AXI_araddr(7) <= \<const0>\;
  M10_AXI_araddr(6) <= \<const0>\;
  M10_AXI_araddr(5) <= \<const0>\;
  M10_AXI_araddr(4) <= \<const0>\;
  M10_AXI_araddr(3 downto 0) <= \^m10_axi_araddr\(3 downto 0);
  M10_AXI_awaddr(31) <= \<const0>\;
  M10_AXI_awaddr(30) <= \<const0>\;
  M10_AXI_awaddr(29) <= \<const0>\;
  M10_AXI_awaddr(28) <= \<const0>\;
  M10_AXI_awaddr(27) <= \<const0>\;
  M10_AXI_awaddr(26) <= \<const0>\;
  M10_AXI_awaddr(25) <= \<const0>\;
  M10_AXI_awaddr(24) <= \<const0>\;
  M10_AXI_awaddr(23) <= \<const0>\;
  M10_AXI_awaddr(22) <= \<const0>\;
  M10_AXI_awaddr(21) <= \<const0>\;
  M10_AXI_awaddr(20) <= \<const0>\;
  M10_AXI_awaddr(19) <= \<const0>\;
  M10_AXI_awaddr(18) <= \<const0>\;
  M10_AXI_awaddr(17) <= \<const0>\;
  M10_AXI_awaddr(16) <= \<const0>\;
  M10_AXI_awaddr(15) <= \<const0>\;
  M10_AXI_awaddr(14) <= \<const0>\;
  M10_AXI_awaddr(13) <= \<const0>\;
  M10_AXI_awaddr(12) <= \<const0>\;
  M10_AXI_awaddr(11) <= \<const0>\;
  M10_AXI_awaddr(10) <= \<const0>\;
  M10_AXI_awaddr(9) <= \<const0>\;
  M10_AXI_awaddr(8) <= \<const0>\;
  M10_AXI_awaddr(7) <= \<const0>\;
  M10_AXI_awaddr(6) <= \<const0>\;
  M10_AXI_awaddr(5) <= \<const0>\;
  M10_AXI_awaddr(4) <= \<const0>\;
  M10_AXI_awaddr(3 downto 0) <= \^m10_axi_awaddr\(3 downto 0);
  M11_AXI_araddr(31) <= \<const0>\;
  M11_AXI_araddr(30) <= \<const0>\;
  M11_AXI_araddr(29) <= \<const0>\;
  M11_AXI_araddr(28) <= \<const0>\;
  M11_AXI_araddr(27) <= \<const0>\;
  M11_AXI_araddr(26) <= \<const0>\;
  M11_AXI_araddr(25) <= \<const0>\;
  M11_AXI_araddr(24) <= \<const0>\;
  M11_AXI_araddr(23) <= \<const0>\;
  M11_AXI_araddr(22) <= \<const0>\;
  M11_AXI_araddr(21) <= \<const0>\;
  M11_AXI_araddr(20) <= \<const0>\;
  M11_AXI_araddr(19) <= \<const0>\;
  M11_AXI_araddr(18) <= \<const0>\;
  M11_AXI_araddr(17) <= \<const0>\;
  M11_AXI_araddr(16) <= \<const0>\;
  M11_AXI_araddr(15) <= \<const0>\;
  M11_AXI_araddr(14) <= \<const0>\;
  M11_AXI_araddr(13) <= \<const0>\;
  M11_AXI_araddr(12) <= \<const0>\;
  M11_AXI_araddr(11) <= \<const0>\;
  M11_AXI_araddr(10) <= \<const0>\;
  M11_AXI_araddr(9) <= \<const0>\;
  M11_AXI_araddr(8 downto 0) <= \^m11_axi_araddr\(8 downto 0);
  M11_AXI_awaddr(31) <= \<const0>\;
  M11_AXI_awaddr(30) <= \<const0>\;
  M11_AXI_awaddr(29) <= \<const0>\;
  M11_AXI_awaddr(28) <= \<const0>\;
  M11_AXI_awaddr(27) <= \<const0>\;
  M11_AXI_awaddr(26) <= \<const0>\;
  M11_AXI_awaddr(25) <= \<const0>\;
  M11_AXI_awaddr(24) <= \<const0>\;
  M11_AXI_awaddr(23) <= \<const0>\;
  M11_AXI_awaddr(22) <= \<const0>\;
  M11_AXI_awaddr(21) <= \<const0>\;
  M11_AXI_awaddr(20) <= \<const0>\;
  M11_AXI_awaddr(19) <= \<const0>\;
  M11_AXI_awaddr(18) <= \<const0>\;
  M11_AXI_awaddr(17) <= \<const0>\;
  M11_AXI_awaddr(16) <= \<const0>\;
  M11_AXI_awaddr(15) <= \<const0>\;
  M11_AXI_awaddr(14) <= \<const0>\;
  M11_AXI_awaddr(13) <= \<const0>\;
  M11_AXI_awaddr(12) <= \<const0>\;
  M11_AXI_awaddr(11) <= \<const0>\;
  M11_AXI_awaddr(10) <= \<const0>\;
  M11_AXI_awaddr(9) <= \<const0>\;
  M11_AXI_awaddr(8 downto 0) <= \^m11_axi_awaddr\(8 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xbar: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_xbar_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(383) => xbar_n_929,
      m_axi_araddr(382) => xbar_n_930,
      m_axi_araddr(381) => xbar_n_931,
      m_axi_araddr(380) => xbar_n_932,
      m_axi_araddr(379) => xbar_n_933,
      m_axi_araddr(378) => xbar_n_934,
      m_axi_araddr(377) => xbar_n_935,
      m_axi_araddr(376) => xbar_n_936,
      m_axi_araddr(375) => xbar_n_937,
      m_axi_araddr(374) => xbar_n_938,
      m_axi_araddr(373) => xbar_n_939,
      m_axi_araddr(372) => xbar_n_940,
      m_axi_araddr(371) => xbar_n_941,
      m_axi_araddr(370) => xbar_n_942,
      m_axi_araddr(369) => xbar_n_943,
      m_axi_araddr(368) => xbar_n_944,
      m_axi_araddr(367) => xbar_n_945,
      m_axi_araddr(366) => xbar_n_946,
      m_axi_araddr(365) => xbar_n_947,
      m_axi_araddr(364) => xbar_n_948,
      m_axi_araddr(363) => xbar_n_949,
      m_axi_araddr(362) => xbar_n_950,
      m_axi_araddr(361) => xbar_n_951,
      m_axi_araddr(360 downto 352) => \^m11_axi_araddr\(8 downto 0),
      m_axi_araddr(351) => xbar_n_961,
      m_axi_araddr(350) => xbar_n_962,
      m_axi_araddr(349) => xbar_n_963,
      m_axi_araddr(348) => xbar_n_964,
      m_axi_araddr(347) => xbar_n_965,
      m_axi_araddr(346) => xbar_n_966,
      m_axi_araddr(345) => xbar_n_967,
      m_axi_araddr(344) => xbar_n_968,
      m_axi_araddr(343) => xbar_n_969,
      m_axi_araddr(342) => xbar_n_970,
      m_axi_araddr(341) => xbar_n_971,
      m_axi_araddr(340) => xbar_n_972,
      m_axi_araddr(339) => xbar_n_973,
      m_axi_araddr(338) => xbar_n_974,
      m_axi_araddr(337) => xbar_n_975,
      m_axi_araddr(336) => xbar_n_976,
      m_axi_araddr(335) => xbar_n_977,
      m_axi_araddr(334) => xbar_n_978,
      m_axi_araddr(333) => xbar_n_979,
      m_axi_araddr(332) => xbar_n_980,
      m_axi_araddr(331) => xbar_n_981,
      m_axi_araddr(330) => xbar_n_982,
      m_axi_araddr(329) => xbar_n_983,
      m_axi_araddr(328) => xbar_n_984,
      m_axi_araddr(327) => xbar_n_985,
      m_axi_araddr(326) => xbar_n_986,
      m_axi_araddr(325) => xbar_n_987,
      m_axi_araddr(324) => xbar_n_988,
      m_axi_araddr(323 downto 320) => \^m10_axi_araddr\(3 downto 0),
      m_axi_araddr(319) => xbar_n_993,
      m_axi_araddr(318) => xbar_n_994,
      m_axi_araddr(317) => xbar_n_995,
      m_axi_araddr(316) => xbar_n_996,
      m_axi_araddr(315) => xbar_n_997,
      m_axi_araddr(314) => xbar_n_998,
      m_axi_araddr(313) => xbar_n_999,
      m_axi_araddr(312) => xbar_n_1000,
      m_axi_araddr(311) => xbar_n_1001,
      m_axi_araddr(310) => xbar_n_1002,
      m_axi_araddr(309) => xbar_n_1003,
      m_axi_araddr(308) => xbar_n_1004,
      m_axi_araddr(307) => xbar_n_1005,
      m_axi_araddr(306) => xbar_n_1006,
      m_axi_araddr(305) => xbar_n_1007,
      m_axi_araddr(304) => xbar_n_1008,
      m_axi_araddr(303) => xbar_n_1009,
      m_axi_araddr(302) => xbar_n_1010,
      m_axi_araddr(301) => xbar_n_1011,
      m_axi_araddr(300) => xbar_n_1012,
      m_axi_araddr(299) => xbar_n_1013,
      m_axi_araddr(298) => xbar_n_1014,
      m_axi_araddr(297) => xbar_n_1015,
      m_axi_araddr(296 downto 288) => \^m09_axi_araddr\(8 downto 0),
      m_axi_araddr(287) => xbar_n_1025,
      m_axi_araddr(286) => xbar_n_1026,
      m_axi_araddr(285) => xbar_n_1027,
      m_axi_araddr(284) => xbar_n_1028,
      m_axi_araddr(283) => xbar_n_1029,
      m_axi_araddr(282) => xbar_n_1030,
      m_axi_araddr(281) => xbar_n_1031,
      m_axi_araddr(280) => xbar_n_1032,
      m_axi_araddr(279) => xbar_n_1033,
      m_axi_araddr(278) => xbar_n_1034,
      m_axi_araddr(277) => xbar_n_1035,
      m_axi_araddr(276) => xbar_n_1036,
      m_axi_araddr(275) => xbar_n_1037,
      m_axi_araddr(274) => xbar_n_1038,
      m_axi_araddr(273) => xbar_n_1039,
      m_axi_araddr(272) => xbar_n_1040,
      m_axi_araddr(271) => xbar_n_1041,
      m_axi_araddr(270) => xbar_n_1042,
      m_axi_araddr(269) => xbar_n_1043,
      m_axi_araddr(268 downto 256) => \^m08_axi_araddr\(12 downto 0),
      m_axi_araddr(255) => xbar_n_1057,
      m_axi_araddr(254) => xbar_n_1058,
      m_axi_araddr(253) => xbar_n_1059,
      m_axi_araddr(252) => xbar_n_1060,
      m_axi_araddr(251) => xbar_n_1061,
      m_axi_araddr(250) => xbar_n_1062,
      m_axi_araddr(249) => xbar_n_1063,
      m_axi_araddr(248) => xbar_n_1064,
      m_axi_araddr(247) => xbar_n_1065,
      m_axi_araddr(246) => xbar_n_1066,
      m_axi_araddr(245) => xbar_n_1067,
      m_axi_araddr(244) => xbar_n_1068,
      m_axi_araddr(243) => xbar_n_1069,
      m_axi_araddr(242) => xbar_n_1070,
      m_axi_araddr(241) => xbar_n_1071,
      m_axi_araddr(240) => xbar_n_1072,
      m_axi_araddr(239) => xbar_n_1073,
      m_axi_araddr(238) => xbar_n_1074,
      m_axi_araddr(237) => xbar_n_1075,
      m_axi_araddr(236) => xbar_n_1076,
      m_axi_araddr(235) => xbar_n_1077,
      m_axi_araddr(234) => xbar_n_1078,
      m_axi_araddr(233) => xbar_n_1079,
      m_axi_araddr(232 downto 224) => \^m07_axi_araddr\(8 downto 0),
      m_axi_araddr(223) => xbar_n_1089,
      m_axi_araddr(222) => xbar_n_1090,
      m_axi_araddr(221) => xbar_n_1091,
      m_axi_araddr(220) => xbar_n_1092,
      m_axi_araddr(219) => xbar_n_1093,
      m_axi_araddr(218) => xbar_n_1094,
      m_axi_araddr(217) => xbar_n_1095,
      m_axi_araddr(216) => xbar_n_1096,
      m_axi_araddr(215) => xbar_n_1097,
      m_axi_araddr(214) => xbar_n_1098,
      m_axi_araddr(213) => xbar_n_1099,
      m_axi_araddr(212) => xbar_n_1100,
      m_axi_araddr(211) => xbar_n_1101,
      m_axi_araddr(210) => xbar_n_1102,
      m_axi_araddr(209) => xbar_n_1103,
      m_axi_araddr(208) => xbar_n_1104,
      m_axi_araddr(207) => xbar_n_1105,
      m_axi_araddr(206) => xbar_n_1106,
      m_axi_araddr(205) => xbar_n_1107,
      m_axi_araddr(204) => xbar_n_1108,
      m_axi_araddr(203) => xbar_n_1109,
      m_axi_araddr(202) => xbar_n_1110,
      m_axi_araddr(201) => xbar_n_1111,
      m_axi_araddr(200) => xbar_n_1112,
      m_axi_araddr(199) => xbar_n_1113,
      m_axi_araddr(198) => xbar_n_1114,
      m_axi_araddr(197) => xbar_n_1115,
      m_axi_araddr(196) => xbar_n_1116,
      m_axi_araddr(195 downto 192) => \^m06_axi_araddr\(3 downto 0),
      m_axi_araddr(191) => xbar_n_1121,
      m_axi_araddr(190) => xbar_n_1122,
      m_axi_araddr(189) => xbar_n_1123,
      m_axi_araddr(188) => xbar_n_1124,
      m_axi_araddr(187) => xbar_n_1125,
      m_axi_araddr(186) => xbar_n_1126,
      m_axi_araddr(185) => xbar_n_1127,
      m_axi_araddr(184) => xbar_n_1128,
      m_axi_araddr(183) => xbar_n_1129,
      m_axi_araddr(182) => xbar_n_1130,
      m_axi_araddr(181) => xbar_n_1131,
      m_axi_araddr(180) => xbar_n_1132,
      m_axi_araddr(179) => xbar_n_1133,
      m_axi_araddr(178) => xbar_n_1134,
      m_axi_araddr(177) => xbar_n_1135,
      m_axi_araddr(176) => xbar_n_1136,
      m_axi_araddr(175) => xbar_n_1137,
      m_axi_araddr(174) => xbar_n_1138,
      m_axi_araddr(173) => xbar_n_1139,
      m_axi_araddr(172) => xbar_n_1140,
      m_axi_araddr(171) => xbar_n_1141,
      m_axi_araddr(170) => xbar_n_1142,
      m_axi_araddr(169) => xbar_n_1143,
      m_axi_araddr(168) => xbar_n_1144,
      m_axi_araddr(167) => xbar_n_1145,
      m_axi_araddr(166) => xbar_n_1146,
      m_axi_araddr(165) => xbar_n_1147,
      m_axi_araddr(164) => xbar_n_1148,
      m_axi_araddr(163 downto 160) => \^m05_axi_araddr\(3 downto 0),
      m_axi_araddr(159) => xbar_n_1153,
      m_axi_araddr(158) => xbar_n_1154,
      m_axi_araddr(157) => xbar_n_1155,
      m_axi_araddr(156) => xbar_n_1156,
      m_axi_araddr(155) => xbar_n_1157,
      m_axi_araddr(154) => xbar_n_1158,
      m_axi_araddr(153) => xbar_n_1159,
      m_axi_araddr(152) => xbar_n_1160,
      m_axi_araddr(151) => xbar_n_1161,
      m_axi_araddr(150) => xbar_n_1162,
      m_axi_araddr(149) => xbar_n_1163,
      m_axi_araddr(148) => xbar_n_1164,
      m_axi_araddr(147) => xbar_n_1165,
      m_axi_araddr(146) => xbar_n_1166,
      m_axi_araddr(145) => xbar_n_1167,
      m_axi_araddr(144) => xbar_n_1168,
      m_axi_araddr(143) => xbar_n_1169,
      m_axi_araddr(142) => xbar_n_1170,
      m_axi_araddr(141) => xbar_n_1171,
      m_axi_araddr(140) => xbar_n_1172,
      m_axi_araddr(139) => xbar_n_1173,
      m_axi_araddr(138) => xbar_n_1174,
      m_axi_araddr(137) => xbar_n_1175,
      m_axi_araddr(136 downto 128) => \^m04_axi_araddr\(8 downto 0),
      m_axi_araddr(127) => xbar_n_1185,
      m_axi_araddr(126) => xbar_n_1186,
      m_axi_araddr(125) => xbar_n_1187,
      m_axi_araddr(124) => xbar_n_1188,
      m_axi_araddr(123) => xbar_n_1189,
      m_axi_araddr(122) => xbar_n_1190,
      m_axi_araddr(121) => xbar_n_1191,
      m_axi_araddr(120) => xbar_n_1192,
      m_axi_araddr(119) => xbar_n_1193,
      m_axi_araddr(118) => xbar_n_1194,
      m_axi_araddr(117) => xbar_n_1195,
      m_axi_araddr(116) => xbar_n_1196,
      m_axi_araddr(115) => xbar_n_1197,
      m_axi_araddr(114) => xbar_n_1198,
      m_axi_araddr(113) => xbar_n_1199,
      m_axi_araddr(112) => xbar_n_1200,
      m_axi_araddr(111) => xbar_n_1201,
      m_axi_araddr(110) => xbar_n_1202,
      m_axi_araddr(109) => xbar_n_1203,
      m_axi_araddr(108) => xbar_n_1204,
      m_axi_araddr(107) => xbar_n_1205,
      m_axi_araddr(106) => xbar_n_1206,
      m_axi_araddr(105) => xbar_n_1207,
      m_axi_araddr(104 downto 96) => \^m03_axi_araddr\(8 downto 0),
      m_axi_araddr(95) => xbar_n_1217,
      m_axi_araddr(94) => xbar_n_1218,
      m_axi_araddr(93) => xbar_n_1219,
      m_axi_araddr(92) => xbar_n_1220,
      m_axi_araddr(91) => xbar_n_1221,
      m_axi_araddr(90) => xbar_n_1222,
      m_axi_araddr(89) => xbar_n_1223,
      m_axi_araddr(88) => xbar_n_1224,
      m_axi_araddr(87) => xbar_n_1225,
      m_axi_araddr(86) => xbar_n_1226,
      m_axi_araddr(85) => xbar_n_1227,
      m_axi_araddr(84) => xbar_n_1228,
      m_axi_araddr(83) => xbar_n_1229,
      m_axi_araddr(82) => xbar_n_1230,
      m_axi_araddr(81) => xbar_n_1231,
      m_axi_araddr(80) => xbar_n_1232,
      m_axi_araddr(79) => xbar_n_1233,
      m_axi_araddr(78) => xbar_n_1234,
      m_axi_araddr(77) => xbar_n_1235,
      m_axi_araddr(76) => xbar_n_1236,
      m_axi_araddr(75) => xbar_n_1237,
      m_axi_araddr(74) => xbar_n_1238,
      m_axi_araddr(73) => xbar_n_1239,
      m_axi_araddr(72 downto 64) => \^m02_axi_araddr\(8 downto 0),
      m_axi_araddr(63) => xbar_n_1249,
      m_axi_araddr(62) => xbar_n_1250,
      m_axi_araddr(61) => xbar_n_1251,
      m_axi_araddr(60) => xbar_n_1252,
      m_axi_araddr(59) => xbar_n_1253,
      m_axi_araddr(58) => xbar_n_1254,
      m_axi_araddr(57) => xbar_n_1255,
      m_axi_araddr(56) => xbar_n_1256,
      m_axi_araddr(55) => xbar_n_1257,
      m_axi_araddr(54) => xbar_n_1258,
      m_axi_araddr(53) => xbar_n_1259,
      m_axi_araddr(52) => xbar_n_1260,
      m_axi_araddr(51) => xbar_n_1261,
      m_axi_araddr(50) => xbar_n_1262,
      m_axi_araddr(49) => xbar_n_1263,
      m_axi_araddr(48) => xbar_n_1264,
      m_axi_araddr(47) => xbar_n_1265,
      m_axi_araddr(46) => xbar_n_1266,
      m_axi_araddr(45) => xbar_n_1267,
      m_axi_araddr(44) => xbar_n_1268,
      m_axi_araddr(43) => xbar_n_1269,
      m_axi_araddr(42) => xbar_n_1270,
      m_axi_araddr(41) => xbar_n_1271,
      m_axi_araddr(40 downto 32) => \^m01_axi_araddr\(8 downto 0),
      m_axi_araddr(31) => xbar_n_1281,
      m_axi_araddr(30) => xbar_n_1282,
      m_axi_araddr(29) => xbar_n_1283,
      m_axi_araddr(28) => xbar_n_1284,
      m_axi_araddr(27) => xbar_n_1285,
      m_axi_araddr(26) => xbar_n_1286,
      m_axi_araddr(25) => xbar_n_1287,
      m_axi_araddr(24) => xbar_n_1288,
      m_axi_araddr(23) => xbar_n_1289,
      m_axi_araddr(22) => xbar_n_1290,
      m_axi_araddr(21) => xbar_n_1291,
      m_axi_araddr(20) => xbar_n_1292,
      m_axi_araddr(19) => xbar_n_1293,
      m_axi_araddr(18) => xbar_n_1294,
      m_axi_araddr(17) => xbar_n_1295,
      m_axi_araddr(16) => xbar_n_1296,
      m_axi_araddr(15) => xbar_n_1297,
      m_axi_araddr(14) => xbar_n_1298,
      m_axi_araddr(13) => xbar_n_1299,
      m_axi_araddr(12) => xbar_n_1300,
      m_axi_araddr(11) => xbar_n_1301,
      m_axi_araddr(10) => xbar_n_1302,
      m_axi_araddr(9) => xbar_n_1303,
      m_axi_araddr(8) => xbar_n_1304,
      m_axi_araddr(7) => xbar_n_1305,
      m_axi_araddr(6) => xbar_n_1306,
      m_axi_araddr(5) => xbar_n_1307,
      m_axi_araddr(4 downto 0) => \^m00_axi_araddr\(4 downto 0),
      m_axi_arprot(35 downto 27) => NLW_xbar_m_axi_arprot_UNCONNECTED(35 downto 27),
      m_axi_arprot(26 downto 24) => M08_AXI_arprot(2 downto 0),
      m_axi_arprot(23 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(23 downto 0),
      m_axi_arready(11) => M11_AXI_arready,
      m_axi_arready(10) => M10_AXI_arready(0),
      m_axi_arready(9) => M09_AXI_arready(0),
      m_axi_arready(8) => M08_AXI_arready,
      m_axi_arready(7) => M07_AXI_arready(0),
      m_axi_arready(6) => M06_AXI_arready(0),
      m_axi_arready(5) => M05_AXI_arready(0),
      m_axi_arready(4) => M04_AXI_arready(0),
      m_axi_arready(3) => M03_AXI_arready(0),
      m_axi_arready(2) => M02_AXI_arready(0),
      m_axi_arready(1) => M01_AXI_arready(0),
      m_axi_arready(0) => M00_AXI_arready(0),
      m_axi_arvalid(11) => M11_AXI_arvalid,
      m_axi_arvalid(10) => M10_AXI_arvalid(0),
      m_axi_arvalid(9) => M09_AXI_arvalid(0),
      m_axi_arvalid(8) => M08_AXI_arvalid,
      m_axi_arvalid(7) => M07_AXI_arvalid(0),
      m_axi_arvalid(6) => M06_AXI_arvalid(0),
      m_axi_arvalid(5) => M05_AXI_arvalid(0),
      m_axi_arvalid(4) => M04_AXI_arvalid(0),
      m_axi_arvalid(3) => M03_AXI_arvalid(0),
      m_axi_arvalid(2) => M02_AXI_arvalid(0),
      m_axi_arvalid(1) => M01_AXI_arvalid(0),
      m_axi_arvalid(0) => M00_AXI_arvalid(0),
      m_axi_awaddr(383) => xbar_n_41,
      m_axi_awaddr(382) => xbar_n_42,
      m_axi_awaddr(381) => xbar_n_43,
      m_axi_awaddr(380) => xbar_n_44,
      m_axi_awaddr(379) => xbar_n_45,
      m_axi_awaddr(378) => xbar_n_46,
      m_axi_awaddr(377) => xbar_n_47,
      m_axi_awaddr(376) => xbar_n_48,
      m_axi_awaddr(375) => xbar_n_49,
      m_axi_awaddr(374) => xbar_n_50,
      m_axi_awaddr(373) => xbar_n_51,
      m_axi_awaddr(372) => xbar_n_52,
      m_axi_awaddr(371) => xbar_n_53,
      m_axi_awaddr(370) => xbar_n_54,
      m_axi_awaddr(369) => xbar_n_55,
      m_axi_awaddr(368) => xbar_n_56,
      m_axi_awaddr(367) => xbar_n_57,
      m_axi_awaddr(366) => xbar_n_58,
      m_axi_awaddr(365) => xbar_n_59,
      m_axi_awaddr(364) => xbar_n_60,
      m_axi_awaddr(363) => xbar_n_61,
      m_axi_awaddr(362) => xbar_n_62,
      m_axi_awaddr(361) => xbar_n_63,
      m_axi_awaddr(360 downto 352) => \^m11_axi_awaddr\(8 downto 0),
      m_axi_awaddr(351) => xbar_n_73,
      m_axi_awaddr(350) => xbar_n_74,
      m_axi_awaddr(349) => xbar_n_75,
      m_axi_awaddr(348) => xbar_n_76,
      m_axi_awaddr(347) => xbar_n_77,
      m_axi_awaddr(346) => xbar_n_78,
      m_axi_awaddr(345) => xbar_n_79,
      m_axi_awaddr(344) => xbar_n_80,
      m_axi_awaddr(343) => xbar_n_81,
      m_axi_awaddr(342) => xbar_n_82,
      m_axi_awaddr(341) => xbar_n_83,
      m_axi_awaddr(340) => xbar_n_84,
      m_axi_awaddr(339) => xbar_n_85,
      m_axi_awaddr(338) => xbar_n_86,
      m_axi_awaddr(337) => xbar_n_87,
      m_axi_awaddr(336) => xbar_n_88,
      m_axi_awaddr(335) => xbar_n_89,
      m_axi_awaddr(334) => xbar_n_90,
      m_axi_awaddr(333) => xbar_n_91,
      m_axi_awaddr(332) => xbar_n_92,
      m_axi_awaddr(331) => xbar_n_93,
      m_axi_awaddr(330) => xbar_n_94,
      m_axi_awaddr(329) => xbar_n_95,
      m_axi_awaddr(328) => xbar_n_96,
      m_axi_awaddr(327) => xbar_n_97,
      m_axi_awaddr(326) => xbar_n_98,
      m_axi_awaddr(325) => xbar_n_99,
      m_axi_awaddr(324) => xbar_n_100,
      m_axi_awaddr(323 downto 320) => \^m10_axi_awaddr\(3 downto 0),
      m_axi_awaddr(319) => xbar_n_105,
      m_axi_awaddr(318) => xbar_n_106,
      m_axi_awaddr(317) => xbar_n_107,
      m_axi_awaddr(316) => xbar_n_108,
      m_axi_awaddr(315) => xbar_n_109,
      m_axi_awaddr(314) => xbar_n_110,
      m_axi_awaddr(313) => xbar_n_111,
      m_axi_awaddr(312) => xbar_n_112,
      m_axi_awaddr(311) => xbar_n_113,
      m_axi_awaddr(310) => xbar_n_114,
      m_axi_awaddr(309) => xbar_n_115,
      m_axi_awaddr(308) => xbar_n_116,
      m_axi_awaddr(307) => xbar_n_117,
      m_axi_awaddr(306) => xbar_n_118,
      m_axi_awaddr(305) => xbar_n_119,
      m_axi_awaddr(304) => xbar_n_120,
      m_axi_awaddr(303) => xbar_n_121,
      m_axi_awaddr(302) => xbar_n_122,
      m_axi_awaddr(301) => xbar_n_123,
      m_axi_awaddr(300) => xbar_n_124,
      m_axi_awaddr(299) => xbar_n_125,
      m_axi_awaddr(298) => xbar_n_126,
      m_axi_awaddr(297) => xbar_n_127,
      m_axi_awaddr(296 downto 288) => \^m09_axi_awaddr\(8 downto 0),
      m_axi_awaddr(287) => xbar_n_137,
      m_axi_awaddr(286) => xbar_n_138,
      m_axi_awaddr(285) => xbar_n_139,
      m_axi_awaddr(284) => xbar_n_140,
      m_axi_awaddr(283) => xbar_n_141,
      m_axi_awaddr(282) => xbar_n_142,
      m_axi_awaddr(281) => xbar_n_143,
      m_axi_awaddr(280) => xbar_n_144,
      m_axi_awaddr(279) => xbar_n_145,
      m_axi_awaddr(278) => xbar_n_146,
      m_axi_awaddr(277) => xbar_n_147,
      m_axi_awaddr(276) => xbar_n_148,
      m_axi_awaddr(275) => xbar_n_149,
      m_axi_awaddr(274) => xbar_n_150,
      m_axi_awaddr(273) => xbar_n_151,
      m_axi_awaddr(272) => xbar_n_152,
      m_axi_awaddr(271) => xbar_n_153,
      m_axi_awaddr(270) => xbar_n_154,
      m_axi_awaddr(269) => xbar_n_155,
      m_axi_awaddr(268 downto 256) => \^m08_axi_awaddr\(12 downto 0),
      m_axi_awaddr(255) => xbar_n_169,
      m_axi_awaddr(254) => xbar_n_170,
      m_axi_awaddr(253) => xbar_n_171,
      m_axi_awaddr(252) => xbar_n_172,
      m_axi_awaddr(251) => xbar_n_173,
      m_axi_awaddr(250) => xbar_n_174,
      m_axi_awaddr(249) => xbar_n_175,
      m_axi_awaddr(248) => xbar_n_176,
      m_axi_awaddr(247) => xbar_n_177,
      m_axi_awaddr(246) => xbar_n_178,
      m_axi_awaddr(245) => xbar_n_179,
      m_axi_awaddr(244) => xbar_n_180,
      m_axi_awaddr(243) => xbar_n_181,
      m_axi_awaddr(242) => xbar_n_182,
      m_axi_awaddr(241) => xbar_n_183,
      m_axi_awaddr(240) => xbar_n_184,
      m_axi_awaddr(239) => xbar_n_185,
      m_axi_awaddr(238) => xbar_n_186,
      m_axi_awaddr(237) => xbar_n_187,
      m_axi_awaddr(236) => xbar_n_188,
      m_axi_awaddr(235) => xbar_n_189,
      m_axi_awaddr(234) => xbar_n_190,
      m_axi_awaddr(233) => xbar_n_191,
      m_axi_awaddr(232 downto 224) => \^m07_axi_awaddr\(8 downto 0),
      m_axi_awaddr(223) => xbar_n_201,
      m_axi_awaddr(222) => xbar_n_202,
      m_axi_awaddr(221) => xbar_n_203,
      m_axi_awaddr(220) => xbar_n_204,
      m_axi_awaddr(219) => xbar_n_205,
      m_axi_awaddr(218) => xbar_n_206,
      m_axi_awaddr(217) => xbar_n_207,
      m_axi_awaddr(216) => xbar_n_208,
      m_axi_awaddr(215) => xbar_n_209,
      m_axi_awaddr(214) => xbar_n_210,
      m_axi_awaddr(213) => xbar_n_211,
      m_axi_awaddr(212) => xbar_n_212,
      m_axi_awaddr(211) => xbar_n_213,
      m_axi_awaddr(210) => xbar_n_214,
      m_axi_awaddr(209) => xbar_n_215,
      m_axi_awaddr(208) => xbar_n_216,
      m_axi_awaddr(207) => xbar_n_217,
      m_axi_awaddr(206) => xbar_n_218,
      m_axi_awaddr(205) => xbar_n_219,
      m_axi_awaddr(204) => xbar_n_220,
      m_axi_awaddr(203) => xbar_n_221,
      m_axi_awaddr(202) => xbar_n_222,
      m_axi_awaddr(201) => xbar_n_223,
      m_axi_awaddr(200) => xbar_n_224,
      m_axi_awaddr(199) => xbar_n_225,
      m_axi_awaddr(198) => xbar_n_226,
      m_axi_awaddr(197) => xbar_n_227,
      m_axi_awaddr(196) => xbar_n_228,
      m_axi_awaddr(195 downto 192) => \^m06_axi_awaddr\(3 downto 0),
      m_axi_awaddr(191) => xbar_n_233,
      m_axi_awaddr(190) => xbar_n_234,
      m_axi_awaddr(189) => xbar_n_235,
      m_axi_awaddr(188) => xbar_n_236,
      m_axi_awaddr(187) => xbar_n_237,
      m_axi_awaddr(186) => xbar_n_238,
      m_axi_awaddr(185) => xbar_n_239,
      m_axi_awaddr(184) => xbar_n_240,
      m_axi_awaddr(183) => xbar_n_241,
      m_axi_awaddr(182) => xbar_n_242,
      m_axi_awaddr(181) => xbar_n_243,
      m_axi_awaddr(180) => xbar_n_244,
      m_axi_awaddr(179) => xbar_n_245,
      m_axi_awaddr(178) => xbar_n_246,
      m_axi_awaddr(177) => xbar_n_247,
      m_axi_awaddr(176) => xbar_n_248,
      m_axi_awaddr(175) => xbar_n_249,
      m_axi_awaddr(174) => xbar_n_250,
      m_axi_awaddr(173) => xbar_n_251,
      m_axi_awaddr(172) => xbar_n_252,
      m_axi_awaddr(171) => xbar_n_253,
      m_axi_awaddr(170) => xbar_n_254,
      m_axi_awaddr(169) => xbar_n_255,
      m_axi_awaddr(168) => xbar_n_256,
      m_axi_awaddr(167) => xbar_n_257,
      m_axi_awaddr(166) => xbar_n_258,
      m_axi_awaddr(165) => xbar_n_259,
      m_axi_awaddr(164) => xbar_n_260,
      m_axi_awaddr(163 downto 160) => \^m05_axi_awaddr\(3 downto 0),
      m_axi_awaddr(159) => xbar_n_265,
      m_axi_awaddr(158) => xbar_n_266,
      m_axi_awaddr(157) => xbar_n_267,
      m_axi_awaddr(156) => xbar_n_268,
      m_axi_awaddr(155) => xbar_n_269,
      m_axi_awaddr(154) => xbar_n_270,
      m_axi_awaddr(153) => xbar_n_271,
      m_axi_awaddr(152) => xbar_n_272,
      m_axi_awaddr(151) => xbar_n_273,
      m_axi_awaddr(150) => xbar_n_274,
      m_axi_awaddr(149) => xbar_n_275,
      m_axi_awaddr(148) => xbar_n_276,
      m_axi_awaddr(147) => xbar_n_277,
      m_axi_awaddr(146) => xbar_n_278,
      m_axi_awaddr(145) => xbar_n_279,
      m_axi_awaddr(144) => xbar_n_280,
      m_axi_awaddr(143) => xbar_n_281,
      m_axi_awaddr(142) => xbar_n_282,
      m_axi_awaddr(141) => xbar_n_283,
      m_axi_awaddr(140) => xbar_n_284,
      m_axi_awaddr(139) => xbar_n_285,
      m_axi_awaddr(138) => xbar_n_286,
      m_axi_awaddr(137) => xbar_n_287,
      m_axi_awaddr(136 downto 128) => \^m04_axi_awaddr\(8 downto 0),
      m_axi_awaddr(127) => xbar_n_297,
      m_axi_awaddr(126) => xbar_n_298,
      m_axi_awaddr(125) => xbar_n_299,
      m_axi_awaddr(124) => xbar_n_300,
      m_axi_awaddr(123) => xbar_n_301,
      m_axi_awaddr(122) => xbar_n_302,
      m_axi_awaddr(121) => xbar_n_303,
      m_axi_awaddr(120) => xbar_n_304,
      m_axi_awaddr(119) => xbar_n_305,
      m_axi_awaddr(118) => xbar_n_306,
      m_axi_awaddr(117) => xbar_n_307,
      m_axi_awaddr(116) => xbar_n_308,
      m_axi_awaddr(115) => xbar_n_309,
      m_axi_awaddr(114) => xbar_n_310,
      m_axi_awaddr(113) => xbar_n_311,
      m_axi_awaddr(112) => xbar_n_312,
      m_axi_awaddr(111) => xbar_n_313,
      m_axi_awaddr(110) => xbar_n_314,
      m_axi_awaddr(109) => xbar_n_315,
      m_axi_awaddr(108) => xbar_n_316,
      m_axi_awaddr(107) => xbar_n_317,
      m_axi_awaddr(106) => xbar_n_318,
      m_axi_awaddr(105) => xbar_n_319,
      m_axi_awaddr(104 downto 96) => \^m03_axi_awaddr\(8 downto 0),
      m_axi_awaddr(95) => xbar_n_329,
      m_axi_awaddr(94) => xbar_n_330,
      m_axi_awaddr(93) => xbar_n_331,
      m_axi_awaddr(92) => xbar_n_332,
      m_axi_awaddr(91) => xbar_n_333,
      m_axi_awaddr(90) => xbar_n_334,
      m_axi_awaddr(89) => xbar_n_335,
      m_axi_awaddr(88) => xbar_n_336,
      m_axi_awaddr(87) => xbar_n_337,
      m_axi_awaddr(86) => xbar_n_338,
      m_axi_awaddr(85) => xbar_n_339,
      m_axi_awaddr(84) => xbar_n_340,
      m_axi_awaddr(83) => xbar_n_341,
      m_axi_awaddr(82) => xbar_n_342,
      m_axi_awaddr(81) => xbar_n_343,
      m_axi_awaddr(80) => xbar_n_344,
      m_axi_awaddr(79) => xbar_n_345,
      m_axi_awaddr(78) => xbar_n_346,
      m_axi_awaddr(77) => xbar_n_347,
      m_axi_awaddr(76) => xbar_n_348,
      m_axi_awaddr(75) => xbar_n_349,
      m_axi_awaddr(74) => xbar_n_350,
      m_axi_awaddr(73) => xbar_n_351,
      m_axi_awaddr(72 downto 64) => \^m02_axi_awaddr\(8 downto 0),
      m_axi_awaddr(63) => xbar_n_361,
      m_axi_awaddr(62) => xbar_n_362,
      m_axi_awaddr(61) => xbar_n_363,
      m_axi_awaddr(60) => xbar_n_364,
      m_axi_awaddr(59) => xbar_n_365,
      m_axi_awaddr(58) => xbar_n_366,
      m_axi_awaddr(57) => xbar_n_367,
      m_axi_awaddr(56) => xbar_n_368,
      m_axi_awaddr(55) => xbar_n_369,
      m_axi_awaddr(54) => xbar_n_370,
      m_axi_awaddr(53) => xbar_n_371,
      m_axi_awaddr(52) => xbar_n_372,
      m_axi_awaddr(51) => xbar_n_373,
      m_axi_awaddr(50) => xbar_n_374,
      m_axi_awaddr(49) => xbar_n_375,
      m_axi_awaddr(48) => xbar_n_376,
      m_axi_awaddr(47) => xbar_n_377,
      m_axi_awaddr(46) => xbar_n_378,
      m_axi_awaddr(45) => xbar_n_379,
      m_axi_awaddr(44) => xbar_n_380,
      m_axi_awaddr(43) => xbar_n_381,
      m_axi_awaddr(42) => xbar_n_382,
      m_axi_awaddr(41) => xbar_n_383,
      m_axi_awaddr(40 downto 32) => \^m01_axi_awaddr\(8 downto 0),
      m_axi_awaddr(31) => xbar_n_393,
      m_axi_awaddr(30) => xbar_n_394,
      m_axi_awaddr(29) => xbar_n_395,
      m_axi_awaddr(28) => xbar_n_396,
      m_axi_awaddr(27) => xbar_n_397,
      m_axi_awaddr(26) => xbar_n_398,
      m_axi_awaddr(25) => xbar_n_399,
      m_axi_awaddr(24) => xbar_n_400,
      m_axi_awaddr(23) => xbar_n_401,
      m_axi_awaddr(22) => xbar_n_402,
      m_axi_awaddr(21) => xbar_n_403,
      m_axi_awaddr(20) => xbar_n_404,
      m_axi_awaddr(19) => xbar_n_405,
      m_axi_awaddr(18) => xbar_n_406,
      m_axi_awaddr(17) => xbar_n_407,
      m_axi_awaddr(16) => xbar_n_408,
      m_axi_awaddr(15) => xbar_n_409,
      m_axi_awaddr(14) => xbar_n_410,
      m_axi_awaddr(13) => xbar_n_411,
      m_axi_awaddr(12) => xbar_n_412,
      m_axi_awaddr(11) => xbar_n_413,
      m_axi_awaddr(10) => xbar_n_414,
      m_axi_awaddr(9) => xbar_n_415,
      m_axi_awaddr(8) => xbar_n_416,
      m_axi_awaddr(7) => xbar_n_417,
      m_axi_awaddr(6) => xbar_n_418,
      m_axi_awaddr(5) => xbar_n_419,
      m_axi_awaddr(4 downto 0) => \^m00_axi_awaddr\(4 downto 0),
      m_axi_awprot(35 downto 27) => NLW_xbar_m_axi_awprot_UNCONNECTED(35 downto 27),
      m_axi_awprot(26 downto 24) => M08_AXI_awprot(2 downto 0),
      m_axi_awprot(23 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(23 downto 0),
      m_axi_awready(11) => M11_AXI_awready,
      m_axi_awready(10) => M10_AXI_awready(0),
      m_axi_awready(9) => M09_AXI_awready(0),
      m_axi_awready(8) => M08_AXI_awready,
      m_axi_awready(7) => M07_AXI_awready(0),
      m_axi_awready(6) => M06_AXI_awready(0),
      m_axi_awready(5) => M05_AXI_awready(0),
      m_axi_awready(4) => M04_AXI_awready(0),
      m_axi_awready(3) => M03_AXI_awready(0),
      m_axi_awready(2) => M02_AXI_awready(0),
      m_axi_awready(1) => M01_AXI_awready(0),
      m_axi_awready(0) => M00_AXI_awready(0),
      m_axi_awvalid(11) => M11_AXI_awvalid,
      m_axi_awvalid(10) => M10_AXI_awvalid(0),
      m_axi_awvalid(9) => M09_AXI_awvalid(0),
      m_axi_awvalid(8) => M08_AXI_awvalid,
      m_axi_awvalid(7) => M07_AXI_awvalid(0),
      m_axi_awvalid(6) => M06_AXI_awvalid(0),
      m_axi_awvalid(5) => M05_AXI_awvalid(0),
      m_axi_awvalid(4) => M04_AXI_awvalid(0),
      m_axi_awvalid(3) => M03_AXI_awvalid(0),
      m_axi_awvalid(2) => M02_AXI_awvalid(0),
      m_axi_awvalid(1) => M01_AXI_awvalid(0),
      m_axi_awvalid(0) => M00_AXI_awvalid(0),
      m_axi_bready(11) => M11_AXI_bready,
      m_axi_bready(10) => M10_AXI_bready(0),
      m_axi_bready(9) => M09_AXI_bready(0),
      m_axi_bready(8) => M08_AXI_bready,
      m_axi_bready(7) => M07_AXI_bready(0),
      m_axi_bready(6) => M06_AXI_bready(0),
      m_axi_bready(5) => M05_AXI_bready(0),
      m_axi_bready(4) => M04_AXI_bready(0),
      m_axi_bready(3) => M03_AXI_bready(0),
      m_axi_bready(2) => M02_AXI_bready(0),
      m_axi_bready(1) => M01_AXI_bready(0),
      m_axi_bready(0) => M00_AXI_bready(0),
      m_axi_bresp(23 downto 22) => M11_AXI_bresp(1 downto 0),
      m_axi_bresp(21 downto 20) => M10_AXI_bresp(1 downto 0),
      m_axi_bresp(19 downto 18) => M09_AXI_bresp(1 downto 0),
      m_axi_bresp(17 downto 16) => M08_AXI_bresp(1 downto 0),
      m_axi_bresp(15 downto 14) => M07_AXI_bresp(1 downto 0),
      m_axi_bresp(13 downto 12) => M06_AXI_bresp(1 downto 0),
      m_axi_bresp(11 downto 10) => M05_AXI_bresp(1 downto 0),
      m_axi_bresp(9 downto 8) => M04_AXI_bresp(1 downto 0),
      m_axi_bresp(7 downto 6) => M03_AXI_bresp(1 downto 0),
      m_axi_bresp(5 downto 4) => M02_AXI_bresp(1 downto 0),
      m_axi_bresp(3 downto 2) => M01_AXI_bresp(1 downto 0),
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(11) => M11_AXI_bvalid,
      m_axi_bvalid(10) => M10_AXI_bvalid(0),
      m_axi_bvalid(9) => M09_AXI_bvalid(0),
      m_axi_bvalid(8) => M08_AXI_bvalid,
      m_axi_bvalid(7) => M07_AXI_bvalid(0),
      m_axi_bvalid(6) => M06_AXI_bvalid(0),
      m_axi_bvalid(5) => M05_AXI_bvalid(0),
      m_axi_bvalid(4) => M04_AXI_bvalid(0),
      m_axi_bvalid(3) => M03_AXI_bvalid(0),
      m_axi_bvalid(2) => M02_AXI_bvalid(0),
      m_axi_bvalid(1) => M01_AXI_bvalid(0),
      m_axi_bvalid(0) => M00_AXI_bvalid(0),
      m_axi_rdata(383 downto 352) => M11_AXI_rdata(31 downto 0),
      m_axi_rdata(351 downto 320) => M10_AXI_rdata(31 downto 0),
      m_axi_rdata(319 downto 288) => M09_AXI_rdata(31 downto 0),
      m_axi_rdata(287 downto 256) => M08_AXI_rdata(31 downto 0),
      m_axi_rdata(255 downto 224) => M07_AXI_rdata(31 downto 0),
      m_axi_rdata(223 downto 192) => M06_AXI_rdata(31 downto 0),
      m_axi_rdata(191 downto 160) => M05_AXI_rdata(31 downto 0),
      m_axi_rdata(159 downto 128) => M04_AXI_rdata(31 downto 0),
      m_axi_rdata(127 downto 96) => M03_AXI_rdata(31 downto 0),
      m_axi_rdata(95 downto 64) => M02_AXI_rdata(31 downto 0),
      m_axi_rdata(63 downto 32) => M01_AXI_rdata(31 downto 0),
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready(11) => M11_AXI_rready,
      m_axi_rready(10) => M10_AXI_rready(0),
      m_axi_rready(9) => M09_AXI_rready(0),
      m_axi_rready(8) => M08_AXI_rready,
      m_axi_rready(7) => M07_AXI_rready(0),
      m_axi_rready(6) => M06_AXI_rready(0),
      m_axi_rready(5) => M05_AXI_rready(0),
      m_axi_rready(4) => M04_AXI_rready(0),
      m_axi_rready(3) => M03_AXI_rready(0),
      m_axi_rready(2) => M02_AXI_rready(0),
      m_axi_rready(1) => M01_AXI_rready(0),
      m_axi_rready(0) => M00_AXI_rready(0),
      m_axi_rresp(23 downto 22) => M11_AXI_rresp(1 downto 0),
      m_axi_rresp(21 downto 20) => M10_AXI_rresp(1 downto 0),
      m_axi_rresp(19 downto 18) => M09_AXI_rresp(1 downto 0),
      m_axi_rresp(17 downto 16) => M08_AXI_rresp(1 downto 0),
      m_axi_rresp(15 downto 14) => M07_AXI_rresp(1 downto 0),
      m_axi_rresp(13 downto 12) => M06_AXI_rresp(1 downto 0),
      m_axi_rresp(11 downto 10) => M05_AXI_rresp(1 downto 0),
      m_axi_rresp(9 downto 8) => M04_AXI_rresp(1 downto 0),
      m_axi_rresp(7 downto 6) => M03_AXI_rresp(1 downto 0),
      m_axi_rresp(5 downto 4) => M02_AXI_rresp(1 downto 0),
      m_axi_rresp(3 downto 2) => M01_AXI_rresp(1 downto 0),
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(11) => M11_AXI_rvalid,
      m_axi_rvalid(10) => M10_AXI_rvalid(0),
      m_axi_rvalid(9) => M09_AXI_rvalid(0),
      m_axi_rvalid(8) => M08_AXI_rvalid,
      m_axi_rvalid(7) => M07_AXI_rvalid(0),
      m_axi_rvalid(6) => M06_AXI_rvalid(0),
      m_axi_rvalid(5) => M05_AXI_rvalid(0),
      m_axi_rvalid(4) => M04_AXI_rvalid(0),
      m_axi_rvalid(3) => M03_AXI_rvalid(0),
      m_axi_rvalid(2) => M02_AXI_rvalid(0),
      m_axi_rvalid(1) => M01_AXI_rvalid(0),
      m_axi_rvalid(0) => M00_AXI_rvalid(0),
      m_axi_wdata(383 downto 352) => M11_AXI_wdata(31 downto 0),
      m_axi_wdata(351 downto 320) => M10_AXI_wdata(31 downto 0),
      m_axi_wdata(319 downto 288) => M09_AXI_wdata(31 downto 0),
      m_axi_wdata(287 downto 256) => M08_AXI_wdata(31 downto 0),
      m_axi_wdata(255 downto 224) => M07_AXI_wdata(31 downto 0),
      m_axi_wdata(223 downto 192) => M06_AXI_wdata(31 downto 0),
      m_axi_wdata(191 downto 160) => M05_AXI_wdata(31 downto 0),
      m_axi_wdata(159 downto 128) => M04_AXI_wdata(31 downto 0),
      m_axi_wdata(127 downto 96) => M03_AXI_wdata(31 downto 0),
      m_axi_wdata(95 downto 64) => M02_AXI_wdata(31 downto 0),
      m_axi_wdata(63 downto 32) => M01_AXI_wdata(31 downto 0),
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready(11) => M11_AXI_wready,
      m_axi_wready(10) => M10_AXI_wready(0),
      m_axi_wready(9) => M09_AXI_wready(0),
      m_axi_wready(8) => M08_AXI_wready,
      m_axi_wready(7) => M07_AXI_wready(0),
      m_axi_wready(6) => M06_AXI_wready(0),
      m_axi_wready(5) => M05_AXI_wready(0),
      m_axi_wready(4) => M04_AXI_wready(0),
      m_axi_wready(3) => M03_AXI_wready(0),
      m_axi_wready(2) => M02_AXI_wready(0),
      m_axi_wready(1) => M01_AXI_wready(0),
      m_axi_wready(0) => M00_AXI_wready(0),
      m_axi_wstrb(47 downto 44) => M11_AXI_wstrb(3 downto 0),
      m_axi_wstrb(43 downto 40) => M10_AXI_wstrb(3 downto 0),
      m_axi_wstrb(39 downto 36) => M09_AXI_wstrb(3 downto 0),
      m_axi_wstrb(35 downto 32) => M08_AXI_wstrb(3 downto 0),
      m_axi_wstrb(31 downto 28) => M07_AXI_wstrb(3 downto 0),
      m_axi_wstrb(27 downto 24) => M06_AXI_wstrb(3 downto 0),
      m_axi_wstrb(23 downto 20) => M05_AXI_wstrb(3 downto 0),
      m_axi_wstrb(19 downto 16) => M04_AXI_wstrb(3 downto 0),
      m_axi_wstrb(15 downto 12) => M03_AXI_wstrb(3 downto 0),
      m_axi_wstrb(11 downto 8) => M02_AXI_wstrb(3 downto 0),
      m_axi_wstrb(7 downto 4) => M01_AXI_wstrb(3 downto 0),
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid(11) => M11_AXI_wvalid,
      m_axi_wvalid(10) => M10_AXI_wvalid(0),
      m_axi_wvalid(9) => M09_AXI_wvalid(0),
      m_axi_wvalid(8) => M08_AXI_wvalid,
      m_axi_wvalid(7) => M07_AXI_wvalid(0),
      m_axi_wvalid(6) => M06_AXI_wvalid(0),
      m_axi_wvalid(5) => M05_AXI_wvalid(0),
      m_axi_wvalid(4) => M04_AXI_wvalid(0),
      m_axi_wvalid(3) => M03_AXI_wvalid(0),
      m_axi_wvalid(2) => M02_AXI_wvalid(0),
      m_axi_wvalid(1) => M01_AXI_wvalid(0),
      m_axi_wvalid(0) => M00_AXI_wvalid(0),
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready(0) => S00_AXI_arready,
      s_axi_arvalid(0) => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready(0) => S00_AXI_awready,
      s_axi_awvalid(0) => S00_AXI_awvalid,
      s_axi_bready(0) => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid(0) => S00_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready(0) => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid(0) => S00_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready(0) => S00_AXI_wready,
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid(0) => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_mgmt_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_mgmt_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_mgmt_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 107 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 107 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_xbar_1;
  signal \<const0>\ : STD_LOGIC;
  signal \^m00_axi_araddr\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^m00_axi_awaddr\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^m01_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m01_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m02_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m02_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m03_axi_araddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m03_axi_awaddr\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m04_axi_araddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m04_axi_awaddr\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m05_axi_araddr\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^m05_axi_awaddr\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal xbar_n_100 : STD_LOGIC;
  signal xbar_n_101 : STD_LOGIC;
  signal xbar_n_102 : STD_LOGIC;
  signal xbar_n_103 : STD_LOGIC;
  signal xbar_n_113 : STD_LOGIC;
  signal xbar_n_114 : STD_LOGIC;
  signal xbar_n_115 : STD_LOGIC;
  signal xbar_n_116 : STD_LOGIC;
  signal xbar_n_117 : STD_LOGIC;
  signal xbar_n_118 : STD_LOGIC;
  signal xbar_n_119 : STD_LOGIC;
  signal xbar_n_120 : STD_LOGIC;
  signal xbar_n_121 : STD_LOGIC;
  signal xbar_n_131 : STD_LOGIC;
  signal xbar_n_401 : STD_LOGIC;
  signal xbar_n_402 : STD_LOGIC;
  signal xbar_n_403 : STD_LOGIC;
  signal xbar_n_404 : STD_LOGIC;
  signal xbar_n_405 : STD_LOGIC;
  signal xbar_n_41 : STD_LOGIC;
  signal xbar_n_419 : STD_LOGIC;
  signal xbar_n_42 : STD_LOGIC;
  signal xbar_n_420 : STD_LOGIC;
  signal xbar_n_421 : STD_LOGIC;
  signal xbar_n_422 : STD_LOGIC;
  signal xbar_n_423 : STD_LOGIC;
  signal xbar_n_424 : STD_LOGIC;
  signal xbar_n_425 : STD_LOGIC;
  signal xbar_n_426 : STD_LOGIC;
  signal xbar_n_427 : STD_LOGIC;
  signal xbar_n_428 : STD_LOGIC;
  signal xbar_n_429 : STD_LOGIC;
  signal xbar_n_43 : STD_LOGIC;
  signal xbar_n_430 : STD_LOGIC;
  signal xbar_n_431 : STD_LOGIC;
  signal xbar_n_437 : STD_LOGIC;
  signal xbar_n_438 : STD_LOGIC;
  signal xbar_n_439 : STD_LOGIC;
  signal xbar_n_44 : STD_LOGIC;
  signal xbar_n_440 : STD_LOGIC;
  signal xbar_n_441 : STD_LOGIC;
  signal xbar_n_442 : STD_LOGIC;
  signal xbar_n_443 : STD_LOGIC;
  signal xbar_n_444 : STD_LOGIC;
  signal xbar_n_445 : STD_LOGIC;
  signal xbar_n_45 : STD_LOGIC;
  signal xbar_n_455 : STD_LOGIC;
  signal xbar_n_456 : STD_LOGIC;
  signal xbar_n_457 : STD_LOGIC;
  signal xbar_n_458 : STD_LOGIC;
  signal xbar_n_459 : STD_LOGIC;
  signal xbar_n_460 : STD_LOGIC;
  signal xbar_n_461 : STD_LOGIC;
  signal xbar_n_462 : STD_LOGIC;
  signal xbar_n_463 : STD_LOGIC;
  signal xbar_n_473 : STD_LOGIC;
  signal xbar_n_474 : STD_LOGIC;
  signal xbar_n_475 : STD_LOGIC;
  signal xbar_n_476 : STD_LOGIC;
  signal xbar_n_477 : STD_LOGIC;
  signal xbar_n_478 : STD_LOGIC;
  signal xbar_n_479 : STD_LOGIC;
  signal xbar_n_480 : STD_LOGIC;
  signal xbar_n_481 : STD_LOGIC;
  signal xbar_n_491 : STD_LOGIC;
  signal xbar_n_59 : STD_LOGIC;
  signal xbar_n_60 : STD_LOGIC;
  signal xbar_n_61 : STD_LOGIC;
  signal xbar_n_62 : STD_LOGIC;
  signal xbar_n_63 : STD_LOGIC;
  signal xbar_n_64 : STD_LOGIC;
  signal xbar_n_65 : STD_LOGIC;
  signal xbar_n_66 : STD_LOGIC;
  signal xbar_n_67 : STD_LOGIC;
  signal xbar_n_68 : STD_LOGIC;
  signal xbar_n_69 : STD_LOGIC;
  signal xbar_n_70 : STD_LOGIC;
  signal xbar_n_71 : STD_LOGIC;
  signal xbar_n_77 : STD_LOGIC;
  signal xbar_n_78 : STD_LOGIC;
  signal xbar_n_79 : STD_LOGIC;
  signal xbar_n_80 : STD_LOGIC;
  signal xbar_n_81 : STD_LOGIC;
  signal xbar_n_82 : STD_LOGIC;
  signal xbar_n_83 : STD_LOGIC;
  signal xbar_n_84 : STD_LOGIC;
  signal xbar_n_85 : STD_LOGIC;
  signal xbar_n_95 : STD_LOGIC;
  signal xbar_n_96 : STD_LOGIC;
  signal xbar_n_97 : STD_LOGIC;
  signal xbar_n_98 : STD_LOGIC;
  signal xbar_n_99 : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 3 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_28_axi_crossbar,Vivado 2022.2";
begin
  M00_AXI_araddr(17) <= \<const0>\;
  M00_AXI_araddr(16 downto 0) <= \^m00_axi_araddr\(16 downto 0);
  M00_AXI_awaddr(17) <= \<const0>\;
  M00_AXI_awaddr(16 downto 0) <= \^m00_axi_awaddr\(16 downto 0);
  M01_AXI_araddr(17) <= \<const0>\;
  M01_AXI_araddr(16) <= \<const0>\;
  M01_AXI_araddr(15) <= \<const0>\;
  M01_AXI_araddr(14) <= \<const0>\;
  M01_AXI_araddr(13) <= \<const0>\;
  M01_AXI_araddr(12) <= \<const0>\;
  M01_AXI_araddr(11) <= \<const0>\;
  M01_AXI_araddr(10) <= \<const0>\;
  M01_AXI_araddr(9) <= \<const0>\;
  M01_AXI_araddr(8 downto 0) <= \^m01_axi_araddr\(8 downto 0);
  M01_AXI_awaddr(17) <= \<const0>\;
  M01_AXI_awaddr(16) <= \<const0>\;
  M01_AXI_awaddr(15) <= \<const0>\;
  M01_AXI_awaddr(14) <= \<const0>\;
  M01_AXI_awaddr(13) <= \<const0>\;
  M01_AXI_awaddr(12) <= \<const0>\;
  M01_AXI_awaddr(11) <= \<const0>\;
  M01_AXI_awaddr(10) <= \<const0>\;
  M01_AXI_awaddr(9) <= \<const0>\;
  M01_AXI_awaddr(8 downto 0) <= \^m01_axi_awaddr\(8 downto 0);
  M02_AXI_araddr(17) <= \<const0>\;
  M02_AXI_araddr(16) <= \<const0>\;
  M02_AXI_araddr(15) <= \<const0>\;
  M02_AXI_araddr(14) <= \<const0>\;
  M02_AXI_araddr(13) <= \<const0>\;
  M02_AXI_araddr(12) <= \<const0>\;
  M02_AXI_araddr(11) <= \<const0>\;
  M02_AXI_araddr(10) <= \<const0>\;
  M02_AXI_araddr(9) <= \<const0>\;
  M02_AXI_araddr(8 downto 0) <= \^m02_axi_araddr\(8 downto 0);
  M02_AXI_awaddr(17) <= \<const0>\;
  M02_AXI_awaddr(16) <= \<const0>\;
  M02_AXI_awaddr(15) <= \<const0>\;
  M02_AXI_awaddr(14) <= \<const0>\;
  M02_AXI_awaddr(13) <= \<const0>\;
  M02_AXI_awaddr(12) <= \<const0>\;
  M02_AXI_awaddr(11) <= \<const0>\;
  M02_AXI_awaddr(10) <= \<const0>\;
  M02_AXI_awaddr(9) <= \<const0>\;
  M02_AXI_awaddr(8 downto 0) <= \^m02_axi_awaddr\(8 downto 0);
  M03_AXI_araddr(17) <= \<const0>\;
  M03_AXI_araddr(16) <= \<const0>\;
  M03_AXI_araddr(15) <= \<const0>\;
  M03_AXI_araddr(14) <= \<const0>\;
  M03_AXI_araddr(13) <= \<const0>\;
  M03_AXI_araddr(12) <= \<const0>\;
  M03_AXI_araddr(11) <= \<const0>\;
  M03_AXI_araddr(10) <= \<const0>\;
  M03_AXI_araddr(9) <= \<const0>\;
  M03_AXI_araddr(8 downto 0) <= \^m03_axi_araddr\(8 downto 0);
  M03_AXI_awaddr(17) <= \<const0>\;
  M03_AXI_awaddr(16) <= \<const0>\;
  M03_AXI_awaddr(15) <= \<const0>\;
  M03_AXI_awaddr(14) <= \<const0>\;
  M03_AXI_awaddr(13) <= \<const0>\;
  M03_AXI_awaddr(12) <= \<const0>\;
  M03_AXI_awaddr(11) <= \<const0>\;
  M03_AXI_awaddr(10) <= \<const0>\;
  M03_AXI_awaddr(9) <= \<const0>\;
  M03_AXI_awaddr(8 downto 0) <= \^m03_axi_awaddr\(8 downto 0);
  M04_AXI_araddr(17) <= \<const0>\;
  M04_AXI_araddr(16) <= \<const0>\;
  M04_AXI_araddr(15) <= \<const0>\;
  M04_AXI_araddr(14) <= \<const0>\;
  M04_AXI_araddr(13) <= \<const0>\;
  M04_AXI_araddr(12) <= \<const0>\;
  M04_AXI_araddr(11) <= \<const0>\;
  M04_AXI_araddr(10) <= \<const0>\;
  M04_AXI_araddr(9) <= \<const0>\;
  M04_AXI_araddr(8) <= \<const0>\;
  M04_AXI_araddr(7) <= \<const0>\;
  M04_AXI_araddr(6) <= \<const0>\;
  M04_AXI_araddr(5) <= \<const0>\;
  M04_AXI_araddr(4 downto 0) <= \^m04_axi_araddr\(4 downto 0);
  M04_AXI_awaddr(17) <= \<const0>\;
  M04_AXI_awaddr(16) <= \<const0>\;
  M04_AXI_awaddr(15) <= \<const0>\;
  M04_AXI_awaddr(14) <= \<const0>\;
  M04_AXI_awaddr(13) <= \<const0>\;
  M04_AXI_awaddr(12) <= \<const0>\;
  M04_AXI_awaddr(11) <= \<const0>\;
  M04_AXI_awaddr(10) <= \<const0>\;
  M04_AXI_awaddr(9) <= \<const0>\;
  M04_AXI_awaddr(8) <= \<const0>\;
  M04_AXI_awaddr(7) <= \<const0>\;
  M04_AXI_awaddr(6) <= \<const0>\;
  M04_AXI_awaddr(5) <= \<const0>\;
  M04_AXI_awaddr(4 downto 0) <= \^m04_axi_awaddr\(4 downto 0);
  M05_AXI_araddr(17) <= \<const0>\;
  M05_AXI_araddr(16) <= \<const0>\;
  M05_AXI_araddr(15) <= \<const0>\;
  M05_AXI_araddr(14) <= \<const0>\;
  M05_AXI_araddr(13) <= \<const0>\;
  M05_AXI_araddr(12 downto 0) <= \^m05_axi_araddr\(12 downto 0);
  M05_AXI_awaddr(17) <= \<const0>\;
  M05_AXI_awaddr(16) <= \<const0>\;
  M05_AXI_awaddr(15) <= \<const0>\;
  M05_AXI_awaddr(14) <= \<const0>\;
  M05_AXI_awaddr(13) <= \<const0>\;
  M05_AXI_awaddr(12 downto 0) <= \^m05_axi_awaddr\(12 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xbar: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_xbar_1
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(107) => xbar_n_401,
      m_axi_araddr(106) => xbar_n_402,
      m_axi_araddr(105) => xbar_n_403,
      m_axi_araddr(104) => xbar_n_404,
      m_axi_araddr(103) => xbar_n_405,
      m_axi_araddr(102 downto 90) => \^m05_axi_araddr\(12 downto 0),
      m_axi_araddr(89) => xbar_n_419,
      m_axi_araddr(88) => xbar_n_420,
      m_axi_araddr(87) => xbar_n_421,
      m_axi_araddr(86) => xbar_n_422,
      m_axi_araddr(85) => xbar_n_423,
      m_axi_araddr(84) => xbar_n_424,
      m_axi_araddr(83) => xbar_n_425,
      m_axi_araddr(82) => xbar_n_426,
      m_axi_araddr(81) => xbar_n_427,
      m_axi_araddr(80) => xbar_n_428,
      m_axi_araddr(79) => xbar_n_429,
      m_axi_araddr(78) => xbar_n_430,
      m_axi_araddr(77) => xbar_n_431,
      m_axi_araddr(76 downto 72) => \^m04_axi_araddr\(4 downto 0),
      m_axi_araddr(71) => xbar_n_437,
      m_axi_araddr(70) => xbar_n_438,
      m_axi_araddr(69) => xbar_n_439,
      m_axi_araddr(68) => xbar_n_440,
      m_axi_araddr(67) => xbar_n_441,
      m_axi_araddr(66) => xbar_n_442,
      m_axi_araddr(65) => xbar_n_443,
      m_axi_araddr(64) => xbar_n_444,
      m_axi_araddr(63) => xbar_n_445,
      m_axi_araddr(62 downto 54) => \^m03_axi_araddr\(8 downto 0),
      m_axi_araddr(53) => xbar_n_455,
      m_axi_araddr(52) => xbar_n_456,
      m_axi_araddr(51) => xbar_n_457,
      m_axi_araddr(50) => xbar_n_458,
      m_axi_araddr(49) => xbar_n_459,
      m_axi_araddr(48) => xbar_n_460,
      m_axi_araddr(47) => xbar_n_461,
      m_axi_araddr(46) => xbar_n_462,
      m_axi_araddr(45) => xbar_n_463,
      m_axi_araddr(44 downto 36) => \^m02_axi_araddr\(8 downto 0),
      m_axi_araddr(35) => xbar_n_473,
      m_axi_araddr(34) => xbar_n_474,
      m_axi_araddr(33) => xbar_n_475,
      m_axi_araddr(32) => xbar_n_476,
      m_axi_araddr(31) => xbar_n_477,
      m_axi_araddr(30) => xbar_n_478,
      m_axi_araddr(29) => xbar_n_479,
      m_axi_araddr(28) => xbar_n_480,
      m_axi_araddr(27) => xbar_n_481,
      m_axi_araddr(26 downto 18) => \^m01_axi_araddr\(8 downto 0),
      m_axi_araddr(17) => xbar_n_491,
      m_axi_araddr(16 downto 0) => \^m00_axi_araddr\(16 downto 0),
      m_axi_arprot(17 downto 15) => M05_AXI_arprot(2 downto 0),
      m_axi_arprot(14 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 3),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arready(5) => M05_AXI_arready,
      m_axi_arready(4) => M04_AXI_arready(0),
      m_axi_arready(3) => M03_AXI_arready(0),
      m_axi_arready(2) => M02_AXI_arready(0),
      m_axi_arready(1) => M01_AXI_arready(0),
      m_axi_arready(0) => M00_AXI_arready,
      m_axi_arvalid(5) => M05_AXI_arvalid,
      m_axi_arvalid(4) => M04_AXI_arvalid(0),
      m_axi_arvalid(3) => M03_AXI_arvalid(0),
      m_axi_arvalid(2) => M02_AXI_arvalid(0),
      m_axi_arvalid(1) => M01_AXI_arvalid(0),
      m_axi_arvalid(0) => M00_AXI_arvalid,
      m_axi_awaddr(107) => xbar_n_41,
      m_axi_awaddr(106) => xbar_n_42,
      m_axi_awaddr(105) => xbar_n_43,
      m_axi_awaddr(104) => xbar_n_44,
      m_axi_awaddr(103) => xbar_n_45,
      m_axi_awaddr(102 downto 90) => \^m05_axi_awaddr\(12 downto 0),
      m_axi_awaddr(89) => xbar_n_59,
      m_axi_awaddr(88) => xbar_n_60,
      m_axi_awaddr(87) => xbar_n_61,
      m_axi_awaddr(86) => xbar_n_62,
      m_axi_awaddr(85) => xbar_n_63,
      m_axi_awaddr(84) => xbar_n_64,
      m_axi_awaddr(83) => xbar_n_65,
      m_axi_awaddr(82) => xbar_n_66,
      m_axi_awaddr(81) => xbar_n_67,
      m_axi_awaddr(80) => xbar_n_68,
      m_axi_awaddr(79) => xbar_n_69,
      m_axi_awaddr(78) => xbar_n_70,
      m_axi_awaddr(77) => xbar_n_71,
      m_axi_awaddr(76 downto 72) => \^m04_axi_awaddr\(4 downto 0),
      m_axi_awaddr(71) => xbar_n_77,
      m_axi_awaddr(70) => xbar_n_78,
      m_axi_awaddr(69) => xbar_n_79,
      m_axi_awaddr(68) => xbar_n_80,
      m_axi_awaddr(67) => xbar_n_81,
      m_axi_awaddr(66) => xbar_n_82,
      m_axi_awaddr(65) => xbar_n_83,
      m_axi_awaddr(64) => xbar_n_84,
      m_axi_awaddr(63) => xbar_n_85,
      m_axi_awaddr(62 downto 54) => \^m03_axi_awaddr\(8 downto 0),
      m_axi_awaddr(53) => xbar_n_95,
      m_axi_awaddr(52) => xbar_n_96,
      m_axi_awaddr(51) => xbar_n_97,
      m_axi_awaddr(50) => xbar_n_98,
      m_axi_awaddr(49) => xbar_n_99,
      m_axi_awaddr(48) => xbar_n_100,
      m_axi_awaddr(47) => xbar_n_101,
      m_axi_awaddr(46) => xbar_n_102,
      m_axi_awaddr(45) => xbar_n_103,
      m_axi_awaddr(44 downto 36) => \^m02_axi_awaddr\(8 downto 0),
      m_axi_awaddr(35) => xbar_n_113,
      m_axi_awaddr(34) => xbar_n_114,
      m_axi_awaddr(33) => xbar_n_115,
      m_axi_awaddr(32) => xbar_n_116,
      m_axi_awaddr(31) => xbar_n_117,
      m_axi_awaddr(30) => xbar_n_118,
      m_axi_awaddr(29) => xbar_n_119,
      m_axi_awaddr(28) => xbar_n_120,
      m_axi_awaddr(27) => xbar_n_121,
      m_axi_awaddr(26 downto 18) => \^m01_axi_awaddr\(8 downto 0),
      m_axi_awaddr(17) => xbar_n_131,
      m_axi_awaddr(16 downto 0) => \^m00_axi_awaddr\(16 downto 0),
      m_axi_awprot(17 downto 15) => M05_AXI_awprot(2 downto 0),
      m_axi_awprot(14 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 3),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awready(5) => M05_AXI_awready,
      m_axi_awready(4) => M04_AXI_awready(0),
      m_axi_awready(3) => M03_AXI_awready(0),
      m_axi_awready(2) => M02_AXI_awready(0),
      m_axi_awready(1) => M01_AXI_awready(0),
      m_axi_awready(0) => M00_AXI_awready,
      m_axi_awvalid(5) => M05_AXI_awvalid,
      m_axi_awvalid(4) => M04_AXI_awvalid(0),
      m_axi_awvalid(3) => M03_AXI_awvalid(0),
      m_axi_awvalid(2) => M02_AXI_awvalid(0),
      m_axi_awvalid(1) => M01_AXI_awvalid(0),
      m_axi_awvalid(0) => M00_AXI_awvalid,
      m_axi_bready(5) => M05_AXI_bready,
      m_axi_bready(4) => M04_AXI_bready(0),
      m_axi_bready(3) => M03_AXI_bready(0),
      m_axi_bready(2) => M02_AXI_bready(0),
      m_axi_bready(1) => M01_AXI_bready(0),
      m_axi_bready(0) => M00_AXI_bready,
      m_axi_bresp(11 downto 10) => M05_AXI_bresp(1 downto 0),
      m_axi_bresp(9 downto 8) => M04_AXI_bresp(1 downto 0),
      m_axi_bresp(7 downto 6) => M03_AXI_bresp(1 downto 0),
      m_axi_bresp(5 downto 4) => M02_AXI_bresp(1 downto 0),
      m_axi_bresp(3 downto 2) => M01_AXI_bresp(1 downto 0),
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(5) => M05_AXI_bvalid,
      m_axi_bvalid(4) => M04_AXI_bvalid(0),
      m_axi_bvalid(3) => M03_AXI_bvalid(0),
      m_axi_bvalid(2) => M02_AXI_bvalid(0),
      m_axi_bvalid(1) => M01_AXI_bvalid(0),
      m_axi_bvalid(0) => M00_AXI_bvalid,
      m_axi_rdata(191 downto 160) => M05_AXI_rdata(31 downto 0),
      m_axi_rdata(159 downto 128) => M04_AXI_rdata(31 downto 0),
      m_axi_rdata(127 downto 96) => M03_AXI_rdata(31 downto 0),
      m_axi_rdata(95 downto 64) => M02_AXI_rdata(31 downto 0),
      m_axi_rdata(63 downto 32) => M01_AXI_rdata(31 downto 0),
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready(5) => M05_AXI_rready,
      m_axi_rready(4) => M04_AXI_rready(0),
      m_axi_rready(3) => M03_AXI_rready(0),
      m_axi_rready(2) => M02_AXI_rready(0),
      m_axi_rready(1) => M01_AXI_rready(0),
      m_axi_rready(0) => M00_AXI_rready,
      m_axi_rresp(11 downto 10) => M05_AXI_rresp(1 downto 0),
      m_axi_rresp(9 downto 8) => M04_AXI_rresp(1 downto 0),
      m_axi_rresp(7 downto 6) => M03_AXI_rresp(1 downto 0),
      m_axi_rresp(5 downto 4) => M02_AXI_rresp(1 downto 0),
      m_axi_rresp(3 downto 2) => M01_AXI_rresp(1 downto 0),
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(5) => M05_AXI_rvalid,
      m_axi_rvalid(4) => M04_AXI_rvalid(0),
      m_axi_rvalid(3) => M03_AXI_rvalid(0),
      m_axi_rvalid(2) => M02_AXI_rvalid(0),
      m_axi_rvalid(1) => M01_AXI_rvalid(0),
      m_axi_rvalid(0) => M00_AXI_rvalid,
      m_axi_wdata(191 downto 160) => M05_AXI_wdata(31 downto 0),
      m_axi_wdata(159 downto 128) => M04_AXI_wdata(31 downto 0),
      m_axi_wdata(127 downto 96) => M03_AXI_wdata(31 downto 0),
      m_axi_wdata(95 downto 64) => M02_AXI_wdata(31 downto 0),
      m_axi_wdata(63 downto 32) => M01_AXI_wdata(31 downto 0),
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready(5) => M05_AXI_wready,
      m_axi_wready(4) => M04_AXI_wready(0),
      m_axi_wready(3) => M03_AXI_wready(0),
      m_axi_wready(2) => M02_AXI_wready(0),
      m_axi_wready(1) => M01_AXI_wready(0),
      m_axi_wready(0) => M00_AXI_wready,
      m_axi_wstrb(23 downto 20) => M05_AXI_wstrb(3 downto 0),
      m_axi_wstrb(19 downto 16) => M04_AXI_wstrb(3 downto 0),
      m_axi_wstrb(15 downto 12) => M03_AXI_wstrb(3 downto 0),
      m_axi_wstrb(11 downto 8) => M02_AXI_wstrb(3 downto 0),
      m_axi_wstrb(7 downto 4) => M01_AXI_wstrb(3 downto 0),
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid(5) => M05_AXI_wvalid,
      m_axi_wvalid(4) => M04_AXI_wvalid(0),
      m_axi_wvalid(3) => M03_AXI_wvalid(0),
      m_axi_wvalid(2) => M02_AXI_wvalid(0),
      m_axi_wvalid(1) => M01_AXI_wvalid(0),
      m_axi_wvalid(0) => M00_AXI_wvalid,
      s_axi_araddr(17 downto 0) => S00_AXI_araddr(17 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready(0) => S00_AXI_arready(0),
      s_axi_arvalid(0) => S00_AXI_arvalid(0),
      s_axi_awaddr(17 downto 0) => S00_AXI_awaddr(17 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready(0) => S00_AXI_awready(0),
      s_axi_awvalid(0) => S00_AXI_awvalid(0),
      s_axi_bready(0) => S00_AXI_bready(0),
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid(0) => S00_AXI_bvalid(0),
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready(0) => S00_AXI_rready(0),
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid(0) => S00_AXI_rvalid(0),
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready(0) => S00_AXI_wready(0),
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid(0) => S00_AXI_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_microblaze_local_memory_imp_K7QWLA is
  port (
    dlmb_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    dlmb_ready : out STD_LOGIC;
    dlmb_wait : out STD_LOGIC;
    dlmb_ue : out STD_LOGIC;
    dlmb_ce : out STD_LOGIC;
    ilmb_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ilmb_ready : out STD_LOGIC;
    ilmb_wait : out STD_LOGIC;
    ilmb_ue : out STD_LOGIC;
    ilmb_ce : out STD_LOGIC;
    ext_bram_if_ctrl_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk_ctrl : in STD_LOGIC;
    rst : in STD_LOGIC;
    dlmb_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    dlmb_readstrobe : in STD_LOGIC;
    dlmb_writestrobe : in STD_LOGIC;
    dlmb_addrstrobe : in STD_LOGIC;
    dlmb_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    dlmb_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    ilmb_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ilmb_readstrobe : in STD_LOGIC;
    ilmb_addrstrobe : in STD_LOGIC;
    ext_bram_if_ctrl_clk : in STD_LOGIC;
    ext_bram_if_ctrl_rst : in STD_LOGIC;
    ext_bram_if_ctrl_en : in STD_LOGIC;
    ext_bram_if_ctrl_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ext_bram_if_ctrl_addr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ext_bram_if_ctrl_din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_microblaze_local_memory_imp_K7QWLA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_microblaze_local_memory_imp_K7QWLA is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_dlmb_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_dlmb_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_ilmb_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_ilmb_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_lmb_bram_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_lmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    LMB1_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB1_AddrStrobe : in STD_LOGIC;
    LMB1_ReadStrobe : in STD_LOGIC;
    LMB1_WriteStrobe : in STD_LOGIC;
    LMB1_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl1_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl1_Ready : out STD_LOGIC;
    Sl1_Wait : out STD_LOGIC;
    Sl1_UE : out STD_LOGIC;
    Sl1_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_lmb_bram_if_cntlr_0;
  signal dlmb_s_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_s_ADDRSTROBE : STD_LOGIC;
  signal dlmb_s_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal dlmb_s_CE : STD_LOGIC;
  signal dlmb_s_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_s_READSTROBE : STD_LOGIC;
  signal dlmb_s_READY : STD_LOGIC;
  signal dlmb_s_UE : STD_LOGIC;
  signal dlmb_s_WAIT : STD_LOGIC;
  signal dlmb_s_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal dlmb_s_WRITESTROBE : STD_LOGIC;
  signal ilmb_s_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_s_ADDRSTROBE : STD_LOGIC;
  signal ilmb_s_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal ilmb_s_CE : STD_LOGIC;
  signal ilmb_s_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_s_READSTROBE : STD_LOGIC;
  signal ilmb_s_READY : STD_LOGIC;
  signal ilmb_s_UE : STD_LOGIC;
  signal ilmb_s_WAIT : STD_LOGIC;
  signal ilmb_s_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ilmb_s_WRITESTROBE : STD_LOGIC;
  signal lmb_bram_if_ctrl_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal lmb_bram_if_ctrl_CLK : STD_LOGIC;
  signal lmb_bram_if_ctrl_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal lmb_bram_if_ctrl_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lmb_bram_if_ctrl_EN : STD_LOGIC;
  signal lmb_bram_if_ctrl_RST : STD_LOGIC;
  signal lmb_bram_if_ctrl_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dlmb : label is "lmb_v10,Vivado 2022.2";
  attribute X_CORE_INFO of ilmb : label is "lmb_v10,Vivado 2022.2";
  attribute X_CORE_INFO of lmb_bram : label is "blk_mem_gen_v8_4_5,Vivado 2022.2";
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of lmb_bram_if_cntlr : label is "byte  0xF0000000 32 > bd_fb99 microblaze_local_memory/lmb_bram";
  attribute X_CORE_INFO of lmb_bram_if_cntlr : label is "lmb_bram_if_cntlr,Vivado 2022.2";
begin
dlmb: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_dlmb_0
     port map (
      LMB_ABus(0 to 31) => dlmb_s_ABUS(0 to 31),
      LMB_AddrStrobe => dlmb_s_ADDRSTROBE,
      LMB_BE(0 to 3) => dlmb_s_BE(0 to 3),
      LMB_CE => dlmb_ce,
      LMB_Clk => aclk_ctrl,
      LMB_ReadDBus(0 to 31) => dlmb_readdbus(0 to 31),
      LMB_ReadStrobe => dlmb_s_READSTROBE,
      LMB_Ready => dlmb_ready,
      LMB_Rst => NLW_dlmb_LMB_Rst_UNCONNECTED,
      LMB_UE => dlmb_ue,
      LMB_Wait => dlmb_wait,
      LMB_WriteDBus(0 to 31) => dlmb_s_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => dlmb_s_WRITESTROBE,
      M_ABus(0 to 31) => dlmb_abus(0 to 31),
      M_AddrStrobe => dlmb_addrstrobe,
      M_BE(0 to 3) => dlmb_be(0 to 3),
      M_DBus(0 to 31) => dlmb_writedbus(0 to 31),
      M_ReadStrobe => dlmb_readstrobe,
      M_WriteStrobe => dlmb_writestrobe,
      SYS_Rst => rst,
      Sl_CE(0) => dlmb_s_CE,
      Sl_DBus(0 to 31) => dlmb_s_READDBUS(0 to 31),
      Sl_Ready(0) => dlmb_s_READY,
      Sl_UE(0) => dlmb_s_UE,
      Sl_Wait(0) => dlmb_s_WAIT
    );
ilmb: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_ilmb_0
     port map (
      LMB_ABus(0 to 31) => ilmb_s_ABUS(0 to 31),
      LMB_AddrStrobe => ilmb_s_ADDRSTROBE,
      LMB_BE(0 to 3) => ilmb_s_BE(0 to 3),
      LMB_CE => ilmb_ce,
      LMB_Clk => aclk_ctrl,
      LMB_ReadDBus(0 to 31) => ilmb_readdbus(0 to 31),
      LMB_ReadStrobe => ilmb_s_READSTROBE,
      LMB_Ready => ilmb_ready,
      LMB_Rst => NLW_ilmb_LMB_Rst_UNCONNECTED,
      LMB_UE => ilmb_ue,
      LMB_Wait => ilmb_wait,
      LMB_WriteDBus(0 to 31) => ilmb_s_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => ilmb_s_WRITESTROBE,
      M_ABus(0 to 31) => ilmb_abus(0 to 31),
      M_AddrStrobe => ilmb_addrstrobe,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => ilmb_readstrobe,
      M_WriteStrobe => '0',
      SYS_Rst => rst,
      Sl_CE(0) => ilmb_s_CE,
      Sl_DBus(0 to 31) => ilmb_s_READDBUS(0 to 31),
      Sl_Ready(0) => ilmb_s_READY,
      Sl_UE(0) => ilmb_s_UE,
      Sl_Wait(0) => ilmb_s_WAIT
    );
lmb_bram: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_lmb_bram_0
     port map (
      addra(31) => lmb_bram_if_ctrl_ADDR(0),
      addra(30) => lmb_bram_if_ctrl_ADDR(1),
      addra(29) => lmb_bram_if_ctrl_ADDR(2),
      addra(28) => lmb_bram_if_ctrl_ADDR(3),
      addra(27) => lmb_bram_if_ctrl_ADDR(4),
      addra(26) => lmb_bram_if_ctrl_ADDR(5),
      addra(25) => lmb_bram_if_ctrl_ADDR(6),
      addra(24) => lmb_bram_if_ctrl_ADDR(7),
      addra(23) => lmb_bram_if_ctrl_ADDR(8),
      addra(22) => lmb_bram_if_ctrl_ADDR(9),
      addra(21) => lmb_bram_if_ctrl_ADDR(10),
      addra(20) => lmb_bram_if_ctrl_ADDR(11),
      addra(19) => lmb_bram_if_ctrl_ADDR(12),
      addra(18) => lmb_bram_if_ctrl_ADDR(13),
      addra(17) => lmb_bram_if_ctrl_ADDR(14),
      addra(16) => lmb_bram_if_ctrl_ADDR(15),
      addra(15) => lmb_bram_if_ctrl_ADDR(16),
      addra(14) => lmb_bram_if_ctrl_ADDR(17),
      addra(13) => lmb_bram_if_ctrl_ADDR(18),
      addra(12) => lmb_bram_if_ctrl_ADDR(19),
      addra(11) => lmb_bram_if_ctrl_ADDR(20),
      addra(10) => lmb_bram_if_ctrl_ADDR(21),
      addra(9) => lmb_bram_if_ctrl_ADDR(22),
      addra(8) => lmb_bram_if_ctrl_ADDR(23),
      addra(7) => lmb_bram_if_ctrl_ADDR(24),
      addra(6) => lmb_bram_if_ctrl_ADDR(25),
      addra(5) => lmb_bram_if_ctrl_ADDR(26),
      addra(4) => lmb_bram_if_ctrl_ADDR(27),
      addra(3) => lmb_bram_if_ctrl_ADDR(28),
      addra(2) => lmb_bram_if_ctrl_ADDR(29),
      addra(1) => lmb_bram_if_ctrl_ADDR(30),
      addra(0) => lmb_bram_if_ctrl_ADDR(31),
      addrb(31 downto 17) => B"000000000000000",
      addrb(16 downto 0) => ext_bram_if_ctrl_addr(16 downto 0),
      clka => lmb_bram_if_ctrl_CLK,
      clkb => ext_bram_if_ctrl_clk,
      dina(31) => lmb_bram_if_ctrl_DIN(0),
      dina(30) => lmb_bram_if_ctrl_DIN(1),
      dina(29) => lmb_bram_if_ctrl_DIN(2),
      dina(28) => lmb_bram_if_ctrl_DIN(3),
      dina(27) => lmb_bram_if_ctrl_DIN(4),
      dina(26) => lmb_bram_if_ctrl_DIN(5),
      dina(25) => lmb_bram_if_ctrl_DIN(6),
      dina(24) => lmb_bram_if_ctrl_DIN(7),
      dina(23) => lmb_bram_if_ctrl_DIN(8),
      dina(22) => lmb_bram_if_ctrl_DIN(9),
      dina(21) => lmb_bram_if_ctrl_DIN(10),
      dina(20) => lmb_bram_if_ctrl_DIN(11),
      dina(19) => lmb_bram_if_ctrl_DIN(12),
      dina(18) => lmb_bram_if_ctrl_DIN(13),
      dina(17) => lmb_bram_if_ctrl_DIN(14),
      dina(16) => lmb_bram_if_ctrl_DIN(15),
      dina(15) => lmb_bram_if_ctrl_DIN(16),
      dina(14) => lmb_bram_if_ctrl_DIN(17),
      dina(13) => lmb_bram_if_ctrl_DIN(18),
      dina(12) => lmb_bram_if_ctrl_DIN(19),
      dina(11) => lmb_bram_if_ctrl_DIN(20),
      dina(10) => lmb_bram_if_ctrl_DIN(21),
      dina(9) => lmb_bram_if_ctrl_DIN(22),
      dina(8) => lmb_bram_if_ctrl_DIN(23),
      dina(7) => lmb_bram_if_ctrl_DIN(24),
      dina(6) => lmb_bram_if_ctrl_DIN(25),
      dina(5) => lmb_bram_if_ctrl_DIN(26),
      dina(4) => lmb_bram_if_ctrl_DIN(27),
      dina(3) => lmb_bram_if_ctrl_DIN(28),
      dina(2) => lmb_bram_if_ctrl_DIN(29),
      dina(1) => lmb_bram_if_ctrl_DIN(30),
      dina(0) => lmb_bram_if_ctrl_DIN(31),
      dinb(31 downto 0) => ext_bram_if_ctrl_din(31 downto 0),
      douta(31 downto 0) => lmb_bram_if_ctrl_DOUT(31 downto 0),
      doutb(31 downto 0) => ext_bram_if_ctrl_dout(31 downto 0),
      ena => lmb_bram_if_ctrl_EN,
      enb => ext_bram_if_ctrl_en,
      rsta => lmb_bram_if_ctrl_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => ext_bram_if_ctrl_rst,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => lmb_bram_if_ctrl_WE(0),
      wea(2) => lmb_bram_if_ctrl_WE(1),
      wea(1) => lmb_bram_if_ctrl_WE(2),
      wea(0) => lmb_bram_if_ctrl_WE(3),
      web(3 downto 0) => ext_bram_if_ctrl_we(3 downto 0)
    );
lmb_bram_if_cntlr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_lmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => lmb_bram_if_ctrl_ADDR(0 to 31),
      BRAM_Clk_A => lmb_bram_if_ctrl_CLK,
      BRAM_Din_A(0) => lmb_bram_if_ctrl_DOUT(31),
      BRAM_Din_A(1) => lmb_bram_if_ctrl_DOUT(30),
      BRAM_Din_A(2) => lmb_bram_if_ctrl_DOUT(29),
      BRAM_Din_A(3) => lmb_bram_if_ctrl_DOUT(28),
      BRAM_Din_A(4) => lmb_bram_if_ctrl_DOUT(27),
      BRAM_Din_A(5) => lmb_bram_if_ctrl_DOUT(26),
      BRAM_Din_A(6) => lmb_bram_if_ctrl_DOUT(25),
      BRAM_Din_A(7) => lmb_bram_if_ctrl_DOUT(24),
      BRAM_Din_A(8) => lmb_bram_if_ctrl_DOUT(23),
      BRAM_Din_A(9) => lmb_bram_if_ctrl_DOUT(22),
      BRAM_Din_A(10) => lmb_bram_if_ctrl_DOUT(21),
      BRAM_Din_A(11) => lmb_bram_if_ctrl_DOUT(20),
      BRAM_Din_A(12) => lmb_bram_if_ctrl_DOUT(19),
      BRAM_Din_A(13) => lmb_bram_if_ctrl_DOUT(18),
      BRAM_Din_A(14) => lmb_bram_if_ctrl_DOUT(17),
      BRAM_Din_A(15) => lmb_bram_if_ctrl_DOUT(16),
      BRAM_Din_A(16) => lmb_bram_if_ctrl_DOUT(15),
      BRAM_Din_A(17) => lmb_bram_if_ctrl_DOUT(14),
      BRAM_Din_A(18) => lmb_bram_if_ctrl_DOUT(13),
      BRAM_Din_A(19) => lmb_bram_if_ctrl_DOUT(12),
      BRAM_Din_A(20) => lmb_bram_if_ctrl_DOUT(11),
      BRAM_Din_A(21) => lmb_bram_if_ctrl_DOUT(10),
      BRAM_Din_A(22) => lmb_bram_if_ctrl_DOUT(9),
      BRAM_Din_A(23) => lmb_bram_if_ctrl_DOUT(8),
      BRAM_Din_A(24) => lmb_bram_if_ctrl_DOUT(7),
      BRAM_Din_A(25) => lmb_bram_if_ctrl_DOUT(6),
      BRAM_Din_A(26) => lmb_bram_if_ctrl_DOUT(5),
      BRAM_Din_A(27) => lmb_bram_if_ctrl_DOUT(4),
      BRAM_Din_A(28) => lmb_bram_if_ctrl_DOUT(3),
      BRAM_Din_A(29) => lmb_bram_if_ctrl_DOUT(2),
      BRAM_Din_A(30) => lmb_bram_if_ctrl_DOUT(1),
      BRAM_Din_A(31) => lmb_bram_if_ctrl_DOUT(0),
      BRAM_Dout_A(0 to 31) => lmb_bram_if_ctrl_DIN(0 to 31),
      BRAM_EN_A => lmb_bram_if_ctrl_EN,
      BRAM_Rst_A => lmb_bram_if_ctrl_RST,
      BRAM_WEN_A(0 to 3) => lmb_bram_if_ctrl_WE(0 to 3),
      LMB1_ABus(0 to 31) => ilmb_s_ABUS(0 to 31),
      LMB1_AddrStrobe => ilmb_s_ADDRSTROBE,
      LMB1_BE(0 to 3) => ilmb_s_BE(0 to 3),
      LMB1_ReadStrobe => ilmb_s_READSTROBE,
      LMB1_WriteDBus(0 to 31) => ilmb_s_WRITEDBUS(0 to 31),
      LMB1_WriteStrobe => ilmb_s_WRITESTROBE,
      LMB_ABus(0 to 31) => dlmb_s_ABUS(0 to 31),
      LMB_AddrStrobe => dlmb_s_ADDRSTROBE,
      LMB_BE(0 to 3) => dlmb_s_BE(0 to 3),
      LMB_Clk => aclk_ctrl,
      LMB_ReadStrobe => dlmb_s_READSTROBE,
      LMB_Rst => rst,
      LMB_WriteDBus(0 to 31) => dlmb_s_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => dlmb_s_WRITESTROBE,
      Sl1_CE => ilmb_s_CE,
      Sl1_DBus(0 to 31) => ilmb_s_READDBUS(0 to 31),
      Sl1_Ready => ilmb_s_READY,
      Sl1_UE => ilmb_s_UE,
      Sl1_Wait => ilmb_s_WAIT,
      Sl_CE => dlmb_s_CE,
      Sl_DBus(0 to 31) => dlmb_s_READDBUS(0 to 31),
      Sl_Ready => dlmb_s_READY,
      Sl_UE => dlmb_s_UE,
      Sl_Wait => dlmb_s_WAIT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qsfp_gpio_hierarchy_imp_3EHBVA is
  port (
    qsfp0_lpmode : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_reset_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_modsel_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_lpmode : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_reset_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_modsel_l : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    qsfp0_modprs_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp0_int_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_modprs_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    qsfp1_int_l : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qsfp_gpio_hierarchy_imp_3EHBVA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qsfp_gpio_hierarchy_imp_3EHBVA is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_qsfp_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 4 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_qsfp_0;
  signal axi_gpio_qsfp_in_1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal axi_gpio_qsfp_in_2 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal axi_gpio_qsfp_out_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_gpio_qsfp_out_2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_gpio_qsfp_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_axi_gpio_qsfp_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_concat_1_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_concat_2_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_gpio_qsfp : label is "axi_gpio,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of concat_1 : label is "bd_fb99_concat_1_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of concat_1 : label is "yes";
  attribute X_CORE_INFO of concat_1 : label is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of concat_2 : label is "bd_fb99_concat_2_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings of concat_2 : label is "yes";
  attribute X_CORE_INFO of concat_2 : label is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of slice_gpio1_0 : label is "bd_fb99_slice_gpio1_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_gpio1_0 : label is "yes";
  attribute X_CORE_INFO of slice_gpio1_0 : label is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of slice_gpio1_1 : label is "bd_fb99_slice_gpio1_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_gpio1_1 : label is "yes";
  attribute X_CORE_INFO of slice_gpio1_1 : label is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of slice_gpio1_2 : label is "bd_fb99_slice_gpio1_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_gpio1_2 : label is "yes";
  attribute X_CORE_INFO of slice_gpio1_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of slice_gpio2_0 : label is "bd_fb99_slice_gpio2_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_gpio2_0 : label is "yes";
  attribute X_CORE_INFO of slice_gpio2_0 : label is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of slice_gpio2_1 : label is "bd_fb99_slice_gpio2_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_gpio2_1 : label is "yes";
  attribute X_CORE_INFO of slice_gpio2_1 : label is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of slice_gpio2_2 : label is "bd_fb99_slice_gpio2_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of slice_gpio2_2 : label is "yes";
  attribute X_CORE_INFO of slice_gpio2_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2022.2";
begin
axi_gpio_qsfp: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_qsfp_0
     port map (
      gpio2_io_i(4 downto 3) => axi_gpio_qsfp_in_2(4 downto 3),
      gpio2_io_i(2 downto 0) => B"000",
      gpio2_io_o(4 downto 0) => axi_gpio_qsfp_out_2(4 downto 0),
      gpio2_io_t(4 downto 0) => NLW_axi_gpio_qsfp_gpio2_io_t_UNCONNECTED(4 downto 0),
      gpio_io_i(4 downto 3) => axi_gpio_qsfp_in_1(4 downto 3),
      gpio_io_i(2 downto 0) => B"000",
      gpio_io_o(4 downto 0) => axi_gpio_qsfp_out_1(4 downto 0),
      gpio_io_t(4 downto 0) => NLW_axi_gpio_qsfp_gpio_io_t_UNCONNECTED(4 downto 0),
      ip2intc_irpt => ip2intc_irpt,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => S_AXI_araddr(8 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => S_AXI_arready,
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(8 downto 0) => S_AXI_awaddr(8 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
concat_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_1_0
     port map (
      In0(0) => '0',
      In1(0) => '0',
      In2(0) => '0',
      In3(0) => qsfp0_modprs_l(0),
      In4(0) => qsfp0_int_l(0),
      dout(4 downto 3) => axi_gpio_qsfp_in_1(4 downto 3),
      dout(2 downto 0) => NLW_concat_1_dout_UNCONNECTED(2 downto 0)
    );
concat_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_2_0
     port map (
      In0(0) => '0',
      In1(0) => '0',
      In2(0) => '0',
      In3(0) => qsfp1_modprs_l(0),
      In4(0) => qsfp1_int_l(0),
      dout(4 downto 3) => axi_gpio_qsfp_in_2(4 downto 3),
      dout(2 downto 0) => NLW_concat_2_dout_UNCONNECTED(2 downto 0)
    );
slice_gpio1_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_0_0
     port map (
      Din(4 downto 1) => B"0000",
      Din(0) => axi_gpio_qsfp_out_1(0),
      Dout(0) => qsfp0_lpmode(0)
    );
slice_gpio1_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_1_0
     port map (
      Din(4 downto 2) => B"000",
      Din(1) => axi_gpio_qsfp_out_1(1),
      Din(0) => '0',
      Dout(0) => qsfp0_reset_l(0)
    );
slice_gpio1_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio1_2_0
     port map (
      Din(4 downto 3) => B"00",
      Din(2) => axi_gpio_qsfp_out_1(2),
      Din(1 downto 0) => B"00",
      Dout(0) => qsfp0_modsel_l(0)
    );
slice_gpio2_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_0_0
     port map (
      Din(4 downto 1) => B"0000",
      Din(0) => axi_gpio_qsfp_out_2(0),
      Dout(0) => qsfp1_lpmode(0)
    );
slice_gpio2_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_1_0
     port map (
      Din(4 downto 2) => B"000",
      Din(1) => axi_gpio_qsfp_out_2(1),
      Din(0) => '0',
      Dout(0) => qsfp1_reset_l(0)
    );
slice_gpio2_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_slice_gpio2_2_0
     port map (
      Din(4 downto 3) => B"00",
      Din(2) => axi_gpio_qsfp_out_2(2),
      Din(1 downto 0) => B"00",
      Dout(0) => qsfp1_modsel_l(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_gen_imp_141SA20 is
  port (
    resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_gpio_rst_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    wdt_reset : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_gen_imp_141SA20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_gen_imp_141SA20 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_and_gate_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_and_gate_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reset_inverter_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reset_inverter_0;
  signal reset_inverter_net : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of and_gate : label is "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2";
  attribute X_CORE_INFO of reset_inverter : label is "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2";
begin
and_gate: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_and_gate_0
     port map (
      Op1(0) => axi_gpio_rst_n(0),
      Op2(0) => reset_inverter_net,
      Res(0) => resetn(0)
    );
reset_inverter: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reset_inverter_0
     port map (
      Op1(0) => wdt_reset(0),
      Res(0) => reset_inverter_net
    );
end STRUCTURE;
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
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_firmware_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_firmware_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_regmap_cmc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_regmap_cmc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_regmap_host_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_regmap_host_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_cmc_mb_rst_n_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_cmc_mb_rst_n_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_hbm_temp_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_hbm_temp_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mb_intr_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mb_intr_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mutex_cmc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mutex_cmc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mutex_host_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mutex_host_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_timebase_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_timebase_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_wdt_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_wdt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_intc_cmc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_intc_cmc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_intc_host_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    irq : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_intc_host_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_timebase_wdt_0 is
  port (
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    timebase_interrupt : out STD_LOGIC;
    wdt_interrupt : out STD_LOGIC;
    wdt_reset : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_timebase_wdt_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_uartlite_satellite_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_uartlite_satellite_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_uartlite_usb_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_uartlite_usb_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_build_info_cmc_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_build_info_cmc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_build_info_host_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_build_info_host_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_freerun_counter_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_freerun_counter_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_microblaze_axi_vip_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_microblaze_axi_vip_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_microblaze_cmc_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC;
    M0_AXIS_TLAST : out STD_LOGIC;
    M0_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M0_AXIS_TVALID : out STD_LOGIC;
    M0_AXIS_TREADY : in STD_LOGIC;
    S0_AXIS_TLAST : in STD_LOGIC;
    S0_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXIS_TVALID : in STD_LOGIC;
    S0_AXIS_TREADY : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_microblaze_cmc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_msp432_bsl_crc_gen_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tready : out STD_LOGIC;
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_msp432_bsl_crc_gen_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_psreset_cmc_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_psreset_cmc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reachout_axi_vip_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reachout_axi_vip_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reg_map_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reg_map_bram_0;
  signal axi_bram_ctrl_lmb_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_bram_ctrl_lmb_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_lmb_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_lmb_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_lmb_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_lmb_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_lmb_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_reg_map1_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_gpio_mb_reset_gpio_io_o : STD_LOGIC;
  signal axi_gpio_mutex_cmc_gpio2_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_gpio_mutex_host_gpio_io_o : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M00_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M01_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M02_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M03_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M04_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M05_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M06_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M07_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M08_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M09_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M10_AXI_WVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_BREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_BVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_RREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_RVALID : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_WREADY : STD_LOGIC;
  signal axi_ic_cmc_local_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_cmc_local_M11_AXI_WVALID : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_ic_mgmt_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_mgmt_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_ic_mgmt_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_mgmt_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_mgmt_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_mgmt_M00_AXI_WVALID : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_mgmt_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_mgmt_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_BREADY : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M01_AXI_BVALID : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M01_AXI_RREADY : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M01_AXI_RVALID : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M01_AXI_WREADY : STD_LOGIC;
  signal axi_ic_mgmt_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_mgmt_M01_AXI_WVALID : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_mgmt_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_mgmt_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_BREADY : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M02_AXI_BVALID : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M02_AXI_RREADY : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M02_AXI_RVALID : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M02_AXI_WREADY : STD_LOGIC;
  signal axi_ic_mgmt_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_mgmt_M02_AXI_WVALID : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_mgmt_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_mgmt_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_BREADY : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M03_AXI_BVALID : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M03_AXI_RREADY : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M03_AXI_RVALID : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M03_AXI_WREADY : STD_LOGIC;
  signal axi_ic_mgmt_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_mgmt_M03_AXI_WVALID : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ic_mgmt_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_ic_mgmt_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_BREADY : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M04_AXI_BVALID : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M04_AXI_RREADY : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M04_AXI_RVALID : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M04_AXI_WREADY : STD_LOGIC;
  signal axi_ic_mgmt_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_mgmt_M04_AXI_WVALID : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_ic_mgmt_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_mgmt_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_ic_mgmt_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_mgmt_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_BREADY : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M05_AXI_BVALID : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M05_AXI_RREADY : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_mgmt_M05_AXI_RVALID : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_mgmt_M05_AXI_WREADY : STD_LOGIC;
  signal axi_ic_mgmt_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_mgmt_M05_AXI_WVALID : STD_LOGIC;
  signal axi_intc_cmc_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal axi_intc_cmc_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_intc_cmc_interrupt_INTERRUPT : STD_LOGIC;
  signal axi_timebase_wdt_wdt_interrupt : STD_LOGIC;
  signal axi_uartlite_satellite_interrupt : STD_LOGIC;
  signal axi_uartlite_usb_interrupt : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmc_mb_rst : STD_LOGIC;
  signal concat_host_interrupts_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal concat_intr_cmc_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal interrupt_gpio_net : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal interrupt_wdt_cmc_net : STD_LOGIC;
  signal intr_gpio_qsfp : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_axi_vip_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_axi_vip_M_AXI_ARREADY : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_ARVALID : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_axi_vip_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_axi_vip_M_AXI_AWREADY : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_AWVALID : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_BREADY : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_axi_vip_M_AXI_BVALID : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_axi_vip_M_AXI_RREADY : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_axi_vip_M_AXI_RVALID : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_axi_vip_M_AXI_WREADY : STD_LOGIC;
  signal microblaze_axi_vip_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_axi_vip_M_AXI_WVALID : STD_LOGIC;
  signal microblaze_cmc_DLMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_cmc_DLMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_cmc_DLMB_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_cmc_DLMB_CE : STD_LOGIC;
  signal microblaze_cmc_DLMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_cmc_DLMB_READSTROBE : STD_LOGIC;
  signal microblaze_cmc_DLMB_READY : STD_LOGIC;
  signal microblaze_cmc_DLMB_UE : STD_LOGIC;
  signal microblaze_cmc_DLMB_WAIT : STD_LOGIC;
  signal microblaze_cmc_DLMB_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_cmc_DLMB_WRITESTROBE : STD_LOGIC;
  signal microblaze_cmc_ILMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_cmc_ILMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_cmc_ILMB_CE : STD_LOGIC;
  signal microblaze_cmc_ILMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_cmc_ILMB_READSTROBE : STD_LOGIC;
  signal microblaze_cmc_ILMB_READY : STD_LOGIC;
  signal microblaze_cmc_ILMB_UE : STD_LOGIC;
  signal microblaze_cmc_ILMB_WAIT : STD_LOGIC;
  signal microblaze_cmc_M0_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_cmc_M0_AXIS_TLAST : STD_LOGIC;
  signal microblaze_cmc_M0_AXIS_TREADY : STD_LOGIC;
  signal microblaze_cmc_M0_AXIS_TVALID : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_cmc_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_cmc_M_AXI_DP_ARREADY : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_cmc_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_cmc_M_AXI_DP_AWREADY : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_cmc_M_AXI_DP_BVALID : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_cmc_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_cmc_M_AXI_DP_RVALID : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_cmc_M_AXI_DP_WREADY : STD_LOGIC;
  signal microblaze_cmc_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_cmc_M_AXI_DP_WVALID : STD_LOGIC;
  signal msp432_bsl_crc_gen_m0_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal msp432_bsl_crc_gen_m0_axis_TLAST : STD_LOGIC;
  signal msp432_bsl_crc_gen_m0_axis_TREADY : STD_LOGIC;
  signal msp432_bsl_crc_gen_m0_axis_TVALID : STD_LOGIC;
  signal psreset_cmc_interconnect_aresetn : STD_LOGIC;
  signal psreset_cmc_peripheral_aresetn : STD_LOGIC;
  signal reg_map_bram_ctrl_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal reg_map_bram_ctrl_CLK : STD_LOGIC;
  signal reg_map_bram_ctrl_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_map_bram_ctrl_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_map_bram_ctrl_EN : STD_LOGIC;
  signal reg_map_bram_ctrl_RST : STD_LOGIC;
  signal reg_map_bram_ctrl_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_gen_resetn : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal wdt_freeze : STD_LOGIC;
  signal NLW_axi_ic_cmc_local_M00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal NLW_axi_ic_cmc_local_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal NLW_axi_ic_cmc_local_M01_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M02_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M02_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M03_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M03_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M04_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M04_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M05_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_axi_ic_cmc_local_M05_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_axi_ic_cmc_local_M06_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_axi_ic_cmc_local_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_axi_ic_cmc_local_M07_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M07_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M08_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 13 );
  signal NLW_axi_ic_cmc_local_M08_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 13 );
  signal NLW_axi_ic_cmc_local_M09_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M09_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M10_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_axi_ic_cmc_local_M10_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal NLW_axi_ic_cmc_local_M11_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_cmc_local_M11_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 9 );
  signal NLW_axi_ic_mgmt_M00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 to 17 );
  signal NLW_axi_ic_mgmt_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 to 17 );
  signal NLW_axi_ic_mgmt_M01_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal NLW_axi_ic_mgmt_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal NLW_axi_ic_mgmt_M02_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal NLW_axi_ic_mgmt_M02_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal NLW_axi_ic_mgmt_M03_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal NLW_axi_ic_mgmt_M03_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 9 );
  signal NLW_axi_ic_mgmt_M04_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 5 );
  signal NLW_axi_ic_mgmt_M04_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 5 );
  signal NLW_axi_ic_mgmt_M05_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 13 );
  signal NLW_axi_ic_mgmt_M05_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 13 );
  signal NLW_axi_timebase_wdt_timebase_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uartlite_usb_tx_UNCONNECTED : STD_LOGIC;
  signal NLW_concat_intr_cmc_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 4 );
  signal NLW_microblaze_cmc_Dbg_TDO_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_cmc_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reachout_axi_vip_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_reachout_axi_vip_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reachout_axi_vip_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reachout_axi_vip_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_reachout_axi_vip_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_reachout_axi_vip_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reachout_axi_vip_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_reachout_axi_vip_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_reg_map_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_reg_map_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_bram_ctrl_firmware : label is "axi_bram_ctrl,Vivado 2022.2";
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of axi_bram_ctrl_regmap_cmc : label is "byte  0x01FA0000 32 > bd_fb99 reg_map_bram";
  attribute X_CORE_INFO of axi_bram_ctrl_regmap_cmc : label is "axi_bram_ctrl,Vivado 2022.2";
  attribute X_CORE_INFO of axi_bram_ctrl_regmap_host : label is "axi_bram_ctrl,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_cmc_mb_rst_n : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_hbm_temp : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_mb_intr : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_mutex_cmc : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_mutex_host : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_timebase : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_wdt : label is "axi_gpio,Vivado 2022.2";
  attribute X_CORE_INFO of axi_intc_cmc : label is "axi_intc,Vivado 2022.2";
  attribute X_CORE_INFO of axi_intc_host : label is "axi_intc,Vivado 2022.2";
  attribute X_CORE_INFO of axi_timebase_wdt : label is "axi_timebase_wdt_top,Vivado 2022.2";
  attribute X_CORE_INFO of axi_uartlite_satellite : label is "axi_uartlite,Vivado 2022.2";
  attribute X_CORE_INFO of axi_uartlite_usb : label is "axi_uartlite,Vivado 2022.2";
  attribute X_CORE_INFO of build_info_cmc : label is "shell_utils_build_info_v1_0_0,Vivado 2022.2";
  attribute X_CORE_INFO of build_info_host : label is "shell_utils_build_info_v1_0_0,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of concat_host_interrupts : label is "bd_fb99_concat_host_interrupts_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of concat_host_interrupts : label is "yes";
  attribute X_CORE_INFO of concat_host_interrupts : label is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
  attribute CHECK_LICENSE_TYPE of concat_intr_cmc : label is "bd_fb99_concat_intr_cmc_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings of concat_intr_cmc : label is "yes";
  attribute X_CORE_INFO of concat_intr_cmc : label is "xlconcat_v2_1_4_xlconcat,Vivado 2022.2";
  attribute X_CORE_INFO of freerun_counter : label is "c_counter_binary_v12_0_15,Vivado 2022.2";
  attribute X_CORE_INFO of microblaze_axi_vip : label is "axi_vip_v1_1_13_top,Vivado 2022.2";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_cmc : label is "microblaze-le > bd_fb99 microblaze_local_memory/lmb_bram_if_cntlr bd_fb99 axi_bram_ctrl_regmap_cmc";
  attribute X_CORE_INFO of microblaze_cmc : label is "MicroBlaze,Vivado 2022.2";
  attribute X_CORE_INFO of msp432_bsl_crc_gen : label is "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2022.2";
  attribute X_CORE_INFO of psreset_cmc : label is "proc_sys_reset,Vivado 2022.2";
  attribute X_CORE_INFO of reachout_axi_vip : label is "axi_vip_v1_1_13_top,Vivado 2022.2";
  attribute X_CORE_INFO of reg_map_bram : label is "blk_mem_gen_v8_4_5,Vivado 2022.2";
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
axi_bram_ctrl_firmware: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_firmware_0
     port map (
      bram_addr_a(16 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => axi_bram_ctrl_lmb_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_lmb_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_lmb_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(16 downto 0) => axi_ic_mgmt_M00_AXI_ARADDR(16 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arprot(2 downto 0) => axi_ic_mgmt_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_ic_mgmt_M00_AXI_ARREADY,
      s_axi_arvalid => axi_ic_mgmt_M00_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => axi_ic_mgmt_M00_AXI_AWADDR(16 downto 0),
      s_axi_awprot(2 downto 0) => axi_ic_mgmt_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_ic_mgmt_M00_AXI_AWREADY,
      s_axi_awvalid => axi_ic_mgmt_M00_AXI_AWVALID,
      s_axi_bready => axi_ic_mgmt_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_mgmt_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_mgmt_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_mgmt_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_mgmt_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_mgmt_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_mgmt_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_mgmt_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_mgmt_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_mgmt_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_mgmt_M00_AXI_WVALID
    );
axi_bram_ctrl_regmap_cmc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_regmap_cmc_0
     port map (
      bram_addr_a(12 downto 0) => reg_map_bram_ctrl_ADDR(12 downto 0),
      bram_clk_a => reg_map_bram_ctrl_CLK,
      bram_en_a => reg_map_bram_ctrl_EN,
      bram_rddata_a(31 downto 0) => reg_map_bram_ctrl_DOUT(31 downto 0),
      bram_rst_a => reg_map_bram_ctrl_RST,
      bram_we_a(3 downto 0) => reg_map_bram_ctrl_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => reg_map_bram_ctrl_DIN(31 downto 0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(12 downto 0) => axi_ic_cmc_local_M08_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arprot(2 downto 0) => axi_ic_cmc_local_M08_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_ic_cmc_local_M08_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M08_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_ic_cmc_local_M08_AXI_AWADDR(12 downto 0),
      s_axi_awprot(2 downto 0) => axi_ic_cmc_local_M08_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_ic_cmc_local_M08_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M08_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M08_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M08_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M08_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M08_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M08_AXI_WVALID
    );
axi_bram_ctrl_regmap_host: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_bram_ctrl_regmap_host_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_reg_map1_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_reg_map1_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_reg_map1_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(12 downto 0) => axi_ic_mgmt_M05_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arprot(2 downto 0) => axi_ic_mgmt_M05_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_ic_mgmt_M05_AXI_ARREADY,
      s_axi_arvalid => axi_ic_mgmt_M05_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_ic_mgmt_M05_AXI_AWADDR(12 downto 0),
      s_axi_awprot(2 downto 0) => axi_ic_mgmt_M05_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_ic_mgmt_M05_AXI_AWREADY,
      s_axi_awvalid => axi_ic_mgmt_M05_AXI_AWVALID,
      s_axi_bready => axi_ic_mgmt_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_mgmt_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_mgmt_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_mgmt_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_mgmt_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_mgmt_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_mgmt_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_mgmt_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_mgmt_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_mgmt_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_mgmt_M05_AXI_WVALID
    );
axi_gpio_cmc_mb_rst_n: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_cmc_mb_rst_n_0
     port map (
      gpio_io_o(0) => axi_gpio_mb_reset_gpio_io_o,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_mgmt_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_mgmt_M01_AXI_ARREADY,
      s_axi_arvalid => axi_ic_mgmt_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_mgmt_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_mgmt_M01_AXI_AWREADY,
      s_axi_awvalid => axi_ic_mgmt_M01_AXI_AWVALID,
      s_axi_bready => axi_ic_mgmt_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_mgmt_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_mgmt_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_mgmt_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_mgmt_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_mgmt_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_mgmt_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_mgmt_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_mgmt_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_mgmt_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_mgmt_M01_AXI_WVALID
    );
axi_gpio_hbm_temp: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_hbm_temp_0
     port map (
      gpio_io_i(14 downto 0) => B"000000000000000",
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_cmc_local_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M01_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_cmc_local_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_cmc_local_M01_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M01_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M01_AXI_WVALID
    );
axi_gpio_mb_intr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mb_intr_0
     port map (
      gpio_io_o(30 downto 0) => interrupt_gpio_net(30 downto 0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_cmc_local_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M02_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_cmc_local_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_cmc_local_M02_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M02_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M02_AXI_WVALID
    );
axi_gpio_mutex_cmc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mutex_cmc_0
     port map (
      gpio2_io_o(1 downto 0) => axi_gpio_mutex_cmc_gpio2_io_o(1 downto 0),
      gpio_io_i(0) => axi_gpio_mutex_host_gpio_io_o,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_cmc_local_M09_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M09_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M09_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_cmc_local_M09_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_cmc_local_M09_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M09_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M09_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M09_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M09_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M09_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M09_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M09_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M09_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M09_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M09_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M09_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M09_AXI_WVALID
    );
axi_gpio_mutex_host: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_mutex_host_0
     port map (
      gpio2_io_i(1 downto 0) => axi_gpio_mutex_cmc_gpio2_io_o(1 downto 0),
      gpio_io_o(0) => axi_gpio_mutex_host_gpio_io_o,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_mgmt_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_mgmt_M02_AXI_ARREADY,
      s_axi_arvalid => axi_ic_mgmt_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_mgmt_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_mgmt_M02_AXI_AWREADY,
      s_axi_awvalid => axi_ic_mgmt_M02_AXI_AWVALID,
      s_axi_bready => axi_ic_mgmt_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_mgmt_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_mgmt_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_mgmt_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_mgmt_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_mgmt_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_mgmt_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_mgmt_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_mgmt_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_mgmt_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_mgmt_M02_AXI_WVALID
    );
axi_gpio_timebase: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_timebase_0
     port map (
      gpio_io_i(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_cmc_local_M07_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M07_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M07_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_cmc_local_M07_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_cmc_local_M07_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M07_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M07_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M07_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M07_AXI_WVALID
    );
axi_gpio_wdt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_gpio_wdt_0
     port map (
      gpio_io_o(0) => wdt_freeze,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_cmc_local_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M03_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_cmc_local_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_cmc_local_M03_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M03_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M03_AXI_WVALID
    );
axi_ic_cmc_local: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_cmc_local_0
     port map (
      ACLK => aclk_ctrl,
      ARESETN => psreset_cmc_interconnect_aresetn,
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(31 downto 5) => NLW_axi_ic_cmc_local_M00_AXI_araddr_UNCONNECTED(31 downto 5),
      M00_AXI_araddr(4 downto 0) => axi_ic_cmc_local_M00_AXI_ARADDR(4 downto 0),
      M00_AXI_arready(0) => axi_ic_cmc_local_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => axi_ic_cmc_local_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 5) => NLW_axi_ic_cmc_local_M00_AXI_awaddr_UNCONNECTED(31 downto 5),
      M00_AXI_awaddr(4 downto 0) => axi_ic_cmc_local_M00_AXI_AWADDR(4 downto 0),
      M00_AXI_awready(0) => axi_ic_cmc_local_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => axi_ic_cmc_local_M00_AXI_AWVALID,
      M00_AXI_bready(0) => axi_ic_cmc_local_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_ic_cmc_local_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => axi_ic_cmc_local_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_ic_cmc_local_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => axi_ic_cmc_local_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => axi_ic_cmc_local_M00_AXI_WVALID,
      M01_ACLK => '0',
      M01_ARESETN => '0',
      M01_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M01_AXI_araddr_UNCONNECTED(31 downto 9),
      M01_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arready(0) => axi_ic_cmc_local_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => axi_ic_cmc_local_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M01_AXI_awaddr_UNCONNECTED(31 downto 9),
      M01_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awready(0) => axi_ic_cmc_local_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => axi_ic_cmc_local_M01_AXI_AWVALID,
      M01_AXI_bready(0) => axi_ic_cmc_local_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_ic_cmc_local_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => axi_ic_cmc_local_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_ic_cmc_local_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => axi_ic_cmc_local_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => axi_ic_cmc_local_M01_AXI_WVALID,
      M02_ACLK => '0',
      M02_ARESETN => '0',
      M02_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M02_AXI_araddr_UNCONNECTED(31 downto 9),
      M02_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arready(0) => axi_ic_cmc_local_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => axi_ic_cmc_local_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M02_AXI_awaddr_UNCONNECTED(31 downto 9),
      M02_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awready(0) => axi_ic_cmc_local_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => axi_ic_cmc_local_M02_AXI_AWVALID,
      M02_AXI_bready(0) => axi_ic_cmc_local_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => axi_ic_cmc_local_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => axi_ic_cmc_local_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => axi_ic_cmc_local_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => axi_ic_cmc_local_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => axi_ic_cmc_local_M02_AXI_WVALID,
      M03_ACLK => '0',
      M03_ARESETN => '0',
      M03_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M03_AXI_araddr_UNCONNECTED(31 downto 9),
      M03_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arready(0) => axi_ic_cmc_local_M03_AXI_ARREADY,
      M03_AXI_arvalid(0) => axi_ic_cmc_local_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M03_AXI_awaddr_UNCONNECTED(31 downto 9),
      M03_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awready(0) => axi_ic_cmc_local_M03_AXI_AWREADY,
      M03_AXI_awvalid(0) => axi_ic_cmc_local_M03_AXI_AWVALID,
      M03_AXI_bready(0) => axi_ic_cmc_local_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => axi_ic_cmc_local_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => axi_ic_cmc_local_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => axi_ic_cmc_local_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => axi_ic_cmc_local_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => axi_ic_cmc_local_M03_AXI_WVALID,
      M04_ACLK => '0',
      M04_ARESETN => '0',
      M04_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M04_AXI_araddr_UNCONNECTED(31 downto 9),
      M04_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M04_AXI_ARADDR(8 downto 0),
      M04_AXI_arready(0) => axi_ic_cmc_local_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => axi_ic_cmc_local_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M04_AXI_awaddr_UNCONNECTED(31 downto 9),
      M04_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M04_AXI_AWADDR(8 downto 0),
      M04_AXI_awready(0) => axi_ic_cmc_local_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => axi_ic_cmc_local_M04_AXI_AWVALID,
      M04_AXI_bready(0) => axi_ic_cmc_local_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => axi_ic_cmc_local_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => axi_ic_cmc_local_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => axi_ic_cmc_local_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => axi_ic_cmc_local_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => axi_ic_cmc_local_M04_AXI_WVALID,
      M05_ACLK => '0',
      M05_ARESETN => '0',
      M05_AXI_araddr(31 downto 4) => NLW_axi_ic_cmc_local_M05_AXI_araddr_UNCONNECTED(31 downto 4),
      M05_AXI_araddr(3 downto 0) => axi_ic_cmc_local_M05_AXI_ARADDR(3 downto 0),
      M05_AXI_arready(0) => axi_ic_cmc_local_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => axi_ic_cmc_local_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 4) => NLW_axi_ic_cmc_local_M05_AXI_awaddr_UNCONNECTED(31 downto 4),
      M05_AXI_awaddr(3 downto 0) => axi_ic_cmc_local_M05_AXI_AWADDR(3 downto 0),
      M05_AXI_awready(0) => axi_ic_cmc_local_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => axi_ic_cmc_local_M05_AXI_AWVALID,
      M05_AXI_bready(0) => axi_ic_cmc_local_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => axi_ic_cmc_local_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => axi_ic_cmc_local_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => axi_ic_cmc_local_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => axi_ic_cmc_local_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => axi_ic_cmc_local_M05_AXI_WVALID,
      M06_ACLK => '0',
      M06_ARESETN => '0',
      M06_AXI_araddr(31 downto 4) => NLW_axi_ic_cmc_local_M06_AXI_araddr_UNCONNECTED(31 downto 4),
      M06_AXI_araddr(3 downto 0) => axi_ic_cmc_local_M06_AXI_ARADDR(3 downto 0),
      M06_AXI_arready(0) => axi_ic_cmc_local_M06_AXI_ARREADY,
      M06_AXI_arvalid(0) => axi_ic_cmc_local_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 4) => NLW_axi_ic_cmc_local_M06_AXI_awaddr_UNCONNECTED(31 downto 4),
      M06_AXI_awaddr(3 downto 0) => axi_ic_cmc_local_M06_AXI_AWADDR(3 downto 0),
      M06_AXI_awready(0) => axi_ic_cmc_local_M06_AXI_AWREADY,
      M06_AXI_awvalid(0) => axi_ic_cmc_local_M06_AXI_AWVALID,
      M06_AXI_bready(0) => axi_ic_cmc_local_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid(0) => axi_ic_cmc_local_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready(0) => axi_ic_cmc_local_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid(0) => axi_ic_cmc_local_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready(0) => axi_ic_cmc_local_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid(0) => axi_ic_cmc_local_M06_AXI_WVALID,
      M07_ACLK => '0',
      M07_ARESETN => '0',
      M07_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M07_AXI_araddr_UNCONNECTED(31 downto 9),
      M07_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M07_AXI_ARADDR(8 downto 0),
      M07_AXI_arready(0) => axi_ic_cmc_local_M07_AXI_ARREADY,
      M07_AXI_arvalid(0) => axi_ic_cmc_local_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M07_AXI_awaddr_UNCONNECTED(31 downto 9),
      M07_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M07_AXI_AWADDR(8 downto 0),
      M07_AXI_awready(0) => axi_ic_cmc_local_M07_AXI_AWREADY,
      M07_AXI_awvalid(0) => axi_ic_cmc_local_M07_AXI_AWVALID,
      M07_AXI_bready(0) => axi_ic_cmc_local_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => axi_ic_cmc_local_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready(0) => axi_ic_cmc_local_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => axi_ic_cmc_local_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready(0) => axi_ic_cmc_local_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => axi_ic_cmc_local_M07_AXI_WVALID,
      M08_ACLK => '0',
      M08_ARESETN => '0',
      M08_AXI_araddr(31 downto 13) => NLW_axi_ic_cmc_local_M08_AXI_araddr_UNCONNECTED(31 downto 13),
      M08_AXI_araddr(12 downto 0) => axi_ic_cmc_local_M08_AXI_ARADDR(12 downto 0),
      M08_AXI_arprot(2 downto 0) => axi_ic_cmc_local_M08_AXI_ARPROT(2 downto 0),
      M08_AXI_arready => axi_ic_cmc_local_M08_AXI_ARREADY,
      M08_AXI_arvalid => axi_ic_cmc_local_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 13) => NLW_axi_ic_cmc_local_M08_AXI_awaddr_UNCONNECTED(31 downto 13),
      M08_AXI_awaddr(12 downto 0) => axi_ic_cmc_local_M08_AXI_AWADDR(12 downto 0),
      M08_AXI_awprot(2 downto 0) => axi_ic_cmc_local_M08_AXI_AWPROT(2 downto 0),
      M08_AXI_awready => axi_ic_cmc_local_M08_AXI_AWREADY,
      M08_AXI_awvalid => axi_ic_cmc_local_M08_AXI_AWVALID,
      M08_AXI_bready => axi_ic_cmc_local_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => axi_ic_cmc_local_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => axi_ic_cmc_local_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => axi_ic_cmc_local_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => axi_ic_cmc_local_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => axi_ic_cmc_local_M08_AXI_WVALID,
      M09_ACLK => '0',
      M09_ARESETN => '0',
      M09_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M09_AXI_araddr_UNCONNECTED(31 downto 9),
      M09_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M09_AXI_ARADDR(8 downto 0),
      M09_AXI_arready(0) => axi_ic_cmc_local_M09_AXI_ARREADY,
      M09_AXI_arvalid(0) => axi_ic_cmc_local_M09_AXI_ARVALID,
      M09_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M09_AXI_awaddr_UNCONNECTED(31 downto 9),
      M09_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M09_AXI_AWADDR(8 downto 0),
      M09_AXI_awready(0) => axi_ic_cmc_local_M09_AXI_AWREADY,
      M09_AXI_awvalid(0) => axi_ic_cmc_local_M09_AXI_AWVALID,
      M09_AXI_bready(0) => axi_ic_cmc_local_M09_AXI_BREADY,
      M09_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid(0) => axi_ic_cmc_local_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready(0) => axi_ic_cmc_local_M09_AXI_RREADY,
      M09_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid(0) => axi_ic_cmc_local_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready(0) => axi_ic_cmc_local_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid(0) => axi_ic_cmc_local_M09_AXI_WVALID,
      M10_ACLK => '0',
      M10_ARESETN => '0',
      M10_AXI_araddr(31 downto 4) => NLW_axi_ic_cmc_local_M10_AXI_araddr_UNCONNECTED(31 downto 4),
      M10_AXI_araddr(3 downto 0) => axi_ic_cmc_local_M10_AXI_ARADDR(3 downto 0),
      M10_AXI_arready(0) => axi_ic_cmc_local_M10_AXI_ARREADY,
      M10_AXI_arvalid(0) => axi_ic_cmc_local_M10_AXI_ARVALID,
      M10_AXI_awaddr(31 downto 4) => NLW_axi_ic_cmc_local_M10_AXI_awaddr_UNCONNECTED(31 downto 4),
      M10_AXI_awaddr(3 downto 0) => axi_ic_cmc_local_M10_AXI_AWADDR(3 downto 0),
      M10_AXI_awready(0) => axi_ic_cmc_local_M10_AXI_AWREADY,
      M10_AXI_awvalid(0) => axi_ic_cmc_local_M10_AXI_AWVALID,
      M10_AXI_bready(0) => axi_ic_cmc_local_M10_AXI_BREADY,
      M10_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid(0) => axi_ic_cmc_local_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready(0) => axi_ic_cmc_local_M10_AXI_RREADY,
      M10_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid(0) => axi_ic_cmc_local_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready(0) => axi_ic_cmc_local_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid(0) => axi_ic_cmc_local_M10_AXI_WVALID,
      M11_ACLK => '0',
      M11_ARESETN => '0',
      M11_AXI_araddr(31 downto 9) => NLW_axi_ic_cmc_local_M11_AXI_araddr_UNCONNECTED(31 downto 9),
      M11_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M11_AXI_ARADDR(8 downto 0),
      M11_AXI_arready => axi_ic_cmc_local_M11_AXI_ARREADY,
      M11_AXI_arvalid => axi_ic_cmc_local_M11_AXI_ARVALID,
      M11_AXI_awaddr(31 downto 9) => NLW_axi_ic_cmc_local_M11_AXI_awaddr_UNCONNECTED(31 downto 9),
      M11_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M11_AXI_AWADDR(8 downto 0),
      M11_AXI_awready => axi_ic_cmc_local_M11_AXI_AWREADY,
      M11_AXI_awvalid => axi_ic_cmc_local_M11_AXI_AWVALID,
      M11_AXI_bready => axi_ic_cmc_local_M11_AXI_BREADY,
      M11_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid => axi_ic_cmc_local_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready => axi_ic_cmc_local_M11_AXI_RREADY,
      M11_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid => axi_ic_cmc_local_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready => axi_ic_cmc_local_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid => axi_ic_cmc_local_M11_AXI_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(31 downto 0) => microblaze_axi_vip_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_axi_vip_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => microblaze_axi_vip_M_AXI_ARREADY,
      S00_AXI_arvalid => microblaze_axi_vip_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_axi_vip_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_axi_vip_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => microblaze_axi_vip_M_AXI_AWREADY,
      S00_AXI_awvalid => microblaze_axi_vip_M_AXI_AWVALID,
      S00_AXI_bready => microblaze_axi_vip_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_axi_vip_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_axi_vip_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_axi_vip_M_AXI_RDATA(31 downto 0),
      S00_AXI_rready => microblaze_axi_vip_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_axi_vip_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_axi_vip_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_axi_vip_M_AXI_WDATA(31 downto 0),
      S00_AXI_wready => microblaze_axi_vip_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_axi_vip_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_axi_vip_M_AXI_WVALID
    );
axi_ic_mgmt: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_ic_mgmt_0
     port map (
      ACLK => aclk_ctrl,
      ARESETN => aresetn_ctrl,
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(17) => NLW_axi_ic_mgmt_M00_AXI_araddr_UNCONNECTED(17),
      M00_AXI_araddr(16 downto 0) => axi_ic_mgmt_M00_AXI_ARADDR(16 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_ic_mgmt_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_ic_mgmt_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_ic_mgmt_M00_AXI_ARVALID,
      M00_AXI_awaddr(17) => NLW_axi_ic_mgmt_M00_AXI_awaddr_UNCONNECTED(17),
      M00_AXI_awaddr(16 downto 0) => axi_ic_mgmt_M00_AXI_AWADDR(16 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_ic_mgmt_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_ic_mgmt_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_ic_mgmt_M00_AXI_AWVALID,
      M00_AXI_bready => axi_ic_mgmt_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_mgmt_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_mgmt_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_mgmt_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_ic_mgmt_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_mgmt_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_ic_mgmt_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_mgmt_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_ic_mgmt_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_mgmt_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_ic_mgmt_M00_AXI_WVALID,
      M01_ACLK => '0',
      M01_ARESETN => '0',
      M01_AXI_araddr(17 downto 9) => NLW_axi_ic_mgmt_M01_AXI_araddr_UNCONNECTED(17 downto 9),
      M01_AXI_araddr(8 downto 0) => axi_ic_mgmt_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arready(0) => axi_ic_mgmt_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => axi_ic_mgmt_M01_AXI_ARVALID,
      M01_AXI_awaddr(17 downto 9) => NLW_axi_ic_mgmt_M01_AXI_awaddr_UNCONNECTED(17 downto 9),
      M01_AXI_awaddr(8 downto 0) => axi_ic_mgmt_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awready(0) => axi_ic_mgmt_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => axi_ic_mgmt_M01_AXI_AWVALID,
      M01_AXI_bready(0) => axi_ic_mgmt_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_ic_mgmt_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_ic_mgmt_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_ic_mgmt_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => axi_ic_mgmt_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_ic_mgmt_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_ic_mgmt_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_ic_mgmt_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => axi_ic_mgmt_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_ic_mgmt_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => axi_ic_mgmt_M01_AXI_WVALID,
      M02_ACLK => '0',
      M02_ARESETN => '0',
      M02_AXI_araddr(17 downto 9) => NLW_axi_ic_mgmt_M02_AXI_araddr_UNCONNECTED(17 downto 9),
      M02_AXI_araddr(8 downto 0) => axi_ic_mgmt_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arready(0) => axi_ic_mgmt_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => axi_ic_mgmt_M02_AXI_ARVALID,
      M02_AXI_awaddr(17 downto 9) => NLW_axi_ic_mgmt_M02_AXI_awaddr_UNCONNECTED(17 downto 9),
      M02_AXI_awaddr(8 downto 0) => axi_ic_mgmt_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awready(0) => axi_ic_mgmt_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => axi_ic_mgmt_M02_AXI_AWVALID,
      M02_AXI_bready(0) => axi_ic_mgmt_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_ic_mgmt_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => axi_ic_mgmt_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_ic_mgmt_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => axi_ic_mgmt_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_ic_mgmt_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => axi_ic_mgmt_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_ic_mgmt_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => axi_ic_mgmt_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_ic_mgmt_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => axi_ic_mgmt_M02_AXI_WVALID,
      M03_ACLK => '0',
      M03_ARESETN => '0',
      M03_AXI_araddr(17 downto 9) => NLW_axi_ic_mgmt_M03_AXI_araddr_UNCONNECTED(17 downto 9),
      M03_AXI_araddr(8 downto 0) => axi_ic_mgmt_M03_AXI_ARADDR(8 downto 0),
      M03_AXI_arready(0) => axi_ic_mgmt_M03_AXI_ARREADY,
      M03_AXI_arvalid(0) => axi_ic_mgmt_M03_AXI_ARVALID,
      M03_AXI_awaddr(17 downto 9) => NLW_axi_ic_mgmt_M03_AXI_awaddr_UNCONNECTED(17 downto 9),
      M03_AXI_awaddr(8 downto 0) => axi_ic_mgmt_M03_AXI_AWADDR(8 downto 0),
      M03_AXI_awready(0) => axi_ic_mgmt_M03_AXI_AWREADY,
      M03_AXI_awvalid(0) => axi_ic_mgmt_M03_AXI_AWVALID,
      M03_AXI_bready(0) => axi_ic_mgmt_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_ic_mgmt_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => axi_ic_mgmt_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_ic_mgmt_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => axi_ic_mgmt_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_ic_mgmt_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => axi_ic_mgmt_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_ic_mgmt_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => axi_ic_mgmt_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_ic_mgmt_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => axi_ic_mgmt_M03_AXI_WVALID,
      M04_ACLK => '0',
      M04_ARESETN => '0',
      M04_AXI_araddr(17 downto 5) => NLW_axi_ic_mgmt_M04_AXI_araddr_UNCONNECTED(17 downto 5),
      M04_AXI_araddr(4 downto 0) => axi_ic_mgmt_M04_AXI_ARADDR(4 downto 0),
      M04_AXI_arready(0) => axi_ic_mgmt_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => axi_ic_mgmt_M04_AXI_ARVALID,
      M04_AXI_awaddr(17 downto 5) => NLW_axi_ic_mgmt_M04_AXI_awaddr_UNCONNECTED(17 downto 5),
      M04_AXI_awaddr(4 downto 0) => axi_ic_mgmt_M04_AXI_AWADDR(4 downto 0),
      M04_AXI_awready(0) => axi_ic_mgmt_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => axi_ic_mgmt_M04_AXI_AWVALID,
      M04_AXI_bready(0) => axi_ic_mgmt_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_ic_mgmt_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => axi_ic_mgmt_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_ic_mgmt_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => axi_ic_mgmt_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_ic_mgmt_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => axi_ic_mgmt_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_ic_mgmt_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => axi_ic_mgmt_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_ic_mgmt_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => axi_ic_mgmt_M04_AXI_WVALID,
      M05_ACLK => '0',
      M05_ARESETN => '0',
      M05_AXI_araddr(17 downto 13) => NLW_axi_ic_mgmt_M05_AXI_araddr_UNCONNECTED(17 downto 13),
      M05_AXI_araddr(12 downto 0) => axi_ic_mgmt_M05_AXI_ARADDR(12 downto 0),
      M05_AXI_arprot(2 downto 0) => axi_ic_mgmt_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => axi_ic_mgmt_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_ic_mgmt_M05_AXI_ARVALID,
      M05_AXI_awaddr(17 downto 13) => NLW_axi_ic_mgmt_M05_AXI_awaddr_UNCONNECTED(17 downto 13),
      M05_AXI_awaddr(12 downto 0) => axi_ic_mgmt_M05_AXI_AWADDR(12 downto 0),
      M05_AXI_awprot(2 downto 0) => axi_ic_mgmt_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => axi_ic_mgmt_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_ic_mgmt_M05_AXI_AWVALID,
      M05_AXI_bready => axi_ic_mgmt_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_ic_mgmt_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_ic_mgmt_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_ic_mgmt_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_ic_mgmt_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_ic_mgmt_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_ic_mgmt_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_ic_mgmt_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_ic_mgmt_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_ic_mgmt_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_ic_mgmt_M05_AXI_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(17 downto 0) => s_axi_ctrl_araddr(17 downto 0),
      S00_AXI_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      S00_AXI_arready(0) => s_axi_ctrl_arready(0),
      S00_AXI_arvalid(0) => s_axi_ctrl_arvalid(0),
      S00_AXI_awaddr(17 downto 0) => s_axi_ctrl_awaddr(17 downto 0),
      S00_AXI_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      S00_AXI_awready(0) => s_axi_ctrl_awready(0),
      S00_AXI_awvalid(0) => s_axi_ctrl_awvalid(0),
      S00_AXI_bready(0) => s_axi_ctrl_bready(0),
      S00_AXI_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      S00_AXI_bvalid(0) => s_axi_ctrl_bvalid(0),
      S00_AXI_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      S00_AXI_rready(0) => s_axi_ctrl_rready(0),
      S00_AXI_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      S00_AXI_rvalid(0) => s_axi_ctrl_rvalid(0),
      S00_AXI_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      S00_AXI_wready(0) => s_axi_ctrl_wready(0),
      S00_AXI_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      S00_AXI_wvalid(0) => s_axi_ctrl_wvalid(0)
    );
axi_intc_cmc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_intc_cmc_0
     port map (
      interrupt_address(31 downto 0) => axi_intc_cmc_interrupt_ADDRESS(31 downto 0),
      intr(16 downto 12) => B"00000",
      intr(11 downto 9) => concat_intr_cmc_dout(11 downto 9),
      intr(8 downto 7) => B"00",
      intr(6) => concat_intr_cmc_dout(6),
      intr(5 downto 4) => B"00",
      intr(3 downto 0) => concat_intr_cmc_dout(3 downto 0),
      irq => axi_intc_cmc_interrupt_INTERRUPT,
      processor_ack(1) => axi_intc_cmc_interrupt_ACK(0),
      processor_ack(0) => axi_intc_cmc_interrupt_ACK(1),
      processor_clk => aclk_ctrl,
      processor_rst => cmc_mb_rst,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_cmc_local_M04_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M04_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M04_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_cmc_local_M04_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_cmc_local_M04_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M04_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M04_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M04_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M04_AXI_WVALID
    );
axi_intc_host: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_intc_host_0
     port map (
      intr(31 downto 0) => concat_host_interrupts_dout(31 downto 0),
      irq => interrupt_host,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(8 downto 0) => axi_ic_mgmt_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => aresetn_ctrl,
      s_axi_arready => axi_ic_mgmt_M03_AXI_ARREADY,
      s_axi_arvalid => axi_ic_mgmt_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_mgmt_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_mgmt_M03_AXI_AWREADY,
      s_axi_awvalid => axi_ic_mgmt_M03_AXI_AWVALID,
      s_axi_bready => axi_ic_mgmt_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_mgmt_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_mgmt_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_mgmt_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_mgmt_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_mgmt_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_mgmt_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_mgmt_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_mgmt_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_mgmt_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_mgmt_M03_AXI_WVALID
    );
axi_timebase_wdt: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_timebase_wdt_0
     port map (
      freeze => wdt_freeze,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(3 downto 0) => axi_ic_cmc_local_M05_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M05_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M05_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => axi_ic_cmc_local_M05_AXI_AWADDR(3 downto 0),
      s_axi_awready => axi_ic_cmc_local_M05_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M05_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M05_AXI_WVALID,
      timebase_interrupt => NLW_axi_timebase_wdt_timebase_interrupt_UNCONNECTED,
      wdt_interrupt => axi_timebase_wdt_wdt_interrupt,
      wdt_reset => interrupt_wdt_cmc_net
    );
axi_uartlite_satellite: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_uartlite_satellite_0
     port map (
      interrupt => axi_uartlite_satellite_interrupt,
      rx => satellite_uart_rxd,
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(3 downto 0) => axi_ic_cmc_local_M06_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M06_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M06_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => axi_ic_cmc_local_M06_AXI_AWADDR(3 downto 0),
      s_axi_awready => axi_ic_cmc_local_M06_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M06_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M06_AXI_WVALID,
      tx => satellite_uart_txd
    );
axi_uartlite_usb: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_axi_uartlite_usb_0
     port map (
      interrupt => axi_uartlite_usb_interrupt,
      rx => '0',
      s_axi_aclk => aclk_ctrl,
      s_axi_araddr(3 downto 0) => axi_ic_cmc_local_M10_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => psreset_cmc_peripheral_aresetn,
      s_axi_arready => axi_ic_cmc_local_M10_AXI_ARREADY,
      s_axi_arvalid => axi_ic_cmc_local_M10_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => axi_ic_cmc_local_M10_AXI_AWADDR(3 downto 0),
      s_axi_awready => axi_ic_cmc_local_M10_AXI_AWREADY,
      s_axi_awvalid => axi_ic_cmc_local_M10_AXI_AWVALID,
      s_axi_bready => axi_ic_cmc_local_M10_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_cmc_local_M10_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_cmc_local_M10_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_cmc_local_M10_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_cmc_local_M10_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_cmc_local_M10_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_cmc_local_M10_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_cmc_local_M10_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_cmc_local_M10_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_cmc_local_M10_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_cmc_local_M10_AXI_WVALID,
      tx => NLW_axi_uartlite_usb_tx_UNCONNECTED
    );
build_info_cmc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_build_info_cmc_0
     port map (
      S_AXI_ACLK => aclk_ctrl,
      S_AXI_ARADDR(4 downto 0) => axi_ic_cmc_local_M00_AXI_ARADDR(4 downto 0),
      S_AXI_ARESETN => psreset_cmc_peripheral_aresetn,
      S_AXI_ARREADY => axi_ic_cmc_local_M00_AXI_ARREADY,
      S_AXI_ARVALID => axi_ic_cmc_local_M00_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 0) => axi_ic_cmc_local_M00_AXI_AWADDR(4 downto 0),
      S_AXI_AWREADY => axi_ic_cmc_local_M00_AXI_AWREADY,
      S_AXI_AWVALID => axi_ic_cmc_local_M00_AXI_AWVALID,
      S_AXI_BREADY => axi_ic_cmc_local_M00_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => axi_ic_cmc_local_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_ic_cmc_local_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_ic_cmc_local_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_ic_cmc_local_M00_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => axi_ic_cmc_local_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_ic_cmc_local_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_ic_cmc_local_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => axi_ic_cmc_local_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_ic_cmc_local_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => axi_ic_cmc_local_M00_AXI_WVALID
    );
build_info_host: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_build_info_host_0
     port map (
      S_AXI_ACLK => aclk_ctrl,
      S_AXI_ARADDR(4 downto 0) => axi_ic_mgmt_M04_AXI_ARADDR(4 downto 0),
      S_AXI_ARESETN => aresetn_ctrl,
      S_AXI_ARREADY => axi_ic_mgmt_M04_AXI_ARREADY,
      S_AXI_ARVALID => axi_ic_mgmt_M04_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 0) => axi_ic_mgmt_M04_AXI_AWADDR(4 downto 0),
      S_AXI_AWREADY => axi_ic_mgmt_M04_AXI_AWREADY,
      S_AXI_AWVALID => axi_ic_mgmt_M04_AXI_AWVALID,
      S_AXI_BREADY => axi_ic_mgmt_M04_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => axi_ic_mgmt_M04_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_ic_mgmt_M04_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_ic_mgmt_M04_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_ic_mgmt_M04_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => axi_ic_mgmt_M04_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_ic_mgmt_M04_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_ic_mgmt_M04_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => axi_ic_mgmt_M04_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_ic_mgmt_M04_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => axi_ic_mgmt_M04_AXI_WVALID
    );
concat_host_interrupts: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_host_interrupts_0
     port map (
      In0(0) => interrupt_wdt_cmc_net,
      In1(30 downto 0) => interrupt_gpio_net(30 downto 0),
      dout(31 downto 0) => concat_host_interrupts_dout(31 downto 0)
    );
concat_intr_cmc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_concat_intr_cmc_0
     port map (
      In0(3 downto 0) => satellite_gpio(3 downto 0),
      In1(0) => '0',
      In10(0) => '0',
      In11(0) => '0',
      In12(0) => '0',
      In13(0) => '0',
      In2(0) => '0',
      In3(0) => axi_uartlite_satellite_interrupt,
      In4(0) => '0',
      In5(0) => '0',
      In6(0) => axi_uartlite_usb_interrupt,
      In7(0) => intr_gpio_qsfp,
      In8(0) => axi_timebase_wdt_wdt_interrupt,
      In9(0) => '0',
      dout(16 downto 12) => NLW_concat_intr_cmc_dout_UNCONNECTED(16 downto 12),
      dout(11 downto 9) => concat_intr_cmc_dout(11 downto 9),
      dout(8 downto 7) => NLW_concat_intr_cmc_dout_UNCONNECTED(8 downto 7),
      dout(6) => concat_intr_cmc_dout(6),
      dout(5 downto 4) => NLW_concat_intr_cmc_dout_UNCONNECTED(5 downto 4),
      dout(3 downto 0) => concat_intr_cmc_dout(3 downto 0)
    );
freerun_counter: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_freerun_counter_0
     port map (
      CLK => aclk_ctrl,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
microblaze_axi_vip: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_microblaze_axi_vip_0
     port map (
      aclk => aclk_ctrl,
      aresetn => psreset_cmc_peripheral_aresetn,
      m_axi_araddr(31 downto 0) => microblaze_axi_vip_M_AXI_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => microblaze_axi_vip_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => microblaze_axi_vip_M_AXI_ARREADY,
      m_axi_arvalid => microblaze_axi_vip_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => microblaze_axi_vip_M_AXI_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => microblaze_axi_vip_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => microblaze_axi_vip_M_AXI_AWREADY,
      m_axi_awvalid => microblaze_axi_vip_M_AXI_AWVALID,
      m_axi_bready => microblaze_axi_vip_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => microblaze_axi_vip_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => microblaze_axi_vip_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => microblaze_axi_vip_M_AXI_RDATA(31 downto 0),
      m_axi_rready => microblaze_axi_vip_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => microblaze_axi_vip_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => microblaze_axi_vip_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => microblaze_axi_vip_M_AXI_WDATA(31 downto 0),
      m_axi_wready => microblaze_axi_vip_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => microblaze_axi_vip_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => microblaze_axi_vip_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => microblaze_cmc_M_AXI_DP_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => microblaze_cmc_M_AXI_DP_ARPROT(2 downto 0),
      s_axi_arready => microblaze_cmc_M_AXI_DP_ARREADY,
      s_axi_arvalid => microblaze_cmc_M_AXI_DP_ARVALID,
      s_axi_awaddr(31 downto 0) => microblaze_cmc_M_AXI_DP_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => microblaze_cmc_M_AXI_DP_AWPROT(2 downto 0),
      s_axi_awready => microblaze_cmc_M_AXI_DP_AWREADY,
      s_axi_awvalid => microblaze_cmc_M_AXI_DP_AWVALID,
      s_axi_bready => microblaze_cmc_M_AXI_DP_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_cmc_M_AXI_DP_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_cmc_M_AXI_DP_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_cmc_M_AXI_DP_RDATA(31 downto 0),
      s_axi_rready => microblaze_cmc_M_AXI_DP_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_cmc_M_AXI_DP_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_cmc_M_AXI_DP_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_cmc_M_AXI_DP_WDATA(31 downto 0),
      s_axi_wready => microblaze_cmc_M_AXI_DP_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_cmc_M_AXI_DP_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_cmc_M_AXI_DP_WVALID
    );
microblaze_cmc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_microblaze_cmc_0
     port map (
      Byte_Enable(0 to 3) => microblaze_cmc_DLMB_BE(0 to 3),
      Clk => aclk_ctrl,
      DCE => microblaze_cmc_DLMB_CE,
      DReady => microblaze_cmc_DLMB_READY,
      DUE => microblaze_cmc_DLMB_UE,
      DWait => microblaze_cmc_DLMB_WAIT,
      D_AS => microblaze_cmc_DLMB_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_cmc_DLMB_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_cmc_DLMB_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_cmc_DLMB_WRITEDBUS(0 to 31),
      Dbg_Capture => '0',
      Dbg_Clk => '0',
      Dbg_Disable => '0',
      Dbg_Reg_En(0 to 7) => B"00000000",
      Dbg_Shift => '0',
      Dbg_TDI => '0',
      Dbg_TDO => NLW_microblaze_cmc_Dbg_TDO_UNCONNECTED,
      Dbg_Update => '0',
      Debug_Rst => '0',
      ICE => microblaze_cmc_ILMB_CE,
      IFetch => microblaze_cmc_ILMB_READSTROBE,
      IReady => microblaze_cmc_ILMB_READY,
      IUE => microblaze_cmc_ILMB_UE,
      IWAIT => microblaze_cmc_ILMB_WAIT,
      I_AS => microblaze_cmc_ILMB_ADDRSTROBE,
      Instr(0 to 31) => microblaze_cmc_ILMB_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_cmc_ILMB_ABUS(0 to 31),
      Interrupt => axi_intc_cmc_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => axi_intc_cmc_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => axi_intc_cmc_interrupt_ADDRESS(31),
      Interrupt_Address(1) => axi_intc_cmc_interrupt_ADDRESS(30),
      Interrupt_Address(2) => axi_intc_cmc_interrupt_ADDRESS(29),
      Interrupt_Address(3) => axi_intc_cmc_interrupt_ADDRESS(28),
      Interrupt_Address(4) => axi_intc_cmc_interrupt_ADDRESS(27),
      Interrupt_Address(5) => axi_intc_cmc_interrupt_ADDRESS(26),
      Interrupt_Address(6) => axi_intc_cmc_interrupt_ADDRESS(25),
      Interrupt_Address(7) => axi_intc_cmc_interrupt_ADDRESS(24),
      Interrupt_Address(8) => axi_intc_cmc_interrupt_ADDRESS(23),
      Interrupt_Address(9) => axi_intc_cmc_interrupt_ADDRESS(22),
      Interrupt_Address(10) => axi_intc_cmc_interrupt_ADDRESS(21),
      Interrupt_Address(11) => axi_intc_cmc_interrupt_ADDRESS(20),
      Interrupt_Address(12) => axi_intc_cmc_interrupt_ADDRESS(19),
      Interrupt_Address(13) => axi_intc_cmc_interrupt_ADDRESS(18),
      Interrupt_Address(14) => axi_intc_cmc_interrupt_ADDRESS(17),
      Interrupt_Address(15) => axi_intc_cmc_interrupt_ADDRESS(16),
      Interrupt_Address(16) => axi_intc_cmc_interrupt_ADDRESS(15),
      Interrupt_Address(17) => axi_intc_cmc_interrupt_ADDRESS(14),
      Interrupt_Address(18) => axi_intc_cmc_interrupt_ADDRESS(13),
      Interrupt_Address(19) => axi_intc_cmc_interrupt_ADDRESS(12),
      Interrupt_Address(20) => axi_intc_cmc_interrupt_ADDRESS(11),
      Interrupt_Address(21) => axi_intc_cmc_interrupt_ADDRESS(10),
      Interrupt_Address(22) => axi_intc_cmc_interrupt_ADDRESS(9),
      Interrupt_Address(23) => axi_intc_cmc_interrupt_ADDRESS(8),
      Interrupt_Address(24) => axi_intc_cmc_interrupt_ADDRESS(7),
      Interrupt_Address(25) => axi_intc_cmc_interrupt_ADDRESS(6),
      Interrupt_Address(26) => axi_intc_cmc_interrupt_ADDRESS(5),
      Interrupt_Address(27) => axi_intc_cmc_interrupt_ADDRESS(4),
      Interrupt_Address(28) => axi_intc_cmc_interrupt_ADDRESS(3),
      Interrupt_Address(29) => axi_intc_cmc_interrupt_ADDRESS(2),
      Interrupt_Address(30) => axi_intc_cmc_interrupt_ADDRESS(1),
      Interrupt_Address(31) => axi_intc_cmc_interrupt_ADDRESS(0),
      M0_AXIS_TDATA(31 downto 0) => microblaze_cmc_M0_AXIS_TDATA(31 downto 0),
      M0_AXIS_TLAST => microblaze_cmc_M0_AXIS_TLAST,
      M0_AXIS_TREADY => microblaze_cmc_M0_AXIS_TREADY,
      M0_AXIS_TVALID => microblaze_cmc_M0_AXIS_TVALID,
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_cmc_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_cmc_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_cmc_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => microblaze_cmc_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_cmc_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_cmc_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_cmc_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => microblaze_cmc_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_cmc_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_cmc_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_cmc_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => microblaze_cmc_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_cmc_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_cmc_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_cmc_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => microblaze_cmc_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_cmc_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_cmc_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_cmc_M_AXI_DP_WVALID,
      Read_Strobe => microblaze_cmc_DLMB_READSTROBE,
      Reset => cmc_mb_rst,
      S0_AXIS_TDATA(31 downto 0) => msp432_bsl_crc_gen_m0_axis_TDATA(31 downto 0),
      S0_AXIS_TLAST => msp432_bsl_crc_gen_m0_axis_TLAST,
      S0_AXIS_TREADY => msp432_bsl_crc_gen_m0_axis_TREADY,
      S0_AXIS_TVALID => msp432_bsl_crc_gen_m0_axis_TVALID,
      Write_Strobe => microblaze_cmc_DLMB_WRITESTROBE
    );
microblaze_local_memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_microblaze_local_memory_imp_K7QWLA
     port map (
      aclk_ctrl => aclk_ctrl,
      dlmb_abus(0 to 31) => microblaze_cmc_DLMB_ABUS(0 to 31),
      dlmb_addrstrobe => microblaze_cmc_DLMB_ADDRSTROBE,
      dlmb_be(0 to 3) => microblaze_cmc_DLMB_BE(0 to 3),
      dlmb_ce => microblaze_cmc_DLMB_CE,
      dlmb_readdbus(0 to 31) => microblaze_cmc_DLMB_READDBUS(0 to 31),
      dlmb_readstrobe => microblaze_cmc_DLMB_READSTROBE,
      dlmb_ready => microblaze_cmc_DLMB_READY,
      dlmb_ue => microblaze_cmc_DLMB_UE,
      dlmb_wait => microblaze_cmc_DLMB_WAIT,
      dlmb_writedbus(0 to 31) => microblaze_cmc_DLMB_WRITEDBUS(0 to 31),
      dlmb_writestrobe => microblaze_cmc_DLMB_WRITESTROBE,
      ext_bram_if_ctrl_addr(16 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_ADDR(16 downto 0),
      ext_bram_if_ctrl_clk => axi_bram_ctrl_lmb_BRAM_PORTA_CLK,
      ext_bram_if_ctrl_din(31 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_DIN(31 downto 0),
      ext_bram_if_ctrl_dout(31 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_DOUT(31 downto 0),
      ext_bram_if_ctrl_en => axi_bram_ctrl_lmb_BRAM_PORTA_EN,
      ext_bram_if_ctrl_rst => axi_bram_ctrl_lmb_BRAM_PORTA_RST,
      ext_bram_if_ctrl_we(3 downto 0) => axi_bram_ctrl_lmb_BRAM_PORTA_WE(3 downto 0),
      ilmb_abus(0 to 31) => microblaze_cmc_ILMB_ABUS(0 to 31),
      ilmb_addrstrobe => microblaze_cmc_ILMB_ADDRSTROBE,
      ilmb_ce => microblaze_cmc_ILMB_CE,
      ilmb_readdbus(0 to 31) => microblaze_cmc_ILMB_READDBUS(0 to 31),
      ilmb_readstrobe => microblaze_cmc_ILMB_READSTROBE,
      ilmb_ready => microblaze_cmc_ILMB_READY,
      ilmb_ue => microblaze_cmc_ILMB_UE,
      ilmb_wait => microblaze_cmc_ILMB_WAIT,
      rst => rst_1
    );
msp432_bsl_crc_gen: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_msp432_bsl_crc_gen_0
     port map (
      clk => aclk_ctrl,
      m0_axis_tdata(31 downto 0) => msp432_bsl_crc_gen_m0_axis_TDATA(31 downto 0),
      m0_axis_tlast => msp432_bsl_crc_gen_m0_axis_TLAST,
      m0_axis_tready => msp432_bsl_crc_gen_m0_axis_TREADY,
      m0_axis_tvalid => msp432_bsl_crc_gen_m0_axis_TVALID,
      reset_n => psreset_cmc_peripheral_aresetn,
      s0_axis_tdata(31 downto 0) => microblaze_cmc_M0_AXIS_TDATA(31 downto 0),
      s0_axis_tlast => microblaze_cmc_M0_AXIS_TLAST,
      s0_axis_tready => microblaze_cmc_M0_AXIS_TREADY,
      s0_axis_tvalid => microblaze_cmc_M0_AXIS_TVALID
    );
psreset_cmc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_psreset_cmc_0
     port map (
      aux_reset_in => reset_gen_resetn,
      bus_struct_reset(0) => rst_1,
      dcm_locked => '1',
      ext_reset_in => aresetn_ctrl,
      interconnect_aresetn(0) => psreset_cmc_interconnect_aresetn,
      mb_debug_sys_rst => '0',
      mb_reset => cmc_mb_rst,
      peripheral_aresetn(0) => psreset_cmc_peripheral_aresetn,
      peripheral_reset(0) => NLW_psreset_cmc_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk_ctrl
    );
qsfp_gpio_hierarchy: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qsfp_gpio_hierarchy_imp_3EHBVA
     port map (
      S_AXI_araddr(8 downto 0) => axi_ic_cmc_local_M11_AXI_ARADDR(8 downto 0),
      S_AXI_arready => axi_ic_cmc_local_M11_AXI_ARREADY,
      S_AXI_arvalid => axi_ic_cmc_local_M11_AXI_ARVALID,
      S_AXI_awaddr(8 downto 0) => axi_ic_cmc_local_M11_AXI_AWADDR(8 downto 0),
      S_AXI_awready => axi_ic_cmc_local_M11_AXI_AWREADY,
      S_AXI_awvalid => axi_ic_cmc_local_M11_AXI_AWVALID,
      S_AXI_bready => axi_ic_cmc_local_M11_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => axi_ic_cmc_local_M11_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => axi_ic_cmc_local_M11_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => axi_ic_cmc_local_M11_AXI_RDATA(31 downto 0),
      S_AXI_rready => axi_ic_cmc_local_M11_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => axi_ic_cmc_local_M11_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => axi_ic_cmc_local_M11_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => axi_ic_cmc_local_M11_AXI_WDATA(31 downto 0),
      S_AXI_wready => axi_ic_cmc_local_M11_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_ic_cmc_local_M11_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_ic_cmc_local_M11_AXI_WVALID,
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => psreset_cmc_peripheral_aresetn,
      ip2intc_irpt => intr_gpio_qsfp,
      qsfp0_int_l(0) => qsfp0_int_l(0),
      qsfp0_lpmode(0) => qsfp0_lpmode(0),
      qsfp0_modprs_l(0) => qsfp0_modprs_l(0),
      qsfp0_modsel_l(0) => qsfp0_modsel_l(0),
      qsfp0_reset_l(0) => qsfp0_reset_l(0),
      qsfp1_int_l(0) => qsfp1_int_l(0),
      qsfp1_lpmode(0) => qsfp1_lpmode(0),
      qsfp1_modprs_l(0) => qsfp1_modprs_l(0),
      qsfp1_modsel_l(0) => qsfp1_modsel_l(0),
      qsfp1_reset_l(0) => qsfp1_reset_l(0)
    );
reachout_axi_vip: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reachout_axi_vip_0
     port map (
      aclk => aclk_ctrl,
      aresetn => psreset_cmc_peripheral_aresetn,
      m_axi_araddr(31 downto 0) => NLW_reachout_axi_vip_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_reachout_axi_vip_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_reachout_axi_vip_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_reachout_axi_vip_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_reachout_axi_vip_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_reachout_axi_vip_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_reachout_axi_vip_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_reachout_axi_vip_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_reachout_axi_vip_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => NLW_reachout_axi_vip_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_reachout_axi_vip_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_reachout_axi_vip_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_reachout_axi_vip_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_reachout_axi_vip_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_reachout_axi_vip_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_reachout_axi_vip_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_reachout_axi_vip_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_reachout_axi_vip_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_reachout_axi_vip_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => NLW_reachout_axi_vip_m_axi_awvalid_UNCONNECTED,
      m_axi_bready => NLW_reachout_axi_vip_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => '0',
      m_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_reachout_axi_vip_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => '0',
      m_axi_wdata(31 downto 0) => NLW_reachout_axi_vip_m_axi_wdata_UNCONNECTED(31 downto 0),
      m_axi_wlast => NLW_reachout_axi_vip_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(3 downto 0) => NLW_reachout_axi_vip_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => NLW_reachout_axi_vip_m_axi_wvalid_UNCONNECTED,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0011",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_reachout_axi_vip_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"010",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_reachout_axi_vip_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_reachout_axi_vip_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_reachout_axi_vip_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_reachout_axi_vip_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rlast => NLW_reachout_axi_vip_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_reachout_axi_vip_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_reachout_axi_vip_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_reachout_axi_vip_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid => '0'
    );
reg_map_bram: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_fb99_reg_map_bram_0
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => reg_map_bram_ctrl_ADDR(12 downto 0),
      addrb(31 downto 13) => B"0000000000000000000",
      addrb(12 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_ADDR(12 downto 0),
      clka => reg_map_bram_ctrl_CLK,
      clkb => axi_bram_ctrl_reg_map1_BRAM_PORTA_CLK,
      dina(31 downto 0) => reg_map_bram_ctrl_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => reg_map_bram_ctrl_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_DOUT(31 downto 0),
      ena => reg_map_bram_ctrl_EN,
      enb => axi_bram_ctrl_reg_map1_BRAM_PORTA_EN,
      rsta => reg_map_bram_ctrl_RST,
      rsta_busy => NLW_reg_map_bram_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_reg_map1_BRAM_PORTA_RST,
      rstb_busy => NLW_reg_map_bram_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => reg_map_bram_ctrl_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_reg_map1_BRAM_PORTA_WE(3 downto 0)
    );
reset_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_gen_imp_141SA20
     port map (
      axi_gpio_rst_n(0) => axi_gpio_mb_reset_gpio_io_o,
      resetn(0) => reset_gen_resetn,
      wdt_reset(0) => interrupt_wdt_cmc_net
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
    satellite_uart_rxd : in STD_LOGIC;
    satellite_uart_txd : out STD_LOGIC;
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
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cms_cms_subsystem_0_0,bd_fb99,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_fb99,Vivado 2022.2";
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
