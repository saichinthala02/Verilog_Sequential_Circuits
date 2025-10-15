//--> TB T-FF
`include "t_ff.v"
module top;
	reg clk,rst,t;
	wire q;
	tff dut(clk,rst,t,q);
	
	always #5 clk=~clk;

	initial begin
		clk=0;
		t=0;
		rst=1;
		repeat(2)@(posedge clk) rst=1;
		rst=0;
	end
	initial begin
		repeat(40) begin
			t=$random;
			#5;
		end
	end
	initial begin
		#200;
		$finish;
	end 
endmodule
