xt = 2*cos(2*pi*t) + cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,-T/2,T/2,N);
y = partialfouriersum(F,T,time_grid);

figure()
plot(time_grid,y,'blue');
ylabel('x(t)');
xlabel('time');
title('Reconstructed x(t)(in blue) and Original x(t)(in red) on the same graph');
grid on;
hold on;
plot(time_grid,xt3,'red');
hold off;