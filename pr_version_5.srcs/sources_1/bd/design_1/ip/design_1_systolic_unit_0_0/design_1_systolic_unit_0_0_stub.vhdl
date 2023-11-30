-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Nov 29 15:45:11 2023
-- Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jay/Kanish/pr_version_5/pr_version_5.srcs/sources_1/bd/design_1/ip/design_1_systolic_unit_0_0/design_1_systolic_unit_0_0_stub.vhdl
-- Design      : design_1_systolic_unit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_systolic_unit_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    left_inputs : in STD_LOGIC_VECTOR ( 79 downto 0 );
    top_inputs : in STD_LOGIC_VECTOR ( 79 downto 0 );
    o_ccu_output1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ccu_output2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ccu_output3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_systolic_unit_0_0;

architecture stub of design_1_systolic_unit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_data_valid,i_enable,left_inputs[79:0],top_inputs[79:0],o_ccu_output1[15:0],o_ccu_output2[15:0],o_ccu_output3[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "systolic_unit,Vivado 2019.1";
begin
end;
