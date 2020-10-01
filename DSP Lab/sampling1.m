tfinal=0.02; 
t=0:0.00002:tfinal; 
fd=input('Enter analog freuency '); 
 %define analog signal for comparison
xt=cos(2*pi*fd*t); 
 %simulate condition for undersampling i.e., fs1<2*fd
fs1=1.5*fd; 
 %define the time vector
n1=0:1/fs1:tfinal; 
 %Generate the undersampled signal
xn1=cos(2*pi*n1*fd); 
 %plot the analog & sampled signals
subplot(2,3,1); plot(t,xt,'b',n1,xn1,'r*-'); title('undersampled plot'); 
 %spectrum of discrete signal
Xk1=fft(xn1); 
 %frequency index of spectrum plot
f1=(0:length(Xk1) -1)*fs1/length(Xk1); 
subplot(2,3,2); stem(f1,abs(Xk1)); title('spectrum of undersampled plot'); 
 %condition for Nyquist plot
fs2=2*fd; 
n2=0:1/fs2:tfinal; 
xn2=cos(2*pi*fd*n2); 
subplot(2,3,3); plot(t,xt,'b',n2,xn2,'r*-'); title('Nyquist plot'); 
Xk2=fft(xn2); 
f2=(0:length(Xk2)-1)*fs2/length(Xk2); 
subplot(2,3,4); stem(f2,abs(Xk2)); title('spectrum of rightsampled plot');
%condition for oversampling
fs3=10*fd; 
n3=0:1/fs3:tfinal; 
xn3=cos(2*pi*fd*n3); 
subplot(2,3,5); plot(t,xt,'b',n3,xn3,'r*-'); title('Oversampled plot'); 
xlabel('time'); ylabel('amplitude'); 
Xk3=fft(xn3); 
f3=(0:length(Xk3) -1)*fs3/length(Xk3); 
subplot(2,3,6); stem(f3,abs(Xk3)); title('spectrum of oversampled plot');