module counter_1bit(clk,rst,count);
	input clk,rst;
	output reg count;
	always@(negedge clk or posedge rst) begin
		if(rst)count <=0;
		else count <= ~count;
	end
endmodule
//=====================================================
module counter_3bit(
    input clk,
    input rst,
    output [2:0] count
);
    counter_1bit c0(clk, rst, count[0]);
    counter_1bit c1(count[0], rst, count[1]);
    counter_1bit c2(count[1], rst, count[2]);
endmodule
//=======================================================
module top;
    reg clk, rst;
    wire [2:0] count;

    counter_3bit dut(clk, rst, count);
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        repeat(2) @(posedge clk); 
        rst = 0;                 
        #100;                   
        $finish;
    end
    initial begin
        $monitor("Time: %0t | Count = %0d", $time, count);
    end
endmodule

