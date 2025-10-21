//--> TB Johnson Counter
`include "johnson_counter.v"
module top;
	reg clk,rst;
	wire [`VAL-1:0]count;
	johnson dut(clk,rst,count);

	always #5 clk=~clk;
	always@(posedge clk)begin
		$display("\t--> %b ",count);
	end
	initial begin
		$display("--> 4 Bit Johnson Counter <--");
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		#400;
		$finish;
	end
endmodule

/* Output:-
Start time: 20:02:08 on Oct 07,2025
# Loading work.top
# Loading work.johnson
# --> 4 Bit Johnson Counter <--
# 	--> xxxx 
# 	--> 0000 
# 	--> 0000 
# 	--> 1000 
# 	--> 1100 
# 	--> 1110 
# 	--> 1111 
# 	--> 0111 
# 	--> 0011 
# 	--> 0001 
# 	--> 0000 
# 	--> 1000 
# 	--> 1100 
# 	--> 1110 
# 	--> 1111 
# 	--> 0111 
# 	--> 0011 
# 	--> 0001 
*/
