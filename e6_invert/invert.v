module invert (
    input logic clk,
    input logic start,
    input logic[7:0] y,
    output logic[7:0] x

    //logic[7:0] y_now;
    
);

    logic[7:0] fx;
    assign fx = 0;
    logic[7:0] x_now;
    assign x_now = 0;

    always_ff @(posedge start)begin
        
        f f1(.x(x_now),.y(fx));
        
        while (fx != y)begin
            x_now = x_now+1;
        end

        x = x_now;
        //y = y_now;
    end

    
    
endmodule