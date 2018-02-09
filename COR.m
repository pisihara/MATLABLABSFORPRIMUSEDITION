function cor = COR(X,Y)
covnum = 0;
covden1 = 0;
covden2 =0;
for i=1:length(X)
   covnum = covnum + (X(i,1)-mean(X))*(Y(i,1)-mean(Y));
   covden1 = covden1 + (X(i,1)-mean(X))^2;
   covden2 = covden2 + (Y(i,1)-mean(Y))^2;
end
cor = covnum/(covden1*covden2)^.5;