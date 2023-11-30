
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


//wire [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0]  diagonal;-----------------mark
wire [0:0] data_valid;
wire start;
wire [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] diagonal;

systolic_array systolic_design( 
    .i_clk(i_clk), .i_enable(i_enable), .i_data_valid(i_data_valid), .i_left_inputs(left_inputs), .i_top_inputs(top_inputs),
    .o_diagonal_outputs(diagonal), .o_data_valid(data_valid), .o_start(start)
    );

CCU_pipelined ccu(
    .i_clk(i_clk), .i_diagonal(diagonal), .i_data_valid(i_enable), .i_start(i_enable),
    .o_ccu_output1(o_ccu_output1), .o_ccu_output2(o_ccu_output2),  .o_ccu_output3(o_ccu_output3) 
    );


endmodule

module CCU_pipelined(
    i_clk,
    i_data_valid,
    i_start,
    i_diagonal,
    o_ccu_output1,
    o_ccu_output2,
    o_ccu_output3
);

parameter DATA_WIDTH = 16;
parameter MATRIX_SIZE = 3;
parameter ARRAY_SIZE = (2*MATRIX_SIZE - 1);


input i_clk;
input i_data_valid;
input i_start;
input [ARRAY_SIZE*DATA_WIDTH - 1:0] i_diagonal;

output reg [DATA_WIDTH - 1: 0]  o_ccu_output1;
output reg [DATA_WIDTH - 1: 0]  o_ccu_output2;
output reg [DATA_WIDTH - 1: 0]  o_ccu_output3;

reg [1:0] count;

wire [DATA_WIDTH - 1: 0] b_3, b_4, b_5, r_3, r_4;

reg [DATA_WIDTH-1:0] acc_b5;
reg [DATA_WIDTH-1:0] acc_b4;
reg [DATA_WIDTH-1:0] acc_b3;
reg [DATA_WIDTH-1:0] acc_r4;
reg [DATA_WIDTH-1:0] acc_r3;
reg [DATA_WIDTH-1:0] previous_acc_b3;
reg [DATA_WIDTH-1:0] previous_acc_r3;
reg [DATA_WIDTH-1:0] previous_acc_b4;
reg [DATA_WIDTH-1:0] previous_acc_r4;


//For simulation purpose only
//initial begin
//     o_ccu_output1 = 0;  o_ccu_output2 = 0;  o_ccu_output3 = 0;
//    acc_b5 = 0; acc_b4 = 0; acc_b3 = 0; acc_r4 = 0; acc_r3 = 0;
//    previous_acc_r3 = 0; previous_acc_b3 = 0;previous_acc_b4 = 0; previous_acc_r4 = 0;
//    count = 0;

//end


assign b_3 = i_diagonal[15:0];
assign b_4 = i_diagonal[31:16];
assign b_5 = i_diagonal[47:32];
assign r_3 = i_diagonal[63:48];
assign r_4 = i_diagonal[79:64];

