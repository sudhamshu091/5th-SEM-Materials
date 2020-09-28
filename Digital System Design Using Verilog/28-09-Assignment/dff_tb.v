
module dff_test;
reg d, clk,reset;
wire q, q_n;

dff_tb test(.q(q), .q_n(q_n), .clear(reset), .d(d), .clk(clk)); 

$display("time = %g, clk = %b, d = %b,reset = %b, q = %b, q_n = %b", $time, clk, d, reset, q, q_n);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 reset=1; d <= 0;
 #48; reset=0; d <= 1;
 #48; d <= 0;
 #48; d <= 1;
end 
endmodule
