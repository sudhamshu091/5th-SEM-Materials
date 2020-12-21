module syncbcd (clk, rst, q);
input clk, rst;
output [3:0]q;
reg [3:0]q;
initial q = 4'b0000;
always @ (posedge clk)
begin
if (rst == 1'b1|q==4'b1001)
q = 4'b0000;
else
q=q+1;
end
endmodule

module syncbcd_tb();
reg clk, rst;
wire [3:0] q;

syncbcd dut(clk, rst, q);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#20;
rst=0;
end
endmodule 
