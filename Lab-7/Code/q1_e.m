f0 = 10;
Fs = 5000;
Ts = 1/Fs;

%generating discrete signal xn
xn = 0;
for t=Ts:Ts:1
    xn = [xn,sin(2*pi*f0*t)];
end

Error = zeros(1,8);
%Quantisation xqn
a=1;
for B=1:8
xqn = quadratic_quant(xn,B,a);

%Calculating Quantisation Error eq[n]-PART c
eqn = xn - xqn;
eqn = abs(eqn);
Error(B) = max(eqn);
end

figure()
b = 1:8;
stem(b,Error);
xlabel("B");
ylabel("Error");
title("Maximum Absolute Error");
