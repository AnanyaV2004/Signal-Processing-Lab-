L=4;

%N=4;
figure()
sgtitle("DFT for N=4");
N=4;
x = [ones(L,1); zeros(N-L,1)];
x1 = 0:length(x)-1;
y = fft(x,N);
t = 0:length(y)-1;
t = t*2*pi/N;

subplot(3,1,1);
plot(x1,x);
title("Original Signal");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(t,abs(y));
title("Magnitude");
xlabel("Frequency");
ylabel("DFT");

subplot(3,1,3);
plot(t,angle(y));
title("Phase");
xlabel("Frequency");
ylabel("DFT");


%N=16;
figure()
sgtitle("DFT for N=16");
N=16;
x = [ones(L,1); zeros(N-L,1)];
x1 = 0:length(x)-1;
y = fft(x,N);
t = 0:length(y)-1;
t = t*2*pi/N;

subplot(3,1,1);
plot(x1,x);
title("Original Signal");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(t,abs(y));
title("Magnitude");
xlabel("Frequency");
ylabel("DFT");

subplot(3,1,3);
plot(t,angle(y));
title("Phase");
xlabel("Frequency");
ylabel("DFT");

%N=64;
figure()
sgtitle("DFT for N=64");
N=64;
x = [ones(L,1); zeros(N-L,1)];
x1 = 0:length(x)-1;
y = fft(x,N);
t = 0:length(y)-1;
t = t*2*pi/N;

subplot(3,1,1);
plot(x1,x);
title("Original Signal");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
plot(t,abs(y));
title("Magnitude");
xlabel("Frequency");
ylabel("DFT");

subplot(3,1,3);
plot(t,angle(y));
title("Phase");
xlabel("Frequency");
ylabel("DFT");

