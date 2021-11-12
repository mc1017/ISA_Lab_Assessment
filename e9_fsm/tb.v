module tb(
);
    logic clk,reset,red,orange,green;
    integer i;

    initial begin

        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
        clk=0;
        #5;
        clk=1;
        #5;
        reset=1;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        reset=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;
        clk=1;
        #5;
        clk=0;
        #5;

            
    
    end

    always @(posedge clk) begin
            $display("red%d","orange%d","green%d",red,orange,green);
    end

    traffic sx(
        clk,reset,red, orange,green
    );
endmodule