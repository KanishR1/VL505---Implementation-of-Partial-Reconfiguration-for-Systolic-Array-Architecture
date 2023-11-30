// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 29 15:44:44 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jay/Kanish/pr_version_5/pr_version_5.srcs/sources_1/bd/design_1/ip/design_1_input_formatting_0_0/design_1_input_formatting_0_0_sim_netlist.v
// Design      : design_1_input_formatting_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_input_formatting_0_0,input_formatting,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "input_formatting,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_input_formatting_0_0
   (o_left_inputs,
    o_compute,
    i_data_bram,
    i_clk,
    i_enable);
  output [79:0]o_left_inputs;
  output o_compute;
  input [27:0]i_data_bram;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input i_clk;
  input i_enable;

  wire i_clk;
  wire [27:0]i_data_bram;
  wire o_compute;
  wire [78:0]\^o_left_inputs ;

  assign o_left_inputs[79] = \^o_left_inputs [78];
  assign o_left_inputs[78] = \^o_left_inputs [78];
  assign o_left_inputs[77] = \^o_left_inputs [78];
  assign o_left_inputs[76] = \^o_left_inputs [78];
  assign o_left_inputs[75] = \^o_left_inputs [78];
  assign o_left_inputs[74] = \^o_left_inputs [78];
  assign o_left_inputs[73] = \^o_left_inputs [78];
  assign o_left_inputs[72] = \^o_left_inputs [78];
  assign o_left_inputs[71:64] = \^o_left_inputs [71:64];
  assign o_left_inputs[63] = \^o_left_inputs [62];
  assign o_left_inputs[62] = \^o_left_inputs [62];
  assign o_left_inputs[61] = \^o_left_inputs [62];
  assign o_left_inputs[60] = \^o_left_inputs [62];
  assign o_left_inputs[59] = \^o_left_inputs [62];
  assign o_left_inputs[58] = \^o_left_inputs [62];
  assign o_left_inputs[57] = \^o_left_inputs [62];
  assign o_left_inputs[56] = \^o_left_inputs [62];
  assign o_left_inputs[55:48] = \^o_left_inputs [55:48];
  assign o_left_inputs[47] = \^o_left_inputs [46];
  assign o_left_inputs[46] = \^o_left_inputs [46];
  assign o_left_inputs[45] = \^o_left_inputs [46];
  assign o_left_inputs[44] = \^o_left_inputs [46];
  assign o_left_inputs[43] = \^o_left_inputs [46];
  assign o_left_inputs[42] = \^o_left_inputs [46];
  assign o_left_inputs[41] = \^o_left_inputs [46];
  assign o_left_inputs[40] = \^o_left_inputs [46];
  assign o_left_inputs[39:32] = \^o_left_inputs [39:32];
  assign o_left_inputs[31] = \^o_left_inputs [30];
  assign o_left_inputs[30] = \^o_left_inputs [30];
  assign o_left_inputs[29] = \^o_left_inputs [30];
  assign o_left_inputs[28] = \^o_left_inputs [30];
  assign o_left_inputs[27] = \^o_left_inputs [30];
  assign o_left_inputs[26] = \^o_left_inputs [30];
  assign o_left_inputs[25] = \^o_left_inputs [30];
  assign o_left_inputs[24] = \^o_left_inputs [30];
  assign o_left_inputs[23:16] = \^o_left_inputs [23:16];
  assign o_left_inputs[15] = \^o_left_inputs [14];
  assign o_left_inputs[14] = \^o_left_inputs [14];
  assign o_left_inputs[13] = \^o_left_inputs [14];
  assign o_left_inputs[12] = \^o_left_inputs [14];
  assign o_left_inputs[11] = \^o_left_inputs [14];
  assign o_left_inputs[10] = \^o_left_inputs [14];
  assign o_left_inputs[9] = \^o_left_inputs [14];
  assign o_left_inputs[8] = \^o_left_inputs [14];
  assign o_left_inputs[7:0] = \^o_left_inputs [7:0];
  design_1_input_formatting_0_0_input_formatting inst
       (.i_clk(i_clk),
        .i_data_bram(i_data_bram[26:0]),
        .o_compute(o_compute),
        .o_left_inputs({\^o_left_inputs [78],\^o_left_inputs [71:64],\^o_left_inputs [62],\^o_left_inputs [55:48],\^o_left_inputs [46],\^o_left_inputs [39:32],\^o_left_inputs [30],\^o_left_inputs [23:16],\^o_left_inputs [14],\^o_left_inputs [7:0]}));
