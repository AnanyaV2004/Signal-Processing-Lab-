M=15;
F_notes = [440 , 523 , 493 , 586];
F_notes = [F_notes, F_notes,440 ,523 , 493, 440 , 392, 440 , 523];
td_notes = [0.8,0.25,0.8,0.25];
td_notes = [td_notes, td_notes, 0.8, 0.25,0.8,0.25,0.05,0.25,0.8];
td_notes = [td_notes, td_notes, td_notes,td_notes];
N=5;
k=1:N;
ak = 10*exp(k);
P = zeros(1,N);fs = 10000;
adsr = [0.2,0.2,0.7,0.4,0.2];

yn = my_synthesizer(ak,F_notes,P,adsr,td_notes,fs);
soundsc(yn,fs);

audiowrite('Music.wav' , yn , fs);