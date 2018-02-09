%% El Nino 
clear lat long data2016;
%% 1. Read data and convert units to degrees.
rawdata2016=xlsread('ncdcnoaagovdata2016');
 for i=1:180
  for j=1:89
   data2016(i,j)=rawdata2016(i,j)/1000;
  end
 end
%% 2. Plot the Data on a Map Projection
%% Specify the map frame 
gLat = -88:2:88; 
gLon = 0:2:358;
[gLat,gLon] = meshgrid(gLat,gLon);
%% Create the map
figure
axesm eckert4; 
framem; 
gridm; 
axis off; 
tightmap
clear lat lon
%% Add data to the map
contourfm(gLat,gLon,data2016(:,:))  
%% add coastlines
load coastlines  
geoshow(coastlat, coastlon, 'Color', 'black')
%% add a color bar
contourcbar 