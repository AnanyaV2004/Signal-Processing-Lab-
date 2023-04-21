t = 0:0.001:2;
xt = cos(5*pi*t) + sin(10*pi*t);
figure()
sgtitle("Original and Sampled Signals");
subplot(2,1,1);
plot(t,xt);
title("Original Signal");
ylabel("x(t)");
xlabel("t");

Ts = 0.1;

count=1;
impulse = zeros(size(t));
for ii= 0:0.001:2
    if(mod(ii,Ts)==0)
        impulse(count) = 1;
    end
    count = count+1;
end

xnt = impulse.*xt;
%n= 0:20;
%xnt = cos(5*pi*t_samples) + sin(10*pi*t_samples);
subplot(2,1,2);
stem(t,xnt);
title("Sampled Signal");
ylabel("x[n]");
xlabel("t");

