// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 29 15:45:12 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jay/Kanish/pr_version_5/pr_version_5.srcs/sources_1/bd/design_1/ip/design_1_systolic_unit_0_0/design_1_systolic_unit_0_0_sim_netlist.v
// Design      : design_1_systolic_unit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_systolic_unit_0_0,systolic_unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "systolic_unit,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_systolic_unit_0_0
   (i_clk,
    i_data_valid,
    i_enable,
    left_inputs,
    top_inputs,
    o_ccu_output1,
    o_ccu_output2,
    o_ccu_output3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input i_clk;
  input i_data_valid;
  input i_enable;
  input [79:0]left_inputs;
  input [79:0]top_inputs;
  output [15:0]o_ccu_output1;
  output [15:0]o_ccu_output2;
  output [15:0]o_ccu_output3;

  wire i_clk;
  wire i_data_valid;
  wire i_enable;
  wire [79:0]left_inputs;
  wire [15:0]o_ccu_output1;
  wire [15:0]o_ccu_output2;
  wire [15:0]o_ccu_output3;
  wire [79:0]top_inputs;

  (* BRAM_WIDTH = "28" *) 
  (* COE_DATA_WIDTH = "9" *) 
  (* DATA_WIDTH = "16" *) 
  (* KERNEL_SIZE = "3" *) 
  (* MATRIX_SIZE = "3" *) 
  design_1_systolic_unit_0_0_systolic_unit inst
       (.i_clk(i_clk),
        .i_data_valid(i_data_valid),
        .i_enable(i_enable),
        .left_inputs(left_inputs),
        .o_ccu_output1(o_ccu_output1),
        .o_ccu_output2(o_ccu_output2),
        .o_ccu_output3(o_ccu_output3),
        .top_inputs(top_inputs));
endmodule

(* BRAM_WIDTH = "28" *) (* COE_DATA_WIDTH = "9" *) (* DATA_WIDTH = "16" *) 
(* KERNEL_SIZE = "3" *) (* MATRIX_SIZE = "3" *) (* ORIG_REF_NAME = "systolic_unit" *) 
module design_1_systolic_unit_0_0_systolic_unit
   (i_clk,
    i_data_valid,
    i_enable,
    left_inputs,
    top_inputs,
    o_ccu_output1,
    o_ccu_output2,
    o_ccu_output3);
  input i_clk;
  input i_data_valid;
  input i_enable;
  input [79:0]left_inputs;
  input [79:0]top_inputs;
  output [15:0]o_ccu_output1;
  output [15:0]o_ccu_output2;
  output [15:0]o_ccu_output3;


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
