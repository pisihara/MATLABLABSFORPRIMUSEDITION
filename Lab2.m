%%%%%%
%%%%%% MATLAB LAB 2 EXAMPLE: SCATTERPLOTS
%%%%%%
clear all;   close all;     format long;
%%%%%%
%%% A. READ IN RAW DATA 
%%%%%%
Data=xlsread('RawIndexData2014.xlsx','C2:I167');
TotalRows=length(Data);  
for i=1:TotalRows
  THREETIER(i)=Data(i,1);
  THREEP(i)=Data(i,5);
  GSI(i)=Data(i,6);
 end
%%%%%
%%% B. SELECT 3P AND GSI DATA FOR TIER 1&3 COUNTRIES
%%%%%
j=1;k=1;
for i=1:TotalRows  
  if (THREETIER(i)==1)  %Tier 1 Data
  THREEP1(j,1)=Data(i,5);
  GSI1(j,1)=Data(i,6);
  j=j+1;
  end
  if (THREETIER(i)==3)  %Tier 3 Data
  THREEP3(k,1)=Data(i,5);
  GSI3(k,1)=Data(i,6);
  k=k+1;
  end
 end
%%%%%
%%% C. PLOT TIER 1 3P AND GSI INDEX DATA
%%%%%
figure;
axis([0,15,0,175]) 
scatter(THREEP1,GSI1,'+', 'k','LineWidth',2);  
hold on;
scatter(THREEP3,GSI3,'o','k');
% Add title and axis labels
title('Tier 3(o marker)  2014 INDICES  Tier 1(+ marker) ','LineWidth',2 );
xlabel('THREE P')
ylabel('GSI')


