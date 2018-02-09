%% Terrorism Mini-Lab
 clear all; close all;
%% Read data:1.year, 2.month, 3.claim?(1 or 0), 4.killed, 5.wounded
 [data]=xlsread('terrorism_data.xlsx'); % Read in Excel data
%% Separate claimed and unclaimed events
[claimed,unclaimed]=split_data(data); 
%% Process split data
claimed_year= claimed(:,1); % year of claimed attacks 
unclaimed_year= unclaimed(:,1); % year of unclaimed attacks
claimed_casualties= claimed(:,4)+claimed(:,5); % Add killed+wounded
unclaimed_casualties= unclaimed(:,4)+unclaimed(:,5); % Add killed+wounded
%% Graphically display data
plot(claimed_year,claimed_casualties,'ro') % Plot claimed attacks (red *)
hold on 
plot(unclaimed_year,unclaimed_casualties,'b+'); % Plot unclaimed attacks(blue +)
title('Terrorist attacks over time')
xlabel('Year')
ylabel('Number of Casualties')
legend('claimed attacks','unclaimed attacks','Location','northeast')






        
        
        