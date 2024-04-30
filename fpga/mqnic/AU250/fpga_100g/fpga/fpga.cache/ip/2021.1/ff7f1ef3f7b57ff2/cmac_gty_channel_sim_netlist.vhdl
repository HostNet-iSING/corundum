-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Dec 19 07:37:03 2023
-- Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cmac_gty_channel_sim_netlist.vhdl
-- Design      : cmac_gty_channel
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu250-figd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_channel is
  port (
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtpowergood_int\ : out STD_LOGIC;
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_0\ : out STD_LOGIC;
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gttxreset_ch_int\ : in STD_LOGIC;
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TXRATE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txpmareset_ch_int\ : in STD_LOGIC;
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_channel is
  signal \^gen_gtwizard_gtye4.gtpowergood_int\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_0\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_1\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_12\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_13\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_14\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_15\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_16\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_17\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_18\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_19\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_2\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_20\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_21\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_22\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_235\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_236\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_237\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_238\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_239\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_24\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_240\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_241\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_242\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_243\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_244\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_245\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_246\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_247\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_248\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_249\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_25\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_250\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_251\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_252\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_253\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_254\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_255\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_256\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_257\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_258\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_259\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_26\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_260\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_261\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_262\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_263\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_264\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_265\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_266\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_27\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_28\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_29\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_299\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_3\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_30\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_300\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_301\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_302\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_303\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_304\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_305\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_306\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_307\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_308\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_309\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_31\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_310\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_311\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_312\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_313\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_314\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_315\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_316\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_317\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_318\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_319\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_32\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_320\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_321\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_322\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_323\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_324\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_325\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_326\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_327\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_328\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_329\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_33\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_330\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_331\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_332\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_333\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_334\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_335\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_336\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_337\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_338\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_339\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_34\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_340\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_341\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_342\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_343\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_344\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_345\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_346\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_347\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_348\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_349\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_35\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_350\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_351\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_352\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_353\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_354\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_355\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_356\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_357\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_358\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_359\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_36\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_360\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_361\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_362\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_363\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_364\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_365\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_366\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_367\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_368\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_369\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_37\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_370\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_371\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_372\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_373\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_374\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_375\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_376\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_38\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_39\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_4\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_40\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_41\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_43\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_44\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_45\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_46\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_5\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_51\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_52\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_54\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_55\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_56\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_57\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_58\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_59\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_60\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_61\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_62\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_63\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_65\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_67\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_68\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_71\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_73\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_74\ : STD_LOGIC;
  signal \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_9\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\ : label is "PRIMITIVE";
begin
  \gen_gtwizard_gtye4.gtpowergood_int\ <= \^gen_gtwizard_gtye4.gtpowergood_int\;
\gen_powergood_delay.intclk_rrst_n_r[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_gtwizard_gtye4.gtpowergood_int\,
      O => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_0\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\: unisim.vcomponents.GTYE4_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => X"0000",
      ADAPT_CFG1 => X"FB1C",
      ADAPT_CFG2 => X"0000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0000000000",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "FALSE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "FALSE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      A_RXOSCALRESET => '0',
      A_RXPROGDIVRESET => '0',
      A_RXTERMINATION => '1',
      A_TXDIFFCTRL => B"01100",
      A_TXPROGDIVRESET => '0',
      CBCC_DATA_SOURCE_SEL => "ENCODED",
      CDR_SWAP_MODE_EN => '0',
      CFOK_PWRSVE_EN => '1',
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CH_HSPMUX => X"9090",
      CKCAL1_CFG_0 => B"0100000001000000",
      CKCAL1_CFG_1 => B"0001000001000000",
      CKCAL1_CFG_2 => B"0010000000001000",
      CKCAL1_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_0 => B"0100000001000000",
      CKCAL2_CFG_1 => B"0000000001000000",
      CKCAL2_CFG_2 => B"0001000000000000",
      CKCAL2_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_4 => B"0000000000000000",
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 24,
      CLK_COR_MIN_LAT => 16,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0000000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0000000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG0 => X"01FA",
      CPLL_CFG1 => X"002B",
      CPLL_CFG2 => X"0002",
      CPLL_CFG3 => X"0000",
      CPLL_FBDIV => 2,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG0 => X"02B2",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      CTLE3_OCAP_EXT_CTRL => B"000",
      CTLE3_OCAP_EXT_EN => '0',
      DDI_CTRL => B"00",
      DDI_REALIGN_WAIT => 15,
      DEC_MCOMMA_DETECT => "FALSE",
      DEC_PCOMMA_DETECT => "FALSE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DELAY_ELEC => '0',
      DMONITOR_CFG0 => B"00" & X"00",
      DMONITOR_CFG1 => X"00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER0 => X"0000",
      ES_QUALIFIER1 => X"0000",
      ES_QUALIFIER2 => X"0000",
      ES_QUALIFIER3 => X"0000",
      ES_QUALIFIER4 => X"0000",
      ES_QUALIFIER5 => X"0000",
      ES_QUALIFIER6 => X"0000",
      ES_QUALIFIER7 => X"0000",
      ES_QUALIFIER8 => X"0000",
      ES_QUALIFIER9 => X"0000",
      ES_QUAL_MASK0 => X"0000",
      ES_QUAL_MASK1 => X"0000",
      ES_QUAL_MASK2 => X"0000",
      ES_QUAL_MASK3 => X"0000",
      ES_QUAL_MASK4 => X"0000",
      ES_QUAL_MASK5 => X"0000",
      ES_QUAL_MASK6 => X"0000",
      ES_QUAL_MASK7 => X"0000",
      ES_QUAL_MASK8 => X"0000",
      ES_QUAL_MASK9 => X"0000",
      ES_SDATA_MASK0 => X"0000",
      ES_SDATA_MASK1 => X"0000",
      ES_SDATA_MASK2 => X"0000",
      ES_SDATA_MASK3 => X"0000",
      ES_SDATA_MASK4 => X"0000",
      ES_SDATA_MASK5 => X"0000",
      ES_SDATA_MASK6 => X"0000",
      ES_SDATA_MASK7 => X"0000",
      ES_SDATA_MASK8 => X"0000",
      ES_SDATA_MASK9 => X"0000",
      EYESCAN_VP_RANGE => 0,
      EYE_SCAN_SWAP_EN => '0',
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"00000",
      ISCAN_CK_PH_SEL2 => '0',
      LOCAL_MASTER => '1',
      LPBK_BIAS_CTRL => 4,
      LPBK_EN_RCAL_B => '0',
      LPBK_EXT_RCAL => B"1000",
      LPBK_IND_CTRL0 => 5,
      LPBK_IND_CTRL1 => 5,
      LPBK_IND_CTRL2 => 5,
      LPBK_RG_CTRL => 2,
      OOBDIVCTL => B"00",
      OOB_PWRUP => '0',
      PCI3_AUTO_REALIGN => "OVR_1K_BLK",
      PCI3_PIPE_RX_ELECIDLE => '0',
      PCI3_RX_ASYNC_EBUF_BYPASS => B"00",
      PCI3_RX_ELECIDLE_EI2_ENABLE => '0',
      PCI3_RX_ELECIDLE_H2L_COUNT => B"000000",
      PCI3_RX_ELECIDLE_H2L_DISABLE => B"000",
      PCI3_RX_ELECIDLE_HI_COUNT => B"000000",
      PCI3_RX_ELECIDLE_LP4_DISABLE => '0',
      PCI3_RX_FIFO_DISABLE => '0',
      PCIE3_CLK_COR_EMPTY_THRSH => B"00000",
      PCIE3_CLK_COR_FULL_THRSH => B"010000",
      PCIE3_CLK_COR_MAX_LAT => B"00100",
      PCIE3_CLK_COR_MIN_LAT => B"00000",
      PCIE3_CLK_COR_THRSH_TIMER => B"001000",
      PCIE_64B_DYN_CLKSW_DIS => "FALSE",
      PCIE_BUFG_DIV_CTRL => X"3500",
      PCIE_GEN4_64BIT_INT_EN => "FALSE",
      PCIE_PLL_SEL_MODE_GEN12 => B"10",
      PCIE_PLL_SEL_MODE_GEN3 => B"10",
      PCIE_PLL_SEL_MODE_GEN4 => B"10",
      PCIE_RXPCS_CFG_GEN3 => X"0AA5",
      PCIE_RXPMA_CFG => X"280A",
      PCIE_TXPCS_CFG_GEN3 => X"2CA4",
      PCIE_TXPMA_CFG => X"280A",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD0 => X"0000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PREIQ_FREQ_BST => 3,
      RATE_SW_USE_DRP => '1',
      RCLK_SIPO_DLY_ENB => '0',
      RCLK_SIPO_INV_EN => '0',
      RTX_BUF_CML_CTRL => B"111",
      RTX_BUF_TERM_CTRL => B"11",
      RXBUFRESET_TIME => B"00011",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 49,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 7,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG0 => X"0003",
      RXCDR_CFG0_GEN3 => X"0003",
      RXCDR_CFG1 => X"0000",
      RXCDR_CFG1_GEN3 => X"0000",
      RXCDR_CFG2 => X"01E9",
      RXCDR_CFG2_GEN2 => B"10" & X"69",
      RXCDR_CFG2_GEN3 => X"0269",
      RXCDR_CFG2_GEN4 => X"0164",
      RXCDR_CFG3 => X"0012",
      RXCDR_CFG3_GEN2 => B"01" & X"2",
      RXCDR_CFG3_GEN3 => X"0012",
      RXCDR_CFG3_GEN4 => X"0012",
      RXCDR_CFG4 => X"5CF6",
      RXCDR_CFG4_GEN3 => X"5CF6",
      RXCDR_CFG5 => X"B46B",
      RXCDR_CFG5_GEN3 => X"146B",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG0 => X"2201",
      RXCDR_LOCK_CFG1 => X"9FFF",
      RXCDR_LOCK_CFG2 => X"0000",
      RXCDR_LOCK_CFG3 => X"0000",
      RXCDR_LOCK_CFG4 => X"0000",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXCFOK_CFG0 => X"0000",
      RXCFOK_CFG1 => X"8015",
      RXCFOK_CFG2 => X"02AE",
      RXCKCAL1_IQ_LOOP_RST_CFG => X"0004",
      RXCKCAL1_I_LOOP_RST_CFG => X"0004",
      RXCKCAL1_Q_LOOP_RST_CFG => X"0004",
      RXCKCAL2_DX_LOOP_RST_CFG => X"0004",
      RXCKCAL2_D_LOOP_RST_CFG => X"0004",
      RXCKCAL2_S_LOOP_RST_CFG => X"0004",
      RXCKCAL2_X_LOOP_RST_CFG => X"0004",
      RXDFELPMRESET_TIME => B"0001111",
      RXDFELPM_KL_CFG0 => X"0000",
      RXDFELPM_KL_CFG1 => X"A082",
      RXDFELPM_KL_CFG2 => X"0100",
      RXDFE_CFG0 => X"0A00",
      RXDFE_CFG1 => X"0000",
      RXDFE_GC_CFG0 => X"0000",
      RXDFE_GC_CFG1 => X"8000",
      RXDFE_GC_CFG2 => X"FFE0",
      RXDFE_H2_CFG0 => X"0000",
      RXDFE_H2_CFG1 => X"0002",
      RXDFE_H3_CFG0 => X"0000",
      RXDFE_H3_CFG1 => X"8002",
      RXDFE_H4_CFG0 => X"0000",
      RXDFE_H4_CFG1 => X"8002",
      RXDFE_H5_CFG0 => X"0000",
      RXDFE_H5_CFG1 => X"8002",
      RXDFE_H6_CFG0 => X"0000",
      RXDFE_H6_CFG1 => X"8002",
      RXDFE_H7_CFG0 => X"0000",
      RXDFE_H7_CFG1 => X"8002",
      RXDFE_H8_CFG0 => X"0000",
      RXDFE_H8_CFG1 => X"8002",
      RXDFE_H9_CFG0 => X"0000",
      RXDFE_H9_CFG1 => X"8002",
      RXDFE_HA_CFG0 => X"0000",
      RXDFE_HA_CFG1 => X"8002",
      RXDFE_HB_CFG0 => X"0000",
      RXDFE_HB_CFG1 => X"8002",
      RXDFE_HC_CFG0 => X"0000",
      RXDFE_HC_CFG1 => X"8002",
      RXDFE_HD_CFG0 => X"0000",
      RXDFE_HD_CFG1 => X"8002",
      RXDFE_HE_CFG0 => X"0000",
      RXDFE_HE_CFG1 => X"8002",
      RXDFE_HF_CFG0 => X"0000",
      RXDFE_HF_CFG1 => X"8002",
      RXDFE_KH_CFG0 => X"8000",
      RXDFE_KH_CFG1 => X"FE00",
      RXDFE_KH_CFG2 => X"281C",
      RXDFE_KH_CFG3 => X"4120",
      RXDFE_OS_CFG0 => X"2000",
      RXDFE_OS_CFG1 => X"8000",
      RXDFE_UT_CFG0 => X"0000",
      RXDFE_UT_CFG1 => X"0003",
      RXDFE_UT_CFG2 => X"0000",
      RXDFE_VP_CFG0 => X"0000",
      RXDFE_VP_CFG1 => X"0033",
      RXDLY_CFG => X"0010",
      RXDLY_LCFG => X"0030",
      RXELECIDLE_CFG => "SIGCFG_4",
      RXGBOX_FIFO_INIT_RD_ADDR => 3,
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_CFG => X"0000",
      RXLPM_GC_CFG => X"F800",
      RXLPM_KH_CFG0 => X"0000",
      RXLPM_KH_CFG1 => X"A002",
      RXLPM_OS_CFG0 => X"0000",
      RXLPM_OS_CFG1 => X"8002",
      RXOOB_CFG => B"000000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00011",
      RXPHBEACON_CFG => X"0000",
      RXPHDLY_CFG => X"2070",
      RXPHSAMP_CFG => X"2100",
      RXPHSLIP_CFG => X"9933",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => X"3006",
      RXPI_CFG1 => B"0000000000000000",
      RXPMACLK_SEL => "DATA",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXPRBS_LINKACQ_CNT => 15,
      RXREFCLKDIV2_SEL => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_AFE_CM_EN => '0',
      RX_BIAS_CFG0 => X"12B0",
      RX_BUFFER_CFG => B"000000",
      RX_CAPFF_SARC_ENB => '0',
      RX_CLK25_DIV => 7,
      RX_CLKMUX_EN => '1',
      RX_CLK_SLIP_OVRD => B"00000",
      RX_CM_BUF_CFG => B"1010",
      RX_CM_BUF_PD => '0',
      RX_CM_SEL => 3,
      RX_CM_TRIM => 10,
      RX_CTLE_PWR_SAVING => '0',
      RX_CTLE_RES_CTRL => B"0000",
      RX_DATA_WIDTH => 80,
      RX_DDI_SEL => B"000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DEGEN_CTRL => B"100",
      RX_DFELPM_CFG0 => 10,
      RX_DFELPM_CFG1 => '1',
      RX_DFELPM_KLKH_AGC_STUP_EN => '1',
      RX_DFE_AGC_CFG1 => 2,
      RX_DFE_KL_LPM_KH_CFG0 => 3,
      RX_DFE_KL_LPM_KH_CFG1 => 2,
      RX_DFE_KL_LPM_KL_CFG0 => B"11",
      RX_DFE_KL_LPM_KL_CFG1 => 2,
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_DIVRESET_TIME => B"00001",
      RX_EN_CTLE_RCAL_B => '0',
      RX_EN_SUM_RCAL_B => 0,
      RX_EYESCAN_VS_CODE => B"0000000",
      RX_EYESCAN_VS_NEG_DIR => '0',
      RX_EYESCAN_VS_RANGE => B"10",
      RX_EYESCAN_VS_UT_SIGN => '0',
      RX_FABINT_USRCLK_FLOP => '0',
      RX_I2V_FILTER_EN => '1',
      RX_INT_DATAWIDTH => 2,
      RX_PMA_POWER_SAVE => '0',
      RX_PMA_RSV0 => X"002F",
      RX_PROGDIV_CFG => 0.000000,
      RX_PROGDIV_RATE => X"0001",
      RX_RESLOAD_CTRL => B"0000",
      RX_RESLOAD_OVRD => '0',
      RX_SAMPLE_PERIOD => B"111",
      RX_SIG_VALID_DLY => 11,
      RX_SUM_DEGEN_AVTT_OVERITE => 0,
      RX_SUM_DFETAPREP_EN => '0',
      RX_SUM_IREF_TUNE => B"0000",
      RX_SUM_PWR_SAVING => 0,
      RX_SUM_RES_CTRL => B"0000",
      RX_SUM_VCMTUNE => B"0011",
      RX_SUM_VCM_BIAS_TUNE_EN => '1',
      RX_SUM_VCM_OVWR => '0',
      RX_SUM_VREF_TUNE => B"100",
      RX_TUNE_AFE_OS => B"10",
      RX_VREG_CTRL => B"010",
      RX_VREG_PDB => '1',
      RX_WIDEMODE_CDR => B"10",
      RX_WIDEMODE_CDR_GEN3 => B"00",
      RX_WIDEMODE_CDR_GEN4 => B"01",
      RX_XCLK_SEL => "RXDES",
      RX_XMODE_SEL => '0',
      SAMPLE_CLK_PHASE => '0',
      SAS_12G_MODE => '0',
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_MODE => "FAST",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "Z",
      SRSTMODE => '0',
      TAPDLY_SET_TX => B"00",
      TERM_RCAL_CFG => B"100001000000010",
      TERM_RCAL_OVRD => B"001",
      TRANS_TIME_RATE => X"0E",
      TST_RSV0 => X"00",
      TST_RSV1 => X"00",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"8010",
      TXDLY_LCFG => X"0030",
      TXDRV_FREQBAND => 3,
      TXFE_CFG0 => B"0000001111000110",
      TXFE_CFG1 => B"1111100000000000",
      TXFE_CFG2 => B"1111100000000000",
      TXFE_CFG3 => B"1111100000000000",
      TXFIFO_ADDR_CFG => "LOW",
      TXGBOX_FIFO_INIT_RD_ADDR => 4,
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00011",
      TXPHDLY_CFG0 => X"6070",
      TXPHDLY_CFG1 => X"000F",
      TXPH_CFG => X"0723",
      TXPH_CFG2 => X"0000",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"0011000000000000",
      TXPI_CFG1 => B"0000000000000000",
      TXPI_GRAY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPM => '0',
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00011",
      TXREFCLKDIV2_SEL => '0',
      TXSWBST_BST => 1,
      TXSWBST_EN => 1,
      TXSWBST_MAG => 4,
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 7,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 80,
      TX_DCC_LOOP_RST_CFG => X"0004",
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DEEMPH2 => B"000000",
      TX_DEEMPH3 => B"000000",
      TX_DIVRESET_TIME => B"00001",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"100",
      TX_EIDLE_DEASSERT_DELAY => B"011",
      TX_FABINT_USRCLK_FLOP => '0',
      TX_FIFO_BYP_EN => '0',
      TX_IDLE_DATA_ZERO => '0',
      TX_INT_DATAWIDTH => 2,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1011000",
      TX_MARGIN_FULL_1 => B"1010111",
      TX_MARGIN_FULL_2 => B"1010101",
      TX_MARGIN_FULL_3 => B"1010011",
      TX_MARGIN_FULL_4 => B"1010001",
      TX_MARGIN_LOW_0 => B"1001100",
      TX_MARGIN_LOW_1 => B"1001011",
      TX_MARGIN_LOW_2 => B"1001000",
      TX_MARGIN_LOW_3 => B"1000010",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PHICAL_CFG0 => X"0020",
      TX_PHICAL_CFG1 => X"0040",
      TX_PI_BIASSET => 3,
      TX_PMADATA_OPT => '0',
      TX_PMA_POWER_SAVE => '0',
      TX_PMA_RSV0 => X"0000",
      TX_PMA_RSV1 => X"0000",
      TX_PROGCLK_SEL => "PREPI",
      TX_PROGDIV_CFG => 20.000000,
      TX_PROGDIV_RATE => X"0000",
      TX_RXDETECT_CFG => B"00" & X"032",
      TX_RXDETECT_REF => 5,
      TX_SAMPLE_PERIOD => B"111",
      TX_SW_MEAS => B"00",
      TX_VREG_CTRL => B"011",
      TX_VREG_PDB => '1',
      TX_VREG_VREFSEL => B"10",
      TX_XCLK_SEL => "TXOUT",
      USB_BOTH_BURST_IDLE => '0',
      USB_BURSTMAX_U3WAKE => B"1111111",
      USB_BURSTMIN_U3WAKE => B"1100011",
      USB_CLK_COR_EQ_EN => '0',
      USB_EXT_CNTL => '1',
      USB_IDLEMAX_POLLING => B"1010111011",
      USB_IDLEMIN_POLLING => B"0100101011",
      USB_LFPSPING_BURST => B"000000101",
      USB_LFPSPOLLING_BURST => B"000110001",
      USB_LFPSPOLLING_IDLE_MS => B"000000100",
      USB_LFPSU1EXIT_BURST => B"000011101",
      USB_LFPSU2LPEXIT_BURST_MS => B"001100011",
      USB_LFPSU3WAKE_BURST_MS => B"111110011",
      USB_LFPS_TPERIOD => B"0011",
      USB_LFPS_TPERIOD_ACCURATE => '1',
      USB_MODE => '0',
      USB_PCIE_ERR_REP_DIS => '0',
      USB_PING_SATA_MAX_INIT => 21,
      USB_PING_SATA_MIN_INIT => 12,
      USB_POLL_SATA_MAX_BURST => 8,
      USB_POLL_SATA_MIN_BURST => 4,
      USB_RAW_ELEC => '0',
      USB_RXIDLE_P0_CTRL => '1',
      USB_TXIDLE_TUNE_ENABLE => '1',
      USB_U1_SATA_MAX_WAKE => 7,
      USB_U1_SATA_MIN_WAKE => 4,
      USB_U2_SAS_MAX_COM => 64,
      USB_U2_SAS_MIN_COM => 36,
      USE_PCS_CLK_PHASE_SEL => '0',
      Y_ALL_MODE => '0'
    )
        port map (
      BUFGTCE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_0\,
      BUFGTCEMASK(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_313\,
      BUFGTCEMASK(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_314\,
      BUFGTCEMASK(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_315\,
      BUFGTDIV(8) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_368\,
      BUFGTDIV(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_369\,
      BUFGTDIV(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_370\,
      BUFGTDIV(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_371\,
      BUFGTDIV(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_372\,
      BUFGTDIV(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_373\,
      BUFGTDIV(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_374\,
      BUFGTDIV(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_375\,
      BUFGTDIV(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_376\,
      BUFGTRESET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_1\,
      BUFGTRSTMASK(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_316\,
      BUFGTRSTMASK(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_317\,
      BUFGTRSTMASK(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_318\,
      CDRSTEPDIR => '0',
      CDRSTEPSQ => '0',
      CDRSTEPSX => '0',
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      CPLLFBCLKLOST => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_2\,
      CPLLFREQLOCK => '0',
      CPLLLOCK => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_3\,
      CPLLLOCKDETCLK => '0',
      CPLLLOCKEN => '0',
      CPLLPD => '1',
      CPLLREFCLKLOST => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_4\,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => '1',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(15 downto 0) => dmonitorout_out(15 downto 0),
      DMONITOROUTCLK => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_5\,
      DRPADDR(9 downto 0) => drpaddr_in(9 downto 0),
      DRPCLK => drpclk_in(0),
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in(0),
      DRPRDY => drprdy_out(0),
      DRPRST => '0',
      DRPWE => drpwe_in(0),
      EYESCANDATAERROR => eyescandataerror_out(0),
      EYESCANRESET => eyescanreset_in(0),
      EYESCANTRIGGER => '0',
      FREQOS => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTPOWERGOOD => \^gen_gtwizard_gtye4.gtpowergood_int\,
      GTREFCLK0 => '0',
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_9\,
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gtrxreset_in(0),
      GTRXRESETSEL => '0',
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      GTTXRESETSEL => '0',
      GTYRXN => gtyrxn_in(0),
      GTYRXP => gtyrxp_in(0),
      GTYTXN => gtytxn_out(0),
      GTYTXP => gtytxp_out(0),
      INCPCTRL => '0',
      LOOPBACK(2 downto 0) => loopback_in(2 downto 0),
      PCIEEQRXEQADAPTDONE => '0',
      PCIERATEGEN3 => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_12\,
      PCIERATEIDLE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_13\,
      PCIERATEQPLLPD(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_299\,
      PCIERATEQPLLPD(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_300\,
      PCIERATEQPLLRESET(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_301\,
      PCIERATEQPLLRESET(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_302\,
      PCIERSTIDLE => '0',
      PCIERSTTXSYNCSTART => '0',
      PCIESYNCTXSYNCDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_14\,
      PCIEUSERGEN3RDY => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_15\,
      PCIEUSERPHYSTATUSRST => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_16\,
      PCIEUSERRATEDONE => '0',
      PCIEUSERRATESTART => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_17\,
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_235\,
      PCSRSVDOUT(14) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_236\,
      PCSRSVDOUT(13) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_237\,
      PCSRSVDOUT(12) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_238\,
      PCSRSVDOUT(11) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_239\,
      PCSRSVDOUT(10) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_240\,
      PCSRSVDOUT(9) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_241\,
      PCSRSVDOUT(8) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_242\,
      PCSRSVDOUT(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_243\,
      PCSRSVDOUT(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_244\,
      PCSRSVDOUT(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_245\,
      PCSRSVDOUT(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_246\,
      PCSRSVDOUT(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_247\,
      PCSRSVDOUT(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_248\,
      PCSRSVDOUT(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_249\,
      PCSRSVDOUT(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_250\,
      PHYSTATUS => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_18\,
      PINRSRVDAS(15) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_251\,
      PINRSRVDAS(14) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_252\,
      PINRSRVDAS(13) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_253\,
      PINRSRVDAS(12) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_254\,
      PINRSRVDAS(11) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_255\,
      PINRSRVDAS(10) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_256\,
      PINRSRVDAS(9) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_257\,
      PINRSRVDAS(8) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_258\,
      PINRSRVDAS(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_259\,
      PINRSRVDAS(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_260\,
      PINRSRVDAS(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_261\,
      PINRSRVDAS(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_262\,
      PINRSRVDAS(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_263\,
      PINRSRVDAS(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_264\,
      PINRSRVDAS(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_265\,
      PINRSRVDAS(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_266\,
      POWERPRESENT => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_19\,
      QPLL0CLK => qpll0clk_in(0),
      QPLL0FREQLOCK => '0',
      QPLL0REFCLK => qpll0refclk_in(0),
      QPLL1CLK => qpll1clk_in(0),
      QPLL1FREQLOCK => '0',
      QPLL1REFCLK => qpll1refclk_in(0),
      RESETEXCEPTION => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_20\,
      RESETOVRD => '0',
      RX8B10BEN => '0',
      RXAFECFOKEN => '1',
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_319\,
      RXBUFSTATUS(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_320\,
      RXBUFSTATUS(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_321\,
      RXBYTEISALIGNED => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_21\,
      RXBYTEREALIGN => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_22\,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => rxcdrhold_in(0),
      RXCDRLOCK => rxcdrlock_out(0),
      RXCDROVRDEN => '0',
      RXCDRPHDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_24\,
      RXCDRRESET => '0',
      RXCHANBONDSEQ => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_25\,
      RXCHANISALIGNED => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_26\,
      RXCHANREALIGN => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_27\,
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_325\,
      RXCHBONDO(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_326\,
      RXCHBONDO(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_327\,
      RXCHBONDO(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_328\,
      RXCHBONDO(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_329\,
      RXCHBONDSLAVE => '0',
      RXCKCALDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_28\,
      RXCKCALRESET => '0',
      RXCKCALSTART(6 downto 0) => B"0000000",
      RXCLKCORCNT(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_303\,
      RXCLKCORCNT(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_304\,
      RXCOMINITDET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_29\,
      RXCOMMADET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_30\,
      RXCOMMADETEN => '0',
      RXCOMSASDET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_31\,
      RXCOMWAKEDET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_32\,
      RXCTRL0(15 downto 0) => rxctrl0_out(15 downto 0),
      RXCTRL1(15 downto 0) => rxctrl1_out(15 downto 0),
      RXCTRL2(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_336\,
      RXCTRL2(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_337\,
      RXCTRL2(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_338\,
      RXCTRL2(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_339\,
      RXCTRL2(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_340\,
      RXCTRL2(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_341\,
      RXCTRL2(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_342\,
      RXCTRL2(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_343\,
      RXCTRL3(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_344\,
      RXCTRL3(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_345\,
      RXCTRL3(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_346\,
      RXCTRL3(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_347\,
      RXCTRL3(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_348\,
      RXCTRL3(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_349\,
      RXCTRL3(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_350\,
      RXCTRL3(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_351\,
      RXDATA(127 downto 0) => rxdata_out(127 downto 0),
      RXDATAEXTENDRSVD(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_352\,
      RXDATAEXTENDRSVD(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_353\,
      RXDATAEXTENDRSVD(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_354\,
      RXDATAEXTENDRSVD(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_355\,
      RXDATAEXTENDRSVD(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_356\,
      RXDATAEXTENDRSVD(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_357\,
      RXDATAEXTENDRSVD(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_358\,
      RXDATAEXTENDRSVD(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_359\,
      RXDATAVALID(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_305\,
      RXDATAVALID(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_306\,
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECFOKFCNUM(3 downto 0) => B"1101",
      RXDFECFOKFEN => '0',
      RXDFECFOKFPULSE => '0',
      RXDFECFOKHOLD => '0',
      RXDFECFOKOVREN => '0',
      RXDFEKHHOLD => '0',
      RXDFEKHOVRDEN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => rxdfelpmreset_in(0),
      RXDFETAP10HOLD => '0',
      RXDFETAP10OVRDEN => '0',
      RXDFETAP11HOLD => '0',
      RXDFETAP11OVRDEN => '0',
      RXDFETAP12HOLD => '0',
      RXDFETAP12OVRDEN => '0',
      RXDFETAP13HOLD => '0',
      RXDFETAP13OVRDEN => '0',
      RXDFETAP14HOLD => '0',
      RXDFETAP14OVRDEN => '0',
      RXDFETAP15HOLD => '0',
      RXDFETAP15OVRDEN => '0',
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFETAP6HOLD => '0',
      RXDFETAP6OVRDEN => '0',
      RXDFETAP7HOLD => '0',
      RXDFETAP7OVRDEN => '0',
      RXDFETAP8HOLD => '0',
      RXDFETAP8OVRDEN => '0',
      RXDFETAP9HOLD => '0',
      RXDFETAP9OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEXYDEN => '1',
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_33\,
      RXELECIDLE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_34\,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXEQTRAINING => '0',
      RXGEARBOXSLIP => '0',
      RXHEADER(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_330\,
      RXHEADER(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_331\,
      RXHEADER(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_332\,
      RXHEADER(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_333\,
      RXHEADER(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_334\,
      RXHEADER(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_335\,
      RXHEADERVALID(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_307\,
      RXHEADERVALID(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_308\,
      RXLATCLK => '0',
      RXLFPSTRESETDET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_35\,
      RXLFPSU2LPEXITDET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_36\,
      RXLFPSU3WAKEDET => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_37\,
      RXLPMEN => rxlpmen_in(0),
      RXLPMGCHOLD => '0',
      RXLPMGCOVRDEN => '0',
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXLPMOSHOLD => '0',
      RXLPMOSOVRDEN => '0',
      RXMCOMMAALIGNEN => '0',
      RXMONITOROUT(7) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_360\,
      RXMONITOROUT(6) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_361\,
      RXMONITOROUT(5) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_362\,
      RXMONITOROUT(4) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_363\,
      RXMONITOROUT(3) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_364\,
      RXMONITOROUT(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_365\,
      RXMONITOROUT(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_366\,
      RXMONITOROUT(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_367\,
      RXMONITORSEL(1 downto 0) => B"00",
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_38\,
      RXOSINTSTARTED => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_39\,
      RXOSINTSTROBEDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_40\,
      RXOSINTSTROBESTARTED => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_41\,
      RXOSOVRDEN => '0',
      RXOUTCLK => rxoutclk_out(0),
      RXOUTCLKFABRIC => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_43\,
      RXOUTCLKPCS => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_44\,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => '0',
      RXPCSRESET => rxpcsreset_in(0),
      RXPD(1 downto 0) => rxpd_in(1 downto 0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_45\,
      RXPHALIGNEN => '0',
      RXPHALIGNERR => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_46\,
      RXPHDLYPD => '1',
      RXPHDLYRESET => '0',
      RXPLLCLKSEL(1 downto 0) => rxpllclksel_in(1 downto 0),
      RXPMARESET => rxpmareset_in(0),
      RXPMARESETDONE => rxpmaresetdone_out(0),
      RXPOLARITY => rxpolarity_in(0),
      RXPRBSCNTRESET => rxprbscntreset_in(0),
      RXPRBSERR => rxprbserr_out(0),
      RXPRBSLOCKED => rxprbslocked_out(0),
      RXPRBSSEL(3 downto 0) => rxprbssel_in(3 downto 0),
      RXPRGDIVRESETDONE => rxprgdivresetdone_out(0),
      RXPROGDIVRESET => rxprogdivreset_in(0),
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_51\,
      RXRATEMODE => '0',
      RXRECCLKOUT => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_52\,
      RXRESETDONE => rxresetdone_out(0),
      RXSLIDE => '0',
      RXSLIDERDY => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_54\,
      RXSLIPDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_55\,
      RXSLIPOUTCLK => '0',
      RXSLIPOUTCLKRDY => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_56\,
      RXSLIPPMA => '0',
      RXSLIPPMARDY => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_57\,
      RXSTARTOFSEQ(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_309\,
      RXSTARTOFSEQ(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_310\,
      RXSTATUS(2) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_322\,
      RXSTATUS(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_323\,
      RXSTATUS(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_324\,
      RXSYNCALLIN => '0',
      RXSYNCDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_58\,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_59\,
      RXSYSCLKSEL(1 downto 0) => rxsysclksel_in(1 downto 0),
      RXTERMINATION => '0',
      RXUSERRDY => rxuserrdy_in(0),
      RXUSRCLK => rxusrclk_in(0),
      RXUSRCLK2 => rxusrclk2_in(0),
      RXVALID => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_60\,
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"00000000000000000000",
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '0',
      TXBUFSTATUS(1) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_311\,
      TXBUFSTATUS(0) => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_312\,
      TXCOMFINISH => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_61\,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXCTRL0(15 downto 0) => txctrl0_in(15 downto 0),
      TXCTRL1(15 downto 0) => txctrl1_in(15 downto 0),
      TXCTRL2(7 downto 0) => B"00000000",
      TXDATA(127 downto 0) => txdata_in(127 downto 0),
      TXDATAEXTENDRSVD(7 downto 0) => B"00000000",
      TXDCCDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_62\,
      TXDCCFORCESTART => '0',
      TXDCCRESET => '0',
      TXDEEMPH(1 downto 0) => B"00",
      TXDETECTRX => '0',
      TXDIFFCTRL(4 downto 0) => txdiffctrl_in(4 downto 0),
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_63\,
      TXDLYUPDOWN => '0',
      TXELECIDLE => txelecidle_in(0),
      TXHEADER(5 downto 0) => B"000000",
      TXINHIBIT => txinhibit_in(0),
      TXLATCLK => '0',
      TXLFPSTRESET => '0',
      TXLFPSU2LPEXIT => '0',
      TXLFPSU3WAKE => '0',
      TXMAINCURSOR(6 downto 0) => txmaincursor_in(6 downto 0),
      TXMARGIN(2 downto 0) => B"000",
      TXMUXDCDEXHOLD => '0',
      TXMUXDCDORWREN => '0',
      TXONESZEROS => '0',
      TXOUTCLK => txoutclk_out(0),
      TXOUTCLKFABRIC => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_65\,
      TXOUTCLKPCS => txoutclkpcs_out(0),
      TXOUTCLKSEL(2 downto 0) => B"101",
      TXPCSRESET => txpcsreset_in(0),
      TXPD(1 downto 0) => txpd_in(1 downto 0),
      TXPDELECIDLEMODE => txpdelecidlemode_in(0),
      TXPHALIGN => '0',
      TXPHALIGNDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_67\,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '1',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_68\,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => TXRATE(0),
      TXPLLCLKSEL(1 downto 0) => txpllclksel_in(1 downto 0),
      TXPMARESET => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      TXPMARESETDONE => txpmaresetdone_out(0),
      TXPOLARITY => txpolarity_in(0),
      TXPOSTCURSOR(4 downto 0) => txpostcursor_in(4 downto 0),
      TXPRBSFORCEERR => txprbsforceerr_in(0),
      TXPRBSSEL(3 downto 0) => txprbssel_in(3 downto 0),
      TXPRECURSOR(4 downto 0) => txprecursor_in(4 downto 0),
      TXPRGDIVRESETDONE => txprgdivresetdone_out(0),
      TXPROGDIVRESET => txprogdivreset_in(0),
      TXRATE(2 downto 1) => B"00",
      TXRATE(0) => TXRATE(0),
      TXRATEDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_71\,
      TXRATEMODE => TXRATE(0),
      TXRESETDONE => txresetdone_out(0),
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_73\,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_n_74\,
      TXSYSCLKSEL(1 downto 0) => txsysclksel_in(1 downto 0),
      TXUSERRDY => txuserrdy_in(0),
      TXUSRCLK => txusrclk_in(0),
      TXUSRCLK2 => txusrclk2_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_delay_powergood is
  port (
    \out\ : out STD_LOGIC;
    \gen_gtwizard_gtye4.gttxreset_ch_int\ : out STD_LOGIC;
    \gen_gtwizard_gtye4.txpmareset_ch_int\ : out STD_LOGIC;
    TXRATE : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\ : in STD_LOGIC;
    gttxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtpowergood_int\ : in STD_LOGIC;
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_delay_powergood;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_delay_powergood is
  signal \gen_powergood_delay.int_pwr_on_fsm\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \gen_powergood_delay.int_pwr_on_fsm\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \gen_powergood_delay.int_pwr_on_fsm\ : signal is "true";
  attribute shreg_extract : string;
  attribute shreg_extract of \gen_powergood_delay.int_pwr_on_fsm\ : signal is "no";
  signal \gen_powergood_delay.int_pwr_on_fsm_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.intclk_rrst_n_r\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "true";
  attribute shreg_extract of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "no";
  signal \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.pwr_on_fsm\ : STD_LOGIC;
  attribute RTL_KEEP of \gen_powergood_delay.pwr_on_fsm\ : signal is "true";
  attribute async_reg of \gen_powergood_delay.pwr_on_fsm\ : signal is "true";
  attribute shreg_extract of \gen_powergood_delay.pwr_on_fsm\ : signal is "no";
  signal \gen_powergood_delay.wait_cnt\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg of \gen_powergood_delay.wait_cnt\ : signal is "true";
  attribute shreg_extract of \gen_powergood_delay.wait_cnt\ : signal is "no";
  signal \gen_powergood_delay.wait_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[8]_i_1_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gen_powergood_delay.int_pwr_on_fsm_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gen_powergood_delay.int_pwr_on_fsm_reg\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.int_pwr_on_fsm_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.pwr_on_fsm_reg\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.pwr_on_fsm_reg\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.pwr_on_fsm_reg\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[3]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[3]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[4]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[4]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[5]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[5]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[6]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[6]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[7]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[7]\ : label is "no";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.wait_cnt_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.wait_cnt_reg[8]\ : label is "yes";
  attribute SHREG_EXTRACT of \gen_powergood_delay.wait_cnt_reg[8]\ : label is "no";
begin
  \out\ <= \gen_powergood_delay.pwr_on_fsm\;
\gen_powergood_delay.int_pwr_on_fsm_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_powergood_delay.int_pwr_on_fsm\,
      I1 => \gen_powergood_delay.wait_cnt\(7),
      O => \gen_powergood_delay.int_pwr_on_fsm_i_1_n_0\
    );
\gen_powergood_delay.int_pwr_on_fsm_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => '1',
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\,
      D => \gen_powergood_delay.int_pwr_on_fsm_i_1_n_0\,
      Q => \gen_powergood_delay.int_pwr_on_fsm\
    );
\gen_powergood_delay.intclk_rrst_n_r[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.int_pwr_on_fsm\,
      O => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\,
      D => '1',
      Q => \gen_powergood_delay.intclk_rrst_n_r\(0)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(0),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(1)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(1),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(2)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(2),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(3)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(3),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(4)
    );
\gen_powergood_delay.pwr_on_fsm_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txoutclkpcs_out(0),
      CE => '1',
      D => \gen_powergood_delay.int_pwr_on_fsm\,
      Q => \gen_powergood_delay.pwr_on_fsm\,
      R => '0'
    );
\gen_powergood_delay.wait_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      I1 => \gen_powergood_delay.int_pwr_on_fsm\,
      O => \gen_powergood_delay.wait_cnt[0]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.wait_cnt[0]_i_1_n_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(4),
      Q => \gen_powergood_delay.wait_cnt\(0),
      R => '0'
    );
\gen_powergood_delay.wait_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(0),
      Q => \gen_powergood_delay.wait_cnt\(1),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(1),
      Q => \gen_powergood_delay.wait_cnt\(2),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(2),
      Q => \gen_powergood_delay.wait_cnt\(3),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(3),
      Q => \gen_powergood_delay.wait_cnt\(4),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(4),
      Q => \gen_powergood_delay.wait_cnt\(5),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(5),
      Q => \gen_powergood_delay.wait_cnt\(6),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(6),
      Q => \gen_powergood_delay.wait_cnt\(7),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => txoutclkpcs_out(0),
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      D => \gen_powergood_delay.wait_cnt\(7),
      Q => \gen_powergood_delay.wait_cnt\(8),
      R => \gen_powergood_delay.wait_cnt[8]_i_1_n_0\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => gttxreset_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      I2 => \gen_gtwizard_gtye4.gtpowergood_int\,
      O => \gen_gtwizard_gtye4.gttxreset_ch_int\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      O => TXRATE(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txpmareset_in(0),
      O => \gen_gtwizard_gtye4.txpmareset_ch_int\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtye4_channel_wrapper is
  port (
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtpowergood_int\ : out STD_LOGIC;
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\ : out STD_LOGIC;
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gttxreset_ch_int\ : in STD_LOGIC;
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    TXRATE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txpmareset_ch_int\ : in STD_LOGIC;
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtye4_channel_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtye4_channel_wrapper is
begin
channel_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_channel
     port map (
      TXRATE(0) => TXRATE(0),
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drpwe_in(0) => drpwe_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      \gen_gtwizard_gtye4.gtpowergood_int\ => \gen_gtwizard_gtye4.gtpowergood_int\,
      \gen_gtwizard_gtye4.gttxreset_ch_int\ => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      \gen_gtwizard_gtye4.txpmareset_ch_int\ => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      gtrxreset_in(0) => gtrxreset_in(0),
      \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_0\ => \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\,
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1refclk_in(0) => qpll1refclk_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_in(0) => rxprogdivreset_in(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxuserrdy_in(0) => rxuserrdy_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txelecidle_in(0) => txelecidle_in(0),
      txinhibit_in(0) => txinhibit_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkpcs_out(0) => txoutclkpcs_out(0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_in(0) => txprogdivreset_in(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txuserrdy_in(0) => txuserrdy_in(0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_gtye4 is
  port (
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    gttxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_gtye4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_gtye4 is
  signal \gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst_n_13\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst_n_209\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gtpowergood_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gttxreset_ch_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.txpisopd_ch_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.txpmareset_ch_int\ : STD_LOGIC;
begin
\gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtye4_channel_wrapper
     port map (
      TXRATE(0) => \gen_gtwizard_gtye4.txpisopd_ch_int\,
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drpwe_in(0) => drpwe_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      \gen_gtwizard_gtye4.gtpowergood_int\ => \gen_gtwizard_gtye4.gtpowergood_int\,
      \gen_gtwizard_gtye4.gttxreset_ch_int\ => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      \gen_gtwizard_gtye4.txpmareset_ch_int\ => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      gtrxreset_in(0) => gtrxreset_in(0),
      \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\ => \gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst_n_209\,
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1refclk_in(0) => qpll1refclk_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_in(0) => rxprogdivreset_in(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxuserrdy_in(0) => rxuserrdy_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txelecidle_in(0) => txelecidle_in(0),
      txinhibit_in(0) => txinhibit_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkpcs_out(0) => \gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst_n_13\,
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_in(0) => txprogdivreset_in(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txuserrdy_in(0) => txuserrdy_in(0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_10_gtye4_delay_powergood
     port map (
      TXRATE(0) => \gen_gtwizard_gtye4.txpisopd_ch_int\,
      \gen_gtwizard_gtye4.gtpowergood_int\ => \gen_gtwizard_gtye4.gtpowergood_int\,
      \gen_gtwizard_gtye4.gttxreset_ch_int\ => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      \gen_gtwizard_gtye4.txpmareset_ch_int\ => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0\ => \gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst_n_209\,
      gttxreset_in(0) => gttxreset_in(0),
      \out\ => gtpowergood_out(0),
      txoutclkpcs_out(0) => \gen_gtwizard_gtye4.gen_channel_container[28].gen_enabled_channel.gtye4_channel_wrapper_inst_n_13\,
      txpmareset_in(0) => txpmareset_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top is
  port (
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe3_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe3_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe3_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gtye4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gtye4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gtye4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 79 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 79 downto 0 );
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tcongpi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconpowerup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdin1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk1_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    tcongpo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdout0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcaldvorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcalpaorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    looprsvd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "125.000000";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 80;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "25.781250";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 112;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "161.132812";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 80;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 80;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "25.781250";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 112;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "161.132812";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 80;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is "322.265625";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top is
  signal \<const0>\ : STD_LOGIC;
begin
  bufgtce_out(0) <= \<const0>\;
  bufgtcemask_out(2) <= \<const0>\;
  bufgtcemask_out(1) <= \<const0>\;
  bufgtcemask_out(0) <= \<const0>\;
  bufgtdiv_out(8) <= \<const0>\;
  bufgtdiv_out(7) <= \<const0>\;
  bufgtdiv_out(6) <= \<const0>\;
  bufgtdiv_out(5) <= \<const0>\;
  bufgtdiv_out(4) <= \<const0>\;
  bufgtdiv_out(3) <= \<const0>\;
  bufgtdiv_out(2) <= \<const0>\;
  bufgtdiv_out(1) <= \<const0>\;
  bufgtdiv_out(0) <= \<const0>\;
  bufgtreset_out(0) <= \<const0>\;
  bufgtrstmask_out(2) <= \<const0>\;
  bufgtrstmask_out(1) <= \<const0>\;
  bufgtrstmask_out(0) <= \<const0>\;
  cpllfbclklost_out(0) <= \<const0>\;
  cplllock_out(0) <= \<const0>\;
  cpllrefclklost_out(0) <= \<const0>\;
  dmonitoroutclk_out(0) <= \<const0>\;
  drpdo_common_out(15) <= \<const0>\;
  drpdo_common_out(14) <= \<const0>\;
  drpdo_common_out(13) <= \<const0>\;
  drpdo_common_out(12) <= \<const0>\;
  drpdo_common_out(11) <= \<const0>\;
  drpdo_common_out(10) <= \<const0>\;
  drpdo_common_out(9) <= \<const0>\;
  drpdo_common_out(8) <= \<const0>\;
  drpdo_common_out(7) <= \<const0>\;
  drpdo_common_out(6) <= \<const0>\;
  drpdo_common_out(5) <= \<const0>\;
  drpdo_common_out(4) <= \<const0>\;
  drpdo_common_out(3) <= \<const0>\;
  drpdo_common_out(2) <= \<const0>\;
  drpdo_common_out(1) <= \<const0>\;
  drpdo_common_out(0) <= \<const0>\;
  drprdy_common_out(0) <= \<const0>\;
  gthtxn_out(0) <= \<const0>\;
  gthtxp_out(0) <= \<const0>\;
  gtrefclkmonitor_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_error_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_error_out(0) <= \<const0>\;
  gtwiz_reset_qpll0reset_out(0) <= \<const0>\;
  gtwiz_reset_qpll1reset_out(0) <= \<const0>\;
  gtwiz_reset_rx_cdr_stable_out(0) <= \<const0>\;
  gtwiz_reset_rx_done_out(0) <= \<const0>\;
  gtwiz_reset_tx_done_out(0) <= \<const0>\;
  gtwiz_userclk_rx_active_out(0) <= \<const0>\;
  gtwiz_userclk_rx_srcclk_out(0) <= \<const0>\;
  gtwiz_userclk_rx_usrclk2_out(0) <= \<const0>\;
  gtwiz_userclk_rx_usrclk_out(0) <= \<const0>\;
  gtwiz_userclk_tx_active_out(0) <= \<const0>\;
  gtwiz_userclk_tx_srcclk_out(0) <= \<const0>\;
  gtwiz_userclk_tx_usrclk2_out(0) <= \<const0>\;
  gtwiz_userclk_tx_usrclk_out(0) <= \<const0>\;
  gtwiz_userdata_rx_out(79) <= \<const0>\;
  gtwiz_userdata_rx_out(78) <= \<const0>\;
  gtwiz_userdata_rx_out(77) <= \<const0>\;
  gtwiz_userdata_rx_out(76) <= \<const0>\;
  gtwiz_userdata_rx_out(75) <= \<const0>\;
  gtwiz_userdata_rx_out(74) <= \<const0>\;
  gtwiz_userdata_rx_out(73) <= \<const0>\;
  gtwiz_userdata_rx_out(72) <= \<const0>\;
  gtwiz_userdata_rx_out(71) <= \<const0>\;
  gtwiz_userdata_rx_out(70) <= \<const0>\;
  gtwiz_userdata_rx_out(69) <= \<const0>\;
  gtwiz_userdata_rx_out(68) <= \<const0>\;
  gtwiz_userdata_rx_out(67) <= \<const0>\;
  gtwiz_userdata_rx_out(66) <= \<const0>\;
  gtwiz_userdata_rx_out(65) <= \<const0>\;
  gtwiz_userdata_rx_out(64) <= \<const0>\;
  gtwiz_userdata_rx_out(63) <= \<const0>\;
  gtwiz_userdata_rx_out(62) <= \<const0>\;
  gtwiz_userdata_rx_out(61) <= \<const0>\;
  gtwiz_userdata_rx_out(60) <= \<const0>\;
  gtwiz_userdata_rx_out(59) <= \<const0>\;
  gtwiz_userdata_rx_out(58) <= \<const0>\;
  gtwiz_userdata_rx_out(57) <= \<const0>\;
  gtwiz_userdata_rx_out(56) <= \<const0>\;
  gtwiz_userdata_rx_out(55) <= \<const0>\;
  gtwiz_userdata_rx_out(54) <= \<const0>\;
  gtwiz_userdata_rx_out(53) <= \<const0>\;
  gtwiz_userdata_rx_out(52) <= \<const0>\;
  gtwiz_userdata_rx_out(51) <= \<const0>\;
  gtwiz_userdata_rx_out(50) <= \<const0>\;
  gtwiz_userdata_rx_out(49) <= \<const0>\;
  gtwiz_userdata_rx_out(48) <= \<const0>\;
  gtwiz_userdata_rx_out(47) <= \<const0>\;
  gtwiz_userdata_rx_out(46) <= \<const0>\;
  gtwiz_userdata_rx_out(45) <= \<const0>\;
  gtwiz_userdata_rx_out(44) <= \<const0>\;
  gtwiz_userdata_rx_out(43) <= \<const0>\;
  gtwiz_userdata_rx_out(42) <= \<const0>\;
  gtwiz_userdata_rx_out(41) <= \<const0>\;
  gtwiz_userdata_rx_out(40) <= \<const0>\;
  gtwiz_userdata_rx_out(39) <= \<const0>\;
  gtwiz_userdata_rx_out(38) <= \<const0>\;
  gtwiz_userdata_rx_out(37) <= \<const0>\;
  gtwiz_userdata_rx_out(36) <= \<const0>\;
  gtwiz_userdata_rx_out(35) <= \<const0>\;
  gtwiz_userdata_rx_out(34) <= \<const0>\;
  gtwiz_userdata_rx_out(33) <= \<const0>\;
  gtwiz_userdata_rx_out(32) <= \<const0>\;
  gtwiz_userdata_rx_out(31) <= \<const0>\;
  gtwiz_userdata_rx_out(30) <= \<const0>\;
  gtwiz_userdata_rx_out(29) <= \<const0>\;
  gtwiz_userdata_rx_out(28) <= \<const0>\;
  gtwiz_userdata_rx_out(27) <= \<const0>\;
  gtwiz_userdata_rx_out(26) <= \<const0>\;
  gtwiz_userdata_rx_out(25) <= \<const0>\;
  gtwiz_userdata_rx_out(24) <= \<const0>\;
  gtwiz_userdata_rx_out(23) <= \<const0>\;
  gtwiz_userdata_rx_out(22) <= \<const0>\;
  gtwiz_userdata_rx_out(21) <= \<const0>\;
  gtwiz_userdata_rx_out(20) <= \<const0>\;
  gtwiz_userdata_rx_out(19) <= \<const0>\;
  gtwiz_userdata_rx_out(18) <= \<const0>\;
  gtwiz_userdata_rx_out(17) <= \<const0>\;
  gtwiz_userdata_rx_out(16) <= \<const0>\;
  gtwiz_userdata_rx_out(15) <= \<const0>\;
  gtwiz_userdata_rx_out(14) <= \<const0>\;
  gtwiz_userdata_rx_out(13) <= \<const0>\;
  gtwiz_userdata_rx_out(12) <= \<const0>\;
  gtwiz_userdata_rx_out(11) <= \<const0>\;
  gtwiz_userdata_rx_out(10) <= \<const0>\;
  gtwiz_userdata_rx_out(9) <= \<const0>\;
  gtwiz_userdata_rx_out(8) <= \<const0>\;
  gtwiz_userdata_rx_out(7) <= \<const0>\;
  gtwiz_userdata_rx_out(6) <= \<const0>\;
  gtwiz_userdata_rx_out(5) <= \<const0>\;
  gtwiz_userdata_rx_out(4) <= \<const0>\;
  gtwiz_userdata_rx_out(3) <= \<const0>\;
  gtwiz_userdata_rx_out(2) <= \<const0>\;
  gtwiz_userdata_rx_out(1) <= \<const0>\;
  gtwiz_userdata_rx_out(0) <= \<const0>\;
  pcierategen3_out(0) <= \<const0>\;
  pcierateidle_out(0) <= \<const0>\;
  pcierateqpllpd_out(1) <= \<const0>\;
  pcierateqpllpd_out(0) <= \<const0>\;
  pcierateqpllreset_out(1) <= \<const0>\;
  pcierateqpllreset_out(0) <= \<const0>\;
  pciesynctxsyncdone_out(0) <= \<const0>\;
  pcieusergen3rdy_out(0) <= \<const0>\;
  pcieuserphystatusrst_out(0) <= \<const0>\;
  pcieuserratestart_out(0) <= \<const0>\;
  pcsrsvdout_out(15) <= \<const0>\;
  pcsrsvdout_out(14) <= \<const0>\;
  pcsrsvdout_out(13) <= \<const0>\;
  pcsrsvdout_out(12) <= \<const0>\;
  pcsrsvdout_out(11) <= \<const0>\;
  pcsrsvdout_out(10) <= \<const0>\;
  pcsrsvdout_out(9) <= \<const0>\;
  pcsrsvdout_out(8) <= \<const0>\;
  pcsrsvdout_out(7) <= \<const0>\;
  pcsrsvdout_out(6) <= \<const0>\;
  pcsrsvdout_out(5) <= \<const0>\;
  pcsrsvdout_out(4) <= \<const0>\;
  pcsrsvdout_out(3) <= \<const0>\;
  pcsrsvdout_out(2) <= \<const0>\;
  pcsrsvdout_out(1) <= \<const0>\;
  pcsrsvdout_out(0) <= \<const0>\;
  phystatus_out(0) <= \<const0>\;
  pinrsrvdas_out(15) <= \<const0>\;
  pinrsrvdas_out(14) <= \<const0>\;
  pinrsrvdas_out(13) <= \<const0>\;
  pinrsrvdas_out(12) <= \<const0>\;
  pinrsrvdas_out(11) <= \<const0>\;
  pinrsrvdas_out(10) <= \<const0>\;
  pinrsrvdas_out(9) <= \<const0>\;
  pinrsrvdas_out(8) <= \<const0>\;
  pinrsrvdas_out(7) <= \<const0>\;
  pinrsrvdas_out(6) <= \<const0>\;
  pinrsrvdas_out(5) <= \<const0>\;
  pinrsrvdas_out(4) <= \<const0>\;
  pinrsrvdas_out(3) <= \<const0>\;
  pinrsrvdas_out(2) <= \<const0>\;
  pinrsrvdas_out(1) <= \<const0>\;
  pinrsrvdas_out(0) <= \<const0>\;
  pmarsvdout0_out(7) <= \<const0>\;
  pmarsvdout0_out(6) <= \<const0>\;
  pmarsvdout0_out(5) <= \<const0>\;
  pmarsvdout0_out(4) <= \<const0>\;
  pmarsvdout0_out(3) <= \<const0>\;
  pmarsvdout0_out(2) <= \<const0>\;
  pmarsvdout0_out(1) <= \<const0>\;
  pmarsvdout0_out(0) <= \<const0>\;
  pmarsvdout1_out(7) <= \<const0>\;
  pmarsvdout1_out(6) <= \<const0>\;
  pmarsvdout1_out(5) <= \<const0>\;
  pmarsvdout1_out(4) <= \<const0>\;
  pmarsvdout1_out(3) <= \<const0>\;
  pmarsvdout1_out(2) <= \<const0>\;
  pmarsvdout1_out(1) <= \<const0>\;
  pmarsvdout1_out(0) <= \<const0>\;
  powerpresent_out(0) <= \<const0>\;
  qpll0fbclklost_out(0) <= \<const0>\;
  qpll0lock_out(0) <= \<const0>\;
  qpll0outclk_out(0) <= \<const0>\;
  qpll0outrefclk_out(0) <= \<const0>\;
  qpll0refclklost_out(0) <= \<const0>\;
  qpll1fbclklost_out(0) <= \<const0>\;
  qpll1lock_out(0) <= \<const0>\;
  qpll1outclk_out(0) <= \<const0>\;
  qpll1outrefclk_out(0) <= \<const0>\;
  qpll1refclklost_out(0) <= \<const0>\;
  qplldmonitor0_out(7) <= \<const0>\;
  qplldmonitor0_out(6) <= \<const0>\;
  qplldmonitor0_out(5) <= \<const0>\;
  qplldmonitor0_out(4) <= \<const0>\;
  qplldmonitor0_out(3) <= \<const0>\;
  qplldmonitor0_out(2) <= \<const0>\;
  qplldmonitor0_out(1) <= \<const0>\;
  qplldmonitor0_out(0) <= \<const0>\;
  qplldmonitor1_out(7) <= \<const0>\;
  qplldmonitor1_out(6) <= \<const0>\;
  qplldmonitor1_out(5) <= \<const0>\;
  qplldmonitor1_out(4) <= \<const0>\;
  qplldmonitor1_out(3) <= \<const0>\;
  qplldmonitor1_out(2) <= \<const0>\;
  qplldmonitor1_out(1) <= \<const0>\;
  qplldmonitor1_out(0) <= \<const0>\;
  refclkoutmonitor0_out(0) <= \<const0>\;
  refclkoutmonitor1_out(0) <= \<const0>\;
  resetexception_out(0) <= \<const0>\;
  rxbufstatus_out(2) <= \<const0>\;
  rxbufstatus_out(1) <= \<const0>\;
  rxbufstatus_out(0) <= \<const0>\;
  rxbyteisaligned_out(0) <= \<const0>\;
  rxbyterealign_out(0) <= \<const0>\;
  rxcdrphdone_out(0) <= \<const0>\;
  rxchanbondseq_out(0) <= \<const0>\;
  rxchanisaligned_out(0) <= \<const0>\;
  rxchanrealign_out(0) <= \<const0>\;
  rxchbondo_out(4) <= \<const0>\;
  rxchbondo_out(3) <= \<const0>\;
  rxchbondo_out(2) <= \<const0>\;
  rxchbondo_out(1) <= \<const0>\;
  rxchbondo_out(0) <= \<const0>\;
  rxckcaldone_out(0) <= \<const0>\;
  rxclkcorcnt_out(1) <= \<const0>\;
  rxclkcorcnt_out(0) <= \<const0>\;
  rxcominitdet_out(0) <= \<const0>\;
  rxcommadet_out(0) <= \<const0>\;
  rxcomsasdet_out(0) <= \<const0>\;
  rxcomwakedet_out(0) <= \<const0>\;
  rxctrl2_out(7) <= \<const0>\;
  rxctrl2_out(6) <= \<const0>\;
  rxctrl2_out(5) <= \<const0>\;
  rxctrl2_out(4) <= \<const0>\;
  rxctrl2_out(3) <= \<const0>\;
  rxctrl2_out(2) <= \<const0>\;
  rxctrl2_out(1) <= \<const0>\;
  rxctrl2_out(0) <= \<const0>\;
  rxctrl3_out(7) <= \<const0>\;
  rxctrl3_out(6) <= \<const0>\;
  rxctrl3_out(5) <= \<const0>\;
  rxctrl3_out(4) <= \<const0>\;
  rxctrl3_out(3) <= \<const0>\;
  rxctrl3_out(2) <= \<const0>\;
  rxctrl3_out(1) <= \<const0>\;
  rxctrl3_out(0) <= \<const0>\;
  rxdataextendrsvd_out(7) <= \<const0>\;
  rxdataextendrsvd_out(6) <= \<const0>\;
  rxdataextendrsvd_out(5) <= \<const0>\;
  rxdataextendrsvd_out(4) <= \<const0>\;
  rxdataextendrsvd_out(3) <= \<const0>\;
  rxdataextendrsvd_out(2) <= \<const0>\;
  rxdataextendrsvd_out(1) <= \<const0>\;
  rxdataextendrsvd_out(0) <= \<const0>\;
  rxdatavalid_out(1) <= \<const0>\;
  rxdatavalid_out(0) <= \<const0>\;
  rxdlysresetdone_out(0) <= \<const0>\;
  rxelecidle_out(0) <= \<const0>\;
  rxheader_out(5) <= \<const0>\;
  rxheader_out(4) <= \<const0>\;
  rxheader_out(3) <= \<const0>\;
  rxheader_out(2) <= \<const0>\;
  rxheader_out(1) <= \<const0>\;
  rxheader_out(0) <= \<const0>\;
  rxheadervalid_out(1) <= \<const0>\;
  rxheadervalid_out(0) <= \<const0>\;
  rxlfpstresetdet_out(0) <= \<const0>\;
  rxlfpsu2lpexitdet_out(0) <= \<const0>\;
  rxlfpsu3wakedet_out(0) <= \<const0>\;
  rxmonitorout_out(7) <= \<const0>\;
  rxmonitorout_out(6) <= \<const0>\;
  rxmonitorout_out(5) <= \<const0>\;
  rxmonitorout_out(4) <= \<const0>\;
  rxmonitorout_out(3) <= \<const0>\;
  rxmonitorout_out(2) <= \<const0>\;
  rxmonitorout_out(1) <= \<const0>\;
  rxmonitorout_out(0) <= \<const0>\;
  rxosintdone_out(0) <= \<const0>\;
  rxosintstarted_out(0) <= \<const0>\;
  rxosintstrobedone_out(0) <= \<const0>\;
  rxosintstrobestarted_out(0) <= \<const0>\;
  rxoutclkfabric_out(0) <= \<const0>\;
  rxoutclkpcs_out(0) <= \<const0>\;
  rxphaligndone_out(0) <= \<const0>\;
  rxphalignerr_out(0) <= \<const0>\;
  rxqpisenn_out(0) <= \<const0>\;
  rxqpisenp_out(0) <= \<const0>\;
  rxratedone_out(0) <= \<const0>\;
  rxrecclk0_sel_out(0) <= \<const0>\;
  rxrecclk0sel_out(1) <= \<const0>\;
  rxrecclk0sel_out(0) <= \<const0>\;
  rxrecclk1_sel_out(0) <= \<const0>\;
  rxrecclk1sel_out(1) <= \<const0>\;
  rxrecclk1sel_out(0) <= \<const0>\;
  rxrecclkout_out(0) <= \<const0>\;
  rxsliderdy_out(0) <= \<const0>\;
  rxslipdone_out(0) <= \<const0>\;
  rxslipoutclkrdy_out(0) <= \<const0>\;
  rxslippmardy_out(0) <= \<const0>\;
  rxstartofseq_out(1) <= \<const0>\;
  rxstartofseq_out(0) <= \<const0>\;
  rxstatus_out(2) <= \<const0>\;
  rxstatus_out(1) <= \<const0>\;
  rxstatus_out(0) <= \<const0>\;
  rxsyncdone_out(0) <= \<const0>\;
  rxsyncout_out(0) <= \<const0>\;
  rxvalid_out(0) <= \<const0>\;
  sdm0finalout_out(3) <= \<const0>\;
  sdm0finalout_out(2) <= \<const0>\;
  sdm0finalout_out(1) <= \<const0>\;
  sdm0finalout_out(0) <= \<const0>\;
  sdm0testdata_out(14) <= \<const0>\;
  sdm0testdata_out(13) <= \<const0>\;
  sdm0testdata_out(12) <= \<const0>\;
  sdm0testdata_out(11) <= \<const0>\;
  sdm0testdata_out(10) <= \<const0>\;
  sdm0testdata_out(9) <= \<const0>\;
  sdm0testdata_out(8) <= \<const0>\;
  sdm0testdata_out(7) <= \<const0>\;
  sdm0testdata_out(6) <= \<const0>\;
  sdm0testdata_out(5) <= \<const0>\;
  sdm0testdata_out(4) <= \<const0>\;
  sdm0testdata_out(3) <= \<const0>\;
  sdm0testdata_out(2) <= \<const0>\;
  sdm0testdata_out(1) <= \<const0>\;
  sdm0testdata_out(0) <= \<const0>\;
  sdm1finalout_out(3) <= \<const0>\;
  sdm1finalout_out(2) <= \<const0>\;
  sdm1finalout_out(1) <= \<const0>\;
  sdm1finalout_out(0) <= \<const0>\;
  sdm1testdata_out(14) <= \<const0>\;
  sdm1testdata_out(13) <= \<const0>\;
  sdm1testdata_out(12) <= \<const0>\;
  sdm1testdata_out(11) <= \<const0>\;
  sdm1testdata_out(10) <= \<const0>\;
  sdm1testdata_out(9) <= \<const0>\;
  sdm1testdata_out(8) <= \<const0>\;
  sdm1testdata_out(7) <= \<const0>\;
  sdm1testdata_out(6) <= \<const0>\;
  sdm1testdata_out(5) <= \<const0>\;
  sdm1testdata_out(4) <= \<const0>\;
  sdm1testdata_out(3) <= \<const0>\;
  sdm1testdata_out(2) <= \<const0>\;
  sdm1testdata_out(1) <= \<const0>\;
  sdm1testdata_out(0) <= \<const0>\;
  tcongpo_out(0) <= \<const0>\;
  tconrsvdout0_out(0) <= \<const0>\;
  txbufstatus_out(1) <= \<const0>\;
  txbufstatus_out(0) <= \<const0>\;
  txcomfinish_out(0) <= \<const0>\;
  txdccdone_out(0) <= \<const0>\;
  txdlysresetdone_out(0) <= \<const0>\;
  txoutclkfabric_out(0) <= \<const0>\;
  txoutclkpcs_out(0) <= \<const0>\;
  txphaligndone_out(0) <= \<const0>\;
  txphinitdone_out(0) <= \<const0>\;
  txqpisenn_out(0) <= \<const0>\;
  txqpisenp_out(0) <= \<const0>\;
  txratedone_out(0) <= \<const0>\;
  txsyncdone_out(0) <= \<const0>\;
  txsyncout_out(0) <= \<const0>\;
  ubdaddr_out(15) <= \<const0>\;
  ubdaddr_out(14) <= \<const0>\;
  ubdaddr_out(13) <= \<const0>\;
  ubdaddr_out(12) <= \<const0>\;
  ubdaddr_out(11) <= \<const0>\;
  ubdaddr_out(10) <= \<const0>\;
  ubdaddr_out(9) <= \<const0>\;
  ubdaddr_out(8) <= \<const0>\;
  ubdaddr_out(7) <= \<const0>\;
  ubdaddr_out(6) <= \<const0>\;
  ubdaddr_out(5) <= \<const0>\;
  ubdaddr_out(4) <= \<const0>\;
  ubdaddr_out(3) <= \<const0>\;
  ubdaddr_out(2) <= \<const0>\;
  ubdaddr_out(1) <= \<const0>\;
  ubdaddr_out(0) <= \<const0>\;
  ubden_out(0) <= \<const0>\;
  ubdi_out(15) <= \<const0>\;
  ubdi_out(14) <= \<const0>\;
  ubdi_out(13) <= \<const0>\;
  ubdi_out(12) <= \<const0>\;
  ubdi_out(11) <= \<const0>\;
  ubdi_out(10) <= \<const0>\;
  ubdi_out(9) <= \<const0>\;
  ubdi_out(8) <= \<const0>\;
  ubdi_out(7) <= \<const0>\;
  ubdi_out(6) <= \<const0>\;
  ubdi_out(5) <= \<const0>\;
  ubdi_out(4) <= \<const0>\;
  ubdi_out(3) <= \<const0>\;
  ubdi_out(2) <= \<const0>\;
  ubdi_out(1) <= \<const0>\;
  ubdi_out(0) <= \<const0>\;
  ubdwe_out(0) <= \<const0>\;
  ubmdmtdo_out(0) <= \<const0>\;
  ubrsvdout_out(0) <= \<const0>\;
  ubtxuart_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_gtwizard_gtye4_top.cmac_gty_channel_gtwizard_gtye4_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_gtye4
     port map (
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drpwe_in(0) => drpwe_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrxreset_in(0) => gtrxreset_in(0),
      gttxreset_in(0) => gttxreset_in(0),
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1refclk_in(0) => qpll1refclk_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_in(0) => rxprogdivreset_in(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxuserrdy_in(0) => rxuserrdy_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txelecidle_in(0) => txelecidle_in(0),
      txinhibit_in(0) => txinhibit_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txoutclk_out(0) => txoutclk_out(0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_in(0) => txprogdivreset_in(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txuserrdy_in(0) => txuserrdy_in(0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cmac_gty_channel,cmac_gty_channel_gtwizard_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cmac_gty_channel_gtwizard_top,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_bufgtce_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_bufgtcemask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_bufgtdiv_out_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_bufgtreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_bufgtrstmask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_cpllfbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_cplllock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_cpllrefclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dmonitoroutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_drpdo_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_drprdy_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gthtxn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gthtxp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtrefclkmonitor_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_rx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_tx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userdata_rx_out_UNCONNECTED : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal NLW_inst_pcierategen3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierateidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierateqpllpd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcierateqpllreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pciesynctxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieusergen3rdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieuserphystatusrst_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieuserratestart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcsrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_phystatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pinrsrvdas_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_pmarsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_pmarsvdout1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_powerpresent_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qplldmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_qplldmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_refclkoutmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_refclkoutmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_resetexception_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxbyterealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcdrphdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanbondseq_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanrealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchbondo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_rxckcaldone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxclkcorcnt_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcominitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcommadet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcomsasdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcomwakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxctrl2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxctrl3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxdataextendrsvd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxdatavalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxelecidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxheader_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_rxheadervalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxlfpstresetdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxosintdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstrobedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstrobestarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxphalignerr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk0_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk0sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclk1_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk1sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclkout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxsliderdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslipdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslipoutclkrdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslippmardy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxstartofseq_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_rxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxvalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_sdm0finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_sdm0testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_sdm1finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_sdm1testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_tcongpo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_tconrsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txcomfinish_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txdccdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txphinitdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdaddr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ubden_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdi_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ubdwe_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubmdmtdo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubtxuart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of inst : label is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of inst : label is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of inst : label is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of inst : label is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of inst : label is "125.000000";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of inst : label is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of inst : label is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of inst : label is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of inst : label is 1;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of inst : label is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of inst : label is 1;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of inst : label is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of inst : label is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of inst : label is 1;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of inst : label is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of inst : label is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of inst : label is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of inst : label is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of inst : label is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of inst : label is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of inst : label is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of inst : label is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of inst : label is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of inst : label is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of inst : label is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of inst : label is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of inst : label is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of inst : label is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of inst : label is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of inst : label is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of inst : label is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of inst : label is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of inst : label is 0;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of inst : label is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of inst : label is 80;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of inst : label is "25.781250";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of inst : label is 112;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of inst : label is 1;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of inst : label is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of inst : label is "161.132812";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of inst : label is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 1;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of inst : label is 80;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of inst : label is "322.265625";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of inst : label is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of inst : label is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of inst : label is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of inst : label is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of inst : label is 0;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of inst : label is 1;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of inst : label is "322.265625";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of inst : label is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of inst : label is 0;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of inst : label is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of inst : label is 80;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of inst : label is "25.781250";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of inst : label is 112;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of inst : label is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of inst : label is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of inst : label is "161.132812";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 1;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of inst : label is 80;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of inst : label is "322.265625";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of inst : label is 1;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmac_gty_channel_gtwizard_top
     port map (
      bgbypassb_in(0) => '1',
      bgmonitorenb_in(0) => '1',
      bgpdb_in(0) => '1',
      bgrcalovrd_in(4 downto 0) => B"10000",
      bgrcalovrdenb_in(0) => '1',
      bufgtce_out(0) => NLW_inst_bufgtce_out_UNCONNECTED(0),
      bufgtcemask_out(2 downto 0) => NLW_inst_bufgtcemask_out_UNCONNECTED(2 downto 0),
      bufgtdiv_out(8 downto 0) => NLW_inst_bufgtdiv_out_UNCONNECTED(8 downto 0),
      bufgtreset_out(0) => NLW_inst_bufgtreset_out_UNCONNECTED(0),
      bufgtrstmask_out(2 downto 0) => NLW_inst_bufgtrstmask_out_UNCONNECTED(2 downto 0),
      cdrstepdir_in(0) => '0',
      cdrstepsq_in(0) => '0',
      cdrstepsx_in(0) => '0',
      cfgreset_in(0) => '0',
      clkrsvd0_in(0) => '0',
      clkrsvd1_in(0) => '0',
      cpllfbclklost_out(0) => NLW_inst_cpllfbclklost_out_UNCONNECTED(0),
      cpllfreqlock_in(0) => '0',
      cplllock_out(0) => NLW_inst_cplllock_out_UNCONNECTED(0),
      cplllockdetclk_in(0) => '0',
      cplllocken_in(0) => '0',
      cpllpd_in(0) => '1',
      cpllrefclklost_out(0) => NLW_inst_cpllrefclklost_out_UNCONNECTED(0),
      cpllrefclksel_in(2 downto 0) => B"001",
      cpllreset_in(0) => '1',
      dmonfiforeset_in(0) => '0',
      dmonitorclk_in(0) => '0',
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      dmonitoroutclk_out(0) => NLW_inst_dmonitoroutclk_out_UNCONNECTED(0),
      drpaddr_common_in(15 downto 0) => B"0000000000000000",
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_common_in(0) => '0',
      drpclk_in(0) => drpclk_in(0),
      drpdi_common_in(15 downto 0) => B"0000000000000000",
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_common_out(15 downto 0) => NLW_inst_drpdo_common_out_UNCONNECTED(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_common_in(0) => '0',
      drpen_in(0) => drpen_in(0),
      drprdy_common_out(0) => NLW_inst_drprdy_common_out_UNCONNECTED(0),
      drprdy_out(0) => drprdy_out(0),
      drprst_in(0) => '0',
      drpwe_common_in(0) => '0',
      drpwe_in(0) => drpwe_in(0),
      elpcaldvorwren_in(0) => '0',
      elpcalpaorwren_in(0) => '0',
      evoddphicaldone_in(0) => '0',
      evoddphicalstart_in(0) => '0',
      evoddphidrden_in(0) => '0',
      evoddphidwren_in(0) => '0',
      evoddphixrden_in(0) => '0',
      evoddphixwren_in(0) => '0',
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanmode_in(0) => '0',
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => '0',
      freqos_in(0) => '0',
      gtgrefclk0_in(0) => '0',
      gtgrefclk1_in(0) => '0',
      gtgrefclk_in(0) => '0',
      gthrxn_in(0) => '0',
      gthrxp_in(0) => '0',
      gthtxn_out(0) => NLW_inst_gthtxn_out_UNCONNECTED(0),
      gthtxp_out(0) => NLW_inst_gthtxp_out_UNCONNECTED(0),
      gtnorthrefclk00_in(0) => '0',
      gtnorthrefclk01_in(0) => '0',
      gtnorthrefclk0_in(0) => '0',
      gtnorthrefclk10_in(0) => '0',
      gtnorthrefclk11_in(0) => '0',
      gtnorthrefclk1_in(0) => '0',
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrefclk00_in(0) => '0',
      gtrefclk01_in(0) => '0',
      gtrefclk0_in(0) => '0',
      gtrefclk10_in(0) => '0',
      gtrefclk11_in(0) => '0',
      gtrefclk1_in(0) => '0',
      gtrefclkmonitor_out(0) => NLW_inst_gtrefclkmonitor_out_UNCONNECTED(0),
      gtresetsel_in(0) => '0',
      gtrsvd_in(15 downto 0) => B"0000000000000000",
      gtrxreset_in(0) => gtrxreset_in(0),
      gtrxresetsel_in(0) => '0',
      gtsouthrefclk00_in(0) => '0',
      gtsouthrefclk01_in(0) => '0',
      gtsouthrefclk0_in(0) => '0',
      gtsouthrefclk10_in(0) => '0',
      gtsouthrefclk11_in(0) => '0',
      gtsouthrefclk1_in(0) => '0',
      gttxreset_in(0) => gttxreset_in(0),
      gttxresetsel_in(0) => '0',
      gtwiz_buffbypass_rx_done_out(0) => NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_error_out(0) => NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_reset_in(0) => '0',
      gtwiz_buffbypass_rx_start_user_in(0) => '0',
      gtwiz_buffbypass_tx_done_out(0) => NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_error_out(0) => NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_reset_in(0) => '0',
      gtwiz_buffbypass_tx_start_user_in(0) => '0',
      gtwiz_gthe3_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gthe3_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe3_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe4_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gthe4_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe4_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_gtye4_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gtye4_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gtye4_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_reset_all_in(0) => '0',
      gtwiz_reset_clk_freerun_in(0) => '0',
      gtwiz_reset_qpll0lock_in(0) => '0',
      gtwiz_reset_qpll0reset_out(0) => NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED(0),
      gtwiz_reset_qpll1lock_in(0) => '0',
      gtwiz_reset_qpll1reset_out(0) => NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED(0),
      gtwiz_reset_rx_cdr_stable_out(0) => NLW_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED(0),
      gtwiz_reset_rx_datapath_in(0) => '0',
      gtwiz_reset_rx_done_in(0) => '0',
      gtwiz_reset_rx_done_out(0) => NLW_inst_gtwiz_reset_rx_done_out_UNCONNECTED(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => '0',
      gtwiz_reset_tx_datapath_in(0) => '0',
      gtwiz_reset_tx_done_in(0) => '0',
      gtwiz_reset_tx_done_out(0) => NLW_inst_gtwiz_reset_tx_done_out_UNCONNECTED(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => '0',
      gtwiz_userclk_rx_active_in(0) => '0',
      gtwiz_userclk_rx_active_out(0) => NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED(0),
      gtwiz_userclk_rx_reset_in(0) => '0',
      gtwiz_userclk_rx_srcclk_out(0) => NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED(0),
      gtwiz_userclk_rx_usrclk2_out(0) => NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED(0),
      gtwiz_userclk_rx_usrclk_out(0) => NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED(0),
      gtwiz_userclk_tx_active_in(0) => '0',
      gtwiz_userclk_tx_active_out(0) => NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED(0),
      gtwiz_userclk_tx_reset_in(0) => '0',
      gtwiz_userclk_tx_srcclk_out(0) => NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED(0),
      gtwiz_userclk_tx_usrclk2_out(0) => NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED(0),
      gtwiz_userclk_tx_usrclk_out(0) => NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED(0),
      gtwiz_userdata_rx_out(79 downto 0) => NLW_inst_gtwiz_userdata_rx_out_UNCONNECTED(79 downto 0),
      gtwiz_userdata_tx_in(79 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000",
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      incpctrl_in(0) => '0',
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      looprsvd_in(0) => '0',
      lpbkrxtxseren_in(0) => '0',
      lpbktxrxseren_in(0) => '0',
      pcieeqrxeqadaptdone_in(0) => '0',
      pcierategen3_out(0) => NLW_inst_pcierategen3_out_UNCONNECTED(0),
      pcierateidle_out(0) => NLW_inst_pcierateidle_out_UNCONNECTED(0),
      pcierateqpll0_in(2 downto 0) => B"000",
      pcierateqpll1_in(2 downto 0) => B"000",
      pcierateqpllpd_out(1 downto 0) => NLW_inst_pcierateqpllpd_out_UNCONNECTED(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => NLW_inst_pcierateqpllreset_out_UNCONNECTED(1 downto 0),
      pcierstidle_in(0) => '0',
      pciersttxsyncstart_in(0) => '0',
      pciesynctxsyncdone_out(0) => NLW_inst_pciesynctxsyncdone_out_UNCONNECTED(0),
      pcieusergen3rdy_out(0) => NLW_inst_pcieusergen3rdy_out_UNCONNECTED(0),
      pcieuserphystatusrst_out(0) => NLW_inst_pcieuserphystatusrst_out_UNCONNECTED(0),
      pcieuserratedone_in(0) => '0',
      pcieuserratestart_out(0) => NLW_inst_pcieuserratestart_out_UNCONNECTED(0),
      pcsrsvdin2_in(0) => '0',
      pcsrsvdin_in(15 downto 0) => B"0000000000000000",
      pcsrsvdout_out(15 downto 0) => NLW_inst_pcsrsvdout_out_UNCONNECTED(15 downto 0),
      phystatus_out(0) => NLW_inst_phystatus_out_UNCONNECTED(0),
      pinrsrvdas_out(15 downto 0) => NLW_inst_pinrsrvdas_out_UNCONNECTED(15 downto 0),
      pmarsvd0_in(7 downto 0) => B"00000000",
      pmarsvd1_in(7 downto 0) => B"00000000",
      pmarsvdin_in(0) => '0',
      pmarsvdout0_out(7 downto 0) => NLW_inst_pmarsvdout0_out_UNCONNECTED(7 downto 0),
      pmarsvdout1_out(7 downto 0) => NLW_inst_pmarsvdout1_out_UNCONNECTED(7 downto 0),
      powerpresent_out(0) => NLW_inst_powerpresent_out_UNCONNECTED(0),
      qpll0clk_in(0) => qpll0clk_in(0),
      qpll0clkrsvd0_in(0) => '0',
      qpll0clkrsvd1_in(0) => '0',
      qpll0fbclklost_out(0) => NLW_inst_qpll0fbclklost_out_UNCONNECTED(0),
      qpll0fbdiv_in(7 downto 0) => B"00000000",
      qpll0freqlock_in(0) => '0',
      qpll0lock_out(0) => NLW_inst_qpll0lock_out_UNCONNECTED(0),
      qpll0lockdetclk_in(0) => '0',
      qpll0locken_in(0) => '1',
      qpll0outclk_out(0) => NLW_inst_qpll0outclk_out_UNCONNECTED(0),
      qpll0outrefclk_out(0) => NLW_inst_qpll0outrefclk_out_UNCONNECTED(0),
      qpll0pd_in(0) => '0',
      qpll0refclk_in(0) => qpll0refclk_in(0),
      qpll0refclklost_out(0) => NLW_inst_qpll0refclklost_out_UNCONNECTED(0),
      qpll0refclksel_in(2 downto 0) => B"001",
      qpll0reset_in(0) => '0',
      qpll1clk_in(0) => qpll1clk_in(0),
      qpll1clkrsvd0_in(0) => '0',
      qpll1clkrsvd1_in(0) => '0',
      qpll1fbclklost_out(0) => NLW_inst_qpll1fbclklost_out_UNCONNECTED(0),
      qpll1fbdiv_in(7 downto 0) => B"00000000",
      qpll1freqlock_in(0) => '0',
      qpll1lock_out(0) => NLW_inst_qpll1lock_out_UNCONNECTED(0),
      qpll1lockdetclk_in(0) => '0',
      qpll1locken_in(0) => '0',
      qpll1outclk_out(0) => NLW_inst_qpll1outclk_out_UNCONNECTED(0),
      qpll1outrefclk_out(0) => NLW_inst_qpll1outrefclk_out_UNCONNECTED(0),
      qpll1pd_in(0) => '1',
      qpll1refclk_in(0) => qpll1refclk_in(0),
      qpll1refclklost_out(0) => NLW_inst_qpll1refclklost_out_UNCONNECTED(0),
      qpll1refclksel_in(2 downto 0) => B"001",
      qpll1reset_in(0) => '1',
      qplldmonitor0_out(7 downto 0) => NLW_inst_qplldmonitor0_out_UNCONNECTED(7 downto 0),
      qplldmonitor1_out(7 downto 0) => NLW_inst_qplldmonitor1_out_UNCONNECTED(7 downto 0),
      qpllrsvd1_in(7 downto 0) => B"00000000",
      qpllrsvd2_in(4 downto 0) => B"00000",
      qpllrsvd3_in(4 downto 0) => B"00000",
      qpllrsvd4_in(7 downto 0) => B"00000000",
      rcalenb_in(0) => '1',
      refclkoutmonitor0_out(0) => NLW_inst_refclkoutmonitor0_out_UNCONNECTED(0),
      refclkoutmonitor1_out(0) => NLW_inst_refclkoutmonitor1_out_UNCONNECTED(0),
      resetexception_out(0) => NLW_inst_resetexception_out_UNCONNECTED(0),
      resetovrd_in(0) => '0',
      rstclkentx_in(0) => '0',
      rx8b10ben_in(0) => '0',
      rxafecfoken_in(0) => '1',
      rxbufreset_in(0) => '0',
      rxbufstatus_out(2 downto 0) => NLW_inst_rxbufstatus_out_UNCONNECTED(2 downto 0),
      rxbyteisaligned_out(0) => NLW_inst_rxbyteisaligned_out_UNCONNECTED(0),
      rxbyterealign_out(0) => NLW_inst_rxbyterealign_out_UNCONNECTED(0),
      rxcdrfreqreset_in(0) => '0',
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxcdrovrden_in(0) => '0',
      rxcdrphdone_out(0) => NLW_inst_rxcdrphdone_out_UNCONNECTED(0),
      rxcdrreset_in(0) => '0',
      rxcdrresetrsv_in(0) => '0',
      rxchanbondseq_out(0) => NLW_inst_rxchanbondseq_out_UNCONNECTED(0),
      rxchanisaligned_out(0) => NLW_inst_rxchanisaligned_out_UNCONNECTED(0),
      rxchanrealign_out(0) => NLW_inst_rxchanrealign_out_UNCONNECTED(0),
      rxchbonden_in(0) => '0',
      rxchbondi_in(4 downto 0) => B"00000",
      rxchbondlevel_in(2 downto 0) => B"000",
      rxchbondmaster_in(0) => '0',
      rxchbondo_out(4 downto 0) => NLW_inst_rxchbondo_out_UNCONNECTED(4 downto 0),
      rxchbondslave_in(0) => '0',
      rxckcaldone_out(0) => NLW_inst_rxckcaldone_out_UNCONNECTED(0),
      rxckcalreset_in(0) => '0',
      rxckcalstart_in(6 downto 0) => B"0000000",
      rxclkcorcnt_out(1 downto 0) => NLW_inst_rxclkcorcnt_out_UNCONNECTED(1 downto 0),
      rxcominitdet_out(0) => NLW_inst_rxcominitdet_out_UNCONNECTED(0),
      rxcommadet_out(0) => NLW_inst_rxcommadet_out_UNCONNECTED(0),
      rxcommadeten_in(0) => '0',
      rxcomsasdet_out(0) => NLW_inst_rxcomsasdet_out_UNCONNECTED(0),
      rxcomwakedet_out(0) => NLW_inst_rxcomwakedet_out_UNCONNECTED(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => NLW_inst_rxctrl2_out_UNCONNECTED(7 downto 0),
      rxctrl3_out(7 downto 0) => NLW_inst_rxctrl3_out_UNCONNECTED(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => NLW_inst_rxdataextendrsvd_out_UNCONNECTED(7 downto 0),
      rxdatavalid_out(1 downto 0) => NLW_inst_rxdatavalid_out_UNCONNECTED(1 downto 0),
      rxdccforcestart_in(0) => '0',
      rxdfeagcctrl_in(0) => '0',
      rxdfeagchold_in(0) => '0',
      rxdfeagcovrden_in(0) => '0',
      rxdfecfokfcnum_in(3 downto 0) => B"1101",
      rxdfecfokfen_in(0) => '0',
      rxdfecfokfpulse_in(0) => '0',
      rxdfecfokhold_in(0) => '0',
      rxdfecfokovren_in(0) => '0',
      rxdfekhhold_in(0) => '0',
      rxdfekhovrden_in(0) => '0',
      rxdfelfhold_in(0) => '0',
      rxdfelfovrden_in(0) => '0',
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => '0',
      rxdfetap10ovrden_in(0) => '0',
      rxdfetap11hold_in(0) => '0',
      rxdfetap11ovrden_in(0) => '0',
      rxdfetap12hold_in(0) => '0',
      rxdfetap12ovrden_in(0) => '0',
      rxdfetap13hold_in(0) => '0',
      rxdfetap13ovrden_in(0) => '0',
      rxdfetap14hold_in(0) => '0',
      rxdfetap14ovrden_in(0) => '0',
      rxdfetap15hold_in(0) => '0',
      rxdfetap15ovrden_in(0) => '0',
      rxdfetap2hold_in(0) => '0',
      rxdfetap2ovrden_in(0) => '0',
      rxdfetap3hold_in(0) => '0',
      rxdfetap3ovrden_in(0) => '0',
      rxdfetap4hold_in(0) => '0',
      rxdfetap4ovrden_in(0) => '0',
      rxdfetap5hold_in(0) => '0',
      rxdfetap5ovrden_in(0) => '0',
      rxdfetap6hold_in(0) => '0',
      rxdfetap6ovrden_in(0) => '0',
      rxdfetap7hold_in(0) => '0',
      rxdfetap7ovrden_in(0) => '0',
      rxdfetap8hold_in(0) => '0',
      rxdfetap8ovrden_in(0) => '0',
      rxdfetap9hold_in(0) => '0',
      rxdfetap9ovrden_in(0) => '0',
      rxdfeuthold_in(0) => '0',
      rxdfeutovrden_in(0) => '0',
      rxdfevphold_in(0) => '0',
      rxdfevpovrden_in(0) => '0',
      rxdfevsen_in(0) => '0',
      rxdfexyden_in(0) => '1',
      rxdlybypass_in(0) => '1',
      rxdlyen_in(0) => '0',
      rxdlyovrden_in(0) => '0',
      rxdlysreset_in(0) => '0',
      rxdlysresetdone_out(0) => NLW_inst_rxdlysresetdone_out_UNCONNECTED(0),
      rxelecidle_out(0) => NLW_inst_rxelecidle_out_UNCONNECTED(0),
      rxelecidlemode_in(1 downto 0) => B"11",
      rxeqtraining_in(0) => '0',
      rxgearboxslip_in(0) => '0',
      rxheader_out(5 downto 0) => NLW_inst_rxheader_out_UNCONNECTED(5 downto 0),
      rxheadervalid_out(1 downto 0) => NLW_inst_rxheadervalid_out_UNCONNECTED(1 downto 0),
      rxlatclk_in(0) => '0',
      rxlfpstresetdet_out(0) => NLW_inst_rxlfpstresetdet_out_UNCONNECTED(0),
      rxlfpsu2lpexitdet_out(0) => NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED(0),
      rxlfpsu3wakedet_out(0) => NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => '0',
      rxlpmgcovrden_in(0) => '0',
      rxlpmhfhold_in(0) => '0',
      rxlpmhfovrden_in(0) => '0',
      rxlpmlfhold_in(0) => '0',
      rxlpmlfklovrden_in(0) => '0',
      rxlpmoshold_in(0) => '0',
      rxlpmosovrden_in(0) => '0',
      rxmcommaalignen_in(0) => '0',
      rxmonitorout_out(7 downto 0) => NLW_inst_rxmonitorout_out_UNCONNECTED(7 downto 0),
      rxmonitorsel_in(1 downto 0) => B"00",
      rxoobreset_in(0) => '0',
      rxoscalreset_in(0) => '0',
      rxoshold_in(0) => '0',
      rxosintcfg_in(0) => '0',
      rxosintdone_out(0) => NLW_inst_rxosintdone_out_UNCONNECTED(0),
      rxosinten_in(0) => '0',
      rxosinthold_in(0) => '0',
      rxosintovrden_in(0) => '0',
      rxosintstarted_out(0) => NLW_inst_rxosintstarted_out_UNCONNECTED(0),
      rxosintstrobe_in(0) => '0',
      rxosintstrobedone_out(0) => NLW_inst_rxosintstrobedone_out_UNCONNECTED(0),
      rxosintstrobestarted_out(0) => NLW_inst_rxosintstrobestarted_out_UNCONNECTED(0),
      rxosinttestovrden_in(0) => '0',
      rxosovrden_in(0) => '0',
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => NLW_inst_rxoutclkfabric_out_UNCONNECTED(0),
      rxoutclkpcs_out(0) => NLW_inst_rxoutclkpcs_out_UNCONNECTED(0),
      rxoutclksel_in(2 downto 0) => B"010",
      rxpcommaalignen_in(0) => '0',
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => '0',
      rxphaligndone_out(0) => NLW_inst_rxphaligndone_out_UNCONNECTED(0),
      rxphalignen_in(0) => '0',
      rxphalignerr_out(0) => NLW_inst_rxphalignerr_out_UNCONNECTED(0),
      rxphdlypd_in(0) => '1',
      rxphdlyreset_in(0) => '0',
      rxphovrden_in(0) => '0',
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxprogdivreset_in(0) => rxprogdivreset_in(0),
      rxqpien_in(0) => '0',
      rxqpisenn_out(0) => NLW_inst_rxqpisenn_out_UNCONNECTED(0),
      rxqpisenp_out(0) => NLW_inst_rxqpisenp_out_UNCONNECTED(0),
      rxrate_in(2 downto 0) => B"000",
      rxratedone_out(0) => NLW_inst_rxratedone_out_UNCONNECTED(0),
      rxratemode_in(0) => '0',
      rxrecclk0_sel_out(0) => NLW_inst_rxrecclk0_sel_out_UNCONNECTED(0),
      rxrecclk0sel_out(1 downto 0) => NLW_inst_rxrecclk0sel_out_UNCONNECTED(1 downto 0),
      rxrecclk1_sel_out(0) => NLW_inst_rxrecclk1_sel_out_UNCONNECTED(0),
      rxrecclk1sel_out(1 downto 0) => NLW_inst_rxrecclk1sel_out_UNCONNECTED(1 downto 0),
      rxrecclkout_out(0) => NLW_inst_rxrecclkout_out_UNCONNECTED(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxslide_in(0) => '0',
      rxsliderdy_out(0) => NLW_inst_rxsliderdy_out_UNCONNECTED(0),
      rxslipdone_out(0) => NLW_inst_rxslipdone_out_UNCONNECTED(0),
      rxslipoutclk_in(0) => '0',
      rxslipoutclkrdy_out(0) => NLW_inst_rxslipoutclkrdy_out_UNCONNECTED(0),
      rxslippma_in(0) => '0',
      rxslippmardy_out(0) => NLW_inst_rxslippmardy_out_UNCONNECTED(0),
      rxstartofseq_out(1 downto 0) => NLW_inst_rxstartofseq_out_UNCONNECTED(1 downto 0),
      rxstatus_out(2 downto 0) => NLW_inst_rxstatus_out_UNCONNECTED(2 downto 0),
      rxsyncallin_in(0) => '0',
      rxsyncdone_out(0) => NLW_inst_rxsyncdone_out_UNCONNECTED(0),
      rxsyncin_in(0) => '0',
      rxsyncmode_in(0) => '0',
      rxsyncout_out(0) => NLW_inst_rxsyncout_out_UNCONNECTED(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxtermination_in(0) => '0',
      rxuserrdy_in(0) => rxuserrdy_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => NLW_inst_rxvalid_out_UNCONNECTED(0),
      sdm0data_in(24 downto 0) => B"0000000000000000000000000",
      sdm0finalout_out(3 downto 0) => NLW_inst_sdm0finalout_out_UNCONNECTED(3 downto 0),
      sdm0reset_in(0) => '0',
      sdm0testdata_out(14 downto 0) => NLW_inst_sdm0testdata_out_UNCONNECTED(14 downto 0),
      sdm0toggle_in(0) => '0',
      sdm0width_in(1 downto 0) => B"00",
      sdm1data_in(24 downto 0) => B"0000000000000000000000000",
      sdm1finalout_out(3 downto 0) => NLW_inst_sdm1finalout_out_UNCONNECTED(3 downto 0),
      sdm1reset_in(0) => '0',
      sdm1testdata_out(14 downto 0) => NLW_inst_sdm1testdata_out_UNCONNECTED(14 downto 0),
      sdm1toggle_in(0) => '0',
      sdm1width_in(1 downto 0) => B"00",
      sigvalidclk_in(0) => '0',
      tcongpi_in(0) => '0',
      tcongpo_out(0) => NLW_inst_tcongpo_out_UNCONNECTED(0),
      tconpowerup_in(0) => '0',
      tconreset_in(0) => '0',
      tconrsvdin1_in(0) => '0',
      tconrsvdout0_out(0) => NLW_inst_tconrsvdout0_out_UNCONNECTED(0),
      tstin_in(19 downto 0) => B"00000000000000000000",
      tx8b10bbypass_in(7 downto 0) => B"00000000",
      tx8b10ben_in(0) => '0',
      txbufdiffctrl_in(0) => '0',
      txbufstatus_out(1 downto 0) => NLW_inst_txbufstatus_out_UNCONNECTED(1 downto 0),
      txcomfinish_out(0) => NLW_inst_txcomfinish_out_UNCONNECTED(0),
      txcominit_in(0) => '0',
      txcomsas_in(0) => '0',
      txcomwake_in(0) => '0',
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => B"00000000",
      txdata_in(127 downto 0) => txdata_in(127 downto 0),
      txdataextendrsvd_in(7 downto 0) => B"00000000",
      txdccdone_out(0) => NLW_inst_txdccdone_out_UNCONNECTED(0),
      txdccforcestart_in(0) => '0',
      txdccreset_in(0) => '0',
      txdeemph_in(1 downto 0) => B"00",
      txdetectrx_in(0) => '0',
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txdiffpd_in(0) => '0',
      txdlybypass_in(0) => '1',
      txdlyen_in(0) => '0',
      txdlyhold_in(0) => '0',
      txdlyovrden_in(0) => '0',
      txdlysreset_in(0) => '0',
      txdlysresetdone_out(0) => NLW_inst_txdlysresetdone_out_UNCONNECTED(0),
      txdlyupdown_in(0) => '0',
      txelecidle_in(0) => txelecidle_in(0),
      txelforcestart_in(0) => '0',
      txheader_in(5 downto 0) => B"000000",
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => '0',
      txlfpstreset_in(0) => '0',
      txlfpsu2lpexit_in(0) => '0',
      txlfpsu3wake_in(0) => '0',
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => B"000",
      txmuxdcdexhold_in(0) => '0',
      txmuxdcdorwren_in(0) => '0',
      txoneszeros_in(0) => '0',
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => NLW_inst_txoutclkfabric_out_UNCONNECTED(0),
      txoutclkpcs_out(0) => NLW_inst_txoutclkpcs_out_UNCONNECTED(0),
      txoutclksel_in(2 downto 0) => B"101",
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => '0',
      txphaligndone_out(0) => NLW_inst_txphaligndone_out_UNCONNECTED(0),
      txphalignen_in(0) => '0',
      txphdlypd_in(0) => '1',
      txphdlyreset_in(0) => '0',
      txphdlytstclk_in(0) => '0',
      txphinit_in(0) => '0',
      txphinitdone_out(0) => NLW_inst_txphinitdone_out_UNCONNECTED(0),
      txphovrden_in(0) => '0',
      txpippmen_in(0) => '0',
      txpippmovrden_in(0) => '0',
      txpippmpd_in(0) => '0',
      txpippmsel_in(0) => '1',
      txpippmstepsize_in(4 downto 0) => B"00000",
      txpisopd_in(0) => '0',
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txpostcursorinv_in(0) => '0',
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprecursorinv_in(0) => '0',
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_in(0) => txprogdivreset_in(0),
      txqpibiasen_in(0) => '0',
      txqpisenn_out(0) => NLW_inst_txqpisenn_out_UNCONNECTED(0),
      txqpisenp_out(0) => NLW_inst_txqpisenp_out_UNCONNECTED(0),
      txqpistrongpdown_in(0) => '0',
      txqpiweakpup_in(0) => '0',
      txrate_in(2 downto 0) => B"000",
      txratedone_out(0) => NLW_inst_txratedone_out_UNCONNECTED(0),
      txratemode_in(0) => '0',
      txresetdone_out(0) => txresetdone_out(0),
      txsequence_in(6 downto 0) => B"0000000",
      txswing_in(0) => '0',
      txsyncallin_in(0) => '0',
      txsyncdone_out(0) => NLW_inst_txsyncdone_out_UNCONNECTED(0),
      txsyncin_in(0) => '0',
      txsyncmode_in(0) => '0',
      txsyncout_out(0) => NLW_inst_txsyncout_out_UNCONNECTED(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txuserrdy_in(0) => txuserrdy_in(0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0),
      ubcfgstreamen_in(0) => '0',
      ubdaddr_out(15 downto 0) => NLW_inst_ubdaddr_out_UNCONNECTED(15 downto 0),
      ubden_out(0) => NLW_inst_ubden_out_UNCONNECTED(0),
      ubdi_out(15 downto 0) => NLW_inst_ubdi_out_UNCONNECTED(15 downto 0),
      ubdo_in(15 downto 0) => B"0000000000000000",
      ubdrdy_in(0) => '0',
      ubdwe_out(0) => NLW_inst_ubdwe_out_UNCONNECTED(0),
      ubenable_in(0) => '0',
      ubgpi_in(1 downto 0) => B"00",
      ubintr_in(1 downto 0) => B"00",
      ubiolmbrst_in(0) => '0',
      ubmbrst_in(0) => '0',
      ubmdmcapture_in(0) => '0',
      ubmdmdbgrst_in(0) => '0',
      ubmdmdbgupdate_in(0) => '0',
      ubmdmregen_in(3 downto 0) => B"0000",
      ubmdmshift_in(0) => '0',
      ubmdmsysrst_in(0) => '0',
      ubmdmtck_in(0) => '0',
      ubmdmtdi_in(0) => '0',
      ubmdmtdo_out(0) => NLW_inst_ubmdmtdo_out_UNCONNECTED(0),
      ubrsvdout_out(0) => NLW_inst_ubrsvdout_out_UNCONNECTED(0),
      ubtxuart_out(0) => NLW_inst_ubtxuart_out_UNCONNECTED(0)
    );
end STRUCTURE;
