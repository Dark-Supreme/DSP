fs=1000;
t=0:1/fs:1.5-1/fs;
f1=2;
x=0.5*cos(2*pi*f1*t+0.2);
x=x.*hanning(length(x))';
x=[x zeros(1,11000)];
%plot(x);
plot(hanning(1000),'b');
hold on
plot(0.5*cos(2*pi*f1*t+0.2),'g');
hold on 
plot(x,'r');
X=fft(x);
X_mag=abs(X);
figure
plot([0:length(X)-1],X_mag);
X_phase = angle(x);

