figure()

syms t;
T =1;
xt2 = 1;
N2=10;
F2 = fourierCoeff(t,xt2,T,-T/4,T/4,N2);
FS_idx = -N2:N2;
subplot(1,2,1);
stem(FS_idx,(F2));
ylabel('FS Coefficient');
xlabel('k');
title('Real part of FS Coefficients of x2(t)');
grid on;

subplot(1,2,2);
stem(FS_idx,imag(F2));
ylabel('FS Coefficient');
xlabel('k');
title('Imaginary part of FS Coefficients of x2(t)');
grid on;
