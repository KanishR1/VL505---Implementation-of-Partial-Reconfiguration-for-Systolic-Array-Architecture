-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Nov 29 15:44:44 2023
-- Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_input_formatting_0_0_sim_netlist.vhdl
-- Design      : design_1_input_formatting_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_formatting is
  port (
    o_compute : out STD_LOGIC;
    o_left_inputs : out STD_LOGIC_VECTOR ( 44 downto 0 );
    i_clk : in STD_LOGIC;
    i_data_bram : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_formatting;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_formatting is
  signal \^o_compute\ : STD_LOGIC;
  signal \o_left_inputs[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_left_inputs[47]_i_2_n_0\ : STD_LOGIC;
  signal \o_left_inputs[63]_i_2_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_10_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_2_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_3_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_4_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_5_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_6_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_7_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_8_n_0\ : STD_LOGIC;
  signal \o_left_inputs[79]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 79 downto 16 );
  signal state : STD_LOGIC;
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_1\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal \state1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_1\ : STD_LOGIC;
  signal \state1_carry__1_n_2\ : STD_LOGIC;
  signal \state1_carry__1_n_3\ : STD_LOGIC;
  signal \state1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__2_n_0\ : STD_LOGIC;
  signal \state1_carry__2_n_1\ : STD_LOGIC;
  signal \state1_carry__2_n_2\ : STD_LOGIC;
  signal \state1_carry__2_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_i_5_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \state_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \state_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  o_compute <= \^o_compute\;
data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => '1',
      Q => \^o_compute\,
      R => '0'
    );
\o_left_inputs[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_compute\,
      I1 => \o_left_inputs[47]_i_2_n_0\,
      O => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(18),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(9),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(16)
    );
\o_left_inputs[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(19),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(10),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(17)
    );
\o_left_inputs[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(20),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(11),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(18)
    );
\o_left_inputs[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(21),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(12),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(19)
    );
\o_left_inputs[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(22),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(13),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(20)
    );
\o_left_inputs[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(23),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(14),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(21)
    );
\o_left_inputs[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(24),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(15),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(22)
    );
\o_left_inputs[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(25),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(16),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(23)
    );
\o_left_inputs[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => i_data_bram(26),
      I1 => \o_left_inputs[63]_i_2_n_0\,
      I2 => i_data_bram(17),
      I3 => \o_left_inputs[47]_i_2_n_0\,
      O => p_0_in(31)
    );
\o_left_inputs[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(0),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(9),
      I4 => i_data_bram(18),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(32)
    );
\o_left_inputs[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(1),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(10),
      I4 => i_data_bram(19),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(33)
    );
\o_left_inputs[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(2),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(11),
      I4 => i_data_bram(20),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(34)
    );
\o_left_inputs[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(3),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(12),
      I4 => i_data_bram(21),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(35)
    );
\o_left_inputs[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(4),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(13),
      I4 => i_data_bram(22),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(36)
    );
\o_left_inputs[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(5),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(14),
      I4 => i_data_bram(23),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(37)
    );
\o_left_inputs[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(6),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(15),
      I4 => i_data_bram(24),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(38)
    );
\o_left_inputs[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(7),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(16),
      I4 => i_data_bram(25),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(39)
    );
\o_left_inputs[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[47]_i_2_n_0\,
      I1 => i_data_bram(8),
      I2 => \o_left_inputs[63]_i_2_n_0\,
      I3 => i_data_bram(17),
      I4 => i_data_bram(26),
      I5 => \o_left_inputs[79]_i_2_n_0\,
      O => p_0_in(47)
    );
\o_left_inputs[47]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => state_reg(0),
      I1 => \o_left_inputs[79]_i_5_n_0\,
      I2 => \o_left_inputs[79]_i_6_n_0\,
      I3 => \o_left_inputs[79]_i_7_n_0\,
      I4 => state_reg(2),
      I5 => state_reg(1),
      O => \o_left_inputs[47]_i_2_n_0\
    );
\o_left_inputs[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(0),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(9),
      I4 => i_data_bram(18),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(48)
    );
