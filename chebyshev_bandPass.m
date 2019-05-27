rp=5;

rs=20;

wp=[.3,.6];

ws=[.1,.7];

m=0:50;

w=0:0.1:pi;

x=4*((exp(1i*pi)).^m)+2*(rand(1,51));

figure(1)

plot(m,x);

title('Noisy input signal');

[n,wn]=cheb1ord(wp,ws,rp,rs)

[b,a]=cheby1(n,rp,wn)

[h,ph]=freqz(b,a,w);

y=filter(b,a,x);

[h1,ph1]=freqz(y,1,w);

p=20*log(abs(h));

p1=20*log(abs(h1));

an=angle(h);

an1=angle(h1);

figure(2)

subplot(2,2,1);

plot(ph/pi,p);

grid;

ylabel('Gain(dB)');

xlabel('Frequency (Normalized)');

title('Frequency response');

subplot(2,2,2);

plot(ph1/pi,p1);

grid;

ylabel('Gain(dB)(noisy input)');

xlabel('Frequency (Normalized)');

title('Frequency response(noisy input)');

subplot(2,2,3);

plot(ph/pi,an);

grid;

ylabel('Phase (Radians)');

xlabel('Frequency (Normalized)');

title('Phase plot');

subplot(2,2,4);

plot(ph1/pi,an1);

grid;

ylabel('Phase(Radians)(noisy input)');

xlabel('Frequency (Normalized)');

title('Phase plot(noisy input)');