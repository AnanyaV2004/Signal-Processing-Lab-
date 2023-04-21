[xn,fs] = audioread("file_example_WAV_1MG.wav");
a=1;

for B=1:8
xqn = quadratic_quant(xn,B,a);
sound(xqn);
pause(35);  
end