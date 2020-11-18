clc; close all; clear all;
x=[1 2 3 4]; h= [1 2 3 4];
N=max(length(x),length(h));
for n=0:N-1 %compute the output
 y(n+1)=0;
 for k=0:N-1
 i=mod ((n-k), N); %calculation of x index
 y(n+1)=y(n+1)+h(k+1)*x(i+1);
 end %end of inner ‘for loop’
end %end of outer ‘for loop’
disp('circular convolution of x and h is y=');
disp(y);
n1=0:N-1; %plot
stem(n1,y);
title('Circular convolution output y(n)'); 