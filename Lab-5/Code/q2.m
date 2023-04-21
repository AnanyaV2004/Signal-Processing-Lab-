mean = 1;
variance = 4;
N1=10;
N2=10;
N=12;
x1 = normrnd(mean,variance,[N1,1]);
x2 = zeros(N2,1);
x2(4) = 1;

circular = cconv(x1,x2,N);
linear= conv(x1,x2);

%linear
fft1 = fft(x1,N1+N2-1);
fft2 = fft(x2,N1+N2-1);
lin = fft1.*fft2;
linear1 = ifft(lin);

%circular
Fft1 = fft(x1,N);
Fft2 = fft(x2,N);
cir = Fft1.*Fft2;
circular1 = ifft(cir);

figure()
subplot(2,2,1);
t = 0:length(linear)-1;
plot(t,linear);
title("Linear convolution Direct Method");
xlabel("n");
ylabel("output signal");

subplot(2,2,2);
t = 0:length(circular)-1;
plot(t,circular);
title("Circular convolution Direct Method");
xlabel("n");
ylabel("output signal");

subplot(2,2,3);
t = 0:length(linear1)-1;
plot(t,linear1);
title("Linear convolution DFT Method");
xlabel("n");
ylabel("output signal");

subplot(2,2,4);
t = 0:length(circular1)-1;
plot(t,circular1);
title("Circular convolution DFT Method");
xlabel("n");
ylabel("output signal");




