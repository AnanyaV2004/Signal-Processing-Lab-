%LOW PASS FILTER
N = 5;
w0_FS = 1;
T = 2*pi;
t = -2*T:0.01:2*T;
%xt = cos(t);
A = zeros(1,(2*N)+1);
A(2+N) = 1/2;
A(N) = 1/2;

%wc = 2
wc = 2;

B = myLPF(A,w0_FS,wc);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

figure()
sgtitle("INPUT(blue) AND OUTPUT(red) SIGNALS OF LOW PASS FILTER")
subplot(2,1,1);
plot(t,At, "blue");
title("wc = 2");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off

%wc = 0.5
wc = 0.5;

B = myLPF(A,w0_FS,wc);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

subplot(2,1,2);
plot(t,At,"blue");
title("wc = 0.5");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off

%HIGH PASS FILTER
N = 5;
w0_FS = 1;
T = 2*pi;
t = -2*T:0.01:2*T;
xt = cos(t);
A = zeros(1,(2*N)+1);
A(2+N) = 1/2;
A(N) = 1/2;

%wc = 2
wc = 2;

B = myHPF(A,w0_FS,wc);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

figure()
sgtitle("INPUT(blue) AND OUTPUT(red) SIGNALS OF HIGH PASS FILTER")
subplot(2,1,1);
plot(t,At, "blue");
title("wc = 2");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off

%wc = 0.5
wc = 0.5;

B = myHPF(A,w0_FS,wc);

At = partialfouriersum(A,T,t);
Bt = partialfouriersum(B,T,t);

subplot(2,1,2);
plot(t,At,"blue");
title("wc = 0.5");
xlabel("t");
ylabel("signal");

hold on
plot(t,Bt,"red");
hold off

