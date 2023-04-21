function y = partialfouriersum (A, T, time_grid)
% Compute N based on the length of A
N = (numel(A)-1)/2;
y = zeros(size(time_grid));
w0 = (2*pi)/T;
%for t1=1:numel(time_grid)
for k = -N:N
 y = y + A(k+N+1)*exp(1j*k*w0*time_grid);
end
%end

end