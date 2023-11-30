
module systolic_unit#(
    parameter DATA_WIDTH = 16,
              MATRIX_SIZE = 3,
              BRAM_WIDTH = 28,
              COE_DATA_WIDTH = 9,
              KERNEL_SIZE = 3
)(
    input i_clk,
    input i_data_valid,
    input i_enable,

    input [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] left_inputs,
    input [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] top_inputs,

    output [DATA_WIDTH-1:0] o_ccu_output1,
    output [DATA_WIDTH-1:0] o_ccu_output2,
    output [DATA_WIDTH-1:0] o_ccu_output3
);
    endmodule
