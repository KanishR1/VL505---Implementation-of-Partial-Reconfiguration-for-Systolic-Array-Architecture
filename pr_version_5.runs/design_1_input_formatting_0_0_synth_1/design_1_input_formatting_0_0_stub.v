// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 29 15:44:44 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_input_formatting_0_0_stub.v
// Design      : design_1_input_formatting_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "input_formatting,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(o_left_inputs, o_compute, i_data_bram, i_clk, 
  i_enable)
/* synthesis syn_black_box black_box_pad_pin="o_left_inputs[79:0],o_compute,i_data_bram[27:0],i_clk,i_enable" */;
  output [79:0]o_left_inputs;
  output o_compute;
  input [27:0]i_data_bram;
  input i_clk;
  input i_enable;
endmodule
