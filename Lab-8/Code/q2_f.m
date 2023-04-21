 load handel.mat;
 filename = 'handel.wav';
 audiowrite(filename,y,Fs);
 clear y Fs;

 [y,Fs] = audioread('handel.wav');

 Ts = 1/Fs;
 t0 = 0:Ts:Ts*(length(y)-1);
 t0 = transpose(t0);

 f0 = 1024;
 y0 = y + sin(2*pi*f0*t0);

%FIR FILTER
w0 = pi/4;
b0 = 1/((1-exp(1j*w0))*(1-exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];
poles = 1;

y1 = filter(zer,poles,y0);
clear zer poles w0 b0

%IIR FILTER
r0 = 0.9;
w0 = pi/4;

b0 = (1-(r0*exp(1j*w0)))*(1-(r0*exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];
poles = [1,-r0*2*cos(w0), r0*r0];

y2 = filter(zer,poles,y0);
clear zer poles w0 b0 r0

%PLOTTING
n = 0:99;
n = transpose(n);
figure()
subplot(2,2,1);
y = [y(1:100)];
plot(n,y);
xlabel("n");
ylabel("signal");
title("Handel signal");

subplot(2,2,2);
y0 = [y0(1:100)];
plot(n,y0);
xlabel("n");
ylabel("signal");
title("Handel signal with sinusoid added");

subplot(2,2,3);
y1 = [y1(1:100)];
plot(n,y1);
xlabel("n");
ylabel("signal");
title("FIR Filtered Signal");

subplot(2,2,4);
y2 = [y2(1:100)];
plot(n,y2);
xlabel("n");
ylabel("signal");
title("IIR Filtered Signal");
