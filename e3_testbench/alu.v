module alu(
    input logic[1:0] op,
    input logic[23:0] a,
    input logic[23:0] b,
    output logic[23:0] r

);
    


    always_comb begin
        if (op ==0) begin
            r = a+b;
        end
        else if(op==1) begin
            r = a&b;
        end
        else if(op==2) begin
            r = a>>b;
        end
        else if(op==3) begin
            r = a<<b;
        end
    end

endmodule