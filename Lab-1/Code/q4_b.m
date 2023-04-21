T=1;
t1 = -1/4;
t2 = 1/4;

syms t;
xt4 = t;
N=5;
FS_idx = -N:N;
B = fourierCoeff(t,xt4,T,t1,t2,N);
figure()
subplot(1,2,1)
stem(FS_idx,abs(B),'black');
ylabel('Magnitude');
xlabel('k');
title('Magnitude of FS Coefficients of x2(t)');
grid on;

subplot(1,2,2);
stem(FS_idx,angle(B),'black');
ylabel('Phase');
xlabel('k');
title('Phase of FS Coefficients of x2(t)')
grid on;