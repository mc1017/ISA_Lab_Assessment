e3 - Testbench
-----------------------------

Assume a combinatorial module called `alu` in a file
called `alu.v`. The module has two 24-bit inputs `a`
and `b`, a 24-bit output `r`, and a 2-bit input called
`op`.

The operations performed by the ALU are:

- op=0 : `r=a+b`
- op=1 : `r=a&b`
- op=2 : `r=a>>b`
- op=3 : `r=a<<b`

Shifts are logical (no sign extension) and shifts larger than 23 places
will result in 0.

Write a testbench called `alu_tb.v` which:
- applies at least 4 test-cases;
- includes at least one test-input for each operation;
- produces a success code only if all test-cases pass;
- Uses non-zero `a` and `b` for each test-case (in order to avoid completely trivial test-cases).
