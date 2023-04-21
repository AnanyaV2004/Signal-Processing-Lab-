f0 = 10;
Fs = 5000;
Ts = 1/Fs;

%generating discrete signal xn
xn = 0;
for t=Ts:Ts:1
    xn = [xn,sin(2*pi*f0*t)];
end

%Quantisation xqn
a=1;
SQNR = zeros(1,8);
for B =1:8
xqn = quadratic_quant(xn,B,a);

%Quantisation Error
eqn = xn - xqn;

eqn = abs(eqn);
xn = abs(xn);

sumxn=0;
sumerror=0;

for ii=1:length(xn)
    sumxn = sumxn + (xn(ii)*xn(ii));
    sumerror = sumerror + (eqn(ii)*eqn(ii));
end
SQNR(B) = sumxn/sumerror;
end

figure()
b = 1:8;
stem(b,SQNR);
xlabel("B");
ylabel("SQNR");
title("Signal to Quantization Noise");
