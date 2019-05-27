function yp = resamp(y, m) 
padlen = length(y)*(m - 1);
zlen = ceil((length(y)+1)/2);
z = fft(y);
zp = [z(1:zlen) zeros(1, padlen) z(zlen+1:end)];
if  ~mod(length(y), 2); 
    zp(zlen) = zp(zlen)/2; zp(zlen+padlen) = zp(zlen);
end
yp = real(ifft(zp))*m; 

