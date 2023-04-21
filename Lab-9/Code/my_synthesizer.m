function yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
yn=[];
for ii=1:length(F_notes)
    a = (td_notes(ii)*adsr(1));
    d = (td_notes(ii)*adsr(2));
    sd = (td_notes(ii)*adsr(4));
    r = (td_notes(ii)*adsr(5));
    [t_env,env] = envelope(a,d,adsr(3),sd,r,fs);
    xt = harmonics(A,F_notes(ii),P,td_notes(ii),fs);
    xt = xt(1:length(env));
    xte = xt.*env;
    yn = [yn,xte];
end
end