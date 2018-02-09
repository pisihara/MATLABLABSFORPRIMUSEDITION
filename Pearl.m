%% MATLAB PEARL function
function index = Pearl(sectors, need, supply)
%% I. READ IN PARAMETER VALUES    
SECTORS=sectors;  %%% sectors gives the number of sectors
NEED=need; %%% need of each sector i
SUPPLY = supply; %  amount supplied to each sector i
%% II. COMPUTER PEARL INDEX    
MINNEED=min(NEED);
TOTALSUPPLY=0;
TOTALNEED=0;
for i=1:SECTORS
 TOTALSUPPLY=TOTALSUPPLY+supply(i,1);
 TOTALNEED=TOTALNEED+need(i,1);
end
scale=TOTALSUPPLY/TOTALNEED;
ABSOLUTEINEQUITY=0;
for i=1:SECTORS
  ABSOLUTEINEQUITY=ABSOLUTEINEQUITY+abs(SUPPLY(i,1) - scale * NEED(i,1));
end
MAXIMUMINEQUITY = 2*abs(TOTALSUPPLY-scale *MINNEED);
index=1 - ABSOLUTEINEQUITY/MAXIMUMINEQUITY;
end