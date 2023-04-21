%x(t) = e^(jt)
syms t;
xt = exp(1j*t);
T=pi;
a = -T;
b = T;
w = -5:0.1:5;
y = continuousFT(t,xt,a,b,w);
figure()
sgtitle("Continuous FT for x(t) = e power(jt)");

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

%x(t) = cos(t)
syms t;
xt = cos(t);
T=pi;
a = -T;
b = T;
w = -5:0.1:5;
y = continuousFT(t,xt,a,b,w);
figure()
sgtitle("Continuous FT for x(t) = cos(t)");

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