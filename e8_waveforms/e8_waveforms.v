module e8_waveforms(); 

	logic[11:0] x; 
	logic[11:0] y; 
	logic[11:0] a, a_ref;
	logic[11:0] b, b_ref;
	logic[23:0] s; 
	
	initial begin 
		$dumpfile("e8_waveforms.vcd");
		$dumpvars(0, e8_waveforms); 
		x = 0; 
		y = 0; 
		repeat(4096) begin 
			x = y + 1; 
			#1; 
			s = x + y; 
			a_ref = s[23:12]; 
			b_ref = s[11:0]; 
			assert(a == a_ref); 
			assert(b == b_ref); 
			y += 1; 
			#1; 
		end 
	end 
	
	f dut (x, y, a, b); 
endmodule 
	
	
		
			
	
	
	
	
	
	
	