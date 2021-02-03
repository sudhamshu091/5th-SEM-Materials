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


module serialadder_tb;
reg clk,rst,pload,enable;
reg [7:0] adata,bdata;
wire [7:0]pout;
serialadder Dut(clk,rst,pload,adata,bdata,enable,pout);
always #5 clk = ~clk;

initial begin
clk = 1'b0;
rst = 1'b1;
pload = 1'b0;
enable = 1'b0;
#10;
rst =1'b0;
#10;
pload = 1'b1; enable = 1'b0;
$display ($time,"On Reset : adata = %0h,bdata = %0h,pout = %0h",adata,bdata,pout);
adata = 8'd1; bdata = 8'd2;
$display ($time ,"First Data - Data input loaded: adata = %0h,bdata = %0h,pout = %0h",adata,bdata,pout);
#10
pload = 1'b0; enable = 1'b1;
#200
$display ($time, "First Data Serial addition completed");
pload = 1'b0; enable = 1'b1;
#200
$display($time, "First Data Serial addition completed : adata = %0h , bdata = %0h, pout = %0h", adata , bdata , pout);
rst = 1'b0;
#10
pload = 1'b1; enable = 1'b0;
adata = 8'd2; bdata = 8'd3;
#10
$display ($time, "Second Data - Data input loaded: adata = %0h , bdata = %0h, pout = %0h", adata , bdata , pout);
pload = 1'b0; enable = 1'b1;
#200
$display($time, "Second Data Serial addition completed : adata = %0h , bdata = %0h, pout = %0h", adata , bdata , pout);
pload = 1'b0; enable = 1'b1;
#200
$display($time, "Second Data Serial addition completed : adata = %0h , bdata = %0h, pout = %0h", adata , bdata , pout);
$finish;

end 
endmodule
