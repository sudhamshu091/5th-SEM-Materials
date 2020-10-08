module fulladder_bh (a, b, cin, sum, cout);
input a, b, cin;
output sum, cout;
reg sum, cout;
wire [2:0] x;
assign x = {a, b, cin};
always @(x)
begin
if(x==3'b001|x==3'b010|x==3'b100|x==3'b111)
sum = 1'b1; else sum = 1'b0;
if(x==3'b011|x==3'b101|x==3'b110|x==3'b111)
cout = 1'b1; else cout = 1'b0;
end
endmodule

`timescale 1ns / 1ps
module fulladder_tb;
reg  a,b,cin;
wire sum, cout;  
fulladder adder(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
 initial begin
 
 #100; 
 
 a =1;
 b =0;
 cin =0;
 #10;
 a =0;
 b =1;
 cin =0;
 #10;
 a=1;
 b =1;
 cin=0;
 #10;
 a =0;
 b =0;
 cin =1;
 #10;
 a =1;
 b =0;
 cin =1;
 #10;
 a =1;
 b =0;
 cin =1;
 #10;
 a =0;
 b =1;
 cin =1;
 #10;
 a=1;
 b =1;
 cin =1;
 
 end
      
endmodule 
