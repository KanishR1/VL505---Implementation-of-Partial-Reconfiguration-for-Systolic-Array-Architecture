-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Nov 29 15:45:12 2023
-- Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jay/Kanish/pr_version_5/pr_version_5.srcs/sources_1/bd/design_1/ip/design_1_systolic_unit_0_0/design_1_systolic_unit_0_0_sim_netlist.vhdl
-- Design      : design_1_systolic_unit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_systolic_unit_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    left_inputs : in STD_LOGIC_VECTOR ( 79 downto 0 );
    top_inputs : in STD_LOGIC_VECTOR ( 79 downto 0 );
    o_ccu_output1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ccu_output2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ccu_output3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_systolic_unit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_systolic_unit_0_0 : entity is "design_1_systolic_unit_0_0,systolic_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_systolic_unit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_systolic_unit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_systolic_unit_0_0 : entity is "systolic_unit,Vivado 2019.1";
end design_1_systolic_unit_0_0;

architecture STRUCTURE of design_1_systolic_unit_0_0 is
  component design_1_systolic_unit_0_0_systolic_unit is
  port (
    i_clk : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    i_enable : in STD_LOGIC;
    left_inputs : in STD_LOGIC_VECTOR ( 79 downto 0 );
    top_inputs : in STD_LOGIC_VECTOR ( 79 downto 0 );
    o_ccu_output1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ccu_output2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ccu_output3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_systolic_unit_0_0_systolic_unit;
  attribute BRAM_WIDTH : integer;
  attribute BRAM_WIDTH of inst : label is 28;
  attribute COE_DATA_WIDTH : integer;
  attribute COE_DATA_WIDTH of inst : label is 9;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of inst : label is 16;
  attribute KERNEL_SIZE : integer;
  attribute KERNEL_SIZE of inst : label is 3;
  attribute MATRIX_SIZE : integer;
  attribute MATRIX_SIZE of inst : label is 3;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: component design_1_systolic_unit_0_0_systolic_unit
     port map (
      i_clk => i_clk,
      i_data_valid => i_data_valid,
      i_enable => i_enable,
      left_inputs(79 downto 0) => left_inputs(79 downto 0),
      o_ccu_output1(15 downto 0) => o_ccu_output1(15 downto 0),
      o_ccu_output2(15 downto 0) => o_ccu_output2(15 downto 0),
      o_ccu_output3(15 downto 0) => o_ccu_output3(15 downto 0),
      top_inputs(79 downto 0) => top_inputs(79 downto 0)
    );
end STRUCTURE;
