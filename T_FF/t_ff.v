//--> Implementation of T Flipflop.
module tff(clk,rst,t,q);
	input clk,rst,t;
	output reg q;
	always@(posedge clk)begin
		if(rst) q<=0;
		else begin
			if(!t) q<=q;
			else q<=~q;
		end
	end
endmodule
