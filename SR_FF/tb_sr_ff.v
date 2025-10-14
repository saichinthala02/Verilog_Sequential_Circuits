//--> Testbench
`include "sr_ff.v"
module top;
    reg clk_i, rst_i, s, r;
    wire q;

    sr_ff dut(clk_i,rst_i,s,r,q);

    // Clock generation
    initial begin
        clk_i = 0;
        forever #5 clk_i = ~clk_i;
    end

    // Reset sequence
    initial begin
        rst_i = 1;
        s = 0; r = 0;
        repeat(2) @(posedge clk_i) rst_i = 1;

		rst_i=0;
    end

    // Random input generation
    initial begin
        repeat(20) begin
            s = $urandom_range(0,1);
            r = $urandom_range(0,1);
            #10;  // wait one clock period
        end
    end

    initial begin
        #200;
        $finish;
    end
endmodule
