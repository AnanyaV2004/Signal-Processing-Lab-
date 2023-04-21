p=0.5;
b=[1,-1/p];
a=[1,-p];
n=1001;

%pole zero plot
figure();
zplane(b,a);
grid on;
title("POLE-ZERO PLOT");
xlabel("Real axis");
ylabel("Imaginary axis");

%frequency response
[R,f] = freqz(b,a,n,"whole");
figure()
subplot(1,2,1);
plot(f,abs(R),'blue',linewidth=1);
xlabel("Frequency");
ylabel("Frequency Response");
title("DTFT (Magnitude response of the filter)");

%impulse response
subplot(1,2,2);
impz(b,a);
xlabel("n(samples)");
ylabel("Amplitude");
title("Impulse Response of the Filter");

