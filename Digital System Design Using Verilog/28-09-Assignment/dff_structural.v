module nand_gate(c,a,b); 
input a,b; 
output c; 
assign c = ~(a&b); 
endmodule

module not_gate(f,e); 
input e; 
output f; 
assign f= ~e; 
endmodule

module dff_structural(q,q_n,d,clk);
input d,clk; 
output q, q_n; 
not_gate not1(d_n,d); 
nand_gate nand1(r,clk,d); 
nand_gate nand2(s,clk,d_n); 
nand_gate nand3(q,q_n,s); 
nand_gate nand4(q_n,q,r); 
endmodule
