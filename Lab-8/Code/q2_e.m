 load handel.mat;
 filename = 'handel.wav';
 audiowrite(filename,y,Fs);
 clear y Fs;

 [y,Fs] = audioread('handel.wav');
 sound(y);
 pause(10);

 Ts = 1/Fs;
 t = 0:Ts:Ts*(length(y)-1);
 t = transpose(t);

 f0 = 1024;
 y = y + sin(2*pi*f0*t);
sound(y);
pause(10);

%FIR FILTER
w0 = pi/4;
b0 = 1/((1-exp(1j*w0))*(1-exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];
poles = [1];

y1 = filter(zer,poles,y);
% y1 = abs(y1);
sound(y1);
pause(10);

%IIR FILTER
r0 = 0.9;
w0 = pi/4;

b0 = (1-(r0*exp(1j*w0)))*(1-(r0*exp(-1j*w0)))/((1-exp(1j*w0))*(1-exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];
poles = [1,-r0*2*cos(w0), r0*r0];

y2 = filter(zer,poles,y);
sound(y2);

