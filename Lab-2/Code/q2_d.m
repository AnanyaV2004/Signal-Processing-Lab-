%         ............p=-0.8.........
b=[1];
p=-0.8;
a=[1,p];
n=1001;

%pole zero plot
figure();
zplane(b,a);
grid on;
title("POLE-ZERO PLOT when p = -0.8");
xlabel("Real axis");
ylabel("Imaginary axis");

%frequency response
[R,f] = freqz(b,a,n,"whole");
figure()
sgtitle("for p = -0.8");
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

%      ..........p=0.1..........
b=[1];
p= 0.1;
a=[1,p];
n=1001;

%pole zero plot
figure();
zplane(b,a);
grid on;
title("POLE-ZERO PLOT when p = 0.1");
xlabel("Real axis");
ylabel("Imaginary axis");

%frequency response
[R,f] = freqz(b,a,n,"whole");
figure()
sgtitle("for p = 0.1");
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




