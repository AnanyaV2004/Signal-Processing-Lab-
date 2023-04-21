%SIGNAL 3
bit_rate = 1411;
[Ys,fs] = audioread("file_example_WAV_5MG.wav");
disp("Audio 3")
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
 