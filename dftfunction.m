function xk=dftfunction(xn,N)
l=length(xn);
if(N<l)
    error('N should always be greater than L')
end

xn=[xn zeros(1,N-l)];
for k=0:N-1
    for n=0:N-1
        Wn=exp(-j*2*pi*k*n/N);
        x1(k+1,n+1)=Wn;
    end
end

xk=x1*xn';

        