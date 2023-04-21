N = 5;
w0_FS = 1;
T = 2*pi;
t = -2*T:0.01:2*T;
xt = cos(t);
A = zeros(1,(2*N)+1);
A(2+N) = 1/2;
A(N) = 1/2;

G = 1;
a=10;
B = NonIdeal(A,w0_FS,G,a);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

figure()
plot(t,At, "blue");
title("INPUT(blue) AND OUTPUT(red) SIGNALS OF NONIDEAL FILTER");
xlabel("t");
ylabel("signal");

hold on
plot(t,(Bt),"red");
hold off
