%% HIV Model
clear all;close all; format long; 
for i=1:100
   for j=1:20
Z(i,j)=TcellSteadyState(i,j);
   end
end
   Z(10,5) 
   figure
   surf(Z);
   hold off
   title('EFFECT OF HIV ANTI-RETROVIRAL TREATMENT LEVELS');
   xlabel('j values  (k1=j*10^(-5))'); 
   ylabel('i values  (N=100+i)');
   zlabel('z-axis Steady-State T-cell Concentration'); 
