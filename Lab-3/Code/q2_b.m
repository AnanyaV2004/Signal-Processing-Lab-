 figure()
 sgtitle("UPSAMPLER IMPLEMENTATION");
%M=2
M=2;
y = zeros(M*(length(x)-1),1);
for ii=1:length(y)
    if(mod(ii-1,M)==0)
        y(ii) = x(((ii-1)/M)+1);
    end
end

%ZERO INTERPOLATION
y1=y;
for ii=2:length(y1)
    if(mod(ii-1,M)~=0)
        y1(ii) = y1(ii-1);
    end
end

 subplot(2,2,1);
 time = 0:length(y)-1;
 stem(time,y1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=2 with Zero Interpolation");

%LINEAR INTERPOLATION
x1=1:M:length(y);
 v= zeros(size(x1));
 count=1;
 for ii=1:M:length(y)
     v(count) = y(ii);
     count = count+1;
 end
 xq = 1:length(y);
 vq1 = interp1(x1,v,xq);
 subplot(2,2,2);
  stem(xq-1,vq1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=2 with Linear Interpolation");

%M=2
M=3;
y = zeros(M*(length(x)-1),1);
for ii=1:length(y)
    if(mod(ii-1,M)==0)
        y(ii) = x(((ii-1)/M)+1);
    end
end

%ZERO INTERPOLATION
y1=y;
for ii=2:length(y1)
    if(mod(ii-1,M)~=0)
        y1(ii) = y1(ii-1);
    end
end

 subplot(2,2,3);
 time = 0:length(y)-1;
 stem(time,y1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=3 with Zero Interpolation");

%LINEAR INTERPOLATION
x1=1:M:length(y);
 v= zeros(size(x1));
 count=1;
 for ii=1:M:length(y)
     v(count) = y(ii);
     count = count+1;
 end
 xq = 1:length(y);
 vq1 = interp1(x1,v,xq);
 subplot(2,2,4);
  stem(xq-1,vq1);
xlabel("n value");
ylabel("upsampled y[n]");
grid on;
title("Upsampled y[n] when M=3 with Linear Interpolation");
