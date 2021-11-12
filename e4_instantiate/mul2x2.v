module my_fadd(
    input logic a,
    input logic b,
    input logic cin,
    output logic cout,
    output logic sum

);
    logic a_xor_b;
    bxor sum1(.a(a), .b(b), .r(a_xor_b));
    bxor sum2(.a(a_xor_b), .b(cin), .r(sum));

    logic a_and_b;

    band and_1(.a(a), .b(b), .r(a_and_b));

    logic cin_and_a_xor_b;
    band and_2(.a(cin), .b(a_xor_b),.r(cin_and_a_xor_b));

    bor carry_gate(.a(a_and_b), .b(cin_and_a_xor_b), .r(cout));

endmodule

module mul2x2(
    input logic[1:0] a,
    input logic[1:0] b,
    output logic[3:0] r //r = a*b


);
    logic a0_and_b0;
    logic a1_and_b0;
    logic a0_and_b1;
    logic a1_and_b1;
    logic[2:0] cout;

    band and_1(.a(a[0]), .b(b[0]), .r(a0_and_b0));
    band and_2(.a(a[1]), .b(b[0]), .r(a1_and_b0));
    band and_3(.a(a[0]), .b(b[1]), .r(a0_and_b1));
    band and_4(.a(a[1]), .b(b[1]), .r(a1_and_b1));

    assign r[0] = a0_and_b0;
    my_fadd fadd1(.a(a1_and_b0), .b(b[a0_and_b1]) , .cin(1'b0) ,.sum(r[1]), .cout(cout[0]) );
    my_fadd fadd2(.a(a1_and_b1), .b(cout[0]) , .cin(1'b0) ,.sum(r[2]), .cout(r[3]) );


endmodule