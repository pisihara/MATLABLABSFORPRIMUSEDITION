%% Demo 2 Civil War Peace-building Data 
Data=xlsread('CivilWars.xlsx','Sheet1','B2:E115'); %% Read Data
count=0; % count= #wars considered
success=0; % success= #successful peacebuilding 
for ID=1:length(Data)  % ID starts at 1, and increases by 1 until the last war
 if Data(ID,3) < 92  % condition for war to end before 1992
  count = count + 1;  % increases count by 1
    if Data(ID,4) == 1  % check if peacebuilding was successful
     success=success+1; % increases success by 1
     end
  end
end
percent=(success/count)*100  %%percentage of success