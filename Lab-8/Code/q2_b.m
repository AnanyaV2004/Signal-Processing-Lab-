r0 = 0.9;
w0 = pi/4;

b0 = (1-(r0*exp(1j*w0)))*(1-(r0*exp(-1j*w0)))/((1-exp(1j*w0))*(1-exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];
poles = [1,-r0*2*cos(w0), r0*r0];

freqz(zer,poles,2001);
title("Frequency response plots");