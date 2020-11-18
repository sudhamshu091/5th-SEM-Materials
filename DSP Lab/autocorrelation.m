 clc; clear all; close all;
 format compact;
 x=input ('Enter sequence x(n)=');
 Rxx= conv(x,fliplr(x));
 % y=xcorr(x,x);
 disp('rxx=');
 disp(Rxx);
 figure(1);
 stem(Rxx,'filled'); title('Autocorrelation output');
 xlabel('lag index'); ylabel('amplitude');
%verification of properties
 Energy=sum(x.^2)
 center_index=ceil(length(Rxx)/2)
 Rxx_0=Rxx(center_index)
if Rxx_0==Energy
 disp('Rxx(0) gives energy - proved');
else
 disp('Rxx(0) gives energy - not proved');
end
 Rxx_right=Rxx(center_index:1:length(Rxx))
 Rxx_left=Rxx(center_index:-1:1)
if Rxx_right == Rxx_left
 disp('Rxx is even');
else
 disp('Rxx is odd');
end