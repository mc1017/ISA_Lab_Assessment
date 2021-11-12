module e1_tb();
    logic clk;
    logic reset;
    logic[3:0] x;
    logic[3:0] y;

    e1_raster dut ( .clk(clk), .reset(reset), .x(x),.y(y));

    initial begin
        
        repeat(512) begin
            clk=0;
            #1;
            clk=1;
            #1;
            
        end
    end

    initial begin
        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=1;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);


        reset=1;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);

        reset=0;
        @(posedge clk);
        $display("x=%d, y=%d", x,y);


    end

endmodule