module e10_dump (); 

	logic [7:0] adr, d0, d1, d2, d3; 
	logic [9:0] badr; 
	logic [31:0] data; 
	logic [3:0] count; 
	
	
	initial begin
		$dumpfile("e10_dump.vcd"); 
		$dumpvars(0, e10_dump); 
		
		adr = 0; 
		
		repeat (256) begin 
			count = 0; 
			repeat (4) begin 
				#1; 
				badr = adr*4 + count; 
				$display("rom[%d]=%d", badr, (count == 0) ? d0 : (count == 1) ? d1 : (count == 2) ? d2 : d3); 
				count += 1; 
			end 
			adr += 1; 
		end 
	end 
	
	always @(*) begin 
		d0 = data[7:0]; 
		d1 = data[15:8];
		d2 = data[23:16];
		d3 = data[31:24]; 
	end 
	
	rom dut(adr, data); 
	
endmodule 