module invert_tb ();
    logic clk;
    logic start;
    logic[7:0] x, y;

    
    initial begin
        $dumpfile("invert_tb.vcd");
        $dumpvars(0, invert_tb);

        clk = 1;
        start = 1;
        y = 5;
        #1;
        //assert(x == 4);
        $display (x);
        
    end

    invert dut(.clk(clk),.start(start),.x(x),.y(y));

endmodule