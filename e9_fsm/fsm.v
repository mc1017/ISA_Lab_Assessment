module traffic(
    input logic clk,
    input logic reset,
    output logic red,
    output logic orange,
    output logic green
);
    logic red_d,orange_d,green_d,reset_d, reset_d1,reset_d2;
    logic red_next,orange_next,green_next;

    always_ff @(posedge clk) begin
        reset_d1<=reset;
        reset_d <= reset_d1; 
        reset_d2<=reset_d;
        if (reset_d==0) begin
            if (reset_d2==0) begin
                red_d<=red;
                orange_d<=orange;
                green_d<=green;
                red<=red_next;
                orange<=orange_next;
                green<=green_next;
            end
            
        end
    end

    always @(*) begin
        if (reset==1) begin
            red=1'bx;
            orange=1'bx;
            green=1'bx;
        end else begin
            if (reset_d==1) begin
                red=1'bx;
                orange=1'bx;
                green=1'bx;
                red_d=1;
                orange_d=1;
                green_d=0;
            end else begin
                if (red_d==1 && orange_d==1 && green_d==0) begin
                    red_next=1;
                    orange_next=0;
                    green_next=0;
                end 
                    red_next=(!red && orange)||(red && !orange);
                    orange_next=(!red_d && !red && green)||(red_d && red && !orange);
                    green_next=(red_d && (!red))||(red && orange && ~green);
                end
            end
        end
        
    end

endmodule