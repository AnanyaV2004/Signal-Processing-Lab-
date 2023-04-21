b=[1];
p=0.8;
a=[1,p];
n=1001;

[R,f] = freqz(b,a,n,"whole");
figure()
plot(f,abs(R),'blue',linewidth=1);
xlabel("Frequency");
ylabel("Frequency Response");
title("DTFT (Magnitude response of the filter)");