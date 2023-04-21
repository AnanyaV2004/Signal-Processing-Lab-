delta = zeros(101,1);
delta(1) = 1;
N=100;
H = q1_a(N,delta);
xt = x;

Y = conv(xt,H);
figure()
t = 0:length(Y)-1;
stem(t,Y);
xlabel("time");
ylabel("output of s1[n]");
title("Output of s1[n] using convolution");