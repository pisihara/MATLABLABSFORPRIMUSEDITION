%% Function to Compute Steady State Gang Populations
%% Sensitivity Parameters: lambda, recidivism 1-f, Imprisonment Phi
%% Variables:  T=y(1),N=y(2),S=y(3),G=y(4) and R=y(5). 
function SS = GangAux(lambda,f,Phi,pop)
delta = 0.02; sigma=.08; A = 324; q = .0145; Beta1 = 0.71;   
Beta2 = 0.21; alpha = 0.1265; rho = 0.2; mu = 0.00823;
murder = .0503;

F = @(t,y) [A-mu*y(1)-murder*y(4);
 A-q*y(4)-Beta1*(y(3)+y(4))*(y(2)/y(1))+alpha*y(3)+f*rho*y(5)-mu*y(2)+lambda*(1+y(2)/y(1))*y(4);
 q*y(4)+Beta1*(y(3)+y(4))*(y(2)/y(1))-Beta2*((y(3)*y(4))/y(1))-(alpha+mu)*y(3)-delta*y(3);
 Beta2*((y(3)*y(4))/y(1))+(1-f)*rho*y(5)-(Phi+murder+mu)*y(4)-lambda*(1+ y(2)/y(1))* y(4);
 Phi*y(4)-(rho+mu)*y(5)+delta*y(2)];
[T,Y]=ode45(F,[0 200],[8640 3224 4792 346 278]);
 SS=Y(length(Y),pop);  % pop specifies the steady state population
end