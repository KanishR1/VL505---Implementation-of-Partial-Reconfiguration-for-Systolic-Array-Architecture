module input_formatting#(
    parameter integer KERNEL_SIZE = 3,
                    DATA_WIDTH = 16,
                    REG_WIDTH = 16,
                    MATRIX_SIZE = 3,
                    FIFO_DEPTH = 2,
                    BRAM_DATAWIDTH = 48,
                    BRAM_WIDTH = 28,
                    COE_DATA_WIDTH = 9
)(
    output reg [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] o_left_inputs,
    output o_compute,

    input [BRAM_WIDTH -1: 0] i_data_bram,
    input i_clk,
    input i_enable
);
reg o_ena;
reg o_wea;
reg [FIFO_DEPTH-1: 0] o_addr = 0;
    

reg data_valid = 0;
wire [BRAM_DATAWIDTH -1: 0] data_bram;


always @(posedge i_clk) begin
    if(i_enable) begin
        o_ena <= 1;
        o_wea <= 0;
        if(o_addr == 2'b10) begin
            o_addr <= 0;
        end
        else begin
            o_addr <= o_addr + 1'b1;
        end
        data_valid <= 1;
    end
    else begin
        o_ena <= 0;
        data_valid <= 1;
    end
end

assign data_bram = {{{(DATA_WIDTH-COE_DATA_WIDTH){i_data_bram[COE_DATA_WIDTH-1]}} ,i_data_bram[COE_DATA_WIDTH-1:0]}, {{(DATA_WIDTH-COE_DATA_WIDTH){i_data_bram[2*COE_DATA_WIDTH-1]}} ,i_data_bram[2*COE_DATA_WIDTH - 1:COE_DATA_WIDTH]}, {{(DATA_WIDTH-COE_DATA_WIDTH){i_data_bram[3*COE_DATA_WIDTH-1]}} ,i_data_bram[3*COE_DATA_WIDTH-1:2*COE_DATA_WIDTH]}};
localparam OUT_BUSWIDTH = (2*MATRIX_SIZE - 1)*DATA_WIDTH;
integer state = 0;
always @(posedge i_clk) begin
    if(data_valid) begin
        o_left_inputs <= {OUT_BUSWIDTH{1'b0}} | data_bram << (DATA_WIDTH*state);

        if(state < MATRIX_SIZE-1) begin
            state <= state + 1;
        end
        else begin
            state <= 0;
        end
    end
    
end

assign o_compute = data_valid;

endmodule