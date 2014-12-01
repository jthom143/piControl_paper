function [ jet_u850_trend_30, lat_u850_trend_30, jet_DJF, lat_jet_DJF] = NCEP1_u850_trends_seasonal(trend_period)
% NCEP1_trends calculates the linear trend in surface variables in order to
% be compared to CM2Mc

%% Load and do windstress calculations

cd /data1/fesd1/jthom143/NCEP_Reanalyses/Data
load NCEP_850mb_uwind.mat
cd /data1/fesd1/jthom143/piControl_paper

% Trim Data to years 1980-2005
u850 = u850(:,:,385:696);
time = time(385:696);

% Create useful time vectors 

dayssince111=time/24;
datevalue=dayssince111+datenum([1,1,1]);	
DateVec = datevec(datevalue);
time_month = (1980:1/12:2006);
time_month(313) = [];
time_year = 1980:2005;

clear dayssince111 datevalue DateVec

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



end

