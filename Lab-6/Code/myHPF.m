function B = myHPF(A,w0_FS,wc)
N = (length(A)-1)/2;

filter = ones(size(A));
n = floor(wc / w0_FS);
for ii=-n:n
    idx = ii + N + 1;
    idx = floor(idx);
    filter(idx) = 0;
end

B = A.*filter;
end