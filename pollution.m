M = xlsread('pollution.xlsx'); %import data
y = M(:,1); %SO2 level
x = M(:,2); %temperature

%MATLAB method for linear regression
X = [ones(length(x),1),x]; %add ones to prepare for linear regression
coeff = X\y; %Calculate coefficients for model: m = coeff(2), b = coeff(1)

xplot = 45:80; %range of x values from data
yplot = coeff(2) * xplot + coeff(1); %create y values from found coefficients

%plot model data over real data
scatter(x,y)
hold on %for multiple plots in one graph
plot(xplot,yplot,'--');
hold off