\o_left_inputs[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(1),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(10),
      I4 => i_data_bram(19),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(49)
    );
\o_left_inputs[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(2),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(11),
      I4 => i_data_bram(20),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(50)
    );
\o_left_inputs[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(3),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(12),
      I4 => i_data_bram(21),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(51)
    );
\o_left_inputs[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(4),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(13),
      I4 => i_data_bram(22),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(52)
    );
\o_left_inputs[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(5),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(14),
      I4 => i_data_bram(23),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(53)
    );
\o_left_inputs[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(6),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(15),
      I4 => i_data_bram(24),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(54)
    );
\o_left_inputs[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(7),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(16),
      I4 => i_data_bram(25),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(55)
    );
\o_left_inputs[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[63]_i_2_n_0\,
      I1 => i_data_bram(8),
      I2 => \o_left_inputs[79]_i_2_n_0\,
      I3 => i_data_bram(17),
      I4 => i_data_bram(26),
      I5 => \o_left_inputs[79]_i_3_n_0\,
      O => p_0_in(63)
    );
\o_left_inputs[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => state_reg(0),
      I1 => \o_left_inputs[79]_i_5_n_0\,
      I2 => \o_left_inputs[79]_i_6_n_0\,
      I3 => \o_left_inputs[79]_i_7_n_0\,
      I4 => state_reg(2),
      I5 => state_reg(1),
      O => \o_left_inputs[63]_i_2_n_0\
    );
\o_left_inputs[64]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(0),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(9),
      I4 => i_data_bram(18),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(64)
    );
\o_left_inputs[65]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(1),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(10),
      I4 => i_data_bram(19),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(65)
    );
\o_left_inputs[66]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(2),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(11),
      I4 => i_data_bram(20),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(66)
    );
\o_left_inputs[67]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(3),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(12),
      I4 => i_data_bram(21),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(67)
    );
\o_left_inputs[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(4),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(13),
      I4 => i_data_bram(22),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(68)
    );
\o_left_inputs[69]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(5),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(14),
      I4 => i_data_bram(23),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(69)
    );
\o_left_inputs[70]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(6),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(15),
      I4 => i_data_bram(24),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(70)
    );
\o_left_inputs[71]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(7),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(16),
      I4 => i_data_bram(25),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(71)
    );
\o_left_inputs[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \o_left_inputs[79]_i_2_n_0\,
      I1 => i_data_bram(8),
      I2 => \o_left_inputs[79]_i_3_n_0\,
      I3 => i_data_bram(17),
      I4 => i_data_bram(26),
      I5 => \o_left_inputs[79]_i_4_n_0\,
      O => p_0_in(79)
    );
\o_left_inputs[79]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state_reg(11),
      I1 => state_reg(10),
      I2 => state_reg(9),
      I3 => state_reg(8),
      O => \o_left_inputs[79]_i_10_n_0\
    );
\o_left_inputs[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => state_reg(0),
      I1 => \o_left_inputs[79]_i_5_n_0\,
      I2 => \o_left_inputs[79]_i_6_n_0\,
      I3 => \o_left_inputs[79]_i_7_n_0\,
      I4 => state_reg(2),
      I5 => state_reg(1),
      O => \o_left_inputs[79]_i_2_n_0\
    );
\o_left_inputs[79]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => state_reg(0),
      I1 => \o_left_inputs[79]_i_5_n_0\,
      I2 => \o_left_inputs[79]_i_6_n_0\,
      I3 => \o_left_inputs[79]_i_7_n_0\,
      I4 => state_reg(2),
      I5 => state_reg(1),
      O => \o_left_inputs[79]_i_3_n_0\
    );
\o_left_inputs[79]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => state_reg(2),
      I1 => \o_left_inputs[79]_i_7_n_0\,
      I2 => \o_left_inputs[79]_i_6_n_0\,
      I3 => \o_left_inputs[79]_i_5_n_0\,
      I4 => state_reg(1),
      I5 => state_reg(0),
      O => \o_left_inputs[79]_i_4_n_0\
    );
