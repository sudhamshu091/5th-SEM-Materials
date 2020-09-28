module dff_dataflow(
    input clk,
    input d,
    output q
    );
wire w1,w2,q_n;

assign w1 = ~(d & clk);
assign w2 = ~(~d & clk);

assign q = ~(w1 & q_n);
assign q_n = ~(w2 & q);

endmodule
