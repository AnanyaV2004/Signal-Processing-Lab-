xt = x;
figure()
sgtitle("Moving Average for varying N");

%N=5
N=5;
MA = q1_a(N,xt);
n=0:length(xt)-1;
subplot(2,2,1);
stem(n,MA);
xlabel("time");
ylabel("MA");
title("Moving Average for N=5");
grid on;

%N=30
N=30;
MA = q1_a(N,xt);
n=0:length(xt)-1;
subplot(2,2,2);
stem(n,MA);
xlabel("time");
ylabel("MA");
title("Moving Average for N=30");
grid on;

%N=70
N=70;
MA = q1_a(N,xt);
n=0:length(xt)-1;
subplot(2,2,3);
stem(n,MA);
xlabel("time");
ylabel("MA");
title("Moving Average for N=70");
grid on;

%N=100
N=100;
MA = q1_a(N,xt);
n=0:length(xt)-1;
subplot(2,2,4);
stem(n,MA);
xlabel("time");
ylabel("MA");
title("Moving Average for N=100");
grid on;