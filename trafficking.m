function [CV,CT]=trafficking(p)

%% ASSIGN INITIAL VALUES
B(1,1)=.001; B(1,2)=.01;  %  1 PROPORTION <1 YR OLD
CS(1,1)=.1; CS(1,2)=.1;  % 2  PROPORTION CHILD-SAFE
CV(1,1)=.045; CV(1,2)= .045; % 3 PROPORTION-VULNERABLE
CT(1,1)=0; CT(1,2)= 0; % 4 PROPORTION CHILD-TRAFFICKED
AV(1,1)=.09; AV(1,2)= .09;  % 6 PROPORTION ADULT-VULNERABLE  
AT(1,1)=0; AT(1,2)= 0; % 7 PROPORTION ADULT-TRAFFICKED 
AS(1,1)= 1-(B(1,1)+CS(1,1)+CV(1,1)+CT(1,1)+AV(1,1)+AT(1,1));% 5 PROPORTION ADULT-SAFE
AS(1,2)= 1-(B(1,2)+CS(1,2)+CV(1,2)+CT(1,2)+AV(1,2)+AT(1,2));  
%%% ASSIGN PARAMETER VALUES
r1r18=.001;r12=.09;r13=.03;r14=.01;r23=.05;r24=.001;r25=.04;r26=.005;r27=.005;r28=.0001;r32=.01;r34=1;r35=.005;r36=.04;r37=.005;r38=.0002;r42=.0001;r43=.005;r45=.001;r46=.001;r47=.05;r48=.0003;r56=.005; r57=.001;r58=.004;r65=.001;r67=.005;r68=.002;r75=.0001;r76=.005;r78=.05;
%%% SD EQUATIONS
for m=1:2    %m=1 no policy   m=2 child protection P1
    for n=1:365   %simulate for 365 days
Day(n,1)=n;
B(n+1)=r1r18+(1-r12-r13-r14)*B(n);
CS(n+1)=(1-r23-r24-r25-r26-r27-r28)*CS(n)+r12*B(n)+r32*CV(n)+r42*CT(n);  
CV(n+1)=(1-r32-p*r34-r35-r36-r37-r38)*CV(n)+r13*B(n)+r23*CS(n)+r43*CT(n); 
CT(n+1)=(1-r42-r43-r45-r46-r47-r48)*CT(n)+r14*B(n)+r24*CS(n)+p*r34*CV(n); 
AS(n+1)=(1-r56-r57-r58)*AS(n)+r25*CS(n)+r35*CV(n)+r45*CT(n)+r65*AV(n)+r75*AT(n); 
AV(n+1)=(1-r65-r67-r68)*AV(n)+r26*CS(n)+r36*CV(n)+r46*CT(n)+r56*AS(n)+r76*AT(n); 
AT(n+1)=(1-r75-r76-r78)*AT(n)+r27*CS(n)+r37*CV(n)+r47*CT(n)+r57*AS(n)+r67*AV(n);
AS(n+1)= 1-(B(n)+CS(n)+CV(n)+CT(n)+AV(n)+AT(n)); %total population = 1 
    end
end
end  %% MATLAB function must end with an `end'
 
 