module mul16(
    input logic clk,
    input logic [15:0] a,b,
    output logic [31:0] r
);

    logic[15:0] oneone,onetwo,twoone,twotwo;
    always_ff @(posedge clk) begin
        r+=oneone;
        r[24:8]+=onetwo;
        r[24:8]+=twoone;
        r[31:16]+=twotwo;
    end

mul8 first(clk,a[15:8],b[15:8],oneone[15:0]);
mul8 out(clk,a[15:8],b[7:0],onetwo[15:0]);
mul8 inner(clk,a[7:0],b[15:8],twoone[15:0]);
mul8 last(clk,a[7:0],b[7:0],twotwo[15:0]);

endmodule

