function [ taux_trend_25, lat_trend_25 ] = NCEP2_trends_seasonal_taux(trend_period)
% NCEP1_trends calculates the linear trend in surface variables in order to
% be compared to piControl Model Runs

%% Open NetCDF File 
cd /data1/fesd1/jthom143/NCEP_Reanalysis/Data

filename = 'taux.mon.mean.r2.nc'; 

% Load in variables from first file

taux2 = ncread(filename, 'uflx');
lat = ncread(filename, 'lat');
lon = ncread(filename, 'lon');
time = ncread(filename, 'time');

taux = -taux2;

% Create useful time vectors 

dayssince111=time/24;
datevalue=dayssince111+datenum([1800,1,1]);	
DateVec = datevec(datevalue);

time_month = (1979:1/12:2013);
time_month(409)=[];
time_month = time_month';


% Annual average wind stress analysis 

taux_ann = -9999*ones(length(lon), length(lat), 34);

for ii = 1:length(lon)
    for jj = 1:length(lat)
        [a,~,b] = unique(DateVec(:,1),'rows');
        out = [a,accumarray(b,squeeze(taux(ii,jj,:)),[],@mean)]; 
        
        taux_ann(ii,jj,:) = out(:,2);
       
        
    end
end

time_year = out(:,1);


[ jet_mon, lat_jet_mon, ~, jet_ann, lat_jet_ann] = taux_findmax_ncep_new( taux, lat, time_month );


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

 
%% Calculate linear trend for 1979-present 
begin_time = 2; %1980
end_time = 27; % 2005

% Jet magnitude

taux_trend = polyfit(time_year(begin_time:end_time),jet_DJF(:,begin_time:end_time)',1); % Units: Pa/year
taux_trend_25 = taux_trend(1).*trend_period; % Units: Pa/30 yrs


% Jet Location

lat_trend = polyfit(time_year(begin_time:end_time),lat_jet_DJF(:,begin_time:end_time)',1); % Units: Pa/year
lat_trend_25 = lat_trend(1).*trend_period; % Units: Pa/30 yrs


cd /data1/fesd1/jthom143/piControl_paper


end

