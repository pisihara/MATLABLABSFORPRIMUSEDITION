%% ALZHEIMERS LAB  
clear all;close all;format long;
%% ASSIGN  RATE CONSTANTS
k1=7.34*86000; k2=0; k3=0; r12=7.6*10^(-6)*86000; r21=0; r13=0; r31=3.77*10^(-5)*86000; 
r23=1.7*10^(-3)*86000; r32=0; L1=2.78*10^(-4)*86000; L2=0; L3=6.7*10^(-3)*86000;
%% DEFINE SIMPLIFIED CWS MODEL
F = @(t,Y)[(1-.4*heaviside(t-100)+.4*heaviside(t-465))*k1+r31*Y(3)+r21*Y(2)-(r13*Y(1)+r12*Y(1))-L1*Y(1); k2+r12*Y(1)+r32*Y(3)-(r21*Y(2)+r23*Y(2))-L2*Y(2);    k3+r13*Y(1)+r23*Y(2)-(r31*Y(3)+r32*Y(3))-L3*Y(3)];
%%% SOLVE ODE SYSTEM NUMERICALLY
[t,X]=ode45(F,[0 1000],[26000 115 29]);
%% PLOT SOLUTIONS
figure %plot of brain concentration b(t)
plot(t,X(:,1)); title('TREATMENT 1: Plot of b(t)'); xlabel('DAYS'); ylabel('PICOMOLAR');
h1=gcf; %get current figure and store in h1
figure %plot of CSF concentration c(t)
plot(t,X(:,2)); title('TREATMENT 1: Plot of c(t)'); xlabel('DAYS'); ylabel('PICOMOLAR');
h2=gcf;
figure %plot of plasma concentration p(t)
plot(t,X(:,3));  title('TREATMENT 1: Plot of p(t)'); xlabel('DAYS'); ylabel('PICOMOLAR'); 
h3=gcf;
%% SAVE FIGURES
saveas(h1, 'fig1.eps'); saveas(h2, 'fig2.eps'); saveas(h3, 'fig3.eps');
