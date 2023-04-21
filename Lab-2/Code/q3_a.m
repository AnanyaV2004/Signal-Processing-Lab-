
figure()
sgtitle("POLE-ZERO PLOTS");

%--------------------------------------------------------------------
r=0.5;
ang = 0;

b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,1);
zplane(b,a);
grid on;
title("r=0.5   θ=0");
xlabel("Real axis");
ylabel("Imaginary axis");
%----------------------------------------------------------
r=0.2;
ang = pi/4;

b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,2);
zplane(b,a);
grid on;
title("r=0.2   θ=π/4");
xlabel("Real axis");
ylabel("Imaginary axis");
%----------------------------------------------------------
r=0.1;
ang = pi/2;

b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,3);
zplane(b,a);
grid on;
title("r=0.1   θ=π/2");
xlabel("Real axis");
ylabel("Imaginary axis");
%----------------------------------------------------------
r=0.8;
ang = pi;

b = [1,-2*cos(ang),1];
a=[1,-2*r*cos(ang),r*r];

subplot(2,2,4);
zplane(b,a);
grid on;
title("r=0.8   θ=π");
xlabel("Real axis");
ylabel("Imaginary axis");


