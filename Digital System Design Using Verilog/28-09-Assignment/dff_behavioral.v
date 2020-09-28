module dff_behavioral(d,clk,clear,q,q_n); 
input d, clk, clear; 
output reg q, q_n; 
always@(posedge clk) 
begin
if(clear== 1)
q <= 0;
q_n <= 1;
else 
q <= d; 
q_n = !d; 
end 
endmodule
