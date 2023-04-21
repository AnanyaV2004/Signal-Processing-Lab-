M=5;
F_notes = 50+50*rand(1,M);
td_notes = 0.5+rand(1,M);
N=5;
A=zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);fs = 10000;
adsr = [0.2,0.2,0.7,0.4,0.2];


yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn,fs);
