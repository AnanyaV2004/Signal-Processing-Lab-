xt = x;

N=5;
MA = q1_a(N,xt);
n=0:length(xt)-1;
figure()
stem(n,MA);
xlabel("time");
ylabel("MA");
grid on;
title("Moving Average of q1.mat with N=5");
