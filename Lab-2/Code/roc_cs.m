function [N,ROC,C,S] = roc_cs(p)
%temp = zeros(size(p));
temp=[];
for ii=1:length(p)
    if(p(ii)~=0)
    temp = [temp,abs(p(ii))];
    end
end

temp = sort(temp);
N=1;

for ii=2:length(temp)
if(temp(ii) ~= temp(ii-1))
    N=N+1;
end
end

if(~isempty(temp))
N=N+1;
end

if(isempty(temp))
    ROC = [0,inf];
    C = 1;
    S = 1;


else
ROC = zeros(N,2);
ROC(1,1) = 0;
ROC(1,2) = temp(1);
count=1;

for ii=2:length(temp)
if(temp(ii) ~= temp(ii-1))
ROC(count+1,1) = temp(ii-1);
ROC(count+1,2) = temp(ii);
count=count+1;
end
end

ROC(count+1,1) = temp(length(temp));
ROC(count+1,2) = Inf;
C = zeros(N,1);
C(N) = 1;
S=zeros(N,1);

for ii=1:N
    if(ROC(ii,2)>1 && ROC(ii,1)<1)
        S(ii) = 1;
    end
end
end
end