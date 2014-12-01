function [ jet_u850_trend_30, lat_u850_trend_30] = ERA_Interim_u850_trends_seasonal(trend_period)

%% Load and do windstress calculations

cd /data1/fesd1/waugh/ERA_INTERIM

filename = 'uwnd_197901_201406.nc';

uwnd    = ncread(filename, 'u');             % m/s
lat     = ncread(filename, 'latitude');      % Degrees Lat
p_level = ncread(filename, 'levelist');      % mb 
time    = ncread(filename, 'time');          % Hours since 1900-1-1

% Create useful time vectors 

dayssince111=double(time)/24;
datevalue=dayssince111+datenum([1900,1,1]);	
DateVec = datevec(datevalue);

time_month = (1980:1/12:2006);
time_month(313) = [];
time_year = 1980:2005;

% Trim Data to years 1980-2005
u850 = squeeze(uwnd(:,:,31,13:324));
clear dayssince111 datevalue DateVec time p_level filename uwnd


%% Calcuate Jet Magnitude and Location

[ jet_mon, lat_jet_mon, ~, ~, ~] = taux_findmax_ncep_new( u850, lat, time_month );


% DJF 
month_num = -9999*ones(1, length(time_month));

i = 1;

for ii = 1:length(time_month)/12;
    month_num(i:i+11) = [1:12];
    i = i+12;
end

month_num = month_num';

for ii = 1:length(time_month);
    if month_num(ii) == 1 
        DJF(ii) = 1*ii;
    elseif month_num(ii) == 2 
        DJF(ii) = 1*ii;
    elseif month_num(ii) == 12; 
        DJF(ii) = 1*ii; 
    else 
        DJF(ii) = 0; 
    end
end

DJF = floor(DJF./12);
[a_DJF,~,b_DJF] = unique(DJF);
a_DJF = a_DJF';
b_DJF = b_DJF';

% Jet Strength
jet_DJF = [a_DJF, accumarray(b_DJF,jet_mon', [], @mean)];

% Jet Location
lat_jet_DJF = [a_DJF, accumarray(b_DJF,lat_jet_mon', [], @mean)];

% Remove a = 0 from DJF and keep only 2nd column

jet_DJF(1,:)=[];            
lat_jet_DJF(1,:) = [];

jet_DJF = jet_DJF(:,2)';
lat_jet_DJF = lat_jet_DJF(:,2)';



%% Calculate linear trend for 1980-2005 

% Jet magnitude

jet_u850_trend = polyfit(time_year(1:25),jet_DJF(1:25),1); % Units: Pa/year
jet_u850_trend_30 = jet_u850_trend(1).*trend_period; % Units: Pa/30 yrs


% Jet Location

lat_u850_trend = polyfit(time_year(1:25),lat_jet_DJF(1:25),1); % Units: Pa/year
lat_u850_trend_30 = lat_u850_trend(1).*trend_period; % Units: Pa/30 yrs



