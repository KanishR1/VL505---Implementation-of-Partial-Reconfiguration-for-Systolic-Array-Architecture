// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 29 15:45:11 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_systolic_unit_0_0_stub.v
// Design      : design_1_systolic_unit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "systolic_unit,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, i_data_valid, i_enable, left_inputs, 
  top_inputs, o_ccu_output1, o_ccu_output2, o_ccu_output3)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_data_valid,i_enable,left_inputs[79:0],top_inputs[79:0],o_ccu_output1[15:0],o_ccu_output2[15:0],o_ccu_output3[15:0]" */;
  input i_clk;
  input i_data_valid;
  input i_enable;
  input [79:0]left_inputs;
  input [79:0]top_inputs;
  output [15:0]o_ccu_output1;
  output [15:0]o_ccu_output2;
  output [15:0]o_ccu_output3;
endmodule
