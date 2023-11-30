
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


//wire [((2 * MATRIX_SIZE - 1)*DATA_WIDTH)-1:0]  diagonal;-----------mark
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

output reg [DATA_WIDTH - 1: 0] o_ccu_output1;
output reg [DATA_WIDTH - 1: 0] o_ccu_output2;
output reg [DATA_WIDTH - 1: 0] o_ccu_output3;

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

logic [DATA_WIDTH-1:0] a[5:0];
logic [DATA_WIDTH-1:0] b[5:0];
logic [DATA_WIDTH-1:0] out[5:0];
    
//For simulation purpose only
//initial begin
//    o_ccu_output1 = 0; o_ccu_output2 = 0; o_ccu_output3 = 0;
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
            a[0] = acc_b5; b[0] = b_5;
            acc_b5 <= out[0];
            a[1] = acc_b4; b[1] = b_4;
            acc_b4 <= out[1];
            a[2] = acc_r4; b[2] = r_4;
            acc_r4 <= out[2];
        end
        else if(count == 'd2) begin
            a[3] = acc_b5; b[3] = b_5;	
            o_ccu_output1 <= out[3];
            a[4] = previous_acc_r4; b[4] = acc_b3;
            o_ccu_output2 <= out[4];
            a[5] = previous_acc_b4; b[5] = acc_r3;
            o_ccu_output3 <= out[5];

            previous_acc_b3 <= acc_b3;
            previous_acc_r3 <= acc_r3;
            previous_acc_b4 <= acc_b4;
            previous_acc_r4 <= acc_r4;
        end
    end
    else begin
        o_ccu_output1 <= o_ccu_output1;
        o_ccu_output2 <= o_ccu_output2;
        o_ccu_output3 <= o_ccu_output3;
    end
end

    genvar i;
    generate
    for(i = 0; i< 5; i= i+1) begin
    //HP mac unit instantiated over here
    fp_add_sub add_sub(.a(a[i]),.b(b[i]), .out(out[i]));
    end
    endgenerate
    
    
endmodule

/*


module fp_add_sub #(parameter I_WIDTH=16,M_WIDTH=7,E_WIDTH=8)( input [I_WIDTH-1:0] a,b,
         output reg  [I_WIDTH-1:0]  out );

   	wire s_a ,s_b; //sign
   	wire [E_WIDTH-1:0] e_a,e_b; //exponent
	wire [M_WIDTH-1:0] m_a,m_b; //matissa of input 
    	wire [M_WIDTH:0] t_m_a,t_m_b; //temp mantissa with hidden 1 bit 
	reg [E_WIDTH-1:0] shamt; //shift amount by which smaller mantissa should be shifted it is taken large enough to store the shftamount 
	// shamt<= mantissa width it is approximately equal to log2(m_width)
	
	reg [M_WIDTH:0] s_m_a,s_m_b; //shifted mantissa bit 
	reg [M_WIDTH+1:0] t_m_s; //temp mantissa sum
	reg [M_WIDTH:0] t_m_d; // temp mantissa diff 
	reg [M_WIDTH-1:0] f_m;//final mantissa 
	reg [E_WIDTH-1:0] f_e; // final exponnt
	reg f_s; // final sign
	reg [E_WIDTH-1:0] shamt_l;//shiftamount left 
	reg s;// flag for special case 
	reg[I_WIDTH-1:0] out_s,out_n; //special case output and normal case output 
         
         
	


// extracting sign mantissa and exponent
    assign s_a = a[I_WIDTH-1];
    assign e_a = a[I_WIDTH-2:M_WIDTH];
    assign m_a = a[M_WIDTH-1:0];
    assign s_b = b[I_WIDTH-1];
    assign e_b = b[I_WIDTH-2:M_WIDTH];
    assign m_b = b[M_WIDTH-1:0];

// preappending hidden bit 1 in the mantissa for shifting
	assign t_m_a = {1'b1,m_a};
	assign t_m_b = {1'b1,m_b};
	
	//compare variable to compare for special cases
     wire [E_WIDTH-1:0] e_comp;
     assign e_comp={E_WIDTH{1'b1}};
     
     // variable for bias 
     wire [E_WIDTH-2:0] BIAS; // this is of size exponent bit size -1
     wire [E_WIDTH-1:0] OVER;
     assign BIAS = {E_WIDTH-1{1'b1}};
     assign OVER=BIAS<<1; // 2*bias is used for overflow condition
	
	// special case signals
	 wire [I_WIDTH-1:0] NAN,P_INFI,N_INFI,ZERO;
     assign NAN={1'b0,{E_WIDTH{1'b1}},1'b1,{(M_WIDTH-1){1'b0}}}; // NAN REPRESENTATIOIN IS CHOOSEN TO BE 1ST BIT OF MANTISSA IS 1
     assign P_INFI={1'b0,{E_WIDTH{1'b1}},{(M_WIDTH){1'b0}}}; //  (+)VE INFINITY
     assign N_INFI={1'b1,{E_WIDTH{1'b1}},{(M_WIDTH){1'b0}}}; // -VE INFINITY
     assign ZERO={I_WIDTH{1'b0}};


	always @(*)
	begin
		
		 if ((e_a == e_comp) && (e_b==e_comp)) begin 
		    s=1'b1;
		 	if((m_a!=0)||(m_b!=0)) out_s=NAN;//checking for NaN input 
			else begin
		 	out_s = (s_a!=s_b) ? NAN:((s_a)?N_INFI:P_INFI); // if sign of both are not same than NAN otherwise +or - infinity depends upon sign
			end
		 end
	 	else if  ((e_a == e_comp) || (e_b==e_comp)) begin  
	 	    s=1'b1;
			if(e_a==e_comp) begin 
			out_s=(m_a!=0)? NAN: ((s_a)?N_INFI:P_INFI);
			end
			else begin
		 	out_s = (m_b !=0)? NAN :((s_b)?N_INFI:P_INFI);
			end
		end
		else if ((e_a == 0) && (e_b ==0)) begin 
		s=1'b1;
		out_s = ZERO;
		end

		else if ((e_a == 0) || (e_b ==0)) begin 
		    s=1'b1;
			out_s = (e_a==0)? b:a;
		end
		else 
		 begin 
		  s=1'b0;
		  out_s=ZERO;
		 end
	end
		 
		 
		
//---------------------------------FOR NORMAL CASES---------------------------------------------------------//
 always@(*)
 begin
    shamt_l=0;
	if (e_a > e_b)
	 begin 
			shamt = e_a - e_b;
			//s_m_b= (shamt >8'd23)? 23'd0:t_m_b>>shamt;
			if (shamt>M_WIDTH-1)  out_n=a;
			   
			else
	         begin
			
			
			     s_m_b= t_m_b>>shamt;
			     s_m_a = t_m_a;
			     f_e = e_a;
			     f_s = s_a;
			     if(s_a == s_b)
			     begin
		       		 t_m_s = s_m_a+s_m_b;
               				 if (t_m_s[M_WIDTH+1] ==1'b1) begin //overflow condition
                       			 f_m=t_m_s[M_WIDTH:1];//shifting mantissa right by 1 bit and adding 1 to exponent
                       			 f_e= f_e+1; // overflow will be detected as there will be no overflow due to addition of 1
               				 end
               				 else begin
                       			 f_m= t_m_s[M_WIDTH-1:0]; //rejecting 2 msb bits(rejecting hidden 1)
                      			 f_e= f_e;
               				 end
			 
			     end
			     else begin 
				        t_m_d = s_m_a - s_m_b;
				//leading zero detector 
			 for (int i = M_WIDTH; i >= 0; i = i - 1) begin
                                if (t_m_d[i] == 1'b1) begin
                                break;
                                end
                                shamt_l = shamt_l + 1;
                                end
                     
                    
                
			    //end of leading zero detector and setting value of shift amount left 
                    		     t_m_d= t_m_d<<shamt_l; //shifting left to get the leading msb 1
				     f_m = t_m_d[M_WIDTH-1:0]; //selecting lower MANTISSA bits of lsb

				     f_e = (f_e>shamt_l)?f_e - shamt_l: 0; //decreasing the value of exponent by no. of leading zeroes
			     end
		
		
		// arranging output and checking for overflow 
		      if (f_e>OVER) 
	          out_n=(f_s)? N_INFI:P_INFI; //overflow condition
              else if(f_e<1) 
              out_n=ZERO; //underflow condition
              else 
                out_n = {f_s,f_e,f_m};
              
          end
		end
		
	 	else if (e_b > e_a) 
	 	begin
			shamt = e_b- e_a;
		    
			if(shamt>M_WIDTH-1)  out_n=b;
			else begin 
			
			 s_m_a= t_m_a>>shamt;
			 s_m_b = t_m_b;
			 f_e = e_b;
			 f_s = s_b;
			 if(s_a == s_b) begin

				t_m_s = s_m_a+s_m_b;
               			 if (t_m_s[M_WIDTH+1] ==1'b1) begin //overflow condition
                       		 f_m=t_m_s[M_WIDTH:1];//shifting mantissa by 1 bit and adding 1 to exponent
                       		 f_e= f_e+1;
               			 end
               			 else begin
                       		 f_m= t_m_s[M_WIDTH-1:0]; //rejecting 2 msb bits
                       		 f_e= f_e;
               			 end
			  end
			 else begin
                t_m_d = s_m_b - s_m_a;
			for (int i = M_WIDTH; i >= 0; i = i - 1) begin
                        if (t_m_d[i] == 1'b1) begin
                          break;
                        end
                        shamt_l = shamt_l + 1;
                        end //end of leading zero detector and setting value of shift amount left 
                  t_m_d= t_m_d<<shamt_l; //shifting left to get the leading msb 1
                  f_m = t_m_d[M_WIDTH-1:0]; //selecting lower 23 bits of lsb
                  f_e = (f_e>shamt_l)?f_e - shamt_l:0; //decreasing the value of exponent by no. of leading zeroes
              end
           
           	if (f_e>OVER) 
	         out_n=(f_s)? N_INFI:P_INFI; //overflow condition
            else if(f_e<1) 
               out_n=ZERO; //underflow condition
            else 
                out_n = {f_s,f_e,f_m};
      
         end


	 end
	else begin
			f_e = e_a;
			f_s = (t_m_a>t_m_b)? s_a:s_b;
			if (s_a == s_b) begin 
		        	         t_m_s = t_m_a+t_m_b;
               				 if (t_m_s[M_WIDTH+1] ==1'b1) begin //overflow condition
                       			 f_m=t_m_s[M_WIDTH:1];//shifting mantissa by 1 bit and adding 1 to exponent
                       			 f_e= f_e+1;
               				 end
               				 else begin
                       			 f_m= t_m_s[M_WIDTH-1:0]; //rejecting 2 msb bits
                       			 f_e= f_e;
               				 end
			 end
			 else begin
               		t_m_d = (t_m_a>t_m_b)? (t_m_a - t_m_b) :(t_m_b -t_m_a);
			for (int i = M_WIDTH; i >= 0; i = i - 1) begin
                        if (t_m_d[i] == 1'b1) begin
                          break;
                        end
                        shamt_l = shamt_l + 1;
                        end
                   t_m_d= t_m_d<<shamt_l; //shifting left to get the leading msb 1
                   f_m = t_m_d[M_WIDTH-1:0]; //selecting lower MANTISSA bits of lsb
                    f_e = (f_e>shamt_l)?f_e - shamt_l:0; //decreasing the value of exponent by no. of leading zeroes
              end
	 		 if (f_e>OVER) 
	         out_n=(f_s)? N_INFI:P_INFI; //overflow condition
            else if(f_e<1) 
               out_n=ZERO; //underflow condition
            else 
              out_n = {f_s,f_e,f_m};
       
	
	 end
	 //  arranging result and checking for overflow 

	end
	

	always@(*)
	begin 
        out=s?out_s:out_n;
	end

endmodule
*/

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

module PE #(parameter I_WIDTH=16,M_WIDTH=10,E_WIDTH=5)
        ( input [I_WIDTH-1:0] a_n_1,b_n_1,c_n_1,
          input clk,enable,
          output reg  [I_WIDTH-1:0]  a_n,b_n, 
          output reg[I_WIDTH-1:0] c_ab );
          //reg [I_WIDTH-1:0] aa,bb,cc;
          wire [I_WIDTH-1:0] out_a, out_f;
          
          //////////////////////adder and multiplier blocks /////////
          fp_mul mul(.a(a_n_1),.b(b_n_1),.out(out_a));
        
          fp_add_sub add(.a(out_a),.b(c_n_1),.out(out_f));
          
          ///////////////////////////////////////////////////////////
          
          
          always@(posedge clk)
          begin 
          if(enable) begin
            a_n <=a_n_1;
            b_n <=b_n_1;
            c_ab <= out_f;
            
          end 
          end

endmodule


module fp_add_sub #(parameter I_WIDTH=16,M_WIDTH=7,E_WIDTH=8)( input [I_WIDTH-1:0] a,b,
         output reg  [I_WIDTH-1:0]  out );

   	wire s_a ,s_b; //sign
   	wire [E_WIDTH-1:0] e_a,e_b; //exponent
	wire [M_WIDTH-1:0] m_a,m_b; //matissa of input 
    	wire [M_WIDTH:0] t_m_a,t_m_b; //temp mantissa with hidden 1 bit 
	reg [E_WIDTH-1:0] shamt; //shift amount by which smaller mantissa should be shifted it is taken large enough to store the shftamount 
	// shamt<= mantissa width it is approximately equal to log2(m_width)
	
	reg [M_WIDTH:0] s_m_a,s_m_b; //shifted mantissa bit 
	reg [M_WIDTH+1:0] t_m_s; //temp mantissa sum
	reg [M_WIDTH:0] t_m_d; // temp mantissa diff 
	reg [M_WIDTH-1:0] f_m;//final mantissa 
	reg [E_WIDTH-1:0] f_e; // final exponnt
	reg f_s; // final sign
	reg [E_WIDTH-1:0] shamt_l;//shiftamount left 
	reg s;// flag for special case 
	reg[I_WIDTH-1:0] out_s,out_n; //special case output and normal case output 
         
         
	


