%% Demo 3  Plotting Chernobyl Cancer Risk Data
clear all; close all;
Data=xlsread('ChernobylData.xlsx','Sheet1','A1:B12'); %% Read in Data
n=length(Data);  %% Number of rows of data
for i=1:n
    x(i,1)=Data(i,1);  %% x-coordinates of data
    y(i,1)=Data(i,2);  %% y-coordinates of data
    y1(i,1)=5*x(i,1)+1;   %% y-coodinates on the line y=5x+1.
end

%% Plot the Data Points and points on the line y = 5x+1
figure  %%create a figure
 scatter(x,y,'o','b','filled');  %% Plot actual data with a solid blue o
 hold on;  %%Add a second set of points
 scatter(x, y1, 'x','r'); %% Corresponding points on the line y=5x+1.
 xlabel('Dosage Level'); %% Label on x-axis
 ylabel('Thyroid Cancer Risk (Odds Ratio)'); %% Label on y-axis
 title('Chernobyl');
 legend('Actual Data','y=5x+1','Location','southeast'); 
