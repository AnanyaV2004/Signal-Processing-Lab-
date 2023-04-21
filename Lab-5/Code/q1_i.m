%given file
[p,fs] = audioread("Audio Files_3.wav");
N = 8*length(p);
y = fft(p,N);
k = 0:N-1;
k = 2*pi*k/N;
figure()
stem(k,abs(y));
title("DFT of Audio File Given");
xlabel("Frequency");
ylabel("Magnitude of DFT");

%other file
[p,fs] = audioread("mixkit-dog-barking-twice-1.wav");
N = 8*length(p);
y = fft(p,N);
k = 0:N-1;
k = 2*pi*k/N;
figure()
stem(k,abs(y));
title("DFT of Audio File");
xlabel("Frequency");
ylabel("Magnitude of DFT");
