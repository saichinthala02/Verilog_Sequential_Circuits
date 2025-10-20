//--> TB Gray Counter
`include "gray_counter.v"
module top;
	reg clk,rst;
	wire [`VAL-1:0]count;
	gray dut(clk,rst,count);

	always #5 clk=~clk;
	always@(posedge clk)begin
		$display("\t--> %b ",count);
	end
	initial begin
		$display("--> 4 Bit Gray Counter <--");
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		#400;
		$finish;
	end
endmodule

/* Output:-
# Start time: 20:56:39 on Oct 07,2025
# Loading work.top
# Loading work.gray
# --> 4 Bit Gray Counter <--
# 	--> xxxx 
# 	--> 0000 
# 	--> 0000 
# 	--> 0000 
# 	--> 0001 
# 	--> 0011 
# 	--> 0010 
# 	--> 0110 
# 	--> 0111 
# 	--> 0101 
# 	--> 0100 
# 	--> 1100 
# 	--> 1101 
# 	--> 1111 
# 	--> 1110 
# 	--> 1010 
# 	--> 1011 
# 	--> 1001 
# 	--> 1000 
# 	--> 0000 
# 	--> 0001 
# 	--> 0011 
# 	--> 0010 
# 	--> 0110 
# 	--> 0111 
# 	--> 0101 
# 	--> 0100 
# 	--> 1100 
# 	--> 1101 
# 	--> 1111 
# 	--> 1110 
# 	--> 1010 
# 	--> 1011 
# 	--> 1001 
# 	--> 1000 
*/
