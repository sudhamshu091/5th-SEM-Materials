module d_flip_flop (output reg Q,
		    output Q_n,
 		    input pre_n, clr_n, D,
		    input clk_n, CE);

always @(negedge clk_n or negedge pre_n or negedge clr_n) 
begin
if (!pre_n && !clr_n)
$display("Illegal inputs: pre_n and clr_n both are 0");
if (!pre_n) Q <= 1'b1;
else if (!clr_n) Q <= 1'b0;
else if (CE) Q <= D;
end

assign Q_n = ~Q;

endmodule
                  
module d_flip_flop_tb;
reg D, clk_n, pre_n, clr_n,CE;
wire Q, Q_n;

d_flip_flop dff(.Q(Q), .Q_n(Q_n), .D(D), .clk_n(clk_n), .pre_n(pre_n), .clr_n(clr_n), .CE(CE));

initial begin
  clk_n=0;
     forever #8 clk_n = ~clk_n;  
end

initial begin
#8; pre_n = 0; clr_n = 0; CE = 0; 
#8; clr_n=0; CE=0; pre_n =1;
#8; pre_n =0; clr_n = 1;  CE=0;
#8; clr_n =1; pre_n =1; CE = 1; D =1;
#8; clr_n =1; pre_n =1; CE = 1; D =0;
#8; clr_n =1; pre_n =1; CE = 1; D =1;
#8;  clr_n =1; pre_n =1; CE = 1; D =1;
#8;  clr_n =1; pre_n =1; CE = 1; D =0;
#8; clr_n =1; pre_n =1; CE = 1; D =0;
#8;  clr_n =1; pre_n =1; CE = 1; D =0;
#8;  clr_n =1; pre_n =1; CE = 1; D =1;

end
endmodule