\o_left_inputs[79]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => state_reg(20),
      I1 => state_reg(21),
      I2 => state_reg(22),
      I3 => state_reg(23),
      I4 => \o_left_inputs[79]_i_8_n_0\,
      O => \o_left_inputs[79]_i_5_n_0\
    );
\o_left_inputs[79]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => state_reg(12),
      I1 => state_reg(13),
      I2 => state_reg(14),
      I3 => state_reg(15),
      I4 => \o_left_inputs[79]_i_9_n_0\,
      O => \o_left_inputs[79]_i_6_n_0\
    );
\o_left_inputs[79]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \o_left_inputs[79]_i_10_n_0\,
      I1 => state_reg(7),
      I2 => state_reg(6),
      I3 => state_reg(5),
      I4 => state_reg(4),
      I5 => state_reg(3),
      O => \o_left_inputs[79]_i_7_n_0\
    );
\o_left_inputs[79]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state_reg(27),
      I1 => state_reg(26),
      I2 => state_reg(25),
      I3 => state_reg(24),
      O => \o_left_inputs[79]_i_8_n_0\
    );
\o_left_inputs[79]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state_reg(19),
      I1 => state_reg(18),
      I2 => state_reg(17),
      I3 => state_reg(16),
      O => \o_left_inputs[79]_i_9_n_0\
    );
\o_left_inputs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(18),
      Q => o_left_inputs(0),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(26),
      Q => o_left_inputs(8),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(16),
      Q => o_left_inputs(9),
      R => '0'
    );
\o_left_inputs_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(17),
      Q => o_left_inputs(10),
      R => '0'
    );
\o_left_inputs_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(18),
      Q => o_left_inputs(11),
      R => '0'
    );
\o_left_inputs_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(19),
      Q => o_left_inputs(12),
      R => '0'
    );
\o_left_inputs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(19),
      Q => o_left_inputs(1),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(20),
      Q => o_left_inputs(13),
      R => '0'
    );
\o_left_inputs_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(21),
      Q => o_left_inputs(14),
      R => '0'
    );
\o_left_inputs_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(22),
      Q => o_left_inputs(15),
      R => '0'
    );
\o_left_inputs_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(23),
      Q => o_left_inputs(16),
      R => '0'
    );
\o_left_inputs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(20),
      Q => o_left_inputs(2),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(31),
      Q => o_left_inputs(17),
      R => '0'
    );
\o_left_inputs_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(32),
      Q => o_left_inputs(18),
      R => '0'
    );
\o_left_inputs_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(33),
      Q => o_left_inputs(19),
      R => '0'
    );
\o_left_inputs_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(34),
      Q => o_left_inputs(20),
      R => '0'
    );
\o_left_inputs_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(35),
      Q => o_left_inputs(21),
      R => '0'
    );
\o_left_inputs_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(36),
      Q => o_left_inputs(22),
      R => '0'
    );
\o_left_inputs_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(37),
      Q => o_left_inputs(23),
      R => '0'
    );
\o_left_inputs_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(38),
      Q => o_left_inputs(24),
      R => '0'
    );
\o_left_inputs_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(39),
      Q => o_left_inputs(25),
      R => '0'
    );
\o_left_inputs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(21),
      Q => o_left_inputs(3),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(47),
      Q => o_left_inputs(26),
      R => '0'
    );
\o_left_inputs_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(48),
      Q => o_left_inputs(27),
      R => '0'
    );
\o_left_inputs_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(49),
      Q => o_left_inputs(28),
      R => '0'
    );
\o_left_inputs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(22),
      Q => o_left_inputs(4),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(50),
      Q => o_left_inputs(29),
      R => '0'
    );
\o_left_inputs_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(51),
      Q => o_left_inputs(30),
      R => '0'
    );
\o_left_inputs_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(52),
      Q => o_left_inputs(31),
      R => '0'
    );
\o_left_inputs_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(53),
      Q => o_left_inputs(32),
      R => '0'
    );
\o_left_inputs_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(54),
      Q => o_left_inputs(33),
      R => '0'
    );
\o_left_inputs_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(55),
      Q => o_left_inputs(34),
      R => '0'
    );
