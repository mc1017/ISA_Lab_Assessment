module rom(
    input logic[7:0] address,
    output logic[31:0] data
);
    reg [31:0] memory [256:0];
    
    initial begin
        integer i;
        for (i=0;i<256;i++) begin
            memory[i]=0;
        end
		//memory[1] = 32'hE3FF00CB; 
    end

    always_comb begin
        data=memory[address]; 
    end
endmodule
