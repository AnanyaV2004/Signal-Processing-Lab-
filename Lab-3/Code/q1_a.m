function MA = q1_a(N,xt)
temp = zeros(N-1+length(xt),1);

for ii=1:length(xt)
    temp(ii+N-1) = xt(ii);
end

MA = zeros(size(xt));
n=length(temp);

for ii=N:n
    for jj= ii-N+1 : ii
MA(ii-N+1) = MA(ii-N+1) + temp(jj);
    end
    MA(ii-N+1) = MA(ii-N+1)/N;
end