\o_left_inputs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(23),
      Q => o_left_inputs(5),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(63),
      Q => o_left_inputs(35),
      R => '0'
    );
\o_left_inputs_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(64),
      Q => o_left_inputs(36),
      R => '0'
    );
\o_left_inputs_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(65),
      Q => o_left_inputs(37),
      R => '0'
    );
\o_left_inputs_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(66),
      Q => o_left_inputs(38),
      R => '0'
    );
\o_left_inputs_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(67),
      Q => o_left_inputs(39),
      R => '0'
    );
\o_left_inputs_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(68),
      Q => o_left_inputs(40),
      R => '0'
    );
\o_left_inputs_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(69),
      Q => o_left_inputs(41),
      R => '0'
    );
\o_left_inputs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(24),
      Q => o_left_inputs(6),
      R => \o_left_inputs[15]_i_1_n_0\
    );
\o_left_inputs_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(70),
      Q => o_left_inputs(42),
      R => '0'
    );
\o_left_inputs_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(71),
      Q => o_left_inputs(43),
      R => '0'
    );
\o_left_inputs_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => p_0_in(79),
      Q => o_left_inputs(44),
      R => '0'
    );
\o_left_inputs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^o_compute\,
      D => i_data_bram(25),
      Q => o_left_inputs(7),
      R => \o_left_inputs[15]_i_1_n_0\
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => state1_carry_i_1_n_0,
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_2_n_0,
      S(2) => state1_carry_i_3_n_0,
      S(1) => state1_carry_i_4_n_0,
      S(0) => state1_carry_i_5_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3) => \state1_carry__0_n_0\,
      CO(2) => \state1_carry__0_n_1\,
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__0_i_1_n_0\,
      S(2) => \state1_carry__0_i_2_n_0\,
      S(1) => \state1_carry__0_i_3_n_0\,
      S(0) => \state1_carry__0_i_4_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(14),
      I1 => state_reg(15),
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(12),
      I1 => state_reg(13),
      O => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(10),
      I1 => state_reg(11),
      O => \state1_carry__0_i_3_n_0\
    );
\state1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(8),
      I1 => state_reg(9),
      O => \state1_carry__0_i_4_n_0\
    );
\state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__0_n_0\,
      CO(3) => \state1_carry__1_n_0\,
      CO(2) => \state1_carry__1_n_1\,
      CO(1) => \state1_carry__1_n_2\,
      CO(0) => \state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__1_i_1_n_0\,
      S(2) => \state1_carry__1_i_2_n_0\,
      S(1) => \state1_carry__1_i_3_n_0\,
      S(0) => \state1_carry__1_i_4_n_0\
    );
\state1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(22),
      I1 => state_reg(23),
      O => \state1_carry__1_i_1_n_0\
    );
\state1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(20),
      I1 => state_reg(21),
      O => \state1_carry__1_i_2_n_0\
    );
\state1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(18),
      I1 => state_reg(19),
      O => \state1_carry__1_i_3_n_0\
    );
\state1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(16),
      I1 => state_reg(17),
      O => \state1_carry__1_i_4_n_0\
    );
\state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__1_n_0\,
      CO(3) => \state1_carry__2_n_0\,
      CO(2) => \state1_carry__2_n_1\,
      CO(1) => \state1_carry__2_n_2\,
      CO(0) => \state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => state_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_state1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__2_i_1_n_0\,
      S(2) => \state1_carry__2_i_2_n_0\,
      S(1) => \state1_carry__2_i_3_n_0\,
      S(0) => \state1_carry__2_i_4_n_0\
    );
\state1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(30),
      I1 => state_reg(31),
      O => \state1_carry__2_i_1_n_0\
    );
\state1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(28),
      I1 => state_reg(29),
      O => \state1_carry__2_i_2_n_0\
    );
\state1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(26),
      I1 => state_reg(27),
      O => \state1_carry__2_i_3_n_0\
    );
\state1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(24),
      I1 => state_reg(25),
      O => \state1_carry__2_i_4_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(1),
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(6),
      I1 => state_reg(7),
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(4),
      I1 => state_reg(5),
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(2),
      I1 => state_reg(3),
      O => state1_carry_i_4_n_0
    );
