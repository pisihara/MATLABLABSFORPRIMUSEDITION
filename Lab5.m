clear all; close all; format long;
%% ASSIGN INITIAL VALUES
B(1,1)=.01; B(1,2)=.01;  %  1 PROPORTION <1 YR OLD
CS(1,1)=.1; CS(1,2)=.1;  % 2  PROPORTION CHILD-SAFE
CV(1,1)=.045; CV(1,2)= .045; % 3 PROPORTION-VULNERABLE
CT(1,1)=0; CT(1,2)= 0; % 4 PROPORTION CHILD-TRAFFICKED
AV(1,1)=.09; AV(1,2)= .09;  % 6 PROPORTION ADULT-VULNERABLE  
AT(1,1)=0; AT(1,2)= 0; % 7 PROPORTION ADULT-TRAFFICKED 
AS(1,1)= 1-(B(1,1)+CS(1,1)+CV(1,1)+CT(1,1)+AV(1,1)+AT(1,1));% 5 PROPORTION ADULT-SAFE
AS(1,2)= 1-(B(1,2)+CS(1,2)+CV(1,2)+CT(1,2)+AV(1,2)+AT(1,2));  
%% ASSIGN PARAMETER VALUES
r12=.09;r13=.03;r14=.01;r23=.05;r24=.001;r25=.04;r26=.005;r27=.005;r28=.0001;
r32=.01;r34=.01;r35=.005;r36=.04;r37=.005;r38=.0002;r42=.0001;r43=.005;r45=.001;r46=.001;r47=.05;r48=.0003;
r56=.005;r57=.001;r58=.004;r65=.001;r67=.005;r68=.002;r75=.0001;r76=.005;r78=.05;
%% POLICY ENACTMENT 
p(1,1)= 1; p(2,1)=.5; %1=no policy; 2=50% less vulnerable children trafficked 
%% SD EQUATIONS
for m=1:2    
    for n=1:365   %simulate for 365 days
Day(n,1)=n;
B(n+1,m)=.001+(1-r12-r13-r14)*B(n,m);
CS(n+1,m)=(1-r23-r24-r25-r26-r27-r28)*CS(n,m)+r12*B(n,1)+r32*CV(n)+r42*CT(n,m);  
CV(n+1,m)=(1-r32-p(m)*r34-r35-r36-r37-r38)*CV(n,m)+r13*B(n,1)+r23*CS(n)+r43*CT(n,m); 
CT(n+1,m)=(1-r42-r43-r45-r46-r47-r48)*CT(n,m)+r14*B(n,1)+r24*CS(n,m)+p(m)*r34*CV(n,m); 
AS(n+1,m)=(1-r56-r57-r58)*AS(n)+r25*CS(n,m)+r35*CV(n,m)+r45*CT(n,m)+r65*AV(n,m)+r75*AT(n,m); 
AV(n+1,m)=(1-r65-r67-r68)*AV(n)+r26*CS(n,m)+r36*CV(n,m)+r46*CT(n,m)+r56*AS(n,m)+r76*AT(n,m); 
AT(n+1,m)=(1-r75-r76-r78)*AT(n)+r27*CS(n,m)+r37*CV(n,m)+r47*CT(n,m)+r57*AS(n,m)+r67*AV(n,m);
AS(n+1,m)= 1-(B(n,m)+CS(n,m)+CV(n,m)+CT(n,m)+AV(n,m)+AT(n,m)); %total population = 1 
    end
end
days=60; figure;
scatter(Day(1:days,1),CV(1:days,2),'.','r','Linewidth',2); hold on;
scatter(Day(1:days,1),CV(1:days,1),'o','b','Linewidth',2); hold on;
scatter(Day(1:days,1),CT(1:days,2),'+','g','Linewidth',2); hold on;
scatter(Day(1:days,1),CT(1:days,1),'x','k','Linewidth',2); hold on;;
title('CHILD TRAFIICKING PREVALENCE');
xlabel('MONTH'); ylabel('proportion of total population');
legend('Child protection Policy(Vulnerable)','No Policy (vulnerable)','Child protection policy (trafficked)','No policy (trafficked)','Location','northeast');




 
 