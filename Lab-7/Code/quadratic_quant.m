function y = quadratic_quant(x,B,a)
intervals = power(2,B-1);
edgepts = -a:a/intervals:a;
quantintervals = a.*(edgepts.*(abs(edgepts)));
y = zeros(size(x));
l = length(quantintervals);

for ii=1:length(x)
    if(x(ii) >=a)
        y(ii) = (quantintervals(l)+quantintervals(l-1))/2;

    elseif(x(ii)<-a)
            y(ii) = (quantintervals(1)+quantintervals(2))/2; 

    else
    for jj=1:length(quantintervals)
        if(x(ii)>=quantintervals(jj) && x(ii)<quantintervals(jj+1))
            y(ii) = (quantintervals(jj)+quantintervals(jj+1))/2;
        end
    end
    end
end

end