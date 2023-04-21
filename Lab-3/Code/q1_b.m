xt = ones(101,1);

N=5;
MA = q1_a(N,xt);
n=0:100;
figure()
stem(n,MA);
xlabel("time");
ylabel("MA");
grid on;
title("Moving Average");

