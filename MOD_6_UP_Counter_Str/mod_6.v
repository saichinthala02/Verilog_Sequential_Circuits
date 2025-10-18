//--> Mod-6 Up Counter.
`include "d_ff.v"
module mod_6(clk,rst,count);
	input clk,rst;
	output [2:0]count;
	wire w1,w2,w3,w4,w5,w6,w7;
	and g1(w1,count[2],~count[0]);
	and g2(w2,count[1],count[0]);
	or g3(w3,w1,w2);  //--> D2
	and g4(w4,count[1],~count[0]);
	and g5(w5,~count[2],~count[1],count[0]);
	or g6(w6,w4,w5);  //--> D1
	not g7(w7,count[0]);  //-->D0

	d_ff d1(clk,rst,w3,count[2]);
	d_ff d2(clk,rst,w6,count[1]);
	d_ff d3(clk,rst,w7,count[0]);

endmodule
