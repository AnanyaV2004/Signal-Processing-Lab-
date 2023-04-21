%SIGNAL 2
bit_rate = 512;
[Ys,fs] = audioread("file_example_WAV_2MG.wav");
disp("Audio 2")
disp("fs")
disp(fs)
disp("duration")
dur = (length(Ys)-1)/fs;
disp(dur)
disp("bit rate(in kbps)")
disp(bit_rate)
 disp("No of bits stored = bit rate * duration = ");
  disp(bit_rate*dur);
sound(Ys,fs);
