// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Nov 28 08:57:55 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jay/Kanish/custom_memory/custom_memory.srcs/sources_1/bd/custom_mem/ip/custom_mem_address_logic_0_0/custom_mem_address_logic_0_0_stub.v
// Design      : custom_mem_address_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "address_logic,Vivado 2019.1" *)
module custom_mem_address_logic_0_0(clk, done, pl_addr_logic, pl_en, pl_wr_en, pl_dout)
/* synthesis syn_black_box black_box_pad_pin="clk,done,pl_addr_logic[15:0],pl_en,pl_wr_en,pl_dout[31:0]" */;
  input clk;
  input done;
  output [15:0]pl_addr_logic;
  output pl_en;
  output pl_wr_en;
  input [31:0]pl_dout;
endmodule
