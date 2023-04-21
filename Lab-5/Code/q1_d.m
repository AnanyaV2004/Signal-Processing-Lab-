n = 0:30;
f0 = 12;
fs = 64;
L = 16;
p = cos(2*pi*f0*n/fs);

%Windowing and creating x[n]
w = ones(1,L);
temp = zeros(1,length(n)-L);
w = [w,temp];
x = p.*w;

%calculating dft
figure();
sgtitle("DFT for different N = mL values");
% m=1
m = 1;
N = m*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,1);
stem(x1,abs(y));
title("m=1");
xlabel("frequency");
ylabel("magnitude of DFT");

% m=2
m = 2;
N = m*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,2);
stem(x1,abs(y));
title("m=2");
xlabel("frequency");
ylabel("magnitude of DFT");

% m=4
m = 4;
N = m*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,3);
plot(x1,abs(y));
title("m=4");
xlabel("frequency");
ylabel("magnitude of DFT");

% m=8
m = 8;
N = m*L;
x1 = 0:N-1;
x1 = 2*pi*x1/N;
y = fft(x,N);
subplot(2,2,4);
plot(x1,abs(y));
title("m=8");
xlabel("frequency");
ylabel("magnitude of DFT");



