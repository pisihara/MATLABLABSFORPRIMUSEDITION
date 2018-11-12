clear all; close all; format long;
for i=1:100
    p=.01*i;
  [av,at]=  trafficking2(p);
  x(i,1)=p;
  y1(i,1)=max(av);
  y2(i,1)=max(at);
end
figure;
plot(x,y1,'b.'); hold on;  %child vulnerable
hold on
plot(x,y2,'r'); hold on;  %child trafficked
title('ADULT PROSECUTION');
xlabel('Proportion adult trafficked transitioning to vulnerable'); ylabel('proportion of total population');
legend('Maximum Vulnerable Adult Population','Maximum Trafficked Adult Population','Location','southeastoutside');





 
 