function [ taux_trend_30, lat_trend_30, sam_trend_30 ] = NCEP1_trends_seasonal(trend_period)
% NCEP1_trends calculates the linear trend in surface variables in order to
% be compared to CM2Mc

%% Load and do windstress calculations
% Open first NetCDF File 
cd /data1/fesd1/jthom143/NCEP_Reanalyses/Data
filename = 'taux.daily.mean.010179.010199.nc'; 

% Load in variables from first file

taux1 = ncread(filename, 'uflx');
lat = ncread(filename, 'lat');
lon = ncread(filename, 'lon');
time1 = ncread(filename, 'time');

% Open second NetCDF File 

filename = 'taux.daily.mean.r1.010299.123112.nc';

% Load in variables from first file

taux2 = ncread(filename, 'uflx');
time2 = ncread(filename, 'time');

% Combine data matricies 

taux = cat(3, taux1, taux2);
time = cat(1, time1, time2);

taux = -taux;

% Check to make sure concatenation done correctly 

% figure(1)
% plot(time, '-o')
% 
% figure(2)
% plot(time, squeeze(taux(1,1,:)), 'b-')
% hold on 
% plot(time1, -squeeze(taux1(1,1,:)), 'g-o')
% hold on 
% plot(time2, -squeeze(taux2(1,1,:)), 'r-o')

% Clear unnecessary matricies 

clear taux1
clear taux2
clear time1
clear time2
clear filename

% Create useful time vectors 

dayssince111=time/24;
datevalue=dayssince111+datenum(1,1,1)-2;	
[y,m,d]=datevec(datevalue);
DateVec = datevec(datevalue);
time_month = (1979:1/12:2013);
time_month(409) = [];


% Calculate monthly average

taux_mon = -9999*ones(length(lon), length(lat), 408);

for ii = 1:length(lon)
    for jj = 1:length(lat)
        [a,~,b] = unique(DateVec(:,1:2),'rows');
        out = [a,accumarray(b,squeeze(taux(ii,jj,:)),[],@mean)]; 
        
        taux_mon(ii,jj,:) = out(:,3);
        
    end
end


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


[ jet_mon, lat_jet_mon, ~, jet_ann, lat_jet_ann] = taux_findmax_ncep_new( taux_mon, lat, time_month );


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


%% Load and so SAM calculations
filename = 'slp.mon.mean.r1.nc'; 

% Load in variables from file

lat  = ncread(filename, 'lat');     % Degrees
lon  = ncread(filename, 'lon');     % Degrees 
time = ncread(filename, 'time');    % Hours since 1-1-1
slp  = ncread(filename, 'slp');     % mb

% Create useful time vectors 

dayssince111=time/24;
datevalue=dayssince111+datenum(1,1,1)-2;	
[y,m,d]=datevec(datevalue);


% Calculate SAM Index

[SAM, SAM_unnormalized] = SAM_calculate( lat, slp );
 
 % SAM Index

SAM_DJF = [a_DJF, accumarray(b_DJF, SAM_unnormalized', [], @mean)];
SAM_DJF_index = [a_DJF, accumarray(b_DJF, SAM', [], @mean)];
 
SAM_DJF(1,:)=[];
SAM_DJF = SAM_DJF(:,2)';

SAM_DJF_index(1,:)=[];
SAM_DJF_index = SAM_DJF_index(:,2)';

 
%% Calculate linear trend for 1979-present 
begin_time = 2; %1980
end_time = 25; % 2005

% Jet magnitude

taux_trend = polyfit(time_year(begin_time:end_time),jet_DJF(:,begin_time:end_time)',1); % Units: Pa/year
taux_trend_30 = taux_trend(1).*trend_period; % Units: Pa/30 yrs


% Jet Location

lat_trend = polyfit(time_year(begin_time:end_time),lat_jet_DJF(:,begin_time:end_time)',1); % Units: Pa/year
lat_trend_30 = lat_trend(1).*trend_period; % Units: Pa/30 yrs


% SAM (unnormalized)

sam_trend = polyfit(time_year(begin_time:end_time),SAM_DJF(:,begin_time:end_time)',1); % Units: Pa/year
sam_trend_30 = sam_trend(1).*trend_period; % Units: Pa/30 yrs

cd /data1/fesd1/jthom143/piControl_paper


end

