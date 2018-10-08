%%HIV/AIDS LAB Example Script 2%%
clear all;close all; format long; 
%%Assign Values to Constants and N%%
s=10; r=.03; Tmax=1500; k1=2.4*10.^(-5); k2=3*10.^(-3); 
 Mt=.02; Mv=2.4; Mb=.24;
 for i=1:2000
     N=i;
%%Define Perelson's Immunological Model%%
F= @(t,Y)[s+r*Y(1)*(1-(Y(1)+Y(2)+Y(3))/Tmax)-Mt*Y(1)-k1*Y(1)*Y(4);k1*Y(1)*Y(4)-Mt*Y(2)-k2*Y(2);k2*Y(2)-Mb*Y(3);N*Mb*Y(3)-k1*Y(1)*Y(4)-Mv*Y(4)];
%%Solve ODE System Numerically%%
[t,X]=ode45(F,[0,1500],[1000 0 0 10.^(-3)]);
SS(N,:)=X(length(X),:); %compute steady state solutions
Nvalues(i,1)=i;
 end
%%Plot Steady State T-cell and Free-Viral Concentrations as a Function of N%%
figure 
plot(Nvalues(:,1), SS(:,1)); 
hold on
plot(Nvalues(:,1),SS(:,4));
hold off
title('Steady State T-Cell and Free HIV Viral Concentrations'); xlabel('N'); ylabel('Concentration per mm');
legend('Healthy T-Cells Concentration', 'Free Viral Concentration'); 