N=5;
A=1:N;
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);fs = 10000;
adsr = [0.2,0.2,0.7,0.4,0.2];
F_notes = 50:5:100;
td_notes = ones(size(F_notes));
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn,fs);