//--> TB Gray Counter
`include "gray_counter.v"
module top;
	reg clk,rst;
	wire [2:0]count;
	gray dut(clk,rst,count);

	always #5 clk=~clk;
	always@(posedge clk)begin
		$display("\t--> %b ",count);
	end
	initial begin
		$display("--> 3 Bit Gray Counter <--");
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		#400;
		$finish;
	end
endmodule

/* Output:-
# Start time: 10:39:39 on Oct 09,2025
# Loading work.top
# Loading work.gray
# Loading work.d_ff
# --> 3 Bit Gray Counter <--
# 	--> xxx 
# 	--> 000 
# 	--> 000 
# 	--> 001 
# 	--> 011 
# 	--> 010 
# 	--> 110 
# 	--> 111 
# 	--> 101 
# 	--> 100 
# 	--> 000 
# 	--> 001 
# 	--> 011 
# 	--> 010 
# 	--> 110 
# 	--> 111 
# 	--> 101 
# 	--> 100 
# 	--> 000 
# 	--> 001 
# 	--> 011 
# 	--> 010 
# 	--> 110 
# 	--> 111 
# 	--> 101 
# 	--> 100 
*/
