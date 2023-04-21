w0 = pi/4;
b0 = 1/((1-exp(1j*w0))*(1-exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];

freqz(zer,1,2001);
title("Frequency response plots");
