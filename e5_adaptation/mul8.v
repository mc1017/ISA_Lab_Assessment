module mul8(
    input logic clk,
    input logic [7:0] a,
    input logic [7:0] b,
    output logic [15:0] r
);

    always_ff @(posedge clk) begin
        r<=a*b;
    end

endmodule