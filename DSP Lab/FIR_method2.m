clc; clear all; close all;
wpa =input('Enter passband edge frequency in Hz = ');
wsa = input('Enter stopband edge frequency in Hz = ');
wsamp = input('Enter sampling frequency in Hz = ');
%Calculate transmission BW, Transition band tb, order of the filter
wpd=2*pi*wpa/wsamp;
wsd=2*pi*wsa/wsamp;
tb=wsd-wpd;
N=ceil(6.6*pi/tb)
wc=( wsd+ wpd)/2;
%compute the normalized cut off frequency
wc= wc /pi
%calculate & plot the window
hw=hamming(N+1);
figure(1);
stem(hw);
title('Fir filter window sequence- hamming window');
%find h(n) using FIR
h=fir1(N,wc,hamming(N+1))
%plot the frequency response
figure(2);
[m,w]=freqz(h,1,128);
mag=20*log10(abs(m));
plot(wsamp*w/(2*pi),mag);
title('Fir filter frequency response');
grid;