// extracting sign mantissa and exponent
    assign s_a = a[I_WIDTH-1];
    assign e_a = a[I_WIDTH-2:M_WIDTH];
    assign m_a = a[M_WIDTH-1:0];
    assign s_b = b[I_WIDTH-1];
    assign e_b = b[I_WIDTH-2:M_WIDTH];
    assign m_b = b[M_WIDTH-1:0];

// preappending hidden bit 1 in the mantissa for shifting
	assign t_m_a = {1'b1,m_a};
	assign t_m_b = {1'b1,m_b};
	
	//compare variable to compare for special cases
     wire [E_WIDTH-1:0] e_comp;
     assign e_comp={E_WIDTH{1'b1}};
     
     // variable for bias 
     wire [E_WIDTH-2:0] BIAS; // this is of size exponent bit size -1
     wire [E_WIDTH-1:0] OVER;
     assign BIAS = {E_WIDTH-1{1'b1}};
     assign OVER=BIAS<<1; // 2*bias is used for overflow condition
	
	// special case signals
	 wire [I_WIDTH-1:0] NAN,P_INFI,N_INFI,ZERO;
     assign NAN={1'b0,{E_WIDTH{1'b1}},1'b1,{(M_WIDTH-1){1'b0}}}; // NAN REPRESENTATIOIN IS CHOOSEN TO BE 1ST BIT OF MANTISSA IS 1
     assign P_INFI={1'b0,{E_WIDTH{1'b1}},{(M_WIDTH){1'b0}}}; //  (+)VE INFINITY
     assign N_INFI={1'b1,{E_WIDTH{1'b1}},{(M_WIDTH){1'b0}}}; // -VE INFINITY
     assign ZERO={I_WIDTH{1'b0}};


	always @(*)
	begin
		
		 if ((e_a == e_comp) && (e_b==e_comp)) begin 
		    s=1'b1;
		 	if((m_a!=0)||(m_b!=0)) out_s=NAN;//checking for NaN input 
			else begin
		 	out_s = (s_a!=s_b) ? NAN:((s_a)?N_INFI:P_INFI); // if sign of both are not same than NAN otherwise +or - infinity depends upon sign
			end
		 end
	 	else if  ((e_a == e_comp) || (e_b==e_comp)) begin  
	 	    s=1'b1;
			if(e_a==e_comp) begin 
			out_s=(m_a!=0)? NAN: ((s_a)?N_INFI:P_INFI);
			end
			else begin
		 	out_s = (m_b !=0)? NAN :((s_b)?N_INFI:P_INFI);
			end
		end
		else if ((e_a == 0) && (e_b ==0)) begin 
		s=1'b1;
		out_s = ZERO;
		end

		else if ((e_a == 0) || (e_b ==0)) begin 
		    s=1'b1;
			out_s = (e_a==0)? b:a;
		end
		else 
		 begin 
		  s=1'b0;
		  out_s=ZERO;
		 end
	end
		 
		 
		
//---------------------------------FOR NORMAL CASES---------------------------------------------------------//
 always@(*)
 begin
    shamt_l=0;
	if (e_a > e_b)
	 begin 
			shamt = e_a - e_b;
			//s_m_b= (shamt >8'd23)? 23'd0:t_m_b>>shamt;
			if (shamt>M_WIDTH-1)  out_n=a;
			   
			else
	         begin
			
			
			     s_m_b= t_m_b>>shamt;
			     s_m_a = t_m_a;
			     f_e = e_a;
			     f_s = s_a;
			     if(s_a == s_b)
			     begin
		       		 t_m_s = s_m_a+s_m_b;
               				 if (t_m_s[M_WIDTH+1] ==1'b1) begin //overflow condition
                       			 f_m=t_m_s[M_WIDTH:1];//shifting mantissa right by 1 bit and adding 1 to exponent
                       			 f_e= f_e+1; // overflow will be detected as there will be no overflow due to addition of 1
               				 end
               				 else begin
                       			 f_m= t_m_s[M_WIDTH-1:0]; //rejecting 2 msb bits(rejecting hidden 1)
                      			 f_e= f_e;
               				 end
			 
			     end
			     else begin 
				        t_m_d = s_m_a - s_m_b;
				//leading zero detector 
			 for (int i = M_WIDTH; i >= 0; i = i - 1) begin
                                if (t_m_d[i] == 1'b1) begin
                                break;
                                end
                                shamt_l = shamt_l + 1;
                                end
                     
                    
                
			    //end of leading zero detector and setting value of shift amount left 
                    		     t_m_d= t_m_d<<shamt_l; //shifting left to get the leading msb 1
				     f_m = t_m_d[M_WIDTH-1:0]; //selecting lower MANTISSA bits of lsb

				     f_e = (f_e>shamt_l)?f_e - shamt_l: 0; //decreasing the value of exponent by no. of leading zeroes
			     end
		
		
		// arranging output and checking for overflow 
		      if (f_e>OVER) 
	          out_n=(f_s)? N_INFI:P_INFI; //overflow condition
              else if(f_e<1) 
              out_n=ZERO; //underflow condition
              else 
                out_n = {f_s,f_e,f_m};
              
          end
		end
		
	 	else if (e_b > e_a) 
	 	begin
			shamt = e_b- e_a;
		    
			if(shamt>M_WIDTH-1)  out_n=b;
			else begin 
			
			 s_m_a= t_m_a>>shamt;
			 s_m_b = t_m_b;
			 f_e = e_b;
			 f_s = s_b;
			 if(s_a == s_b) begin

				t_m_s = s_m_a+s_m_b;
               			 if (t_m_s[M_WIDTH+1] ==1'b1) begin //overflow condition
                       		 f_m=t_m_s[M_WIDTH:1];//shifting mantissa by 1 bit and adding 1 to exponent
                       		 f_e= f_e+1;
               			 end
               			 else begin
                       		 f_m= t_m_s[M_WIDTH-1:0]; //rejecting 2 msb bits
                       		 f_e= f_e;
               			 end
			  end
			 else begin
                t_m_d = s_m_b - s_m_a;
			for (int i = M_WIDTH; i >= 0; i = i - 1) begin
                        if (t_m_d[i] == 1'b1) begin
                          break;
                        end
                        shamt_l = shamt_l + 1;
                        end //end of leading zero detector and setting value of shift amount left 
                  t_m_d= t_m_d<<shamt_l; //shifting left to get the leading msb 1
                  f_m = t_m_d[M_WIDTH-1:0]; //selecting lower 23 bits of lsb
                  f_e = (f_e>shamt_l)?f_e - shamt_l:0; //decreasing the value of exponent by no. of leading zeroes
              end
           
           	if (f_e>OVER) 
	         out_n=(f_s)? N_INFI:P_INFI; //overflow condition
            else if(f_e<1) 
               out_n=ZERO; //underflow condition
            else 
                out_n = {f_s,f_e,f_m};
      
         end


	 end
	else begin
			f_e = e_a;
			f_s = (t_m_a>t_m_b)? s_a:s_b;
			if (s_a == s_b) begin 
		        	         t_m_s = t_m_a+t_m_b;
               				 if (t_m_s[M_WIDTH+1] ==1'b1) begin //overflow condition
                       			 f_m=t_m_s[M_WIDTH:1];//shifting mantissa by 1 bit and adding 1 to exponent
                       			 f_e= f_e+1;
               				 end
               				 else begin
                       			 f_m= t_m_s[M_WIDTH-1:0]; //rejecting 2 msb bits
                       			 f_e= f_e;
               				 end
			 end
			 else begin
               		t_m_d = (t_m_a>t_m_b)? (t_m_a - t_m_b) :(t_m_b -t_m_a);
			for (int i = M_WIDTH; i >= 0; i = i - 1) begin
                        if (t_m_d[i] == 1'b1) begin
                          break;
                        end
                        shamt_l = shamt_l + 1;
                        end
                   t_m_d= t_m_d<<shamt_l; //shifting left to get the leading msb 1
                   f_m = t_m_d[M_WIDTH-1:0]; //selecting lower MANTISSA bits of lsb
                    f_e = (f_e>shamt_l)?f_e - shamt_l:0; //decreasing the value of exponent by no. of leading zeroes
              end
	 		 if (f_e>OVER) 
	         out_n=(f_s)? N_INFI:P_INFI; //overflow condition
            else if(f_e<1) 
               out_n=ZERO; //underflow condition
            else 
              out_n = {f_s,f_e,f_m};
       
	
	 end
	 //  arranging result and checking for overflow 

	end
	

	always@(*)
	begin 
        out=s?out_s:out_n;
	end

endmodule


module fp_mul#(parameter I_WIDTH=16, M_WIDTH=7, E_WIDTH=8)( input [I_WIDTH-1:0] a,b,
         output reg  [I_WIDTH-1:0]  out );
    /*    parameter I_WIDTH =32;
        parameter M_WIDTH =23;
        parameter E_WIDTH=8 */
        
        
         
        
        wire s_a ,s_b; //sign
        wire [E_WIDTH-1:0] e_a,e_b; //exponent
	    wire [M_WIDTH-1:0] m_a,m_b; //matissa of input 
        wire [M_WIDTH:0] t_m_a,t_m_b; //temp mantissa with hidden 1 bit 
        reg [(2*M_WIDTH)+1:0] t_m_p; // temp mantissa product
        reg [M_WIDTH-1:0] f_m;//final mantissa
        reg [E_WIDTH-1:0] f_e;// final exponent
	    reg [E_WIDTH:0] t_e;// temporary exponent OF 
        wire f_s; // final sign
	    reg [I_WIDTH-1:0] out_s,out_n; //output in special cases and normal case
	    reg s; //flag for special case detection
		reg [M_WIDTH+1:0] r_m; //temporary round mantissa of 25 bits
	    
	    
	    
	    
	    //reg [E_WIDTH-1:0] a;
// extracting sign mantissa and exponent
        assign s_a = a[I_WIDTH-1];
        assign e_a = a[I_WIDTH-2:M_WIDTH];
        assign m_a = a[M_WIDTH-1:0];
        assign s_b = b[I_WIDTH-1];
        assign e_b = b[I_WIDTH-2:M_WIDTH];
        assign m_b = b[M_WIDTH-1:0];
//determining sign
	    assign f_s = s_a^s_b;
// preappending hidden bit 1 in the mantissa for shifting
        assign t_m_a = {1'b1,m_a};
	    assign t_m_b = {1'b1,m_b};
	    
   // variables for compare of infinity and zero input 
   	    wire [E_WIDTH-1:0] e_comp;
        assign e_comp={E_WIDTH{1'b1}};
     
     // variable for bias 
        wire [E_WIDTH-2:0] BIAS; // this is of size exponent bit size -1
        wire [E_WIDTH-1:0] OVER;
        assign BIAS = {E_WIDTH-1{1'b1}};
        assign OVER=BIAS<<1; // 2*bias is used for overflow condition
     
     // variable for overflow detection
     
     
    
     // VARIABLES FOR COMPARE AND SPECIAL CASES 
        wire [I_WIDTH-1:0] NAN,INFINITY,ZERO;
        assign NAN={1'b0,{E_WIDTH{1'b1}},1'b1,{(M_WIDTH-1){1'b0}}}; // NAN REPRESENTATIOIN IS CHOOSEN TO BE 1ST BIT OF MANTISSA IS 1
        assign INFINITY={f_s,{E_WIDTH{1'b1}},{(M_WIDTH){1'b0}}}; // IT WILL GENERATE (+)VE AND (-)VE INFINITY DEPENDING UPON SIGN
        assign ZERO={I_WIDTH{1'b0}};
     

       
     
	
	// for special inputs in IEEE754
	always@(*)
	begin 
	        if ((e_a == e_comp) && (e_b==e_comp)) begin
			  s=1'b1;
		 	  if((m_a!=0)|(m_b!=0)) out_s=NAN;//checking for NaN input 
			  else begin
                  out_s= (f_s)? NAN:INFINITY;
			  end
             end

            else if ((e_a == e_comp) && (e_b ==0)) begin
			   s=1'b1;
			   out_s=NAN; //output is NaN
		    end
                 //output is zero  
		    else if ((e_a == 0) && (e_b ==e_comp)) begin
			   s=1'b1;
			   out_s=NAN; //output is NaN
      		end
		   else if ((e_a ==0) && (e_b ==0)) begin
               s=1'b1;
			   out_s =ZERO;
           end 
		   else if ((e_a == e_comp) || (e_b ==e_comp)) begin
			 s=1'b1;
			 if(e_a==e_comp) begin 
			 out_s=(m_a!=0)?NAN:INFINITY;
			 end
			 else begin
		 	 out_s = (m_b !=0)?NAN:INFINITY;
			 end
		   end
		   else if((e_a==0)||(e_b==0)) begin
		        s=1'b1;
			   out_s=ZERO; //output is zero 
		   end
		   else begin 
			   s=1'b0;
			   out_s=ZERO;
		   end
    end
    	
    	
	// for the Normal Input 
	always@(*)
	begin  
		t_e =  e_a+e_b;
		t_m_p = t_m_a*t_m_b;
		if (t_m_p[2*M_WIDTH+1])
		begin
			//t_m_p=t_m_p>>1; this will require a aditional resource 
		//	f_m = t_m_p[2*M_WIDTH:M_WIDTH+1]; //shifting the temp mantissa right by one bit and then selecting 23 MSBs 

			t_e= t_e+1'b1; //exponent is increased by 1 as mantissa is shifted right by one bit 
			//end
			//else
			//f_m=t_m_p[2*M_WIDTH-1:M_WIDTH];
			//rounding logic
			if(t_m_p[M_WIDTH]==1'b1) // checking if guard bit is 1
			begin
				if(t_m_p[M_WIDTH-1:0]==0) //round to even 
				begin 
					if(t_m_p[M_WIDTH+1]==0) f_m=t_m_p[2*M_WIDTH:M_WIDTH+1]; //checking previous bit to guard bit 
					else 
					begin
						r_m = t_m_p[2*M_WIDTH+1:M_WIDTH+1] + 1; //for making round to even 
						if(r_m[M_WIDTH+1]) 
						begin
							f_m=r_m[M_WIDTH:1];
							t_e=t_e+1; //again normalizing the result in case of overflow 
						end
						else f_m=r_m[M_WIDTH-1:0];
					
					end

				end
			
				else //round up 
				begin
					r_m = t_m_p[2*M_WIDTH+1:M_WIDTH+1] + 1;
					if(r_m[M_WIDTH+1]) 
						begin
							f_m=r_m[M_WIDTH:1];
							t_e=t_e+1; //again normalizing the result in case of overflow 
						end
						else f_m=r_m[M_WIDTH-1:0];

				end
			end
			else f_m = t_m_p[2*M_WIDTH:M_WIDTH+1]; // guard bit zero then simply truncating the bits
		end
        // condition for no overflow while multiplication
		else
		begin 
			//f_m= t_m_p[2*M_WIDTH-1:M_WIDTH]; //selecting higher Mantisaa bits
			if(t_m_p[M_WIDTH-1]==1'b1) // checking if guard bit is 1. now this is guard bit 
			begin
				if(t_m_p[M_WIDTH-2:0]==0) //round to even 
				begin 
					if(t_m_p[M_WIDTH]==0) f_m=t_m_p[2*M_WIDTH-1:M_WIDTH]; //checking previous bit to guard bit 
					else 
					begin
						r_m = t_m_p[2*M_WIDTH:M_WIDTH] + 1; //for making round to even 
						if(r_m[M_WIDTH+1]) 
						begin
							f_m=r_m[M_WIDTH:1];
							t_e=t_e+1; //again normalizing the result in case of overflow 
						end
						else f_m=r_m[M_WIDTH-1:0];
					
					end

				end
				else //round up 
				begin
					r_m = t_m_p[2*M_WIDTH:M_WIDTH] + 1;
					if(r_m[M_WIDTH+1]) 
						begin
							f_m=r_m[M_WIDTH:1];
							t_e=t_e+1; //again normalizing the result in case of overflow 
						end
						else f_m=r_m[M_WIDTH-1:0];

				end
			end
			else f_m = t_m_p[2*M_WIDTH-1:M_WIDTH]; // guard bit zero then simply truncating the bits selecting 23 bit msb
			
			
		end
		//t_e=t_e-BIAS; //substractiong extra bias which got added due to addition of exponent
		if (t_e<=BIAS) out_n=ZERO; // If t_e will be less than bia then we will get -ve number which will be underflow condition
		else if ((t_e-BIAS)>OVER) out_n = INFINITY;
		else begin
		
		  f_e=t_e-BIAS;
		  out_n={f_s,f_e,f_m};
		
		end
		



	end
	// checking for expont overflow and underflow 
	always @(*)
	begin 
	
	   out=(s)? out_s:out_n;
	
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
