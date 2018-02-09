%%% function for finding the standard score 
function z = standardized(x,data)
N=size(data);
m= mean(data);
s=std(data);
z=(x-m)/s;
end
