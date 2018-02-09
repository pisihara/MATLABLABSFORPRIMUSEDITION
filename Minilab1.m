%% MINILAB 1 
clear all; close all; format long;
%% Enter actual data
ACTUAL(1,1)=1;ACTUAL(2,1)=2;ACTUAL(3,1)=3;ACTUAL(4,1)=4;
ACTUAL(1,2)=1000;ACTUAL(2,2)=1100;ACTUAL(3,2)=1210;ACTUAL(4,2)=1330;
n=length(ACTUAL);
%% ModelA
for t=1:4
ModelA(t,1)=1000+100*(t-1);
end
%%Plot Actual, ModelA
figure;
scatter(ACTUAL(1:n,1),ACTUAL(1:n,2),'x','k');
hold on;
scatter(ACTUAL(1:n,1),ModelA(1:n,1),'o','b','filled');
legend({'Actual','ModelA'},'FontSize',14);
title('Viral Epidemic Growth Models');
xlabel('Day');
ylabel('Number of Infected People')
