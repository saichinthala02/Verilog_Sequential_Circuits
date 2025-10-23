//--> Implementation of 4-Bit Universal Shift Register.
module shift_reg (
    input clk, rst,
    input [1:0] select_line,
    input s_left_din, s_right_din,
    input [3:0] parallel_din,
    output reg [3:0] parallel_dout
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            parallel_dout <= 4'b0000;
        end
        else begin
            case (select_line)
                2'b00: parallel_dout <= parallel_dout;                       
                2'b01: parallel_dout <= {s_right_din, parallel_dout[3:1]};    
                2'b10: parallel_dout <= {parallel_dout[2:0], s_left_din};   
                2'b11: parallel_dout <= parallel_din;                        
                default: parallel_dout <= parallel_dout;
            endcase
        end
    end
endmodule

