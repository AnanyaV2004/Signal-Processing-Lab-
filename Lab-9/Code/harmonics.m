function xn = harmonics(A,f0,P,td,fs)
N = length(A);
k = 1:N;
F = f0*k;
xn = SineSum(A,F,P,td,fs);
end