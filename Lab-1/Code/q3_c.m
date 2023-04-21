%Reconstructing square wave with varying values of N = {10,50,100,1000}
time_grid = -0.5:0.01:0.5;
%N = 10
N = 10;
T = 1;
T1 = 0.1;
syms t;
XT = 1;
A4_1 = fourierCoeff(t,XT,T,-T1,T1,N);
Y4_1 = partialfouriersum(A4_1, T , time_grid);
figure();
subplot(2,2,1);
plot(time_grid , Y4_1 );
ylabel('Recontructed Graph');
xlabel('k');
title('Reconstructed graph for N=10');

%N = 50
N = 50;
T = 1;
T1 = 0.1;
syms t;
XT = 1;
A4_2 = fourierCoeff(t,XT,T,-T1,T1,N);
Y4_2 = partialfouriersum(A4_2, T , time_grid);

subplot(2,2,2);
plot(time_grid , Y4_2 );
ylabel('Recontructed Graph');
xlabel('k');
title('Reconstructed graph for N=50');


%N = 100
N = 100;
T = 1;
T1 = 0.1;
syms t;
XT = 1;
A4_3 = fourierCoeff(t,XT,T,-T1,T1,N);
Y4_3 = partialfouriersum(A4_3, T , time_grid);

subplot(2,2,3);
plot(time_grid , Y4_3 );
ylabel('Recontructed Graph');
xlabel('k');
title('Reconstructed graph for N=100');

%N = 1000
N = 1000;
T = 1;
T1 = 0.1;
syms t;
XT = 1;
A4_4 = fourierCoeff(t,XT,T,-T1,T1,N);
Y4_4 = partialfouriersum(A4_4, T , time_grid);

subplot(2,2,4);
plot(time_grid , Y4_4 );
ylabel('Recontructed Graph');
xlabel('k');
title('Reconstructed graph for N=1000');
