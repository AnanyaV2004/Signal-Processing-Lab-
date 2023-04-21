b=[1];
n=1001;
a=[1,-0.5,0.2,-0.1,0.007,0.14,0.15];
figure()
[R,f] = freqz(b,a,n,"whole");
grid on;
plot(f,abs(R),'blue',linewidth=1);
xlabel("Frequency");
ylabel("Frequency Response");
title("DTFT (Magnitude response of the filter)");

