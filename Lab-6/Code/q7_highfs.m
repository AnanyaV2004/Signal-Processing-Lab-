%SIGNAL 1
[Ys,fs] = audioread("file_example_WAV_1MG.wav");
sound(Ys,1.4*fs);

%Here, we observe that when we increase the fs, the signal becomes faster.
%this is because duration of the signal = length_of_signal/fs
%as fs increases duration decreases and so, speed increases.

