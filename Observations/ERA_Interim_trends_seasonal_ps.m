function [ sam_trend_30 ] = ERA_Interim_trends_seasonal_ps(trend_period)
% NCEP1_trends calculates the linear trend in surface variables in order to
% be compared to piControl model runs

%% Load and so SAM calculations
cd /data1/fesd1/waugh/ERA_INTERIM
filename = 'ps_197901_201406.nc';

% Load in variables from file

lat  = ncread(filename, 'latitude');     % Degrees Latitude
time = ncread(filename, 'time');         % Hours Since 1900-01-01
slp  = ncread(filename, 'sp');           % Pa

slp = slp./100;                          % hPa

%% Create useful time vectors 

dayssince111=double(time)/24;
datevalue=dayssince111+datenum([1900,1,1]);	
DateVec=datevec(datevalue);
time_month = 1980:1/12:2006;
time_month(313) = [];
time_year = 1980:2005;

% Trim Data to years 1980-2005
slp = slp(:,:,13:324);

clear time DateVec datevalue dayssince111 filename


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

% SAM (unnormalized)

sam_trend = polyfit(time_year(1:25), SAM_DJF(1:25),1); % Units: Pa/year
sam_trend_30 = sam_trend(1).*trend_period; % Units: Pa/30 yrs


cd /data1/fesd1/jthom143/piControl_paper


end

