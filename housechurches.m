%% House church minilab 
clear all; close all;  format long;
%% 1. ASSIGN INITIAL VALUES
C(1,1)=1; PT(1,1)=0; FT(1,1)=1; G1(1,1)=0; G2(1,1)=0;
%%%% 2. ASSIGN PARAMETER VALUES
YEARS=10;
PARRANGE=5;
%% 2. FIND NUMBER OF HOUSE CHURCHES PLANTED AFTER NUMYEARS
for NC=1:PARRANGE  %% i=number trad. churches trained
  for NG1=1:PARRANGE %% j=number G1 churches planted
    model(NC,NG1)=priority(C(1,1),PT(1,1),FT(1,1),G1(1,1),G2(1,1),NC,NG1, YEARS);
  end
end
%% 3. CREATE A 3D-PLOT 
figure  
for NC=1:PARRANGE
    for NG1=1:PARRANGE
scatter3(NC,NG1,model(NC,NG1),'filled','k');
hold on;
    end
end
title(strcat('Total House Churches After ',num2str(YEARS), ' Years'));
xlabel('NC= #Trad.Churches Enlisted /Yr');
ylabel('NG1= #G1 House Churches Planted /Yr')


