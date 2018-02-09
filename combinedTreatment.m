function Z=combinedTreatment(i,j,k)
k1=7.34*86000*(1-(i/10));
r12=7.6*10^(-6)*86000*(1+(j/10));
k2=0; k3=0; r21=0; r13=0; r31=3.77*10^(-5)*86000; 
r23=1.7*10^(-3)*86000; r32=0; L1=2.78*10^(-4)*86000; L2=0; L3=6.7*10^(-3)*86000;
%% DEFINE THE SIMPLIFIED CWS MODEL EQUATIONS
F = @(t,Y)[k1+r31*Y(3)+r21*Y(2)-(r13*Y(1)+r12*Y(1))-L1*Y(1); k2+r12*Y(1)+r32*Y(3)-(r21*Y(2)+r23*Y(2))-L2*Y(2);    k3+r13*Y(1)+r23*Y(2)-(r31*Y(3)+r32*Y(3))-L3*Y(3)];
%% SOLVE ODE SYSTEM NUMERICALLY
[t,X]=ode45(F,[0 200],[26000 115 29]);
Z=X(length(X),k); %% k=1 for brain; k=3 for plasma
end

