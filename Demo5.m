%% Demo 5 
clear all;close all; format long; 
for i=1:10
 for j=1:10
 Z1(i,j)=combinedTreatment(i,j,1);
 Z3(i,j)=10^3*combinedTreatment(i,j,3);
 end
end
figure
surf(Z1,'FaceColor','b','EdgeColor','b','FaceAlpha',0.5);
hold on
surf(Z3,'FaceColor','r','EdgeColor','r','FaceAlpha',0.5);
title('COMBINED TREATMENT','FontSize',20);
xlabel('j','FontSize',20); 
ylabel('i','FontSize',20);
zlabel('Abeta Concentrations: brain=blue; plasma*1000=red ','FontSize',12);    

 
   
  