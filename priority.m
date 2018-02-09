function total = priority(C1,PT1,FT1,G11,G21,trained,planted,YEARS) 
%% 1. ASSIGN PARAMETER VALUES
NC=trained;  %% #churches FT can enlist each year
NG1=planted; %% #G1 churches FT can plant each year
%% 2. ASSIGN INITIAL VALUES
C(1,1)=C1; PT(1,1)=PT1; FT(1,1)=FT1; G1(1,1)=G11; G2(1,1)=G21;
%% 3. MODEL EQUATIONS
for n=2:YEARS
 C(n,1) = C(n-1,1) + NC*FT(n-1,1);  % 1st modified equation
 FT(n,1) = FT(n-1,1) +1;
 PT(n,1) = PT(n-1,1)+ C(n-1,1);
 G1(n,1) = G1(n-1,1)+NG1*FT(n-1,1)+PT(n-1,1)-1; % 2nd modified equation
 G2(n,1) = 2*G2(n-1,1)+G1(n-1,1);
end
 total=G1(YEARS,1)+G2(YEARS,1); %% total house churches after NUMYEARS
end



