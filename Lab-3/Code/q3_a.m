t = -300:300;
x = 5*sin(100*t);
y = x.*cos(10000*t);
figure()
plot(t,y);
xlabel("time");
ylabel("AM Signal(y[n]");
title("Amplitude Modulated Signal");
