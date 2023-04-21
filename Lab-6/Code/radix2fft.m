function X = radix2fft(x)

if(length(x)==2)
X = zeros(1,2);
X(1) = x(1) + x(2);
X(2) = x(1) - x(2);

else
even = [];
odd = [];

for ii=1:length(x)
    if(mod(ii-1,2)==0)
        even = [even,x(ii)];
    else
        odd = [odd,x(ii)];
    end
end

Xeven = radix2fft(even);
Xodd = radix2fft(odd);

X = zeros(1,length(x));
for ii=1:length(Xeven)
    X(ii) = Xeven(ii) + (exp(-1j*2*pi*(ii-1)/length(X)))*Xodd(ii);
end

for ii=1:length(Xeven)
    X(ii+length(Xeven)) = Xeven(ii) - (exp(-1j*2*pi*(ii-1)/length(X)))*Xodd(ii);
end

end
end