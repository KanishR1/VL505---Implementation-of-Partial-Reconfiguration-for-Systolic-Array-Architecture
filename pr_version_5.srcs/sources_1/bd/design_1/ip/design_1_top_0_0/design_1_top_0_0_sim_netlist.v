// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Nov 29 15:44:44 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jay/Kanish/pr_version_5/pr_version_5.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (i_clk,
    pl_data,
    done,
    pl_act_data,
    top_inputs);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input i_clk;
  input [31:0]pl_data;
  input done;
  output [27:0]pl_act_data;
  output [79:0]top_inputs;

  wire \<const0> ;
  wire done;
  wire i_clk;
  wire [31:0]pl_data;
  wire [32:32]\^top_inputs ;

  assign pl_act_data[27:0] = pl_data[31:4];
  assign top_inputs[79] = \<const0> ;
  assign top_inputs[78] = \<const0> ;
  assign top_inputs[77] = \<const0> ;
  assign top_inputs[76] = \<const0> ;
  assign top_inputs[75] = \<const0> ;
  assign top_inputs[74] = \<const0> ;
  assign top_inputs[73] = \<const0> ;
  assign top_inputs[72] = \<const0> ;
  assign top_inputs[71] = \^top_inputs [32];
  assign top_inputs[70] = \^top_inputs [32];
  assign top_inputs[69] = \^top_inputs [32];
  assign top_inputs[68] = \^top_inputs [32];
  assign top_inputs[67] = \^top_inputs [32];
  assign top_inputs[66] = \^top_inputs [32];
  assign top_inputs[65] = \^top_inputs [32];
  assign top_inputs[64] = \^top_inputs [32];
  assign top_inputs[63] = \<const0> ;
  assign top_inputs[62] = \<const0> ;
  assign top_inputs[61] = \<const0> ;
  assign top_inputs[60] = \<const0> ;
  assign top_inputs[59] = \<const0> ;
  assign top_inputs[58] = \<const0> ;
  assign top_inputs[57] = \<const0> ;
  assign top_inputs[56] = \<const0> ;
  assign top_inputs[55] = \^top_inputs [32];
  assign top_inputs[54] = \^top_inputs [32];
  assign top_inputs[53] = \^top_inputs [32];
  assign top_inputs[52] = \^top_inputs [32];
  assign top_inputs[51] = \^top_inputs [32];
  assign top_inputs[50] = \^top_inputs [32];
  assign top_inputs[49] = \^top_inputs [32];
  assign top_inputs[48] = \<const0> ;
  assign top_inputs[47] = \<const0> ;
  assign top_inputs[46] = \<const0> ;
  assign top_inputs[45] = \<const0> ;
  assign top_inputs[44] = \<const0> ;
  assign top_inputs[43] = \<const0> ;
  assign top_inputs[42] = \<const0> ;
  assign top_inputs[41] = \<const0> ;
  assign top_inputs[40] = \<const0> ;
  assign top_inputs[39] = \^top_inputs [32];
  assign top_inputs[38] = \^top_inputs [32];
  assign top_inputs[37] = \^top_inputs [32];
  assign top_inputs[36] = \^top_inputs [32];
  assign top_inputs[35] = \^top_inputs [32];
  assign top_inputs[34] = \^top_inputs [32];
  assign top_inputs[33] = \^top_inputs [32];
  assign top_inputs[32] = \^top_inputs [32];
  assign top_inputs[31] = \<const0> ;
  assign top_inputs[30] = \<const0> ;
  assign top_inputs[29] = \<const0> ;
  assign top_inputs[28] = \<const0> ;
  assign top_inputs[27] = \<const0> ;
  assign top_inputs[26] = \<const0> ;
  assign top_inputs[25] = \<const0> ;
  assign top_inputs[24] = \<const0> ;
  assign top_inputs[23] = \<const0> ;
  assign top_inputs[22] = \<const0> ;
  assign top_inputs[21] = \<const0> ;
  assign top_inputs[20] = \<const0> ;
  assign top_inputs[19] = \<const0> ;
  assign top_inputs[18] = \<const0> ;
  assign top_inputs[17] = \<const0> ;
  assign top_inputs[16] = \<const0> ;
  assign top_inputs[15] = \<const0> ;
  assign top_inputs[14] = \<const0> ;
  assign top_inputs[13] = \<const0> ;
  assign top_inputs[12] = \<const0> ;
  assign top_inputs[11] = \<const0> ;
  assign top_inputs[10] = \<const0> ;
  assign top_inputs[9] = \<const0> ;
  assign top_inputs[8] = \<const0> ;
  assign top_inputs[7] = \<const0> ;
  assign top_inputs[6] = \<const0> ;
  assign top_inputs[5] = \<const0> ;
  assign top_inputs[4] = \<const0> ;
  assign top_inputs[3] = \<const0> ;
  assign top_inputs[2] = \<const0> ;
  assign top_inputs[1] = \<const0> ;
  assign top_inputs[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_top_0_0_top inst
       (.done(done),
        .i_clk(i_clk),
        .top_inputs(\^top_inputs ));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (top_inputs,
    done,
    i_clk);
  output [0:0]top_inputs;
  input done;
  input i_clk;

  wire done;
  wire i_clk;
  wire [0:0]top_inputs;

  FDRE \top_inputs_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .D(done),
        .Q(top_inputs),
        .R(1'b0));
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
