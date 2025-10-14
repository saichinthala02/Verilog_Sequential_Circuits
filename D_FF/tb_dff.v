//--> Implementation of D ff tb
`include "d_ff.v"
module top;
	reg clk,rst,d;
	wire q;
	dff dut(clk,rst,d,q);
	
	always #5 clk=~clk;

	initial begin
		clk=0;
		rst=1;
		d=0;
		#1;
		repeat(2) @(posedge clk);
		rst=0;
	end
	initial begin
		repeat (15) begin
			d=$random;
			#10;
		end
	end
	initial begin
		#250;
		$finish;

	end
endmodule
