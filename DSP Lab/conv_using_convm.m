close all; clc
 x=input('Enter the first sequence x= ');
 nx=input('Enter the time index for the first sequence nx= ');
 h=input('Enter the second sequence h= ');
 nh=input('Enter the time index for the second sequence nh= ');
 [ y,ny]=convm(x,nx,h,nh)
 subplot(311); stem(nx,x); xlabel('n'); ylabel('x[n]');
 subplot(312); stem(nh,h); xlabel('n'); ylabel('h[n]');
 subplot(313); stem(ny,y); xlabel('n'); ylabel('y[n]');
 title('linear convolution');
 disp('Output Sequence is : '); 