always@(posedge i_clk) begin
    if(i_start) begin
        if(count == 2'd2) begin
            count <= 'd0;
        end
        else begin
            count <= count + 1;
        end
    end
end 

always @(posedge i_clk) begin
    if(i_data_valid*i_start) begin
        if(count == 'd0) begin
            //The data available on the first clock cycle is accumulated considering the delay for the edge elements
            acc_b5 <= b_5;
            acc_b4 <= b_4;
            acc_b3 <= b_3;
            acc_r4 <= r_4;
            acc_r3 <= r_3;
        end
        else if (count == 'd1) begin
            acc_b5 <= acc_b5 + b_5;
            acc_b4 <= acc_b4 + b_4;
            acc_r4 <= acc_r4 + r_4;
        end
        else if(count == 'd2) begin
             o_ccu_output1 <= acc_b5 + b_5;
             o_ccu_output2 <= previous_acc_r4 + acc_b3;
             o_ccu_output3 <= previous_acc_b4 + acc_r3;

            previous_acc_b3 <= acc_b3;
            previous_acc_r3 <= acc_r3;
            previous_acc_b4 <= acc_b4;
            previous_acc_r4 <= acc_r4;
        end
    end
    else begin
         o_ccu_output1 <=  o_ccu_output1;
         o_ccu_output2 <=  o_ccu_output2;
         o_ccu_output3 <=  o_ccu_output3;
    end
end
endmodule



module systolic_array #(
    MATRIX_SIZE = 3,
    REG_WIDTH = 16,
    DATA_WIDTH = 16
    ) (
    i_clk,
    i_enable,
    i_data_valid,
    i_left_inputs,
    i_top_inputs,
    o_diagonal_outputs,
    o_data_valid,
    o_start);
    
    localparam ARRAY_SIZE = (2*MATRIX_SIZE)-1;
    localparam NUMBER_OF_INPUTS = ARRAY_SIZE; // number of inputs on each side of systolic array
            
    input i_clk;
    input i_enable;
    input i_data_valid;
    input [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] i_left_inputs;
    input [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] i_top_inputs;
    output [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0] o_diagonal_outputs;
    output o_data_valid;
    output reg o_start = 0;
    
    /// output control signals 
    assign o_data_valid = i_data_valid;
    
    localparam REGS_IN_TO_OUT = (2*ARRAY_SIZE+1);
       
    reg data_valid_delay [REGS_IN_TO_OUT-1:0];
    
    integer data_valid_index = 0;
    always @(posedge i_clk) begin
        data_valid_delay[0] <=  i_data_valid;
        for(data_valid_index=0;data_valid_index < REGS_IN_TO_OUT-1; data_valid_index=data_valid_index+1) begin
            data_valid_delay[data_valid_index+1] <= data_valid_delay[data_valid_index];
        end
    end
    
    always @(posedge i_clk) begin
        if(~o_start & data_valid_delay[REGS_IN_TO_OUT-2] & ~data_valid_delay[REGS_IN_TO_OUT-1]) begin
            o_start <= 1;
        end
    end
    
    // systolic array
    wire [REG_WIDTH-1:0] array_input_top [ARRAY_SIZE-1:0]; //REVIEW THE TYPE AFTER ADDING STREAMING MEMORY
    wire [REG_WIDTH-1:0] array_input_left [ARRAY_SIZE-1:0];
    wire [REG_WIDTH-1:0] c_in_left [ARRAY_SIZE-1:0];  // some of them are dummy, TOP AND BOTTOM TAKES THE PREFERNCE OVER LEFT AND RIGHT
    wire [REG_WIDTH-1:0] c_in_top [ARRAY_SIZE-1:0]; // some of them are dummy
    wire [REG_WIDTH-1:0] c_out_right [ARRAY_SIZE-1:0]; // some of them are dummy
    wire [REG_WIDTH-1:0] c_out_bottom [ARRAY_SIZE-1:0]; //some of them are dummy
    wire [REG_WIDTH-1:0] array_output_bottom [ARRAY_SIZE-1:0];
    wire [REG_WIDTH-1:0] array_output_right [ARRAY_SIZE-1:0];
    
    // wires/connections in the systolic arrays
    wire [REG_WIDTH-1:0] horizontal_wires [ARRAY_SIZE-1:0][ARRAY_SIZE-2:0];
    wire [REG_WIDTH-1:0] vertical_wires [ARRAY_SIZE-2:0][ARRAY_SIZE-1:0];
    wire [REG_WIDTH-1:0] diagonal_wires [ARRAY_SIZE-2:0][ARRAY_SIZE-2:0];
     
   // mapping inputs 
    generate 
        genvar i;
        for(i=0; i<ARRAY_SIZE; i=i+1) begin
            assign array_input_left[i] = i_left_inputs[i*DATA_WIDTH +: DATA_WIDTH];
            assign array_input_top[i] = i_top_inputs[i*DATA_WIDTH +: DATA_WIDTH];
        end
    endgenerate   
    
    // mapping outputs
    generate 
        genvar j;
        for(j=0; j<ARRAY_SIZE; j=j+1) begin           /// j = 0 implies bottom-left most diagonal
            if(j < MATRIX_SIZE) begin
                assign o_diagonal_outputs[j*DATA_WIDTH +: DATA_WIDTH] = c_out_bottom[MATRIX_SIZE-1+j];
            end
            else begin
                assign o_diagonal_outputs[j*DATA_WIDTH +: DATA_WIDTH] = c_out_right[ARRAY_SIZE-2+MATRIX_SIZE-j]; // MATRIX_SIZE-1+j-MATRIX_SIZE
            end
        end
    endgenerate
    
    // grounding diagonal inputs  
    generate 
    genvar c_in_index;
        for(c_in_index=0;c_in_index<ARRAY_SIZE;c_in_index=c_in_index+1) begin
            assign c_in_top[c_in_index] = 0;
            assign c_in_left[c_in_index] = 0;
        end
    endgenerate

    // creating the systolic array
    generate ////////
        genvar row_index;
        genvar column_index;
        
        for(row_index = 0;row_index < ARRAY_SIZE; row_index = row_index + 1) begin
            for(column_index = 0;column_index < ARRAY_SIZE; column_index = column_index + 1) begin                 
                // CONNECTING BOUNDARIES
                
                //PE element(.clk(i_clk),.a_n_1(array_input_left[row_index]),.b_n_1(array_input_top[column_index]),.c_n_1(c_in_top[column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(array_input_left[row_index]),.c_ab(diagonal_wires[row_index][column_index]));
            
            
                // LOGICALLY CONNECTING PART
                 if(row_index < MATRIX_SIZE -1) begin
                    if(column_index < MATRIX_SIZE+row_index) begin     
                        if(row_index == 0 && column_index==0)  begin // LEFT TOP // covering corners DEPENDS ON THE CONDITION
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(array_input_left[row_index]),.b_n_1(array_input_top[column_index]),.c_n_1(c_in_top[column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));
                        end
                        else if(column_index == 0) begin// LEFT inputs
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(array_input_left[row_index]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(c_in_left[row_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));
                        end
                        else if(row_index == 0) begin // TOP inputs
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(array_input_top[column_index]),.c_n_1(c_in_top[column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));
                        end // internal elements
                        else begin 
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));
                        end
                        //PE element(.clk(clk),.a_n_1(),.b_n_1(),.c_n_1(),.a_n(),.b_n(),.c_ab());
                    end
                    else begin
                        if(row_index == 0 && column_index==ARRAY_SIZE-1)  begin // RIGHT TOP // covering corners DEPENDS ON THE CONDITION
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(array_input_top[column_index]),.a_n(array_output_right[row_index]),.b_n(vertical_wires[row_index][column_index]));
                        end
                        else if(column_index == ARRAY_SIZE-1) begin// RIGHT 
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.a_n(array_output_right[row_index]),.b_n(vertical_wires[row_index][column_index]));
                        end
                        else if(row_index == 0) begin // TOP inputs
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(array_input_top[column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]));
                        end // internal elements
                        else begin 
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]));
                        end                    
                        //delay_element element(.clk(),.a_n_1(),.b_n_1(),.a_n(),.b_n());
                    end
                end
                else if(row_index == MATRIX_SIZE-1) begin
                    if(column_index == 0) begin //LEFT end
                       PE element(.clk(i_clk),.enable(i_enable),.a_n_1(array_input_left[row_index]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(c_in_left[row_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));
                    end
                    else if(column_index == ARRAY_SIZE-1) begin // RIGHT end
                       PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(array_output_right[row_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(c_out_right[row_index]));                    
                    end
                    else begin //internal elements
                       PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));                        
                    end
                    // PE element(.clk(clk),.a_n_1(),.b_n_1(),.c_n_1(),.a_n(),.b_n(),.c_ab());
                end
                else begin
                    if(column_index < MATRIX_SIZE+row_index-ARRAY_SIZE) begin // intended : MATRIX_SIZE - 1 + row_index - ARRAY_SIZE+1
                        if((row_index == ARRAY_SIZE-1) && (column_index == 0)) begin//LEFT BOTTOM corner
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(array_input_left[row_index]),.b_n_1(vertical_wires[row_index-1][column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]));
                        end
                        else if(column_index == 0) begin //LEFT
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(array_input_left[row_index]),.b_n_1(vertical_wires[row_index-1][column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(array_output_bottom[column_index]));
                        end
                        else if(row_index == ARRAY_SIZE - 1) begin //BOTTOM
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(array_output_bottom[column_index]));
                        end
                        else begin
                            delay_element element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]));
                        end
                        //delay_element element(.clk(),.a_n_1(),.b_n_1(),.a_n(),.b_n());
                    end
                    else begin
                        if((row_index == ARRAY_SIZE-1) && (column_index == ARRAY_SIZE-1)) begin//RIGHT BOTTOM
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(array_output_right[row_index]),.b_n(array_output_bottom[column_index]),.c_ab(c_out_bottom[column_index]));  
                        end
                        else if(column_index == ARRAY_SIZE-1) begin // RIGHT
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(array_output_right[row_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(c_out_right[row_index]));  
                        end
                        else if(row_index == ARRAY_SIZE - 1) begin //BOTTOM
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(horizontal_wires[row_index][column_index]),.b_n(array_output_bottom[column_index]),.c_ab(c_out_bottom[column_index]));  
                        end
                        else begin
                            PE element(.clk(i_clk),.enable(i_enable),.a_n_1(horizontal_wires[row_index][column_index-1]),.b_n_1(vertical_wires[row_index-1][column_index]),.c_n_1(diagonal_wires[row_index-1][column_index-1]),.a_n(horizontal_wires[row_index][column_index]),.b_n(vertical_wires[row_index][column_index]),.c_ab(diagonal_wires[row_index][column_index]));   
                        end
                        
                        //PE element(.clk(clk),.a_n_1(),.b_n_1(),.c_n_1(),.a_n(),.b_n(),.c_ab());
                    end
                end           
            end
            
        end
    
    endgenerate//////////
    // systolic array created

