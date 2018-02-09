Data=xlsread('Data.xlsx','RAW','B2:F16');
%% Compute standardized scores
for i=1:size(Data)
 for j=1:5
  StandardizedData(i,j)=standardized(Data(i,j), Data(:,j));
 end
end