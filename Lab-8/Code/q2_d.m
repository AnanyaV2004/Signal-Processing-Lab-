%FIR FILTER
w0 = pi/4;
b0 = 1/((1-exp(1j*w0))*(1-exp(-1j*w0)));
zer = [b0,-b0*2*cos(w0),b0];

fvtool(zer,1);

% %IIR FILTER
% % R0 = 0.5
% r0 = 0.5;
% w0 = pi/4;
% 
% b0 = (1-(r0*exp(1j*w0)))*(1-(r0*exp(-1j*w0)));
% zer = [b0,-b0*2*cos(w0),b0];
% poles = [1,-r0*2*cos(w0), r0*r0];
% 
% fvtool(zer,poles);
% 
% %IIR FILTER
% % R0 = 0.99
% r0 = 0.99;
% w0 = pi/4;
% 
% b0 = (1-(r0*exp(1j*w0)))*(1-(r0*exp(-1j*w0)));
% zer = [b0,-b0*2*cos(w0),b0];
% poles = [1,-r0*2*cos(w0), r0*r0];
% 
% fvtool(zer,poles);
% 