state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      O => state1_carry_i_5_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_compute\,
      I1 => \state1_carry__2_n_0\,
      O => state
    );
\state[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(0),
      O => \state[0]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[0]_i_2_n_7\,
      Q => state_reg(0),
      R => state
    );
\state_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state_reg[0]_i_2_n_0\,
      CO(2) => \state_reg[0]_i_2_n_1\,
      CO(1) => \state_reg[0]_i_2_n_2\,
      CO(0) => \state_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \state_reg[0]_i_2_n_4\,
      O(2) => \state_reg[0]_i_2_n_5\,
      O(1) => \state_reg[0]_i_2_n_6\,
      O(0) => \state_reg[0]_i_2_n_7\,
      S(3 downto 1) => state_reg(3 downto 1),
      S(0) => \state[0]_i_3_n_0\
    );
\state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[8]_i_1_n_5\,
      Q => state_reg(10),
      R => state
    );
\state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[8]_i_1_n_4\,
      Q => state_reg(11),
      R => state
    );
\state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[12]_i_1_n_7\,
      Q => state_reg(12),
      R => state
    );
\state_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[8]_i_1_n_0\,
      CO(3) => \state_reg[12]_i_1_n_0\,
      CO(2) => \state_reg[12]_i_1_n_1\,
      CO(1) => \state_reg[12]_i_1_n_2\,
      CO(0) => \state_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[12]_i_1_n_4\,
      O(2) => \state_reg[12]_i_1_n_5\,
      O(1) => \state_reg[12]_i_1_n_6\,
      O(0) => \state_reg[12]_i_1_n_7\,
      S(3 downto 0) => state_reg(15 downto 12)
    );
\state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[12]_i_1_n_6\,
      Q => state_reg(13),
      R => state
    );
\state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[12]_i_1_n_5\,
      Q => state_reg(14),
      R => state
    );
\state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[12]_i_1_n_4\,
      Q => state_reg(15),
      R => state
    );
\state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[16]_i_1_n_7\,
      Q => state_reg(16),
      R => state
    );
\state_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[12]_i_1_n_0\,
      CO(3) => \state_reg[16]_i_1_n_0\,
      CO(2) => \state_reg[16]_i_1_n_1\,
      CO(1) => \state_reg[16]_i_1_n_2\,
      CO(0) => \state_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[16]_i_1_n_4\,
      O(2) => \state_reg[16]_i_1_n_5\,
      O(1) => \state_reg[16]_i_1_n_6\,
      O(0) => \state_reg[16]_i_1_n_7\,
      S(3 downto 0) => state_reg(19 downto 16)
    );
\state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[16]_i_1_n_6\,
      Q => state_reg(17),
      R => state
    );
\state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[16]_i_1_n_5\,
      Q => state_reg(18),
      R => state
    );
\state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[16]_i_1_n_4\,
      Q => state_reg(19),
      R => state
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[0]_i_2_n_6\,
      Q => state_reg(1),
      R => state
    );
\state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[20]_i_1_n_7\,
      Q => state_reg(20),
      R => state
    );
\state_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[16]_i_1_n_0\,
      CO(3) => \state_reg[20]_i_1_n_0\,
      CO(2) => \state_reg[20]_i_1_n_1\,
      CO(1) => \state_reg[20]_i_1_n_2\,
      CO(0) => \state_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[20]_i_1_n_4\,
      O(2) => \state_reg[20]_i_1_n_5\,
      O(1) => \state_reg[20]_i_1_n_6\,
      O(0) => \state_reg[20]_i_1_n_7\,
      S(3 downto 0) => state_reg(23 downto 20)
    );
\state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[20]_i_1_n_6\,
      Q => state_reg(21),
      R => state
    );
\state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[20]_i_1_n_5\,
      Q => state_reg(22),
      R => state
    );
\state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[20]_i_1_n_4\,
      Q => state_reg(23),
      R => state
    );
\state_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[24]_i_1_n_7\,
      Q => state_reg(24),
      R => state
    );
