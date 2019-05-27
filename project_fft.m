fs=1000;
t=0:1/fs:1.5-1/fs;
f1=20;
f2=30;
f3=40;
x=3*cos(2*pi*f1*t+0.2)+cos(2*pi*f2*t-0.3)+2*cos(2*pi*f3*t+2.4);
plot(x);
X=fft(x);
X_mag=abs(X);
plot(X_mag);
X_phase = angle(x);
plot(X_phase);