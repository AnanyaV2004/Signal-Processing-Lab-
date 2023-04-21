p = [3];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N: ")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p = [0.1];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p= [0];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[0,0.5];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[2,-0.5];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[0.5,-0.5];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[2,2,2];
disp("p:")
disp(p);
[N,ROC,C,S] = roc_cs(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[0,1,2];
[N,ROC,C,S] = roc_cs(p);
disp("p:")
disp(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[-0.5,1j];
[N,ROC,C,S] = roc_cs(p);
disp("p:")
disp(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[0.5,-0.5,2+1j,2-1j];
[N,ROC,C,S] = roc_cs(p);
disp("p:")
disp(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

p=[1+1j,1+2*1i,1+3*1i,2+1j];
[N,ROC,C,S] = roc_cs(p);
disp("p:")
disp(p);
disp("N:")
disp(N)
disp("ROC: ")
disp(ROC)
disp("C: ")
disp(C);
disp("S:");
disp(S);