\state_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[20]_i_1_n_0\,
      CO(3) => \state_reg[24]_i_1_n_0\,
      CO(2) => \state_reg[24]_i_1_n_1\,
      CO(1) => \state_reg[24]_i_1_n_2\,
      CO(0) => \state_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[24]_i_1_n_4\,
      O(2) => \state_reg[24]_i_1_n_5\,
      O(1) => \state_reg[24]_i_1_n_6\,
      O(0) => \state_reg[24]_i_1_n_7\,
      S(3 downto 0) => state_reg(27 downto 24)
    );
\state_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[24]_i_1_n_6\,
      Q => state_reg(25),
      R => state
    );
\state_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[24]_i_1_n_5\,
      Q => state_reg(26),
      R => state
    );
\state_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[24]_i_1_n_4\,
      Q => state_reg(27),
      R => state
    );
\state_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[28]_i_1_n_7\,
      Q => state_reg(28),
      R => state
    );
\state_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[24]_i_1_n_0\,
      CO(3) => \NLW_state_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \state_reg[28]_i_1_n_1\,
      CO(1) => \state_reg[28]_i_1_n_2\,
      CO(0) => \state_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[28]_i_1_n_4\,
      O(2) => \state_reg[28]_i_1_n_5\,
      O(1) => \state_reg[28]_i_1_n_6\,
      O(0) => \state_reg[28]_i_1_n_7\,
      S(3 downto 0) => state_reg(31 downto 28)
    );
\state_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[28]_i_1_n_6\,
      Q => state_reg(29),
      R => state
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[0]_i_2_n_5\,
      Q => state_reg(2),
      R => state
    );
\state_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[28]_i_1_n_5\,
      Q => state_reg(30),
      R => state
    );
\state_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[28]_i_1_n_4\,
      Q => state_reg(31),
      R => state
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[0]_i_2_n_4\,
      Q => state_reg(3),
      R => state
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[4]_i_1_n_7\,
      Q => state_reg(4),
      R => state
    );
\state_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[0]_i_2_n_0\,
      CO(3) => \state_reg[4]_i_1_n_0\,
      CO(2) => \state_reg[4]_i_1_n_1\,
      CO(1) => \state_reg[4]_i_1_n_2\,
      CO(0) => \state_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[4]_i_1_n_4\,
      O(2) => \state_reg[4]_i_1_n_5\,
      O(1) => \state_reg[4]_i_1_n_6\,
      O(0) => \state_reg[4]_i_1_n_7\,
      S(3 downto 0) => state_reg(7 downto 4)
    );
\state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[4]_i_1_n_6\,
      Q => state_reg(5),
      R => state
    );
\state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[4]_i_1_n_5\,
      Q => state_reg(6),
      R => state
    );
\state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[4]_i_1_n_4\,
      Q => state_reg(7),
      R => state
    );
\state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[8]_i_1_n_7\,
      Q => state_reg(8),
      R => state
    );
\state_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state_reg[4]_i_1_n_0\,
      CO(3) => \state_reg[8]_i_1_n_0\,
      CO(2) => \state_reg[8]_i_1_n_1\,
      CO(1) => \state_reg[8]_i_1_n_2\,
      CO(0) => \state_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \state_reg[8]_i_1_n_4\,
      O(2) => \state_reg[8]_i_1_n_5\,
      O(1) => \state_reg[8]_i_1_n_6\,
      O(0) => \state_reg[8]_i_1_n_7\,
      S(3 downto 0) => state_reg(11 downto 8)
    );
