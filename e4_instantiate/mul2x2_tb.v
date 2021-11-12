module mul2x2_tb(
);

logic[1:0] a;
logic[1:0] b;
logic[3:0] r;

mul2x2 dut(
    .a(a),
    .b(b),
    .r(r)



);

 initial begin

     a=2;
     b=2;
     #1;
     $display(" a=%d b=%d r=%d", a , b,r);
     a=3;
     b=3;
     #1;
     $display(" a=%d b=%d r=%d", a , b,r);
     
 end



endmodule