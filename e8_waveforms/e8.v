module f (
	input logic[11:0] x, 
	input logic[11:0] y, 
	output logic[11:0] a,
	output logic[11:0] b
	); 
	
	logic[23:0] s; 
	
	always @(*) begin 
		s = x + y; 
		a = s[23:12]; 
		b = s[11:0]; 
	end 
	
endmodule 
	
	
	
	
	