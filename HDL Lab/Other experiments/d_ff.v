module dff(d, rst, clk, q, qb);
input d, rst, clk; 
output q, qb; reg q, qb; 
always @(posedge clk) 
begin 
if (rst == 1'B1) 
begin 
q = 1'B0;
qb = 1'B1;
end 
else 
begin 
q = d; 
qb = ~q; 
end 
end 
endmodule


module dff_test;
reg d, clk,rst;
wire q, qb;

dff dut(.q(q), .qb(qb), .rst(rst), .d(d), .clk(clk));

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 rst=1; d <= 0;
 #100; rst=0; d <= 1;
 #100; d <= 0;
 #100; d <= 1;
end 
endmodule
