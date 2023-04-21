
f0 = 10;
Fs = 5000;
Ts = 1/Fs;

%generating discrete signal xn
xn = 0;
for t=Ts:Ts:1
    xn = [xn,sin(2*pi*f0*t)];
end

%B=4
figure()
sgtitle("B=4");
n=0:length(xn)-1;
subplot(3,1,1);
stem(n,xn);
title("Sampled Signal");
xlabel("n");
ylabel("x[n]");

%Quantisation xqn
a=1;
B=4;
xqn = quadratic_quant(xn,B,a);

subplot(3,1,2)
plot(n,xqn);
title("Quantised Signal");
xlabel("n");
ylabel("xq[n]");

%Calculating Quantisation Error eq[n]-PART c
eqn1 = xn - xqn;
eqn1 = abs(eqn1);
subplot(3,1,3)
plot(n,eqn1);
title("Quantisation Error");
xlabel("n");
ylabel("eq[n]");

%B=3

%Quantisation xqn
a=1;
B=3;
xqn = quadratic_quant(xn,B,a);


%Calculating Quantisation Error eq[n]-PART c
eqn2 = xn - xqn;
eqn2 = abs(eqn2);

%PART D- Histogram
figure()
nbins = 15;
sgtitle("Quantization Error Histograms");
subplot(2,1,1)
histogram(eqn1,nbins);
title("Histogram of Quantisation error for B = 4");
ylabel("Quantisation Error");
xlabel("bins of n")

nbins = 15;
subplot(2,1,2)
histogram(eqn2,nbins);
title("Histogram of Quantisation error for B = 3");
ylabel("Quantisation Error");
xlabel("bins of n");



