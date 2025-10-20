//--> TB Ring Counter
`include "ring_counter.v"
module top;
	reg clk,rst;
	wire [`VAL-1:0]count;
	ring dut(clk,rst,count);

	always #5 clk=~clk;
	always@(posedge clk)begin
		$display("\t--> %b ",count);
	end
	initial begin
		$display("--> 4 Bit Ring Counter <--");
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		#400;
		$finish;
	end
endmodule

/* Output:-
--> 4 Bit Ring Counter <--
# 	--> xxxx 
# 	--> 0001 
# 	--> 0001 
# 	--> 1000 
# 	--> 0100 
# 	--> 0010 
# 	--> 0001 

# 	--> 1000 
# 	--> 0100 
# 	--> 0010 
# 	--> 0001

# 	--> 1000 
# 	--> 0100 
# 	--> 0010 
# 	--> 0001 
*/
