module jkff(jk, clk, q, qb);
input clk;
input [1:0]j,k;
output q,qb;
reg q,qb;
reg clk1;
reg[22:0] div
always @(posedge clk)
begin
div<=div+1’b1;
clk1<=div[22];
end
always @(posedge clk1)
begin
assign jk = {j,k};
case(jk)
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2’b11:q= ~q;
default:q=1'bz;
endcase
qb=~q;
end
endmodule
