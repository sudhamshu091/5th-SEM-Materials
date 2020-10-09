module accumulator(
output reg signed [7:-12] data_out,
input signed [3:-12] data_in,
input data_en, clk, reset);

wire signed [7:-12] new_sum;

assign new_sum = data_out + data_in;

always @(posedge clk)
if (reset) data_out <= 20'b0;
else if (data_en) data_out <= new_sum;

endmodule

module accumulator_tb;
reg signed [3:-12] data_in;
reg data_en, clk, reset;
wire signed [7:-12] data_out;

accumulator acc( .data_in(data_in), .data_en(data_en), .clk(clk), .reset(reset), .data_out(data_out));

initial begin
clk=0;
forever #8 clk = ~clk;
end

initial begin
#8
reset = 1;

#8
reset = 0;
data_en = 1;
data_in = 16'b0001000000000000;

#8
reset = 0;
data_en = 1;
data_in = 16'b0000000000000000;

#8
reset = 0;
data_en = 1;
data_in = 16'b0001000000000000;

#8
reset = 0;
data_en = 1;
data_in = 16'b0000000000000000;

#8
reset = 0;
data_en = 1;
data_in = 16'b0001000000000000;

end

endmodule
