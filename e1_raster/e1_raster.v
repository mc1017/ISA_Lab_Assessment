
module e1_raster(
    input logic clk, 
    input logic reset,
    output logic[3:0] x,
    output logic[3:0] y
);
    logic reset_temp;


    always @(posedge clk) begin
        if (reset ==1) begin
            reset_temp<=1;
        end
        else if (reset ==0 && reset_temp==1) begin
            reset_temp<=0;
            x<=0;
            y<=0;
        end
        else begin
            x <= reset ? 0 : (x==11)?  0: x+1;
            y <= reset ? 0 : (x!=11) ?  y : (y==7) ? 0 : y+1;
            
        end
    end
endmodule
