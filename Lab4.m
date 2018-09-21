%% MATLAB LAB 4 EXAMPLE: MULTIPLE REGRESSION OF PREVALENCE 
%% USING VULNERABILITY PREDICTORS 
clear all; close all; format long;
DATA=xlsread('Lab4DataREV.xlsx','Example','B2:H13');

for i=1:length(DATA)
     COUNTRY(i,1)=DATA(i,1);
%% Lines 14-18 Store Vulnerability values
     POL(i,1)=DATA(i,2);  %SLAVERY POLICY
     HURT(i,1)=DATA(i,3);  %HUMAN RIGHTS
     DEV(i,1)=DATA(i,4);  %DEVELOPMENT 
     STAB(i,1)=DATA(i,5);  %STATE STABILITY
     DISCR(i,1)=DATA(i,6);  %DISCRIMINATION
     P(i,1)=DATA(i,7);             
end
%% Lines 22-23 Compute Regression Coefficients
M = [ones(size(COUNTRY)) POL HURT DEV STAB DISCR];
C = M\P; %REGRESSION COEFFICIENTS

%%Lines 28-29 Compute Model Prevalence
for i=1:length(DATA)
    COMPARE(i,1)=P(i,1); %GSI PREVALENCE
    COMPARE(i,2)=C(1,1)+C(2,1)*POL(i,1)+C(3,1)*HURT(i,1)+...
     +C(4,1)*DEV(i,1)+C(5,1)*STAB(i,1)+C(6,1)*DISCR(i,1); %MODEL PREVALENCE
end
xlswrite('Lab4Data.xlsx',COMPARE,'comparison');

 
 