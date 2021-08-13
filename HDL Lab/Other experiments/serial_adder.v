module full_adder_1bit (a, b, cin, sum, cout);
input a, b, cin;
output sum, cout;
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule

module serialadder(clk,rst,pload,adata,bdata,enable,pout);
 input clk,rst,pload,enable;
 input [7:0] adata, bdata;
 output [7:0] pout;
 reg shiftrega_lsb, shiftregb_lsb;
 reg [7:0] shiftrega, shiftregb, shiftregc;
 wire sum,cout;
 reg holdc, holda;
// instantiated the full adder
full_adder_1bit bit_adder_inst(shiftrega[0],shiftregb[0],holdc,sum,cout);
 
assign pout=shiftregc;
always@(posedge clk or rst)
begin
 if (rst) begin
 shiftrega=8'd0;
 shiftregb=8'd0;
 shiftregc=8'd0;
 end else if(pload)
 begin
 shiftrega=adata;
 shiftregb=bdata;
 shiftregc=8'b0;
 end else if(enable) begin
 shiftrega_lsb=shiftrega[0];
 shiftrega=shiftrega>>1;
 shiftrega[7]=shiftrega_lsb;
 shiftregb_lsb=shiftregb[0];
 shiftregb=shiftregb>>1;
 shiftregb[7]=shiftregb_lsb;
 shiftregc =shiftregc>>1;
 shiftregc[7]=sum;
 end 
end
always@(posedge clk,rst)
begin
 if(rst) begin
 holdc=1'b0;
 holda =1'b0;
 end else if(enable)
 holdc=cout;
 else
 holdc=holda;
end
endmodule
