-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Nov 28 08:57:54 2023
-- Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_mem_address_logic_0_0_sim_netlist.vhdl
-- Design      : custom_mem_address_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_logic is
  port (
    pl_addr_logic : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pl_en : out STD_LOGIC;
    done : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_logic is
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^pl_addr_logic\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pl_addr_logic0_carry__0_n_0\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__0_n_1\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__0_n_2\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__0_n_3\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__1_n_0\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__1_n_1\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__1_n_2\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__1_n_3\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__2_n_2\ : STD_LOGIC;
  signal \pl_addr_logic0_carry__2_n_3\ : STD_LOGIC;
  signal pl_addr_logic0_carry_n_0 : STD_LOGIC;
  signal pl_addr_logic0_carry_n_1 : STD_LOGIC;
  signal pl_addr_logic0_carry_n_2 : STD_LOGIC;
  signal pl_addr_logic0_carry_n_3 : STD_LOGIC;
  signal \pl_addr_logic[0]_i_1_n_0\ : STD_LOGIC;
  signal \pl_addr_logic[15]_i_1_n_0\ : STD_LOGIC;
  signal \pl_addr_logic[15]_i_2_n_0\ : STD_LOGIC;
  signal \pl_addr_logic[15]_i_3_n_0\ : STD_LOGIC;
  signal \pl_addr_logic[15]_i_4_n_0\ : STD_LOGIC;
  signal \pl_addr_logic[15]_i_5_n_0\ : STD_LOGIC;
  signal \NLW_pl_addr_logic0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pl_addr_logic0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pl_addr_logic[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pl_addr_logic[15]_i_4\ : label is "soft_lutpair0";
begin
  pl_addr_logic(15 downto 0) <= \^pl_addr_logic\(15 downto 0);
pl_addr_logic0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pl_addr_logic0_carry_n_0,
      CO(2) => pl_addr_logic0_carry_n_1,
      CO(1) => pl_addr_logic0_carry_n_2,
      CO(0) => pl_addr_logic0_carry_n_3,
      CYINIT => \^pl_addr_logic\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => \^pl_addr_logic\(4 downto 1)
    );
\pl_addr_logic0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pl_addr_logic0_carry_n_0,
      CO(3) => \pl_addr_logic0_carry__0_n_0\,
      CO(2) => \pl_addr_logic0_carry__0_n_1\,
      CO(1) => \pl_addr_logic0_carry__0_n_2\,
      CO(0) => \pl_addr_logic0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => \^pl_addr_logic\(8 downto 5)
    );
\pl_addr_logic0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pl_addr_logic0_carry__0_n_0\,
      CO(3) => \pl_addr_logic0_carry__1_n_0\,
      CO(2) => \pl_addr_logic0_carry__1_n_1\,
      CO(1) => \pl_addr_logic0_carry__1_n_2\,
      CO(0) => \pl_addr_logic0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => \^pl_addr_logic\(12 downto 9)
    );
\pl_addr_logic0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pl_addr_logic0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_pl_addr_logic0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pl_addr_logic0_carry__2_n_2\,
      CO(0) => \pl_addr_logic0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pl_addr_logic0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => \^pl_addr_logic\(15 downto 13)
    );
\pl_addr_logic[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => done,
      I1 => \^pl_addr_logic\(0),
      O => \pl_addr_logic[0]_i_1_n_0\
    );
\pl_addr_logic[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => done,
      I1 => \pl_addr_logic[15]_i_2_n_0\,
      I2 => \pl_addr_logic[15]_i_3_n_0\,
      I3 => \pl_addr_logic[15]_i_4_n_0\,
      I4 => \pl_addr_logic[15]_i_5_n_0\,
      O => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^pl_addr_logic\(9),
      I1 => \^pl_addr_logic\(8),
      I2 => \^pl_addr_logic\(11),
      I3 => \^pl_addr_logic\(10),
      O => \pl_addr_logic[15]_i_2_n_0\
    );
\pl_addr_logic[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^pl_addr_logic\(13),
      I1 => \^pl_addr_logic\(12),
      I2 => \^pl_addr_logic\(15),
      I3 => \^pl_addr_logic\(14),
      O => \pl_addr_logic[15]_i_3_n_0\
    );
\pl_addr_logic[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^pl_addr_logic\(1),
      I1 => \^pl_addr_logic\(0),
      I2 => \^pl_addr_logic\(3),
      I3 => \^pl_addr_logic\(2),
      O => \pl_addr_logic[15]_i_4_n_0\
    );
\pl_addr_logic[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^pl_addr_logic\(5),
      I1 => \^pl_addr_logic\(4),
      I2 => \^pl_addr_logic\(7),
      I3 => \^pl_addr_logic\(6),
      O => \pl_addr_logic[15]_i_5_n_0\
    );
\pl_addr_logic_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pl_addr_logic[0]_i_1_n_0\,
      Q => \^pl_addr_logic\(0),
      R => '0'
    );
\pl_addr_logic_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(10),
      Q => \^pl_addr_logic\(10),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(11),
      Q => \^pl_addr_logic\(11),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(12),
      Q => \^pl_addr_logic\(12),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(13),
      Q => \^pl_addr_logic\(13),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(14),
      Q => \^pl_addr_logic\(14),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(15),
      Q => \^pl_addr_logic\(15),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(1),
      Q => \^pl_addr_logic\(1),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(2),
      Q => \^pl_addr_logic\(2),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(3),
      Q => \^pl_addr_logic\(3),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(4),
      Q => \^pl_addr_logic\(4),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(5),
      Q => \^pl_addr_logic\(5),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(6),
      Q => \^pl_addr_logic\(6),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(7),
      Q => \^pl_addr_logic\(7),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(8),
      Q => \^pl_addr_logic\(8),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
\pl_addr_logic_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => done,
      D => data0(9),
      Q => \^pl_addr_logic\(9),
      R => \pl_addr_logic[15]_i_1_n_0\
    );
pl_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done,
      Q => pl_en,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    done : in STD_LOGIC;
    pl_addr_logic : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pl_en : out STD_LOGIC;
    pl_wr_en : out STD_LOGIC;
    pl_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "custom_mem_address_logic_0_0,address_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "address_logic,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_mem_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  pl_wr_en <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_logic
     port map (
      clk => clk,
      done => done,
      pl_addr_logic(15 downto 0) => pl_addr_logic(15 downto 0),
      pl_en => pl_en
    );
end STRUCTURE;
