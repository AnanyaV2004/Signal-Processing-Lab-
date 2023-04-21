%T=1
syms t;
xt = 1;
T=1;
a = -T;
b = T;
w = -5:0.1:5;
y = continuousFT(t,xt,a,b,w);
figure()
sgtitle("Continuous FT of rectangular pulse for T=1");

subplot(2,2,1);
plot(w,real(y));
title("Real part");
xlabel("w");
ylabel("CTFT");

subplot(2,2,2);
plot(w,imag(y));
title("Imaginary part");
xlabel("w");
ylabel("CTFT");

subplot(2,2,3);
plot(w,abs(y));
title("Absolute Value");
xlabel("w");
ylabel("CTFT");

subplot(2,2,4);
plot(w,angle(y));
title("Phase");
xlabel("w");
ylabel("CTFT");

%T=4
syms t;
xt = 1;
T=4;
a = -T;
b = T;
w = -5:0.1:5;
y = continuousFT(t,xt,a,b,w);
figure()
sgtitle("Continuous FT of rectangular pulse for T=4");

subplot(2,2,1);
plot(w,real(y));
title("Real part");
xlabel("w");
ylabel("CTFT");

subplot(2,2,2);
plot(w,imag(y));
title("Imaginary part");
xlabel("w");
ylabel("CTFT");

subplot(2,2,3);
plot(w,abs(y));
title("Absolute Value");
xlabel("w");
ylabel("CTFT");

subplot(2,2,4);
plot(w,angle(y));
title("Phase");
xlabel("w");
ylabel("CTFT");