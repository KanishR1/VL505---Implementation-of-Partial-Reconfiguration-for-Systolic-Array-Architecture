-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Nov 29 15:44:44 2023
-- Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    top_inputs : out STD_LOGIC_VECTOR ( 0 to 0 );
    done : in STD_LOGIC;
    i_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
begin
\top_inputs_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => done,
      Q => top_inputs(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_clk : in STD_LOGIC;
    pl_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    done : in STD_LOGIC;
    pl_act_data : out STD_LOGIC_VECTOR ( 27 downto 0 );
    top_inputs : out STD_LOGIC_VECTOR ( 79 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^pl_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^top_inputs\ : STD_LOGIC_VECTOR ( 32 to 32 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  \^pl_data\(31 downto 4) <= pl_data(31 downto 4);
  pl_act_data(27 downto 0) <= \^pl_data\(31 downto 4);
  top_inputs(79) <= \<const0>\;
  top_inputs(78) <= \<const0>\;
  top_inputs(77) <= \<const0>\;
  top_inputs(76) <= \<const0>\;
  top_inputs(75) <= \<const0>\;
  top_inputs(74) <= \<const0>\;
  top_inputs(73) <= \<const0>\;
  top_inputs(72) <= \<const0>\;
  top_inputs(71) <= \^top_inputs\(32);
  top_inputs(70) <= \^top_inputs\(32);
  top_inputs(69) <= \^top_inputs\(32);
  top_inputs(68) <= \^top_inputs\(32);
  top_inputs(67) <= \^top_inputs\(32);
  top_inputs(66) <= \^top_inputs\(32);
  top_inputs(65) <= \^top_inputs\(32);
  top_inputs(64) <= \^top_inputs\(32);
  top_inputs(63) <= \<const0>\;
  top_inputs(62) <= \<const0>\;
  top_inputs(61) <= \<const0>\;
  top_inputs(60) <= \<const0>\;
  top_inputs(59) <= \<const0>\;
  top_inputs(58) <= \<const0>\;
  top_inputs(57) <= \<const0>\;
  top_inputs(56) <= \<const0>\;
  top_inputs(55) <= \^top_inputs\(32);
  top_inputs(54) <= \^top_inputs\(32);
  top_inputs(53) <= \^top_inputs\(32);
  top_inputs(52) <= \^top_inputs\(32);
  top_inputs(51) <= \^top_inputs\(32);
  top_inputs(50) <= \^top_inputs\(32);
  top_inputs(49) <= \^top_inputs\(32);
  top_inputs(48) <= \<const0>\;
  top_inputs(47) <= \<const0>\;
  top_inputs(46) <= \<const0>\;
  top_inputs(45) <= \<const0>\;
  top_inputs(44) <= \<const0>\;
  top_inputs(43) <= \<const0>\;
  top_inputs(42) <= \<const0>\;
  top_inputs(41) <= \<const0>\;
  top_inputs(40) <= \<const0>\;
  top_inputs(39) <= \^top_inputs\(32);
  top_inputs(38) <= \^top_inputs\(32);
  top_inputs(37) <= \^top_inputs\(32);
  top_inputs(36) <= \^top_inputs\(32);
  top_inputs(35) <= \^top_inputs\(32);
  top_inputs(34) <= \^top_inputs\(32);
  top_inputs(33) <= \^top_inputs\(32);
  top_inputs(32) <= \^top_inputs\(32);
  top_inputs(31) <= \<const0>\;
  top_inputs(30) <= \<const0>\;
  top_inputs(29) <= \<const0>\;
  top_inputs(28) <= \<const0>\;
  top_inputs(27) <= \<const0>\;
  top_inputs(26) <= \<const0>\;
  top_inputs(25) <= \<const0>\;
  top_inputs(24) <= \<const0>\;
  top_inputs(23) <= \<const0>\;
  top_inputs(22) <= \<const0>\;
  top_inputs(21) <= \<const0>\;
  top_inputs(20) <= \<const0>\;
  top_inputs(19) <= \<const0>\;
  top_inputs(18) <= \<const0>\;
  top_inputs(17) <= \<const0>\;
  top_inputs(16) <= \<const0>\;
  top_inputs(15) <= \<const0>\;
  top_inputs(14) <= \<const0>\;
  top_inputs(13) <= \<const0>\;
  top_inputs(12) <= \<const0>\;
  top_inputs(11) <= \<const0>\;
  top_inputs(10) <= \<const0>\;
  top_inputs(9) <= \<const0>\;
  top_inputs(8) <= \<const0>\;
  top_inputs(7) <= \<const0>\;
  top_inputs(6) <= \<const0>\;
  top_inputs(5) <= \<const0>\;
  top_inputs(4) <= \<const0>\;
  top_inputs(3) <= \<const0>\;
  top_inputs(2) <= \<const0>\;
  top_inputs(1) <= \<const0>\;
  top_inputs(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      done => done,
      i_clk => i_clk,
      top_inputs(0) => \^top_inputs\(32)
    );
end STRUCTURE;
