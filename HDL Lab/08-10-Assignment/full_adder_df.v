module fulladder (a, b, cin, sum, cout);
input a, b, cin;
output sum, cout;
assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
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
