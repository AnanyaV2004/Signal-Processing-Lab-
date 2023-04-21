function xn = SineSum(A,F,P,td,fs)
t = 0:1/fs:td;
xn = zeros(size(t));
for ii=1:length(A)
    xn = xn + (A(ii)*sin((2*pi*F(ii)*t)+P(ii)));
end
end