endmodule


module PE #(parameter REG_WIDTH = 16) (clk,enable,a_n_1,b_n_1,c_n_1,a_n,b_n,c_ab);
    
    input clk;
    input enable;
    input [REG_WIDTH-1:0] a_n_1;
    input [REG_WIDTH-1:0] b_n_1;
    input [REG_WIDTH-1:0] c_n_1;
    output reg [REG_WIDTH-1:0] a_n = 0; 
    output reg [REG_WIDTH-1:0] b_n = 0; 
    output reg [REG_WIDTH-1:0] c_ab = 0;
    
    
        
    always @(posedge clk) begin
        if(enable) begin
            a_n <= a_n_1;
            b_n <= b_n_1;
            c_ab<= a_n_1 * b_n_1 + c_n_1;        
        end
    end
    
      
    
endmodule
module delay_element #(parameter REG_WIDTH = 16) (clk,enable,a_n_1,b_n_1,a_n,b_n);
    
    input clk;
    input enable;
    input [REG_WIDTH-1:0] a_n_1;
    input [REG_WIDTH-1:0] b_n_1;
    output reg [REG_WIDTH-1:0] a_n = 0; 
    output reg [REG_WIDTH-1:0] b_n = 0; 
     
    always @(posedge clk) begin
        if(enable) begin
            a_n <= a_n_1;
            b_n <= b_n_1;
        end
    end
    endmodule

