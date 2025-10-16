//--> Implementation of up-counter Structural Model.
`include "d_ff.v"
module up_counter(clk,rst,count);
	input clk,rst;
	output [2:0]count;
	wire w1,w2,w3,w4,w5,w6;


	and g1(w1,count[2],~count[1]);
	and g2(w2,count[2],~count[0]);
	and g3(w3,~count[2],count[1],count[0]);
	or g4(w4,w1,w2,w3);
	xor g5(w5,count[1],count[0]);
	not g6(w6,count[0]);
	
	d_ff df1(clk,rst,w4,count[2]);
	d_ff df2(clk,rst,w5,count[1]);
	d_ff df3(clk,rst,w6,count[0]);

endmodule
