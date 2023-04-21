N=51;
nc = (N-1)/2;
n = 0:1:N-1;
hdn = sinc((n-nc)/6)/6;
%/(pi.*(n-nc));
wn = ones(1,N);
hn = wn.*hdn;

h1n = power(-1,n).*hn;

%FFT
figure()
H1n = fft(h1n,1001);
H1n = fftshift(H1n);
sgtitle("Windowing using Rectangular Window");
m = max(abs(H1n));
H1n = H1n/m;

subplot(3,1,1)
stem(n,h1n);
xlabel("n");
ylabel("h1[n]");
title("Filter coefficients h1[n]");

subplot(3,1,2)
w = -pi:2*pi/1000:pi;
Hndb = 20*log10(abs(H1n));
plot(w,Hndb);
ylim([-100,10]);
xlabel("w");
ylabel("H1(w)");
title("Magnitude of DFT (H1(w))");

subplot(3,1,3)
plot(w,angle(H1n));
xlabel("w");
ylabel("H1(w)");
title("Phase of DFT (H1(w))");