%%%%%
%% MATLAB LAB 3 EXAMPLE: SUM AND SORT GOV'T RESPONSE DATA 
%%(see Table 4) 
%%%%%
clear all; close all; format long;
%%%%%

DATA=xlsread('L3DATA.xlsx','RawData','B2:J21');

%%Lines 11-17 sum the scores of the 9 standards for Obj. 1 
 for i=1:length(DATA)
  RANKEDDATA(i,1)=i;  %%1st column gives country codes
  RANKEDDATA(i,2)=0;  %%2nd column gives Obj. 1 totals 
  for j=1:9
   RANKEDDATA(i,2)=RANKEDDATA(i,2)+DATA(i,j); 
   end
 end
 
 %%%Lines 20-33 sort the ranked data by Objective 1 totals
  for i=1:length(DATA)
   for j = length(RANKEDDATA)-1:-1:0
    for a = 1:j
     if (RANKEDDATA(a,2) > RANKEDDATA(a+1,2))
      temp1=RANKEDDATA(a+1,1);
      temp2=RANKEDDATA(a+1,2);
      RANKEDDATA(a+1,1)=RANKEDDATA(a,1);
      RANKEDDATA(a+1,2)=RANKEDDATA(a,2);
      RANKEDDATA(a,1)=temp1;
      RANKEDDATA(a,2)=temp2;
      end
     end
    end
 end

 
 