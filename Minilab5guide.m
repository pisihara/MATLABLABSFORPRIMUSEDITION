%% Minilab 5 Guide
clear all; close all; format long;
%% inital populations 
C(1,1)=1;FT(1,1)=1;PT(1,1)=0;G1(1,1)=0;
% add initial population G2(1) in line 6

%% data 
x =[1; 2; 3; 4];
China = [18; 68; 195; 550]; 
% add data for India in line 11
 
%% model equations
for n=2:7
    C(n,1)=C(n-1,1)+1;
    FT(n,1)=FT(n-1,1)+1;
    PT(n,1)=PT(n-1,1)+C(n-1,1);
    G1(n,1)=G1(n-1,1)+2*FT(n-1,1)+PT(n-1,1)-1;
 % add equation for G2 in line 19
    
end
%% COMPLETE PLOT COMMANDS HERE
plot(x,China(1:4,1),'b-o') %plot China data in blue
hold on
% add plot of India data in line 25

% add plot of G1+G2(3:6,1) values in green in line 27

title('Church Growth')
xlabel('Year')
% Add ylabel and legend in lines 31-32



