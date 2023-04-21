figure()

%RECTANGULAR
N=51;
nc = (N-1)/2;
n = 0:1:N-1;
hdn = sinc((n-nc)/6)/6;
%/(pi.*(n-nc));
wn = ones(1,N);
hnR = wn.*hdn;

%Blackmann
N=51;
nc = (N-1)/2;
n = 0:1:N-1;
hdn = sinc((n-nc)/6)/6;
wn = blackman(N);
wn = transpose(wn);
hnB = wn.*hdn;

n = 0:200;
xn = cos(pi*n/16) + (0.25*sin(pi*n/16));
x1n = cos(pi*n/16) + (0.25*randn(1,201));
subplot(3,2,1);
plot(n,xn);
xlabel("n");
ylabel("x[n]");
title("x[n]");

subplot(3,2,2);
plot(n,x1n);
xlabel("n");
ylabel("x1[n]");
title("x1[n]");

Rect = conv(xn,hnR,"full");
Black = conv(xn,hnB,"full");
Rect1 = conv(x1n,hnR,"full");
Black1 = conv(x1n,hnB,"full");

subplot(3,2,3);
k = 0:201+length(hnR)-2;
plot(k,Rect);
xlabel("n");
ylabel("Filtered x[n]");
title("Filtered x[n] using Rectangular Window");

subplot(3,2,4);
k = 0:201+length(hnR)-2;
plot(k,Rect1);
xlabel("n");
ylabel("Filtered x1[n]");
title("Filtered x1[n] using Rectangular Window");

subplot(3,2,5);
k = 0:201+length(hnB)-2;
plot(k,Black);
xlabel("n");
ylabel("Filtered x[n]");
title("Filtered x[n] using Blackman Window");

subplot(3,2,6);
k = 0:201+length(hnB)-2;
plot(k,Black1);
xlabel("n");
ylabel("Filtered x1[n]");
title("Filtered x1[n] using Blackman Window");






