module encoder_wop (I,D);
input [7:0] I;
output [2:0] D;
reg [2:0] D;
always @(I)
begin
 case (I)
 8'd1 : D=3'd0;
 8'd2 : D=3'd1;
 8'd4 : D=3'd2;
 8'd8 : D=3'd3;
 8'd16 : D=3'd4;
 8'd32 : D=3'd5;
 8'd64 : D=3'd6;
 8'd128 : D=3'd7;
default: D=3'BZZZ;
endcase
end
endmodule
