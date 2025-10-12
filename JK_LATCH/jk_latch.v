//--> Implementation of JK Latch.
//--> Behaviroal Model
/*
module jk_latch(j,k,q,qbar);
	input j,k;
	output reg q,qbar;
	
	initial begin
        q = 0;
        qbar = 1;
    end
	
	always@(j or k)begin
		case({j,k})
			2'b00 :
			begin
				q=q;qbar=~q;
			end
			2'b01 :
			begin
				q=0;qbar=1;
			end
			2'b10 :
			begin 
				q=1;qbar=0;
			end
			default :
			begin
				q=~q;
				qbar=~qbar;
			end
		endcase
	end
endmodule
*/

//--> Structural Model

module jk_latch(j,k,q,qbar);
    input j,k;
    output q,qbar;
    wire s,r;

    and a0(s,j,qbar);   // S = J·Qbar
    and a1(r,k,q);      // R = K·Q

    nor g0(q,r,qbar);   // Q = ~(R + Qbar)
    nor g1(qbar,s,q);   // Qbar = ~(S + Q)
endmodule


