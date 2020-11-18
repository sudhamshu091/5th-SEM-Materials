clc; clear all; close all;
Wc = 0.25*pi;
Wc = Wc /pi;
N=5;
alpha=(N-1)/2;
n=0:1:N-1;
M=n-alpha;
hd= sinc(pi*M) - (Wc*sinc(Wc*M));
W_rect = boxcar(N)';
h=hd .* W_rect %% FIR HP filter h(n) without using fir1 inbuilt function
N=N-1;
h1=fir1(N,Wc,'high', boxcar(N+1))%% h(n) of FIR HP filter using fir1 inbuilt function
%%% These values h and h1 should match with the above theoretically calculated values