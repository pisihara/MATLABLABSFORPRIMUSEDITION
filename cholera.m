%Cholera Model represented as a function in MATLAB
function [t,X]=cholera(int,a,r,e,b0)
H=10000; n=.0001; K=1*10.^6; NB=-.33; 
F= @(t,y)[n*(H-y(1))-a*((y(3)/(K+y(3)))*y(1)); 
    a*((y(3)/(K+y(3)))*y(1))-r*y(2);
    y(3)*(NB)+e*y(2)];
[t,X]=ode45(F,[0,int],[1000 100 b0]);
end