\state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => \^o_compute\,
      D => \state_reg[8]_i_1_n_6\,
      Q => state_reg(9),
      R => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    o_left_inputs : out STD_LOGIC_VECTOR ( 79 downto 0 );
    o_compute : out STD_LOGIC;
    i_data_bram : in STD_LOGIC_VECTOR ( 27 downto 0 );
    i_clk : in STD_LOGIC;
    i_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_input_formatting_0_0,input_formatting,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "input_formatting,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^o_left_inputs\ : STD_LOGIC_VECTOR ( 78 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  o_left_inputs(79) <= \^o_left_inputs\(78);
  o_left_inputs(78) <= \^o_left_inputs\(78);
  o_left_inputs(77) <= \^o_left_inputs\(78);
  o_left_inputs(76) <= \^o_left_inputs\(78);
  o_left_inputs(75) <= \^o_left_inputs\(78);
  o_left_inputs(74) <= \^o_left_inputs\(78);
  o_left_inputs(73) <= \^o_left_inputs\(78);
  o_left_inputs(72) <= \^o_left_inputs\(78);
  o_left_inputs(71 downto 64) <= \^o_left_inputs\(71 downto 64);
  o_left_inputs(63) <= \^o_left_inputs\(62);
  o_left_inputs(62) <= \^o_left_inputs\(62);
  o_left_inputs(61) <= \^o_left_inputs\(62);
  o_left_inputs(60) <= \^o_left_inputs\(62);
  o_left_inputs(59) <= \^o_left_inputs\(62);
  o_left_inputs(58) <= \^o_left_inputs\(62);
  o_left_inputs(57) <= \^o_left_inputs\(62);
  o_left_inputs(56) <= \^o_left_inputs\(62);
  o_left_inputs(55 downto 48) <= \^o_left_inputs\(55 downto 48);
  o_left_inputs(47) <= \^o_left_inputs\(46);
  o_left_inputs(46) <= \^o_left_inputs\(46);
  o_left_inputs(45) <= \^o_left_inputs\(46);
  o_left_inputs(44) <= \^o_left_inputs\(46);
  o_left_inputs(43) <= \^o_left_inputs\(46);
  o_left_inputs(42) <= \^o_left_inputs\(46);
  o_left_inputs(41) <= \^o_left_inputs\(46);
  o_left_inputs(40) <= \^o_left_inputs\(46);
  o_left_inputs(39 downto 32) <= \^o_left_inputs\(39 downto 32);
  o_left_inputs(31) <= \^o_left_inputs\(30);
  o_left_inputs(30) <= \^o_left_inputs\(30);
  o_left_inputs(29) <= \^o_left_inputs\(30);
  o_left_inputs(28) <= \^o_left_inputs\(30);
  o_left_inputs(27) <= \^o_left_inputs\(30);
  o_left_inputs(26) <= \^o_left_inputs\(30);
  o_left_inputs(25) <= \^o_left_inputs\(30);
  o_left_inputs(24) <= \^o_left_inputs\(30);
  o_left_inputs(23 downto 16) <= \^o_left_inputs\(23 downto 16);
  o_left_inputs(15) <= \^o_left_inputs\(14);
  o_left_inputs(14) <= \^o_left_inputs\(14);
  o_left_inputs(13) <= \^o_left_inputs\(14);
  o_left_inputs(12) <= \^o_left_inputs\(14);
  o_left_inputs(11) <= \^o_left_inputs\(14);
  o_left_inputs(10) <= \^o_left_inputs\(14);
  o_left_inputs(9) <= \^o_left_inputs\(14);
  o_left_inputs(8) <= \^o_left_inputs\(14);
  o_left_inputs(7 downto 0) <= \^o_left_inputs\(7 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_input_formatting
     port map (
      i_clk => i_clk,
      i_data_bram(26 downto 0) => i_data_bram(26 downto 0),
      o_compute => o_compute,
      o_left_inputs(44) => \^o_left_inputs\(78),
      o_left_inputs(43 downto 36) => \^o_left_inputs\(71 downto 64),
      o_left_inputs(35) => \^o_left_inputs\(62),
      o_left_inputs(34 downto 27) => \^o_left_inputs\(55 downto 48),
      o_left_inputs(26) => \^o_left_inputs\(46),
      o_left_inputs(25 downto 18) => \^o_left_inputs\(39 downto 32),
      o_left_inputs(17) => \^o_left_inputs\(30),
      o_left_inputs(16 downto 9) => \^o_left_inputs\(23 downto 16),
      o_left_inputs(8) => \^o_left_inputs\(14),
      o_left_inputs(7 downto 0) => \^o_left_inputs\(7 downto 0)
    );
end STRUCTURE;
