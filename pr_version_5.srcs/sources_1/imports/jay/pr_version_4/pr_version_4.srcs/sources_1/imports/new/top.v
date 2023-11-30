
`timescale 1ns / 1ps
 
 module top#(
    parameter DATA_WIDTH = 16,
              MATRIX_SIZE = 3,
              BRAM_WIDTH = 28,
              COE_DATA_WIDTH = 9,
              KERNEL_SIZE = 3
)(  input i_clk,
    input [31:0]pl_data,
    input done ,
    output [27:0]pl_act_data,
    output reg [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] top_inputs
    
    );
   
    wire i_data_valid;
    wire i_enable;

   // wire [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] left_inputs;
    


    assign i_enable = done;
    assign i_data_valid = done;
    assign pl_act_data = pl_data[31:4];

    reg [1:0] count = 0;
    
    always @(posedge i_clk) begin
        if(~i_enable) begin
            if(i_data_valid) begin        
                if(count == 'd2) begin
                    count <= 0;
                end
                else begin
                    count <= count + 1;
                end
            end
        end
    end
    
    always@(posedge i_clk) begin
        if(~i_enable) begin
            top_inputs <= 0;    
        end
        else begin
        
            if(count == 'd0) begin
                top_inputs <= {16'hFF, 16'hFE, 16'hFF,16'h00 ,16'h00};
            end
            else if(count == 'd1) begin
                top_inputs <= {16'h00, 16'h00, 16'h00, 16'h00, 16'h00};
            end
            if(count == 'd2) begin
                top_inputs <= {16'h00, 16'h00, 16'h01, 16'h02, 16'h01};
            end
        end
    end

endmodule