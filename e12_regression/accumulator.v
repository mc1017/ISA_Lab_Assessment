module accumulator(
    input logic clk,
    input logic clear,
    input logic[31:0] up,
    input logic[31:0] down,
    output logic[31:0] sum
);
    logic [30:0] acc;

    always_ff @(posedge clk) begin 
        if ( clear ) begin
            acc <= up - down;
        end else if ( down ) begin 
            acc <= acc - down;
        end else if ( up ) begin 
            acc <= acc + down;
        end
    end

    assign sum = acc;
endmodule
