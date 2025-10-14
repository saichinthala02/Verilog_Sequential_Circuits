//--> Implementation of D Flipflop.
module dff(clk,rst,d,q);
	input wire clk,rst,d;
	output reg q;

	always@(posedge clk)begin
		if(rst) q<=0;
		else q<=d;
	end
endmodule
