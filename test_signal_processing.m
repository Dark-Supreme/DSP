clc;
clear all;
close all;

%%% waveform generation %%%
subplot(3,1,1);
fs = 1000;
t= 0:1/fs:0.3;
f1 = 50; f2 = 100; f3 = 150;
y1 = sin(2*pi*f1*t)+cos(2*pi*f2*t)+sin(2*pi*f3*t);
plot(t,y1);
title('original Signal');


%% 
 subplot(3,1,2);
 t0 = linspace(-5,5,length(t));
 y2 = 2.*sinc(2.*t0)-sinc(t0);
 plot(t0,y2);
 title('kernel');
 
 %%
 subplot(3,1,3);
 X =conv(y1,y2,'same');
 t1 = 1:1:length(X);
 plot(t,X);
 title('convoluted signal');
 
 %% 
 f_X = fft(X);
 figure, plot(t, abs(X));

 f_y1 = fft(y1);
 figure, plot(t, abs(y1));

 xxx = ifft(f_X./f_y1);
 figure, plot(t, xxx);


 yn=y+0.5*randn(size(t));
 plot(t(1:50),yn(1:50));