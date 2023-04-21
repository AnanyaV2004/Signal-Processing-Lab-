n = 0:200;
f0 = 12;
fs = 64;
p = cos(2*pi*f0*n/fs);
figure()
sgtitle("DFT Magnitude Spectrum for different L values");

%L=16
L = 16;

%Windowing and creating x[n]
w = ones(1,L);
temp = zeros(1,length(n)-L);
w = [w,temp];
x = p.*w;

%calculating dft
N = 8*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,1);
stem(x1,abs(y));
title("L=16");
xlabel("frequency");
ylabel("magnitude of DFT");


%L=32
L = 32;

%Windowing and creating x[n]
w = ones(1,L);
temp = zeros(1,length(n)-L);
w = [w,temp];
x = p.*w;

%calculating dft
N = 8*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,2);
stem(x1,abs(y));
title("L=32");
xlabel("frequency");
ylabel("magnitude of DFT");

%L=64
L = 64;

%Windowing and creating x[n]
w = ones(1,L);
temp = zeros(1,length(n)-L);
w = [w,temp];
x = p.*w;

%calculating dft
N = 8*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,3);
plot(x1,abs(y));
title("L=64");
xlabel("frequency");
ylabel("magnitude of DFT");

%L=128
L = 128;

%Windowing and creating x[n]
w = ones(1,L);
temp = zeros(1,length(n)-L);
w = [w,temp];
x = p.*w;

%calculating dft
N = 8*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,4);
plot(x1,abs(y));
title("L=128");
xlabel("frequency");
ylabel("magnitude of DFT");