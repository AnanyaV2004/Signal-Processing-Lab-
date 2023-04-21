%1.4 Fourier series – more examples and symmetry properties 
T=1;
t1 = -1/4;
t2 = 1/4;

syms t;
xt5 = abs(t);
N=10;
FS_idx = -N:N;
B1 = fourierCoeff(t,xt5,T,t1,t2,N);
figure()
subplot(1,2,1)
stem(FS_idx,abs(B1),'black');
ylabel('Magnitude');
xlabel('k');
title('Magnitude of FS Coefficients of x1(t)');
grid on;

subplot(1,2,2);
stem(FS_idx,angle(B1),'black');
ylabel('Phase');
xlabel('k');
title('Phase of FS Coefficients of x1(t)')
grid on;
