r=0.95;
figure()
ang = 0;
b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

sgtitle("DTFT (Magnitude response of the filter) when r=0.95");
subplot(2,2,1);
[R,f] = freqz(b,a,n,"whole");
grid on;
plot(f,abs(R),'blue',linewidth=1);
xlabel("Frequency");
ylabel("Frequency Response");
title("θ=0");

ang = pi/3;
b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,2);
[R,f] = freqz(b,a,n,"whole");
grid on;
plot(f,abs(R),'blue',linewidth=1);
title("θ=π/3");
xlabel("Frequency");
ylabel("Frequency Response");

ang = 3*pi/4;
b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,3);
[R,f] = freqz(b,a,n,"whole");
grid on;
plot(f,abs(R),'blue',linewidth=1);
title("θ=3π/4");
xlabel("Frequency");
ylabel("Frequency Response");


ang = pi;
b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,4);
[R,f] = freqz(b,a,n,"whole");
grid on;
plot(f,abs(R),'blue',linewidth=1);
title("θ=π");
xlabel("Frequency");
ylabel("Frequency Response");

