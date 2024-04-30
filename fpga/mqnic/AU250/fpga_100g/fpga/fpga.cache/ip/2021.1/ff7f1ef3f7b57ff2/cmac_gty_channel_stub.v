// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 19 07:37:02 2023
// Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cmac_gty_channel_stub.v
// Design      : cmac_gty_channel
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu250-figd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cmac_gty_channel_gtwizard_top,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(gtwiz_userclk_tx_active_in, 
  gtwiz_userclk_rx_active_in, gtwiz_reset_tx_done_in, gtwiz_reset_rx_done_in, drpaddr_in, 
  drpclk_in, drpdi_in, drpen_in, drpwe_in, eyescanreset_in, gtrxreset_in, gttxreset_in, 
  gtyrxn_in, gtyrxp_in, loopback_in, qpll0clk_in, qpll0refclk_in, qpll1clk_in, qpll1refclk_in, 
  rxcdrhold_in, rxdfelpmreset_in, rxlpmen_in, rxpcsreset_in, rxpd_in, rxpllclksel_in, 
  rxpmareset_in, rxpolarity_in, rxprbscntreset_in, rxprbssel_in, rxprogdivreset_in, 
  rxsysclksel_in, rxuserrdy_in, rxusrclk_in, rxusrclk2_in, txctrl0_in, txctrl1_in, txdata_in, 
  txdiffctrl_in, txelecidle_in, txinhibit_in, txmaincursor_in, txpcsreset_in, txpd_in, 
  txpdelecidlemode_in, txpllclksel_in, txpmareset_in, txpolarity_in, txpostcursor_in, 
  txprbsforceerr_in, txprbssel_in, txprecursor_in, txprogdivreset_in, txsysclksel_in, 
  txuserrdy_in, txusrclk_in, txusrclk2_in, dmonitorout_out, drpdo_out, drprdy_out, 
  eyescandataerror_out, gtpowergood_out, gtytxn_out, gtytxp_out, rxcdrlock_out, rxctrl0_out, 
  rxctrl1_out, rxdata_out, rxoutclk_out, rxpmaresetdone_out, rxprbserr_out, rxprbslocked_out, 
  rxprgdivresetdone_out, rxresetdone_out, txoutclk_out, txpmaresetdone_out, 
  txprgdivresetdone_out, txresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_active_in[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_reset_tx_done_in[0:0],gtwiz_reset_rx_done_in[0:0],drpaddr_in[9:0],drpclk_in[0:0],drpdi_in[15:0],drpen_in[0:0],drpwe_in[0:0],eyescanreset_in[0:0],gtrxreset_in[0:0],gttxreset_in[0:0],gtyrxn_in[0:0],gtyrxp_in[0:0],loopback_in[2:0],qpll0clk_in[0:0],qpll0refclk_in[0:0],qpll1clk_in[0:0],qpll1refclk_in[0:0],rxcdrhold_in[0:0],rxdfelpmreset_in[0:0],rxlpmen_in[0:0],rxpcsreset_in[0:0],rxpd_in[1:0],rxpllclksel_in[1:0],rxpmareset_in[0:0],rxpolarity_in[0:0],rxprbscntreset_in[0:0],rxprbssel_in[3:0],rxprogdivreset_in[0:0],rxsysclksel_in[1:0],rxuserrdy_in[0:0],rxusrclk_in[0:0],rxusrclk2_in[0:0],txctrl0_in[15:0],txctrl1_in[15:0],txdata_in[127:0],txdiffctrl_in[4:0],txelecidle_in[0:0],txinhibit_in[0:0],txmaincursor_in[6:0],txpcsreset_in[0:0],txpd_in[1:0],txpdelecidlemode_in[0:0],txpllclksel_in[1:0],txpmareset_in[0:0],txpolarity_in[0:0],txpostcursor_in[4:0],txprbsforceerr_in[0:0],txprbssel_in[3:0],txprecursor_in[4:0],txprogdivreset_in[0:0],txsysclksel_in[1:0],txuserrdy_in[0:0],txusrclk_in[0:0],txusrclk2_in[0:0],dmonitorout_out[15:0],drpdo_out[15:0],drprdy_out[0:0],eyescandataerror_out[0:0],gtpowergood_out[0:0],gtytxn_out[0:0],gtytxp_out[0:0],rxcdrlock_out[0:0],rxctrl0_out[15:0],rxctrl1_out[15:0],rxdata_out[127:0],rxoutclk_out[0:0],rxpmaresetdone_out[0:0],rxprbserr_out[0:0],rxprbslocked_out[0:0],rxprgdivresetdone_out[0:0],rxresetdone_out[0:0],txoutclk_out[0:0],txpmaresetdone_out[0:0],txprgdivresetdone_out[0:0],txresetdone_out[0:0]" */;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_tx_done_in;
  input [0:0]gtwiz_reset_rx_done_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]gtrxreset_in;
  input [0:0]gttxreset_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxprogdivreset_in;
  input [1:0]rxsysclksel_in;
  input [0:0]rxuserrdy_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [127:0]txdata_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [6:0]txmaincursor_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [1:0]txpllclksel_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txprogdivreset_in;
  input [1:0]txsysclksel_in;
  input [0:0]txuserrdy_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]rxcdrlock_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [127:0]rxdata_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txresetdone_out;
endmodule
