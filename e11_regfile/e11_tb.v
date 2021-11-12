module e11_tb (); 
	
	logic clk;
	logic write_enable;
	logic [1:0] write_index;
	logic [31:0] write_data;
	logic [1:0] read_a_index;
	logic [31:0] read_a_data;
	logic [1:0] read_b_index;
	logic [31:0] read_b_data;
	logic [1:0] i; 
	
	initial begin
		$dumpfile("e11_tb.vcd"); 
		$dumpvars(0, e11_tb); 
		
		clk = 0; 
		#5; 
		forever begin 
			clk = !clk; 
			#5; 
		end 
	end 
	
	initial begin 
		write_enable = 1; 
		i = 0; 
		#4; 
		repeat (4) begin 
			write_index = i; 
			write_data = i; 
			i += 1; 
			#10;
		end 
		write_enable = 0; 
		i = 0; 
		repeat (4) begin 
			read_a_index = i; 
			#1; 
			assert(read_a_data == read_a_index);
			i += 1; 
		end 
		i = 0; 
		repeat (4) begin 
			read_a_index = i; 
			#1; 
			assert(read_a_data == read_a_index);
			i += 1; 
		end 
		$finish;
	end 
	
	regfile dut(clk, 
	write_enable, 
	write_index, 
	write_data, 
	read_a_index, 
	read_a_data, 
	read_b_index, 
	read_b_data); 
	
endmodule