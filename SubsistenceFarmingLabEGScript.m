%Subsistence Farming Lab Example Script
clear all; close all; format long;
%Define Parameters 
nw=5; nh=10; nd=25; M=1000; P=120; R=60; mw=100;ms=5;mh=30;ch=300;rt=1;ut=8;ct=300;th=10;ro=12;uo=4;to=40;co=0;
%Define coefficients in the objective function (total cost); the constant
%term is not entered
f=[-M*R;ch-M*R;2*ct+-M*R;2*ct+ch-M*R];
%Define the coefficients of the left side of the constraint inequalitities C1)-C8);
A=[0      0        2*rt   2*rt
   2*ro  2*ro      0      0 
   2*to  2*to+ms   2*th   2*th+ms 
   mw    0         mw     0
   mh    mh        mh     mh 
   -M    -M        -M     -M
   -1    0          0     0
    0   -1          0     0
    0    0         -1     0
    0    0          0    -1];
%define the right side of the constraint inequalitites C1)-C8).
b=[ ut*nd*3 
    uo*nd*3
    nw*nh*nd*3
    nw*nh*nd*2 
    nw*nh*nd*2
    -nw*P
    0
    0 
    0
    0  ];
% Solution to the linear programming problem
[optimalX,C] = farm(f,A,b,P,R)
% OptimalX has the optimal x1,x2,x3,x4 
% C is th optimal value of the obj. function


