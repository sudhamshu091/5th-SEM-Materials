module average_pipeline ( output reg signed [5:-8] avg,
			  input signed [5:-8] a, b, c,
			  input clk);
wire signed [5:-8] a_plus_b, sum, sum_div3;
reg signed [5:-8] saved_a_plus_b, saved_c, saved_sum;

assign a_plus_b = a + b;
always @(posedge clk)
begin
saved_a_plus_b <= a_plus_b;
saved_c <= c;
end 

assign sum = saved_a_plus_b + saved_c;
always @(posedge clk)
begin
saved_sum <= sum;
end 

assign sum_div3 = saved_sum * 000000001010101;
always @(posedge clk)
begin
avg <= sum_div3;
end


endmodule

module average_pipeline_tb ;
reg signed [5:-8] a, b, c;
reg clk;
wire signed [5:-8] avg;





        
average_pipeline pipeline(.a(a), .b(b), .c(c),.clk(clk), .avg(avg));

 
initial begin
clk=0;
forever #8 clk = ~clk;
end
initial begin
#24
a=14'b11000000000000;
b=14'b01000000000000;
c=14'b01000000000000;




$display("time = %g, clk = %b, a = %b,b = %b, c = %b, avg = %b", $time, clk, a, b, c, avg);
end




 
endmodule