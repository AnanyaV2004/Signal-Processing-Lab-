time_grid = -0.5:0.01:0.5;

T =1;
N=5;
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,-T/2,T/2,N);
y = partialfouriersum(F,T,time_grid);

figure()
subplot(1,2,1);
plot(time_grid,y,'blue');
ylabel('x(t)');
xlabel('time');
title('Reconstructed x(t)');
grid on;

xt3 = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
subplot(1,2,2);
plot(time_grid,xt3,'red');
ylabel('x(t)');
xlabel('time');
title('Original x(t)');
grid on;
