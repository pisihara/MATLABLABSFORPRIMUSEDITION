%%Sensitivity analysis to explore the effect of changing lambda
%%(the rehabilitation rate) in the range from 0 to .5
clear all; close all; format long;

for i=1:50
   lambda(i) = 0+0.01*i; %%lambda is varied in the range 0 to .25
   CORE(i,1)=GangAux(lambda(i),.44,.115,4);  %%Steady state solutions
   JAIL(i,1)=GangAux(lambda(i),.44,.115,5);  %%Steady state solutions
end
%%%Plot steady state 
subplot(1,2,1);plot(lambda,CORE(:,1));xlabel('lambda');ylabel('Steady State Core (G)');
subplot(1,2,2);plot(lambda,JAIL(:,1));xlabel('lambda');ylabel('Steady State Jail (R)');
