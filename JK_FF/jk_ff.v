//--> Implementation of JK Flipflop.
module jk_ff(clk_i,rst_i,j,k,q);
	input clk_i,rst_i,j,k;
	output reg q;

	always@(posedge clk_i) begin
		if(rst_i) q<=0;
		else begin
		case({j,k})
			2'b00 : q<=q;
			2'b01 : q<=0;
			2'b10 : q<=1;
			2'b11 : q<=~q;
		endcase
		end
	end
endmodule
