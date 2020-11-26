module counter_beh ( count,reset,clk);
input wire reset, clk;
output reg [3:0] count;
 always @(posedge clk) if (reset)
count <= 4'b0000; else
count <= count + 4'b0001; 
endmodule

module counter_beh_tb ;
 wire [3:0] count;
reg reset,clk; initial
clk = 1'b0; always
#5 clk = ~clk;
counter_beh m1 ( count,reset,clk);
initial
begin
reset = 1'b0 ;
#15 reset =1'b1;
#30 reset =1'b0;
#300 $finish; end
initial
$monitor ($time, "Output count = %d ",count );
endmodule
