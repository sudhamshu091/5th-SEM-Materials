 clc; clear all;
 x=input ('Enter sequence x(n)=');
 y=input ('Enter sequence y(n)=');
 rxy1= conv(x,fliplr(y));
 %rxy2 =xcorr(x,y)
 disp('rxy='); disp(rxy1);
 figure(1);
 stem(rxy1,'filled'); title('cross correlation output');
 xlabel('lag index'); ylabel('amplitude');