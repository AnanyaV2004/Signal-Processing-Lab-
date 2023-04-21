t = 0:0.001:2;
xt = cos(5*pi*t) + sin(10*pi*t);
figure()
Ts = 0.1;

% plot(t,xt);
% figure()
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
subplot(2,2,1);
plot(t,xnt);
title("Sampled Signal");
ylabel("x[n]");
xlabel("t");
grid on

%zero interpolation
 % ZERO ORDER INTERPOLATION
 y1 = xnt;
 for ii=2:length(y1)
     if(mod(((ii-1)/1000),Ts)~=0)
         y1(ii) = y1(ii-1);
     end
 end
 
 subplot(2,2,2);
 plot(t,y1);
xlabel("t");
ylabel("signal");
grid on;
title("Zero Interpolation");

%MAE
MAEV = abs(xt-y1);
MAEV = [MAEV(251:1751)];
MAE = max(MAEV);
disp("Zero Interpolation");
disp(MAE);

%Linear Interpolation
% LINEAR INTERPOLATION
 x1=1:(Ts)*1000:length(xnt);
 v= zeros(size(x1));
 count=1;
 for ii=1:(Ts)*1000:length(xnt)
     v(count) = xnt(ii);
     count = count+1;
 end
 xq = 1:length(xnt);
 vq1 = interp1(x1,v,xq);
 subplot(2,2,3);
  plot(t,vq1);
xlabel("t");
ylabel("signal");
grid on;
title("Linear Interpolation");

%MAE
MAEV = abs(xt-vq1);
MAEV = [MAEV(251:1751)];
MAE = max(MAEV);
disp("Linear Interpolation");
disp(MAE);

%sinc interpolation
n=0:Ts:2;
t_fine = t;
y = sinc_recon(n,xnt,Ts,t_fine);
subplot(2,2,4);
plot(t,y);
title("Sinc Interpolation");
xlabel("t");
ylabel("signal");
grid on

%MAE
MAEV = abs(xt-y);
MAEV = [MAEV(251:1751)];
MAE = max(MAEV);
disp("Sinc Interpolation");
disp(MAE);



