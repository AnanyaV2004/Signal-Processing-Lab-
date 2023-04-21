t = 0:0.001:2;
xt = cos(5*pi*t);
figure()
sgtitle("ALIASING-Original(red),Output(blue)");

%Ts = 0.1;
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

subplot(2,2,1);
plot(t,xnt,"red");
title("Ts = 0.1");
ylabel("Signal");
xlabel("t");
grid on
hold on

n=0:Ts:2;
t_fine = t;
y = sinc_recon(n,xnt,Ts,t_fine);
plot(t,y,"blue");
grid on
hold off


%Ts = 0.2;
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

subplot(2,2,2);
plot(t,xnt,"red");
title("Ts = 0.2");
ylabel("Signal");
xlabel("t");
grid on
hold on

n=0:Ts:2;
t_fine = t;
y = sinc_recon(n,xnt,Ts,t_fine);
plot(t,y,"blue");
grid on
hold off

%Ts = 0.3;
Ts = 0.3;
count=1;
impulse = zeros(size(t));
for ii= 0:0.001:2
    if(mod(ii,Ts)==0)
        impulse(count) = 1;
    end
    count = count+1;
end

xnt = impulse.*xt;

subplot(2,2,3);
plot(t,xnt,"red");
title("Ts = 0.3");
ylabel("Signal");
xlabel("t");
grid on
hold on

n=0:Ts:2;
t_fine = t;
y = sinc_recon(n,xnt,Ts,t_fine);
plot(t,y,"blue");
grid on
hold off

%Ts = 0.4;
Ts = 0.4;
count=1;
impulse = zeros(size(t));
for ii= 0:0.001:2
    if(mod(ii,Ts)==0)
        impulse(count) = 1;
    end
    count = count+1;
end

xnt = impulse.*xt;

subplot(2,2,4);
plot(t,xnt,"red");
title("Ts = 0.4");
ylabel("Signal");
xlabel("t");
grid on
hold on

n=0:Ts:2;
t_fine = t;
y = sinc_recon(n,xnt,Ts,t_fine);
plot(t,y,"blue");
grid on
hold off




