%% Sensitivity analysis to explore the effect of changing f, Phi
%% on the core gang population G
clear all; close all; format long;
% Variables: T=y(1),N=y(2),S=y(3),G=y(4),R=y(5). 
for i=1:100
 for j=1:100
  f= 0.01*i; %%f is varied in the range 0 to .1
  Phi = .01*j;
  SS(i,j) = GangAux(.053,f,Phi,4);  %%record steady state gang population
  end
 end
%%%Plot steady state core gang population 
figure %plot of maximum infected
surf(SS);
hold off
title('CORE GANG POPULATION LEVELS');
xlabel('j value (core imprisonment rate = .01 j)'); 
ylabel('i value (recidvism rate  1- f = 1-.01 i)');
zlabel('Steady State Gang Population'); 
