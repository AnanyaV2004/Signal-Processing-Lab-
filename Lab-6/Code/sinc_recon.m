function xr = sinc_recon(n,xn,Ts,t_fine)
ws = 2*pi/Ts;
wc = ws/2;

xr = zeros(1,length(t_fine));
%n = 0:2/Ts;

for ii=1:length(t_fine)
    for jj=1:length(n)
        idx = floor(1+((n(jj)-n(1))*1000));
        if(t_fine(ii)~=n(jj))
         xr(ii) = xr(ii) + (Ts*xn(idx)*sin(wc*(t_fine(ii)-n(jj)))/(pi*(t_fine(ii)-n(jj))));
        end
    end
end