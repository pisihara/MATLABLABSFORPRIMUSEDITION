%SYRIAN REGUGEE LAB EXAMPLE SCRIPT
close all; clear all; format long;
%%Enter Data
Data=xlsread('JordanData','Sheet1','B2:C8');
SECTORS=length(Data);% NUMBER OF SECTORS
for i=1:SECTORS
Need(i,1)=Data(i,1);  % Need of each sector
Supply(i,1)=Data(i,2);% Amount funded to each sector
end
%%Compute PEARL Index
PearlIndex=Pearl(SECTORS,Need,Supply);           