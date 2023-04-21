N=20;
L=N;
w0 = 3*pi/10;
n = 0:L-1;
x = sin(w0*n);
y = fft(x,N);

figure()
sgtitle("DFT");
t = 0:length(y)-1;
t = t*2*pi/N;

subplot(3,1,1);
plot(n,x);
title("Original Signal");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(t,abs(y));
title("Magnitude");
xlabel("Frequency");
ylabel("DFT");

subplot(3,1,3);
plot(t,angle(y));
title("Phase");
xlabel("Frequency");
ylabel("DFT");
