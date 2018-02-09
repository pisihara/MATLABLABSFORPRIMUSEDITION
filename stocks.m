clear all; close all; format long;
%% Read in Stock and Crypto-Currency Data
STOCK=xlsread('stocks.xlsx', 'C3:C54');
CRYPTO=xlsread('stocks.xlsx', 'D3:D54');
n=length(STOCK);
 for i=1:n
   P(i,1)=STOCK(i,1);
   P(i,2)=CRYPTO(i,1);
  end
%% Compute Value of Holdings
month(1,1)=1;
A(1,1)=1000; %% Initial stock value
B(1,1)=1000; %% Initial crypo-currency value
for i=2:n+1
 month(i,1)=i;
 A(i,1)=A(i-1,1)*(1+P(i-1,1)); %% weekly stock values
 B(i,1)=B(i-1,1)*(1+P(i-1,2)); %% weekly crypto values
end
%% Plot Weekly Holdings
figure
plot(month(:,1),A(:,1),'b-o');
hold on
plot(month(:,1),B(:,1),'r-o');
hold on
legend('stock value','crypto-currency value');
ylabel('dollars');
xlabel('week');








