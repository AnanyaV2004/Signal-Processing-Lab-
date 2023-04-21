m = 4;
N = power(2,m);
t = 0:N-1;
x = cos(t);

figure()
sgtitle("Verification of radix2fft");
subplot(2,1,1)
y=fft(x,N);
plot(t,y);
title("DFT Using FFT Function");
xlabel("w");
ylabel("FFT");


subplot(2,1,2);
X = radix2fft(x);
plot(t,X);
title("DFT Using radix2fft function");
xlabel("w");
ylabel("FFT");