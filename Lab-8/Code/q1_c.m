N=51;
nc = (N-1)/2;
n = 0:1:N-1;
hdn = sinc((n-nc)/6)/6;
%/(pi.*(n-nc));
wn = blackman(N);
wn = transpose(wn);
hn = wn.*hdn;

%FFT
figure()
Hn = fft(hn,1001);
Hn = fftshift(Hn);
sgtitle("Windowing using Blackman Window");
m = max(abs(Hn));
Hn = Hn/m;

subplot(3,1,1)
stem(n,hn);
xlabel("n");
ylabel("h[n]");
title("Filter coefficients h[n]");

subplot(3,1,2)
w = 0:2*pi/1000:2*pi;
Hndb = 20*log10(abs(Hn));
plot(w,Hndb);
ylim([-100,10]);
xlabel("w");
ylabel("H(w)");
title("Magnitude of DFT (H(k))");

subplot(3,1,3)
plot(w,angle(Hn));
xlabel("w");
ylabel("H(w)");
title("Phase of DFT (H(k))");










