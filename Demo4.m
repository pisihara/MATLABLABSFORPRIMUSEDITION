%% HIV Model
clear all;close all; format long; 
for i=1:100
   for j=1:100
Z(i,j)=treatment(i,j);
   end
end
   surf(Z);
   hold off
   title('EFFECT OF HIV ANTI-RETROVIRAL TREATMENT LEVELS');
   xlabel('j values  (k1=j*.00001)'); 
   ylabel('i values  (N=100+i)');
   zlabel('z-axis Steady-State T-cell Concentration'); 
