%%HIV/AIDS LAB Example%%
clear all;close all; format long; 
%%Assign Values to Constants and N%%
s=10; r=.03; Tmax=1500; k1=2.4*10.^(-5); k2=3*10.^(-3); 
 Mt=.02; Mv=.24; Mb=.02; N=500;
%%Define Perelson's Immunological Model%%
F= @(t,Y)[s+r*Y(1)*(1-(Y(1)+Y(2)+Y(3))/Tmax)-Mt*Y(1)-k1*Y(1)*Y(4);k1*Y(1)*Y(4)-Mt*Y(2)-k2*Y(2);k2*Y(2)-Mb*Y(3);N*Mb*Y(3)-k1*Y(1)*Y(4)-Mv*Y(4)];
%%Solve ODE System Numerically%%
[t,X]=ode45(F,[0,1500],[1000 0 0 10.^(-3)]);
%%Plot Solutions%%
figure 
plot(t, X(:,1)); title('Healthy T-Cell and Free HIV Viral Concentrations'); xlabel('Days'); ylabel('Concentration per mm');
hold on;
plot(t, X(:,4)); 
hold off;
legend('Healthy T-cell Concentration','Free Viral Concentration','location','northwest');