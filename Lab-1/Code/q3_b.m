%Gibbs Phenomenon – revisit square wave 
T1=0.1;
syms t;
XT = 1;
figure();
           %T=1
T=1;
N=10*T;
A1 = fourierCoeff(t,XT,T,-T1,T1,N);
FS_idx = -N:N;
subplot(2,2,1);
stem(FS_idx,A1*T); 
ylabel('FS Coefficient');
xlabel('k');
title('FS Coefficients when T=1')
grid on;

  %T=10
T=10;
N=10*T;
A2 = fourierCoeff(t,XT,T,-T1,T1,N);
FS_idx = -N:N;
subplot(2,2,2); 
stem(FS_idx,A2*T); 
ylabel('FS Coefficient');
xlabel('k');
title('FS Coefficients when T=10')
grid on;

      %T=20
T=20;
N=10*T;
A3 = fourierCoeff(t,XT,T,-T1,T1,N);
FS_idx = -N:N;
subplot(2,2,3); 
stem(FS_idx,A3*T); 
ylabel('FS Coefficient');
xlabel('k');
title('FS Coefficients when T=20')
grid on;

      %T=30
T=30;
N=10*T;
A4 = fourierCoeff(t,XT,T,-T1,T1,N);
FS_idx = -N:N;
subplot(2,2,4); 
stem(FS_idx,A4*T); 
ylabel('FS Coefficient');
xlabel('k');
title('FS Coefficients when T=30')
grid on;