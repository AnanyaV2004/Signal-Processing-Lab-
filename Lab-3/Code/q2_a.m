time = 0:100;
% M=2
M=2;
 y=zeros(101,1);
 for ii=0:100
     if(mod(ii,M)==0)
     y(ii+1) = ii/M;
     end
 end

 % ZERO ORDER INTERPOLATION
 y1 = y;
 for ii=2:length(y1)
     if(y1(ii)==0)
         y1(ii) = y1(ii-1);
     end
 end

 figure()

 sgtitle("UPSAMPLER IMPLEMENTATION");
 subplot(2,2,1);
 stem(time,y1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=2 with Zero Interpolation");


 % LINEAR INTERPOLATION
 x1=1:M:101;
 v= zeros(size(x1));
 count=1;
 for ii=1:M:101
     v(count) = y(ii);
     count = count+1;
 end
 xq = 1:101;
 vq1 = interp1(x1,v,xq);
 subplot(2,2,2);
  stem(xq-1,vq1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=2 with Linear Interpolation");

% M=3
M=3;
 y=zeros(101,1);
 for ii=0:100
     if(mod(ii,M)==0)
     y(ii+1) = ii/M;
     end
 end

 % ZERO ORDER INTERPOLATION
 y1 = y;
 for ii=2:length(y1)
     if(y1(ii)==0)
         y1(ii) = y1(ii-1);
     end
 end
 
 subplot(2,2,3);
 stem(time,y1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=3 with Zero Interpolation");


 % LINEAR INTERPOLATION
 x1=1:M:101;
 v= zeros(size(x1));
 count=1;
 for ii=1:M:101
     v(count) = y(ii);
     count = count+1;
 end
 xq = 1:101;
 vq1 = interp1(x1,v,xq);
 subplot(2,2,4);
  stem(xq-1,vq1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=3 with Linear Interpolation");




