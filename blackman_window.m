M = 64;
w = blackman(M);
figure(1);
subplot(3,1,1);
plot(w,'*'); 
title('Blackman Window');
xlabel('Time (samples)'); 
ylabel('Amplitude');
zpf = 8;                      
xw = [w',zeros(1,(zpf-1)*M)]; 
Xw = fft(xw);                 
spec = 20*log10(abs(Xw));     
spec = spec - max(spec);      
nfft = zpf*M;
spec = max(spec,-100*ones(1,nfft)); 
fni = [0:1.0/nfft:1-1.0/nfft];   
subplot(3,1,2); plot(fni,spec,'-'); 
axis([0,1,-100,10]);
xlabel('Normalized Frequency (cycles per sample))');
ylabel('Magnitude (dB)');
grid; 
nh = nfft/2;
specnf = [spec(nh+1:nfft),spec(1:nh)]; 
fninf = fni - 0.5;
subplot(3,1,3);
plot(fninf,specnf,'-'); 
axis([-0.5,0.5,-100,10]); 
grid;
xlabel('Normalized Frequency (cycles per sample))');
ylabel('Magnitude (dB)');
text(-.62,20,'c)');
