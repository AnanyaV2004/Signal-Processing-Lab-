[xn,fs] = audioread("file_example_WAV_1MG.wav");
a=1;
B=3;
xqn = quadratic_quant(xn,B,a);

%Original
sound(xn);
%Quantised
sound(xqn);