endmodule

(* ORIG_REF_NAME = "input_formatting" *) 
module design_1_input_formatting_0_0_input_formatting
   (o_compute,
    o_left_inputs,
    i_clk,
    i_data_bram);
  output o_compute;
  output [44:0]o_left_inputs;
  input i_clk;
  input [26:0]i_data_bram;

  wire i_clk;
  wire [26:0]i_data_bram;
  wire o_compute;
  wire [44:0]o_left_inputs;
  wire \o_left_inputs[15]_i_1_n_0 ;
  wire \o_left_inputs[47]_i_2_n_0 ;
  wire \o_left_inputs[63]_i_2_n_0 ;
  wire \o_left_inputs[79]_i_10_n_0 ;
  wire \o_left_inputs[79]_i_2_n_0 ;
  wire \o_left_inputs[79]_i_3_n_0 ;
  wire \o_left_inputs[79]_i_4_n_0 ;
  wire \o_left_inputs[79]_i_5_n_0 ;
  wire \o_left_inputs[79]_i_6_n_0 ;
  wire \o_left_inputs[79]_i_7_n_0 ;
  wire \o_left_inputs[79]_i_8_n_0 ;
  wire \o_left_inputs[79]_i_9_n_0 ;
  wire [79:16]p_0_in;
  wire state;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_i_4_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_i_1_n_0;
  wire state1_carry__1_i_2_n_0;
  wire state1_carry__1_i_3_n_0;
  wire state1_carry__1_i_4_n_0;
  wire state1_carry__1_n_0;
  wire state1_carry__1_n_1;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry__2_i_1_n_0;
  wire state1_carry__2_i_2_n_0;
  wire state1_carry__2_i_3_n_0;
  wire state1_carry__2_i_4_n_0;
  wire state1_carry__2_n_0;
  wire state1_carry__2_n_1;
  wire state1_carry__2_n_2;
  wire state1_carry__2_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire \state[0]_i_3_n_0 ;
  wire [31:0]state_reg;
  wire \state_reg[0]_i_2_n_0 ;
  wire \state_reg[0]_i_2_n_1 ;
  wire \state_reg[0]_i_2_n_2 ;
  wire \state_reg[0]_i_2_n_3 ;
  wire \state_reg[0]_i_2_n_4 ;
  wire \state_reg[0]_i_2_n_5 ;
  wire \state_reg[0]_i_2_n_6 ;
  wire \state_reg[0]_i_2_n_7 ;
  wire \state_reg[12]_i_1_n_0 ;
  wire \state_reg[12]_i_1_n_1 ;
  wire \state_reg[12]_i_1_n_2 ;
  wire \state_reg[12]_i_1_n_3 ;
  wire \state_reg[12]_i_1_n_4 ;
  wire \state_reg[12]_i_1_n_5 ;
  wire \state_reg[12]_i_1_n_6 ;
  wire \state_reg[12]_i_1_n_7 ;
  wire \state_reg[16]_i_1_n_0 ;
  wire \state_reg[16]_i_1_n_1 ;
  wire \state_reg[16]_i_1_n_2 ;
  wire \state_reg[16]_i_1_n_3 ;
  wire \state_reg[16]_i_1_n_4 ;
  wire \state_reg[16]_i_1_n_5 ;
  wire \state_reg[16]_i_1_n_6 ;
  wire \state_reg[16]_i_1_n_7 ;
  wire \state_reg[20]_i_1_n_0 ;
  wire \state_reg[20]_i_1_n_1 ;
  wire \state_reg[20]_i_1_n_2 ;
  wire \state_reg[20]_i_1_n_3 ;
  wire \state_reg[20]_i_1_n_4 ;
  wire \state_reg[20]_i_1_n_5 ;
  wire \state_reg[20]_i_1_n_6 ;
  wire \state_reg[20]_i_1_n_7 ;
  wire \state_reg[24]_i_1_n_0 ;
  wire \state_reg[24]_i_1_n_1 ;
  wire \state_reg[24]_i_1_n_2 ;
  wire \state_reg[24]_i_1_n_3 ;
  wire \state_reg[24]_i_1_n_4 ;
  wire \state_reg[24]_i_1_n_5 ;
  wire \state_reg[24]_i_1_n_6 ;
  wire \state_reg[24]_i_1_n_7 ;
  wire \state_reg[28]_i_1_n_1 ;
  wire \state_reg[28]_i_1_n_2 ;
  wire \state_reg[28]_i_1_n_3 ;
  wire \state_reg[28]_i_1_n_4 ;
  wire \state_reg[28]_i_1_n_5 ;
  wire \state_reg[28]_i_1_n_6 ;
  wire \state_reg[28]_i_1_n_7 ;
  wire \state_reg[4]_i_1_n_0 ;
  wire \state_reg[4]_i_1_n_1 ;
  wire \state_reg[4]_i_1_n_2 ;
  wire \state_reg[4]_i_1_n_3 ;
  wire \state_reg[4]_i_1_n_4 ;
  wire \state_reg[4]_i_1_n_5 ;
  wire \state_reg[4]_i_1_n_6 ;
  wire \state_reg[4]_i_1_n_7 ;
  wire \state_reg[8]_i_1_n_0 ;
  wire \state_reg[8]_i_1_n_1 ;
  wire \state_reg[8]_i_1_n_2 ;
  wire \state_reg[8]_i_1_n_3 ;
  wire \state_reg[8]_i_1_n_4 ;
  wire \state_reg[8]_i_1_n_5 ;
  wire \state_reg[8]_i_1_n_6 ;
  wire \state_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_state_reg[28]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    data_valid_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(o_compute),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \o_left_inputs[15]_i_1 
       (.I0(o_compute),
        .I1(\o_left_inputs[47]_i_2_n_0 ),
        .O(\o_left_inputs[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[16]_i_1 
       (.I0(i_data_bram[18]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[9]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[17]_i_1 
       (.I0(i_data_bram[19]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[10]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[18]_i_1 
       (.I0(i_data_bram[20]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[11]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[19]_i_1 
       (.I0(i_data_bram[21]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[12]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[20]_i_1 
       (.I0(i_data_bram[22]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[13]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[21]_i_1 
       (.I0(i_data_bram[23]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[14]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[22]_i_1 
       (.I0(i_data_bram[24]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[15]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[23]_i_1 
       (.I0(i_data_bram[25]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[16]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_left_inputs[31]_i_1 
       (.I0(i_data_bram[26]),
        .I1(\o_left_inputs[63]_i_2_n_0 ),
        .I2(i_data_bram[17]),
        .I3(\o_left_inputs[47]_i_2_n_0 ),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[32]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[0]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[9]),
        .I4(i_data_bram[18]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[32]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[33]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[1]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[10]),
        .I4(i_data_bram[19]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[33]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[34]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[2]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[11]),
        .I4(i_data_bram[20]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[34]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[35]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[3]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[12]),
        .I4(i_data_bram[21]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[35]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[36]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[4]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[13]),
        .I4(i_data_bram[22]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[36]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[37]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[5]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[14]),
        .I4(i_data_bram[23]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[37]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[38]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[6]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[15]),
        .I4(i_data_bram[24]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[38]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[39]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[7]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[16]),
        .I4(i_data_bram[25]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[39]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[47]_i_1 
       (.I0(\o_left_inputs[47]_i_2_n_0 ),
        .I1(i_data_bram[8]),
        .I2(\o_left_inputs[63]_i_2_n_0 ),
        .I3(i_data_bram[17]),
        .I4(i_data_bram[26]),
        .I5(\o_left_inputs[79]_i_2_n_0 ),
        .O(p_0_in[47]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \o_left_inputs[47]_i_2 
       (.I0(state_reg[0]),
        .I1(\o_left_inputs[79]_i_5_n_0 ),
        .I2(\o_left_inputs[79]_i_6_n_0 ),
        .I3(\o_left_inputs[79]_i_7_n_0 ),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(\o_left_inputs[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[48]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[0]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[9]),
        .I4(i_data_bram[18]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[48]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[49]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[1]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[10]),
        .I4(i_data_bram[19]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[49]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[50]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[2]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[11]),
        .I4(i_data_bram[20]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[50]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[51]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[3]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[12]),
        .I4(i_data_bram[21]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[51]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[52]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[4]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[13]),
        .I4(i_data_bram[22]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[52]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[53]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[5]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[14]),
        .I4(i_data_bram[23]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[53]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[54]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[6]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[15]),
        .I4(i_data_bram[24]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[54]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[55]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[7]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[16]),
        .I4(i_data_bram[25]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[55]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[63]_i_1 
       (.I0(\o_left_inputs[63]_i_2_n_0 ),
        .I1(i_data_bram[8]),
        .I2(\o_left_inputs[79]_i_2_n_0 ),
        .I3(i_data_bram[17]),
        .I4(i_data_bram[26]),
        .I5(\o_left_inputs[79]_i_3_n_0 ),
        .O(p_0_in[63]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \o_left_inputs[63]_i_2 
       (.I0(state_reg[0]),
        .I1(\o_left_inputs[79]_i_5_n_0 ),
        .I2(\o_left_inputs[79]_i_6_n_0 ),
        .I3(\o_left_inputs[79]_i_7_n_0 ),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(\o_left_inputs[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[64]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[0]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[9]),
        .I4(i_data_bram[18]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[64]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[65]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[1]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[10]),
        .I4(i_data_bram[19]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[65]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[66]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[2]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[11]),
        .I4(i_data_bram[20]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[66]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[67]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[3]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[12]),
        .I4(i_data_bram[21]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[67]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[68]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[4]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[13]),
        .I4(i_data_bram[22]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[68]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[69]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[5]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[14]),
        .I4(i_data_bram[23]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[69]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[70]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[6]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[15]),
        .I4(i_data_bram[24]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[70]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[71]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[7]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[16]),
        .I4(i_data_bram[25]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[71]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_left_inputs[79]_i_1 
       (.I0(\o_left_inputs[79]_i_2_n_0 ),
        .I1(i_data_bram[8]),
        .I2(\o_left_inputs[79]_i_3_n_0 ),
        .I3(i_data_bram[17]),
        .I4(i_data_bram[26]),
        .I5(\o_left_inputs[79]_i_4_n_0 ),
        .O(p_0_in[79]));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_left_inputs[79]_i_10 
       (.I0(state_reg[11]),
        .I1(state_reg[10]),
        .I2(state_reg[9]),
        .I3(state_reg[8]),
        .O(\o_left_inputs[79]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \o_left_inputs[79]_i_2 
       (.I0(state_reg[0]),
        .I1(\o_left_inputs[79]_i_5_n_0 ),
        .I2(\o_left_inputs[79]_i_6_n_0 ),
        .I3(\o_left_inputs[79]_i_7_n_0 ),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(\o_left_inputs[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \o_left_inputs[79]_i_3 
       (.I0(state_reg[0]),
        .I1(\o_left_inputs[79]_i_5_n_0 ),
        .I2(\o_left_inputs[79]_i_6_n_0 ),
        .I3(\o_left_inputs[79]_i_7_n_0 ),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(\o_left_inputs[79]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \o_left_inputs[79]_i_4 
       (.I0(state_reg[2]),
        .I1(\o_left_inputs[79]_i_7_n_0 ),
        .I2(\o_left_inputs[79]_i_6_n_0 ),
        .I3(\o_left_inputs[79]_i_5_n_0 ),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(\o_left_inputs[79]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \o_left_inputs[79]_i_5 
       (.I0(state_reg[20]),
        .I1(state_reg[21]),
        .I2(state_reg[22]),
        .I3(state_reg[23]),
        .I4(\o_left_inputs[79]_i_8_n_0 ),
        .O(\o_left_inputs[79]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \o_left_inputs[79]_i_6 
       (.I0(state_reg[12]),
        .I1(state_reg[13]),
        .I2(state_reg[14]),
        .I3(state_reg[15]),
        .I4(\o_left_inputs[79]_i_9_n_0 ),
        .O(\o_left_inputs[79]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \o_left_inputs[79]_i_7 
       (.I0(\o_left_inputs[79]_i_10_n_0 ),
        .I1(state_reg[7]),
        .I2(state_reg[6]),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(state_reg[3]),
        .O(\o_left_inputs[79]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_left_inputs[79]_i_8 
       (.I0(state_reg[27]),
        .I1(state_reg[26]),
        .I2(state_reg[25]),
        .I3(state_reg[24]),
        .O(\o_left_inputs[79]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \o_left_inputs[79]_i_9 
       (.I0(state_reg[19]),
        .I1(state_reg[18]),
        .I2(state_reg[17]),
        .I3(state_reg[16]),
        .O(\o_left_inputs[79]_i_9_n_0 ));
  FDRE \o_left_inputs_reg[0] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[18]),
        .Q(o_left_inputs[0]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[15] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[26]),
        .Q(o_left_inputs[8]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[16] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[16]),
        .Q(o_left_inputs[9]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[17] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[17]),
        .Q(o_left_inputs[10]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[18] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[18]),
        .Q(o_left_inputs[11]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[19] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[19]),
        .Q(o_left_inputs[12]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[1] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[19]),
        .Q(o_left_inputs[1]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[20] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[20]),
        .Q(o_left_inputs[13]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[21] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[21]),
        .Q(o_left_inputs[14]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[22] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[22]),
        .Q(o_left_inputs[15]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[23] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[23]),
        .Q(o_left_inputs[16]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[2] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[20]),
        .Q(o_left_inputs[2]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[31] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[31]),
        .Q(o_left_inputs[17]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[32] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[32]),
        .Q(o_left_inputs[18]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[33] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[33]),
        .Q(o_left_inputs[19]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[34] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[34]),
        .Q(o_left_inputs[20]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[35] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[35]),
        .Q(o_left_inputs[21]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[36] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[36]),
        .Q(o_left_inputs[22]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[37] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[37]),
        .Q(o_left_inputs[23]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[38] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[38]),
        .Q(o_left_inputs[24]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[39] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[39]),
        .Q(o_left_inputs[25]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[3] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[21]),
        .Q(o_left_inputs[3]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[47] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[47]),
        .Q(o_left_inputs[26]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[48] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[48]),
        .Q(o_left_inputs[27]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[49] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[49]),
        .Q(o_left_inputs[28]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[4] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[22]),
        .Q(o_left_inputs[4]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[50] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[50]),
        .Q(o_left_inputs[29]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[51] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[51]),
        .Q(o_left_inputs[30]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[52] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[52]),
        .Q(o_left_inputs[31]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[53] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[53]),
        .Q(o_left_inputs[32]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[54] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[54]),
        .Q(o_left_inputs[33]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[55] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[55]),
        .Q(o_left_inputs[34]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[5] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[23]),
        .Q(o_left_inputs[5]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[63] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[63]),
        .Q(o_left_inputs[35]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[64] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[64]),
        .Q(o_left_inputs[36]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[65] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[65]),
        .Q(o_left_inputs[37]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[66] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[66]),
        .Q(o_left_inputs[38]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[67] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[67]),
        .Q(o_left_inputs[39]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[68] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[68]),
        .Q(o_left_inputs[40]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[69] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[69]),
        .Q(o_left_inputs[41]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[6] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[24]),
        .Q(o_left_inputs[6]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  FDRE \o_left_inputs_reg[70] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[70]),
        .Q(o_left_inputs[42]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[71] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[71]),
        .Q(o_left_inputs[43]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[79] 
       (.C(i_clk),
        .CE(o_compute),
        .D(p_0_in[79]),
        .Q(o_left_inputs[44]),
        .R(1'b0));
  FDRE \o_left_inputs_reg[7] 
       (.C(i_clk),
        .CE(o_compute),
        .D(i_data_bram[25]),
        .Q(o_left_inputs[7]),
        .R(\o_left_inputs[15]_i_1_n_0 ));
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state1_carry_i_1_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0,state1_carry_i_5_n_0}));
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0,state1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_1
       (.I0(state_reg[14]),
        .I1(state_reg[15]),
        .O(state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_2
       (.I0(state_reg[12]),
        .I1(state_reg[13]),
        .O(state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_3
       (.I0(state_reg[10]),
        .I1(state_reg[11]),
        .O(state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_4
       (.I0(state_reg[8]),
        .I1(state_reg[9]),
        .O(state1_carry__0_i_4_n_0));
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({state1_carry__1_n_0,state1_carry__1_n_1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({state1_carry__1_i_1_n_0,state1_carry__1_i_2_n_0,state1_carry__1_i_3_n_0,state1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_1
       (.I0(state_reg[22]),
        .I1(state_reg[23]),
        .O(state1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_2
       (.I0(state_reg[20]),
        .I1(state_reg[21]),
        .O(state1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_3
       (.I0(state_reg[18]),
        .I1(state_reg[19]),
        .O(state1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_4
       (.I0(state_reg[16]),
        .I1(state_reg[17]),
        .O(state1_carry__1_i_4_n_0));
  CARRY4 state1_carry__2
       (.CI(state1_carry__1_n_0),
        .CO({state1_carry__2_n_0,state1_carry__2_n_1,state1_carry__2_n_2,state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({state_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({state1_carry__2_i_1_n_0,state1_carry__2_i_2_n_0,state1_carry__2_i_3_n_0,state1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_1
       (.I0(state_reg[30]),
        .I1(state_reg[31]),
        .O(state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_2
       (.I0(state_reg[28]),
        .I1(state_reg[29]),
        .O(state1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_3
       (.I0(state_reg[26]),
        .I1(state_reg[27]),
        .O(state1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_4
       (.I0(state_reg[24]),
        .I1(state_reg[25]),
        .O(state1_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_1
       (.I0(state_reg[1]),
        .O(state1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_2
       (.I0(state_reg[6]),
        .I1(state_reg[7]),
        .O(state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_3
       (.I0(state_reg[4]),
        .I1(state_reg[5]),
        .O(state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_4
       (.I0(state_reg[2]),
        .I1(state_reg[3]),
        .O(state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_5
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_1 
       (.I0(o_compute),
        .I1(state1_carry__2_n_0),
        .O(state));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_3 
       (.I0(state_reg[0]),
        .O(\state[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[0]_i_2_n_7 ),
        .Q(state_reg[0]),
        .R(state));
  CARRY4 \state_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\state_reg[0]_i_2_n_0 ,\state_reg[0]_i_2_n_1 ,\state_reg[0]_i_2_n_2 ,\state_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\state_reg[0]_i_2_n_4 ,\state_reg[0]_i_2_n_5 ,\state_reg[0]_i_2_n_6 ,\state_reg[0]_i_2_n_7 }),
        .S({state_reg[3:1],\state[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[10] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[8]_i_1_n_5 ),
        .Q(state_reg[10]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[11] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[8]_i_1_n_4 ),
        .Q(state_reg[11]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[12] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[12]_i_1_n_7 ),
        .Q(state_reg[12]),
        .R(state));
  CARRY4 \state_reg[12]_i_1 
       (.CI(\state_reg[8]_i_1_n_0 ),
        .CO({\state_reg[12]_i_1_n_0 ,\state_reg[12]_i_1_n_1 ,\state_reg[12]_i_1_n_2 ,\state_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[12]_i_1_n_4 ,\state_reg[12]_i_1_n_5 ,\state_reg[12]_i_1_n_6 ,\state_reg[12]_i_1_n_7 }),
        .S(state_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[13] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[12]_i_1_n_6 ),
        .Q(state_reg[13]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[14] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[12]_i_1_n_5 ),
        .Q(state_reg[14]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[15] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[12]_i_1_n_4 ),
        .Q(state_reg[15]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[16] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[16]_i_1_n_7 ),
        .Q(state_reg[16]),
        .R(state));
  CARRY4 \state_reg[16]_i_1 
       (.CI(\state_reg[12]_i_1_n_0 ),
        .CO({\state_reg[16]_i_1_n_0 ,\state_reg[16]_i_1_n_1 ,\state_reg[16]_i_1_n_2 ,\state_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[16]_i_1_n_4 ,\state_reg[16]_i_1_n_5 ,\state_reg[16]_i_1_n_6 ,\state_reg[16]_i_1_n_7 }),
        .S(state_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[17] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[16]_i_1_n_6 ),
        .Q(state_reg[17]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[18] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[16]_i_1_n_5 ),
        .Q(state_reg[18]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[19] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[16]_i_1_n_4 ),
        .Q(state_reg[19]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[0]_i_2_n_6 ),
        .Q(state_reg[1]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[20] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[20]_i_1_n_7 ),
        .Q(state_reg[20]),
        .R(state));
  CARRY4 \state_reg[20]_i_1 
       (.CI(\state_reg[16]_i_1_n_0 ),
        .CO({\state_reg[20]_i_1_n_0 ,\state_reg[20]_i_1_n_1 ,\state_reg[20]_i_1_n_2 ,\state_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[20]_i_1_n_4 ,\state_reg[20]_i_1_n_5 ,\state_reg[20]_i_1_n_6 ,\state_reg[20]_i_1_n_7 }),
        .S(state_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[21] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[20]_i_1_n_6 ),
        .Q(state_reg[21]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[22] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[20]_i_1_n_5 ),
        .Q(state_reg[22]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[23] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[20]_i_1_n_4 ),
        .Q(state_reg[23]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[24] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[24]_i_1_n_7 ),
        .Q(state_reg[24]),
        .R(state));
  CARRY4 \state_reg[24]_i_1 
       (.CI(\state_reg[20]_i_1_n_0 ),
        .CO({\state_reg[24]_i_1_n_0 ,\state_reg[24]_i_1_n_1 ,\state_reg[24]_i_1_n_2 ,\state_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[24]_i_1_n_4 ,\state_reg[24]_i_1_n_5 ,\state_reg[24]_i_1_n_6 ,\state_reg[24]_i_1_n_7 }),
        .S(state_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[25] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[24]_i_1_n_6 ),
        .Q(state_reg[25]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[26] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[24]_i_1_n_5 ),
        .Q(state_reg[26]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[27] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[24]_i_1_n_4 ),
        .Q(state_reg[27]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[28] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[28]_i_1_n_7 ),
        .Q(state_reg[28]),
        .R(state));
  CARRY4 \state_reg[28]_i_1 
       (.CI(\state_reg[24]_i_1_n_0 ),
        .CO({\NLW_state_reg[28]_i_1_CO_UNCONNECTED [3],\state_reg[28]_i_1_n_1 ,\state_reg[28]_i_1_n_2 ,\state_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[28]_i_1_n_4 ,\state_reg[28]_i_1_n_5 ,\state_reg[28]_i_1_n_6 ,\state_reg[28]_i_1_n_7 }),
        .S(state_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[29] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[28]_i_1_n_6 ),
        .Q(state_reg[29]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[0]_i_2_n_5 ),
        .Q(state_reg[2]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[30] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[28]_i_1_n_5 ),
        .Q(state_reg[30]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[31] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[28]_i_1_n_4 ),
        .Q(state_reg[31]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[0]_i_2_n_4 ),
        .Q(state_reg[3]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[4]_i_1_n_7 ),
        .Q(state_reg[4]),
        .R(state));
  CARRY4 \state_reg[4]_i_1 
       (.CI(\state_reg[0]_i_2_n_0 ),
        .CO({\state_reg[4]_i_1_n_0 ,\state_reg[4]_i_1_n_1 ,\state_reg[4]_i_1_n_2 ,\state_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[4]_i_1_n_4 ,\state_reg[4]_i_1_n_5 ,\state_reg[4]_i_1_n_6 ,\state_reg[4]_i_1_n_7 }),
        .S(state_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[4]_i_1_n_6 ),
        .Q(state_reg[5]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[4]_i_1_n_5 ),
        .Q(state_reg[6]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[4]_i_1_n_4 ),
        .Q(state_reg[7]),
        .R(state));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[8]_i_1_n_7 ),
        .Q(state_reg[8]),
        .R(state));
  CARRY4 \state_reg[8]_i_1 
       (.CI(\state_reg[4]_i_1_n_0 ),
        .CO({\state_reg[8]_i_1_n_0 ,\state_reg[8]_i_1_n_1 ,\state_reg[8]_i_1_n_2 ,\state_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\state_reg[8]_i_1_n_4 ,\state_reg[8]_i_1_n_5 ,\state_reg[8]_i_1_n_6 ,\state_reg[8]_i_1_n_7 }),
        .S(state_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(i_clk),
        .CE(o_compute),
        .D(\state_reg[8]_i_1_n_6 ),
        .Q(state_reg[9]),
        .R(state));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
