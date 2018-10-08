function z=TcellSteadyState(i,j)
%%Assign Values to Constants 
s=10; r=.03; Tmax=1500; k2=3*10.^(-3); Mt=.02; Mv=2.4; Mb=.24; 
N=i+100; k1=j*10^(-5);
F= @(t,Y)[s+r*Y(1)*(1-(Y(1)+Y(2)+Y(3))/Tmax)-Mt*Y(1)-k1*Y(1)*Y(4);k1*Y(1)*Y(4)-Mt*Y(2)-k2*Y(2);k2*Y(2)-Mb*Y(3);N*Mb*Y(3)-k1*Y(1)*Y(4)-Mv*Y(4)];
%%Solve ODE System Numerically%%
[t,X]=ode45(F,[0,1500],[1000 0 0 10.^(-3)]);
z=X(length(X),1);
end