clc; clear all; close all;
wp=0.2*pi;
ws=0.4*pi;
transition_width = ws-wp;
N= ceil(6.6*pi/transition_width)+1
wc=(ws+wp)/2;
wc=wc/pi
alpha = (N-1)/2;
n = [0:1:(N-1)];
M = n-alpha;
hd = wc*sinc(wc*M);
w_ham = (hamming(N))';
h = hd.*w_ham; %% direct calculation of finite impulse response
disp(h);
figure(1);
[m,w]=freqz(h,1,128);
mag=20*log10(abs(m));
plot(1000*w/(2*pi),mag);
title('FIR filter freq response without using inbuilt method');
grid on;
N=N-1;
h1=fir1(N,wc,hamming(N+1)); %% verification using inbuilt function
disp(h1)
figure(2);
[m,w]=freqz(h1,1,128);
mag=20*log10(abs(m));
plot(1000*w/(2*pi),mag);
title('FIR filter freq response using inbuilt method');
grid on; 
