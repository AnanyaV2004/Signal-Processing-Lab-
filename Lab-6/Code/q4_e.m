%LOW PASS FILTER
N = 5;
w0_FS = 1;
T = 2*pi;
t = -2*T:0.01:2*T;
%xt = cos(3t) + sin(2t);
A = zeros(1,(2*N)+1);
A(3+N) = 1/(2*j);
A(N-1) = -1/(2*j);
A(N+4) = 1/2;
A(N-2) = 1/2;

%wc = 2.5
wc = 2.5;

B = myLPF(A,w0_FS,wc);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

figure()
subplot(3,1,1);
plot(t,At,"blue");
title("INPUT(blue) AND OUTPUT(red) SIGNALS OF LOW PASS FILTER");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off

%HIGH PASS FILTER

B = myHPF(A,w0_FS,wc);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

subplot(3,1,2);
plot(t,At, "blue");
title("INPUT(blue) AND OUTPUT(red) SIGNALS OF HIGH PASS FILTER");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off

%NON Ideal
G = 1;
a=10;
B = NonIdeal(A,w0_FS,G,a);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

subplot(3,1,3);
plot(t,At, "blue");
title("INPUT(blue) AND OUTPUT(red) SIGNALS OF NONIDEAL FILTER");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off