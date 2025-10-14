//--> Implementation of SR Flipflop.
module sr_ff(clk_i,rst_i,s,r,q);
	input clk_i,rst_i,s,r;
	output reg q;

	always@(posedge clk_i) begin
		if(rst_i) q<=0;
		else begin
		case({s,r})
			2'b00 : q<=q;
			2'b01 : q<=0;
			2'b10 : q<=1;
			default : q<=1'bx;
		endcase
		end
	end
endmodule
