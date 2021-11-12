module alu_tb();

    logic[1:0] op;
    logic[23:0] a;
    logic[23:0] b;
    logic[23:0] r;
    alu dut ( .op(op), .a(a), .b(b),.r(r));

    initial begin
        $dumpfile("alu_tb.vcd");
        $dumpvars(0,alu_tb);
        #1;
        op=0;
        a=5;
        b=11;
        
        #1;
        $display ("op=%d, a=%d, b=%d, r=%d", op, a, b, r);
        assert(r==(a+b)) else $fatal(1,"Fail");
        #1;
        op=1;
        a=29;
        b=11;
        #1;
        $display ("op=%d, a=%d, b=%d, r=%d", op, a, b, r);
        assert(r==(a&b)) else $fatal(1,"Fail");

        #1;
        op=2;
        a=48;
        b=3;

        #1;
        $display ("op=%d, a=%d, b=%d, r=%d", op, a, b, r);
        assert(r==(a>>b)) else $fatal(1,"Fail");

        #1;
        op=3;
        a=29;
        b=2;

        #1
        $display ("op=%d, a=%d, b=%d, r=%d", op, a, b, r);
        assert (r==(a<<b)) else $fatal(1,"Fail");
        #1
        $finish;
    end

endmodule