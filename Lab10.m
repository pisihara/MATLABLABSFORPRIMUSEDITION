%%  GANG MODEL 
clear all;close all; format long;
%% ASSIGN RATE CONSTANTS
delta = 0.02; lambda = 0.053; sigma=.08; gamma=.6;
A = 324; q = .0145; Beta1 = 0.71; Beta2 = 0.21;
alpha = 0.1265; Phi = 0.115; f = 0.44; rho = 0.2;
mu = 0.00823; murder = .0503;
%% DEFINE GANG MODEL EQUATIONS
%% Variables: T=y(1),N=y(2),S=y(3),G=y(4),R=y(5). 
F = @(t,y) [A-mu*y(1)-murder*y(4);
 A-q*y(4)-Beta1*(y(3)+y(4))*(y(2)/y(1))+alpha*y(3)+f*rho*y(5)-mu*y(2)+lambda*(1+y(2)/y(1))*y(4);
 q*y(4)+Beta1*(y(3)+y(4))*(y(2)/y(1))-Beta2*((y(3)*y(4))/y(1))-(alpha+mu)*y(3)-delta*y(2);
 Beta2*((y(3)*y(4))/y(1))+(1-f)*rho*y(5)-(Phi+murder+mu)*y(4)-lambda*(1+ y(2)/y(1))* y(4);
 Phi*y(4)-(rho+mu)*y(5)+delta*y(2)];
%% SOLVE ODE SYSTEM NUMERICALLY
[t,X]=ode45(F,[0 50],[8640 3224 4792 346 278]);
%% PLOT SOLUTIONS
figure 
plot(t,X(:,2),'k+'); % N=POTENTIAL GANG
hold on 
plot(t,X(:,3),'k-.'); % S=FRINGE GANG
hold on 
plot(t,X(:,4),'r'); % G=CORE GANG
hold on 
plot(t,X(:,5),'bo'); % R=INCARCERATED
hold off
title('Gang-Related Sub-Populations'); xlabel('Time in Years'); ylabel('Population');
legend('potential gang', 'fringe gang', 'core gang', 'incarcerated','location','northwest');