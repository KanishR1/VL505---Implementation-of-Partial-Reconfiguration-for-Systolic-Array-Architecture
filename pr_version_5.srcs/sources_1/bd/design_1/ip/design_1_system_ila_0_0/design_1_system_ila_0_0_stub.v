// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 29 15:46:22 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jay/Kanish/pr_version_5/pr_version_5.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2019.1" *)
module design_1_system_ila_0_0(clk, probe0, probe1, probe2, probe3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[15:0],probe2[15:0],probe3[15:0]" */;
  input clk;
  input [0:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
  input [15:0]probe3;
endmodule
