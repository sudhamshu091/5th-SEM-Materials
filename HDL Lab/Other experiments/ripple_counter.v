module ripple_counter (clock, toggle, reset, count); input clock, toggle, reset;
output [3:0] count;
reg [3:0] count;
wire c0, c1, c2;
assign c0 = count[0],
 c1 = count[1],
 c2 = count[2];
always @ (posedge reset or posedge clock) if (reset == 1'b1) count[0] <= 1'b0;
else if (toggle == 1'b1) count[0] <= ~count[0]; always @ (posedge reset or negedge c0)
if (reset == 1'b1) count[1] <= 1'b0;
else if (toggle == 1'b1) count[1] <= ~count[1]; always @ (posedge reset or negedge c1)
if (reset == 1'b1) count[2] <= 1'b0;
else if (toggle == 1'b1) count[2] <= ~count[2]; always @ (posedge reset or negedge c2)
if (reset == 1'b1) count[3] <= 1'b0;
else if (toggle == 1'b1) count[3] <= ~count[3];
endmodule

module ripple_counter_tb ; reg clock,toggle,reset; wire [3:0] count ;
ripple_counter r1 (clock,toggle,reset,count); initial
clock = 1'b0; always
#5 clock = ~clock; initial
begin
reset = 1'b0;toggle = 1'b0;
#10 reset = 1'b1; toggle = 1'b1;
#10 reset = 1'b0;
#190 reset = 1'b1;
#20 reset = 1'b0;
#100 reset = 1'b1;
#40 reset = 1'b0;
#250 $finish; end
initial
$monitor ($time, " output q = %d", count);
endmodule
