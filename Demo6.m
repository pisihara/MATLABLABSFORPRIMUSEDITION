%Cholera Lab
clear all;close all;
%Assigned Values of Constants
days=200; %number of days to run simulation
a=.5; %rate of exposure to contaminated water
r=.5; %recovery rate
e=10; %contribution of infected to reservoir
b0=0; %initial reservoir concentration of cholera
%Cholera function returns S=X(1), I=X(2), B=X(3)
%for the SIR model with reservoir B(t)
[t,X]=cholera(days,a,r,e,b0);
%Plot Solutions
figure %plot of infected 
plot(t,X(:,2)); 
title('Infected Population with Cholera');
xlabel('Time in Days');
ylabel('Population');