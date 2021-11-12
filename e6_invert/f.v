module f(
    
    input logic[7:0] x,
    output logic[7:0] y
    
);

    always_comb begin
        y=x+1;
    end
    
    
endmodule