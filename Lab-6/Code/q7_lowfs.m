%SIGNAL 1
[Ys,fs] = audioread("file_example_WAV_1MG.wav");
sound(Ys,0.8*fs);

%Here, we observe that when we increase the fs, the signal becomes slower.
%this is because duration of the signal = length_of_signal/fs
%as fs decreases duration increases and so, speed decreases.
