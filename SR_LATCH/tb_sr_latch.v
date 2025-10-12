//--> TB 
`include "sr_latch.v"
module top;
	reg s,r;
	wire q;

	sr_latch dut(s,r,q);

	initial begin
		repeat(15)begin
			{s,r}=$random;
			#2;
		end
	end
endmodule
