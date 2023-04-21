ang = pi/3;
ii=1;
n=1001;

figure()
sgtitle("DTFT (Magnitude response of the filter) when θ=π/3");

for r=0.2:0.2:0.8
    subplot(2,2,ii);
    b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];
[R,f] = freqz(b,a,n,"whole");
grid on;
plot(f,abs(R),'blue',linewidth=1);
xlabel("Frequency");
ylabel("Frequency Response");
title(sprintf('r =%.1f',r));
ii=ii+1;
end