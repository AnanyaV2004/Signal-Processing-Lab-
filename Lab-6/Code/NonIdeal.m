function B = NonIdeal(A,w0_FS,G,a)
H = zeros(size(A));
N = (length(A) - 1)/2;
for ii=1:length(A)
    H(ii) = G/(a+(w0_FS*(ii - N - 1)));
end

B = H.*A;
end