module bin_to_gray(B,G) ;
input [3:0] B;
output [3:0] G;
assign G[0] = B[1]^B[0];
assign G[1] = B[2]^B[1];
assign G[2] = B[3]^B[2];
assign G[3] = B[3];
endmodule

module bin_to_gray_tb();

   reg [3:0] G;
    wire [3:0] B;
    
   bin_to_gray uut(G,B);
    

   always
   begin        
        G <= 0; #10;
        G <= 1;   #10;
        G <= 2;   #10;
        G <= 3;   #10;
        G <= 4;   #10;
        G <= 5;   #10;
        G <= 6;   #10;
        G <= 7;   #10;
        G <= 8;   #10;
        G <= 9;   #10;
        G <= 10;  #10;
        G <= 11;  #10;
        G <= 12;  #10;
        G <= 13;  #10;
        G <= 14;  #10;
        G <= 15;  #10;
        #100;   
      $stop;
   end
endmodule
