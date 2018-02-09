%Subsistence Farming Lab auxiliary function
function [optimalx,C]=farm(f,A,b,P,R)
optimalx = linprog(f,A,b);
% C is computable as follows:
C = f(1,1)*optimalx(1)+f(2,1)*optimalx(2)+f(3,1)*optimalx(3)+f(4,1)*optimalx(4)+5*P*R
end
