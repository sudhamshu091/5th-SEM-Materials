clc; clear all; close all;
%generate filter coefficients for the given order & cutoff
N=33; fc=150; fs=1000;
h=fir1(N, fc/(fs/2),hamming(34));
figure(1);
[m,w]=freqz(h,1,128);
mag=20*log10(abs(m));
plot(fs*w/(2*pi),mag);
title('Fir filter frequency response');
grid;
%generate simulated input of 50, 300 & 200 Hz, each of 30 points
n=1:30;
f1=50; f2=300; f3=200; fs=1000;
x1=sin(2*pi*n*f1/fs);
x2=sin(2*pi*n*f2/fs);
x3=sin(2*pi*n*f3/fs);
x=[x1 x2 x3];
figure(2);
subplot(2,1,1); stem(x); title('Input Signal');
%generate o/p: %y=conv(h,x);
y=filter(h,1,x);
subplot(2,1,2); stem(y); title('Output Signal');