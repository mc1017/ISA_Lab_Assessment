module mul16_tb();

    logic clk;
    logic[15:0] a, b;
    logic[31:0] r;

    initial begin

        clk=0;
        a=58743;
        b=952;
        #1;

        clk = 1;
        #1;
        clk = 0;
        assert(r == 55923336);
        #1

    end

    mul16 mul16(.clk(clk), .a(a), .b(b), .r(r));
endmodule