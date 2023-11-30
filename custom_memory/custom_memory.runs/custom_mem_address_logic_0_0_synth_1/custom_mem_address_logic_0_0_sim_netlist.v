// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Nov 28 08:57:54 2023
// Host        : nanditha running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_mem_address_logic_0_0_sim_netlist.v
// Design      : custom_mem_address_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_logic
   (pl_addr_logic,
    pl_en,
    done,
    clk);
  output [15:0]pl_addr_logic;
  output pl_en;
  input done;
  input clk;

  wire clk;
  wire [15:1]data0;
  wire done;
  wire [15:0]pl_addr_logic;
  wire pl_addr_logic0_carry__0_n_0;
  wire pl_addr_logic0_carry__0_n_1;
  wire pl_addr_logic0_carry__0_n_2;
  wire pl_addr_logic0_carry__0_n_3;
  wire pl_addr_logic0_carry__1_n_0;
  wire pl_addr_logic0_carry__1_n_1;
  wire pl_addr_logic0_carry__1_n_2;
  wire pl_addr_logic0_carry__1_n_3;
  wire pl_addr_logic0_carry__2_n_2;
  wire pl_addr_logic0_carry__2_n_3;
  wire pl_addr_logic0_carry_n_0;
  wire pl_addr_logic0_carry_n_1;
  wire pl_addr_logic0_carry_n_2;
  wire pl_addr_logic0_carry_n_3;
  wire \pl_addr_logic[0]_i_1_n_0 ;
  wire \pl_addr_logic[15]_i_1_n_0 ;
  wire \pl_addr_logic[15]_i_2_n_0 ;
  wire \pl_addr_logic[15]_i_3_n_0 ;
  wire \pl_addr_logic[15]_i_4_n_0 ;
  wire \pl_addr_logic[15]_i_5_n_0 ;
  wire pl_en;
  wire [3:2]NLW_pl_addr_logic0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_pl_addr_logic0_carry__2_O_UNCONNECTED;

  CARRY4 pl_addr_logic0_carry
       (.CI(1'b0),
        .CO({pl_addr_logic0_carry_n_0,pl_addr_logic0_carry_n_1,pl_addr_logic0_carry_n_2,pl_addr_logic0_carry_n_3}),
        .CYINIT(pl_addr_logic[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(pl_addr_logic[4:1]));
  CARRY4 pl_addr_logic0_carry__0
       (.CI(pl_addr_logic0_carry_n_0),
        .CO({pl_addr_logic0_carry__0_n_0,pl_addr_logic0_carry__0_n_1,pl_addr_logic0_carry__0_n_2,pl_addr_logic0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(pl_addr_logic[8:5]));
  CARRY4 pl_addr_logic0_carry__1
       (.CI(pl_addr_logic0_carry__0_n_0),
        .CO({pl_addr_logic0_carry__1_n_0,pl_addr_logic0_carry__1_n_1,pl_addr_logic0_carry__1_n_2,pl_addr_logic0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(pl_addr_logic[12:9]));
  CARRY4 pl_addr_logic0_carry__2
       (.CI(pl_addr_logic0_carry__1_n_0),
        .CO({NLW_pl_addr_logic0_carry__2_CO_UNCONNECTED[3:2],pl_addr_logic0_carry__2_n_2,pl_addr_logic0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pl_addr_logic0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,pl_addr_logic[15:13]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pl_addr_logic[0]_i_1 
       (.I0(done),
        .I1(pl_addr_logic[0]),
        .O(\pl_addr_logic[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \pl_addr_logic[15]_i_1 
       (.I0(done),
        .I1(\pl_addr_logic[15]_i_2_n_0 ),
        .I2(\pl_addr_logic[15]_i_3_n_0 ),
        .I3(\pl_addr_logic[15]_i_4_n_0 ),
        .I4(\pl_addr_logic[15]_i_5_n_0 ),
        .O(\pl_addr_logic[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pl_addr_logic[15]_i_2 
       (.I0(pl_addr_logic[9]),
        .I1(pl_addr_logic[8]),
        .I2(pl_addr_logic[11]),
        .I3(pl_addr_logic[10]),
        .O(\pl_addr_logic[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pl_addr_logic[15]_i_3 
       (.I0(pl_addr_logic[13]),
        .I1(pl_addr_logic[12]),
        .I2(pl_addr_logic[15]),
        .I3(pl_addr_logic[14]),
        .O(\pl_addr_logic[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pl_addr_logic[15]_i_4 
       (.I0(pl_addr_logic[1]),
        .I1(pl_addr_logic[0]),
        .I2(pl_addr_logic[3]),
        .I3(pl_addr_logic[2]),
        .O(\pl_addr_logic[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pl_addr_logic[15]_i_5 
       (.I0(pl_addr_logic[5]),
        .I1(pl_addr_logic[4]),
        .I2(pl_addr_logic[7]),
        .I3(pl_addr_logic[6]),
        .O(\pl_addr_logic[15]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pl_addr_logic[0]_i_1_n_0 ),
        .Q(pl_addr_logic[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[10] 
       (.C(clk),
        .CE(done),
        .D(data0[10]),
        .Q(pl_addr_logic[10]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[11] 
       (.C(clk),
        .CE(done),
        .D(data0[11]),
        .Q(pl_addr_logic[11]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[12] 
       (.C(clk),
        .CE(done),
        .D(data0[12]),
        .Q(pl_addr_logic[12]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[13] 
       (.C(clk),
        .CE(done),
        .D(data0[13]),
        .Q(pl_addr_logic[13]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[14] 
       (.C(clk),
        .CE(done),
        .D(data0[14]),
        .Q(pl_addr_logic[14]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[15] 
       (.C(clk),
        .CE(done),
        .D(data0[15]),
        .Q(pl_addr_logic[15]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[1] 
       (.C(clk),
        .CE(done),
        .D(data0[1]),
        .Q(pl_addr_logic[1]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[2] 
       (.C(clk),
        .CE(done),
        .D(data0[2]),
        .Q(pl_addr_logic[2]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[3] 
       (.C(clk),
        .CE(done),
        .D(data0[3]),
        .Q(pl_addr_logic[3]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[4] 
       (.C(clk),
        .CE(done),
        .D(data0[4]),
        .Q(pl_addr_logic[4]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[5] 
       (.C(clk),
        .CE(done),
        .D(data0[5]),
        .Q(pl_addr_logic[5]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[6] 
       (.C(clk),
        .CE(done),
        .D(data0[6]),
        .Q(pl_addr_logic[6]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[7] 
       (.C(clk),
        .CE(done),
        .D(data0[7]),
        .Q(pl_addr_logic[7]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[8] 
       (.C(clk),
        .CE(done),
        .D(data0[8]),
        .Q(pl_addr_logic[8]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pl_addr_logic_reg[9] 
       (.C(clk),
        .CE(done),
        .D(data0[9]),
        .Q(pl_addr_logic[9]),
        .R(\pl_addr_logic[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    pl_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(done),
        .Q(pl_en),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "custom_mem_address_logic_0_0,address_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "address_logic,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    done,
    pl_addr_logic,
    pl_en,
    pl_wr_en,
    pl_dout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_mem_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input done;
  output [15:0]pl_addr_logic;
  output pl_en;
  output pl_wr_en;
  input [31:0]pl_dout;

  wire \<const0> ;
  wire clk;
  wire done;
  wire [15:0]pl_addr_logic;
  wire pl_en;

  assign pl_wr_en = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_logic inst
       (.clk(clk),
        .done(done),
        .pl_addr_logic(pl_addr_logic),
        .pl_en(pl_en));
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
