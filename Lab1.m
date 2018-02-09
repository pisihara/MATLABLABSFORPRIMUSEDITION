clear all;   close all;

%%% A. MAKE PIE CHART 
P=[.53 .4 .003 .07]
figure;
pie(P)
title('Forms of Exploitation Among Detected Trafficking Victims, 2011');
labels = {'Sexual Exploitation'; 'Forced Labor'; 'Organ Removal';'Others'};
legend(labels,'Location','southeastoutside','Orientation','vertical');

%%% B. MAKE BAR CHART 
x=[2007:2011]; %colon abbreviates writing [2007, 2008, 2009, 2010, 2011]
y=[32,33,35,36,40];
figure;
bar(x,y);
title('Forced Labor as % of total detected Traficking Victims, 2007-2011');
xlabel('Year')
ylabel('% of Total Detected Victims');
axis([2006,2012,0,45]); %2006<x<2012; 0<y<45
for i=1:numel(y)  %%number elements (data values) in y 
    text(x(i),y(i),num2str(y(i)),'HorizontalAlignment','center',...   
    'VerticalAlignment','bottom') %%places text at coordinates (x(i),y(i)) on the bar chart
end