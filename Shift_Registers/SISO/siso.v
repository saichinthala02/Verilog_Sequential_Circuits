//--> Implementation of Serial In Serial Out Shift Register.
module dff(clk,rst,preset,din,q);
	input clk,rst,preset,din;
	output reg q;
	always@(posedge clk or posedge rst or posedge preset)begin
		if(rst) q <= 0;
		else if(preset) q<=1;
		else q<=din;
	end
endmodule


module siso(clk,rst,preset,sin,pout,sout);
	input clk,rst,preset,sin;
	output [3:0] pout;
	output sout;
	
	dff d1(clk,rst,preset,sin,pout[3]);
	dff d2(clk,rst,preset,pout[3],pout[2]);
	dff d3(clk,rst,preset,pout[2],pout[1]);
	dff d4(clk,rst,preset,pout[1],pout[0]);

	assign sout=pout[0];

endmodule 

