function [ sam_trend_30 ] = NCEP2_trends_seasonal_ps(trend_period)
% NCEP1_trends calculates the linear trend in surface variables in order to
% be compared to piControl model runs

%% Load and so SAM calculations
cd /data1/fesd1/jthom143/NCEP_Reanalyses/Data
filename = 'slp.mon.mean.r2.nc'; 

% Load in variables from file

lat = ncread(filename, 'lat');     % Degrees
time = ncread(filename, 'time');   % Hours since 1800-01-01
slp = ncread(filename, 'mslp');    % Pa

slp = slp./100;                    % hPa

%% Create useful time vectors 

dayssince111=time/24;
datevalue=dayssince111+datenum([1800,1,1]);	
DateVec=datevec(datevalue);

time_month = 1979:1/12:2013;
time_month(409) = [];
time_year = 1979:2012;

% Calculate SAM Index

[SAM, SAM_unnormalized] = SAM_calculate( lat, slp );


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


% SAM Index

SAM_DJF = [a_DJF, accumarray(b_DJF, SAM_unnormalized', [], @mean)];
SAM_DJF_index = [a_DJF, accumarray(b_DJF, SAM', [], @mean)];
 
SAM_DJF(1,:)=[];
SAM_DJF = SAM_DJF(:,2)';

SAM_DJF_index(1,:)=[];
SAM_DJF_index = SAM_DJF_index(:,2)';

 
%% Calculate linear trend for 1979-present 
begin_time = 2; %1980
end_time = 27; % 2005

% SAM (unnormalized)

sam_trend = polyfit(time_year(begin_time:end_time),SAM_DJF(:,begin_time:end_time),1); % Units: Pa/year
sam_trend_30 = sam_trend(1).*trend_period; % Units: Pa/30 yrs


cd /data1/fesd1/jthom143/piControl_paper


end

