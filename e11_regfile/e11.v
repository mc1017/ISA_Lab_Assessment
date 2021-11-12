module regfile (
	input logic clk,
	input logic write_enable,
	input logic [1:0] write_index,
	input logic [31:0] write_data,
	input logic [1:0] read_a_index,
	output logic [31:0] read_a_data,
	input logic [1:0] read_b_index,
	output logic [31:0] read_b_data
	); 
	
	logic[31:0] reg0;
    logic[31:0] reg1;
    logic[31:0] reg2;
    logic[31:0] reg3;
	
	assign read_a_data = 
		 (read_a_index==0) ? 0 :
		 (read_a_index==1) ? reg1 : 
		 (read_a_index==2) ? reg2 :
		 (read_a_index==3) ? reg3 : 
		 16'hxxxx;
		 
	assign read_b_data = 
		 (read_b_index==0) ? 0 :
		 (read_b_index==1) ? reg1 : 
		 (read_b_index==2) ? reg2 :
		 (read_b_index==3) ? reg3 : 
		 16'hxxxx;
	
	always_ff @(posedge clk) begin
        reg0 <= 0;
        reg1 <= (write_enable && write_index==1) ? write_data : reg1;
        reg2 <= (write_enable && write_index==2) ? write_data : reg2;
        reg3 <= (write_enable && write_index==3) ? write_data : reg3;
    end	
	
endmodule 