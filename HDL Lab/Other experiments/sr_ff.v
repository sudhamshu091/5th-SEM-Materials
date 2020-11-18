
module sr_ff(s,r, clk, q);
input s,r,clk;
output q;
reg q;
reg [1:0]sr;
always @(posedge clk)
begin
sr={s,r};
case (sr)
2'B00:q=q;
2'B01:q=1'B0;
2'B10:q=1'B1;
default:q=1'BZ;
endcase
end
endmodule

module sr_ff_tb;
reg s,r, clk;
wire q;


sr_ff dut(.q(q), .s(s), .r(r), .clk(clk)); 

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 s= 1; r= 0;
 #100; s= 0; r= 1; 
 #100; s= 0; r= 0; 
 #100;  s= 1; r=1; 
end 
endmodule

