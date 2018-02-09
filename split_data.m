function [claimed_data,unclaimed_data]=split_data(data)
%% This function divides input data into:
%% claimed_data = incidents where responsibility was claimed
%% unclaimed_data = unclaimed incidents

%% initialize split-data counts
count_claimed=0; count_unclaimed=0; 
%% Initialize split-data matrices 
for i=1:size(data)
 if data(i,3)==0
  count_unclaimed=count_unclaimed+1; % update #unclaimed incidents
  elseif data(i,3)==1
   count_claimed=count_claimed+1; % update #claimed incidents
  end
end
unclaimed_data=zeros(count_unclaimed,5); 
claimed_data=zeros(count_claimed,5); 
%% Input data into split matrices
kUnclaimed=1;kClaimed=1; % initialize data rows
%% Add data to split matrices
for i=1:size(data)
 if data(i,3)==0
  unclaimed_data(kUnclaimed,:)=data(i,:); % add row to unclaimed data matrix
  kUnclaimed=kUnclaimed+1; % Increase the unclaimed index
 elseif data(i,3)==1
  claimed_data(kClaimed,:)=data(i,:); % add row to claimed data matrix
  kClaimed=kClaimed+1; % Increase the claimed index
 end
 end
end