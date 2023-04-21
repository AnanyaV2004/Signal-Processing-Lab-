t_fine = -10:0.001:10;
%xt = 1 - abs(t_fine);
xt = zeros(size(t_fine));
for ii=-1:0.001:1
idx = floor(((ii+10)*1000)+1);
xt(idx)= 1 - abs(ii);
end

% for ii=-10:0.001:-1-0.001
%     idx = floor(((ii+10)*1000)+1);
%     xt(idx)= 0;
% end
% 
% for ii=1+0.001:0.001:10
%     idx = floor((ii+10)*1000);
%     xt(idx + 1)= 0;
% end
% figure()
% plot(t_fine,xt)

%t_samples = -1:0.001:1;
figure()
sgtitle("Sampling and reconstruction")

%Ts = 0.5
Ts = 0.5;
impulse = zeros(1,length(t_fine));
for ii=-1:Ts:1
        idx =floor(((ii+10)*1000)+1); 
        impulse(idx) = 1;
end
xn = impulse.*xt;
subplot(2,2,1);
plot(t_fine,xn);
title("Ts = 0.5");
xlabel("t");
ylabel("signal");
grid on
hold on

n = -10:Ts:10;
recon = sinc_recon(n,xn,Ts,t_fine);
plot(t_fine,recon);
hold off

%Ts = 0.2
Ts = 0.2;
impulse = zeros(1,length(t_fine));
for ii=-1:Ts:1
    
        idx =floor((ii+10)*1000); 
        impulse(idx+1) = 1;
  
end
xn = impulse.*xt;
subplot(2,2,2);
plot(t_fine,xn);
title("Ts = 0.2");
xlabel("t");
ylabel("signal");
grid on
hold on

n = -10:Ts:10;
recon = sinc_recon(n,xn,Ts,t_fine);
plot(t_fine,recon);
hold off

%Ts = 0.1
Ts = 0.1;
impulse = zeros(1,length(t_fine));
for ii=-1:Ts:1
    
        idx =floor((ii+10)*1000); 
        impulse(idx+1) = 1;
  
end
xn = impulse.*xt;
subplot(2,2,3);
plot(t_fine,xn);
title("Ts = 0.1");
xlabel("t");
ylabel("signal");
grid on
hold on

n = -10:Ts:10;
recon = sinc_recon(n,xn,Ts,t_fine);
plot(t_fine,recon);
hold off

%Ts = 0.05
Ts = 0.05;
impulse = zeros(1,length(t_fine));
for ii=-1:Ts:1
    
        idx =floor((ii+10)*1000); 
        impulse(idx+1) = 1;
  
end
xn = impulse.*xt;
subplot(2,2,4);
plot(t_fine,xn);
title("Ts = 0.05");
xlabel("t");
ylabel("signal");
grid on
hold on

n = -10:Ts:10;
recon = sinc_recon(n,xn,Ts,t_fine);
plot(t_fine,recon);
hold off




