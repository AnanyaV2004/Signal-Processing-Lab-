xt = 2*cos(2*pi*t) + cos(6*pi*t); % sum of cosines wave
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,-T/2,T/2,N);
y = partialfouriersum(F,T,time_grid);

xt3 = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
MAE = abs(xt3 - y);
mae = max(MAE);
disp("MAE: ");
disp(mae);

rms = 0;
for ii=1:length(MAE)
    rms = rms + (MAE(ii)^2);
end
rms = rms^(1/2);
disp("RMS: ")
disp(rms/length(MAE));