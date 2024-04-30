-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Dec 19 07:38:21 2023
-- Host        : gpu11 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/caogang/corundum/fpga/mqnic/AU250/fpga_100g/fpga/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_46/bd_43c9_freerun_counter_0_stub.vhdl
-- Design      : bd_43c9_freerun_counter_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu250-figd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_43c9_freerun_counter_0 is
  Port ( 
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end bd_43c9_freerun_counter_0;

architecture stub of bd_43c9_freerun_counter_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,Q[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_14,Vivado 2021.1";
begin
end;
