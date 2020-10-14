% A generalazed convolution computing code in matlab
% without using matlab builtin function conv(x,h)
clc; close all; clear all ;
x=input('Enter x: ') ;
h=input('Enter h: ') ;
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
 Y(i)=0;
 for j=1:m
 if(i-j+1>0)
 Y(i)=Y(i)+X(j)*H(i-j+1);
 end
 end
 end
Y
stem(Y);
ylabel('Y[n]');
xlabel('----->n');
title('Convolution of Two Signals without conv function');