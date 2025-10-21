// TB for 3-Bit Johnson Counter.
`include "johnson.v"
module top;
	reg clk,rst;
	wire [2:0]count;
	johnson dut(clk,rst,count);

	always #5 clk=~clk;
	initial begin
		$display("--> 3 Bit Johnson Counter <--");
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end
	always@(posedge clk)begin
		$display("\t--> %b",count);
	end
	initial begin
		#400;
		$finish;
	end
endmodule

/* Output:-
# Start time: 10:05:21 on Oct 10,2025
# Loading work.top
# Loading work.johnson
# Loading work.d_ff
# --> 3 Bit Johnson Counter <--
# 	--> xxx
# 	--> 000
# 	--> 000
# 	--> 100
# 	--> 110
# 	--> 111
# 	--> 011
# 	--> 001
# 	--> 000
# 	--> 100
# 	--> 110
# 	--> 111
# 	--> 011
# 	--> 001
# 	--> 000
# 	--> 100
# 	--> 110
# 	--> 111
# 	--> 011
# 	--> 001
# 	--> 000
# 	--> 100
# 	--> 110
# 	--> 111
# 	--> 011
# 	--> 001
*/
