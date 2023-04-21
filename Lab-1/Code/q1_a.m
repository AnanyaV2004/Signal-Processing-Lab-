T =1;
N=5;
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,-T/2,T/2,N);
% plotting
FS_idx = -N:N;
figure(); 
subplot(1,2,1);
stem(FS_idx,(F)); 
ylabel('FS Coefficient');
xlabel('k');
title('Real part of FS Coefficients of x1(t)')
grid on;

 
subplot(1,2,2);
stem(FS_idx,imag(F)); 
ylabel('FS Coefficient');
xlabel('k');
title('Imaginary part of FS Coefficients of x1(t)')
grid on;
