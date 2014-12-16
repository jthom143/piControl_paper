function [ jet_u850_trend_30, lat_u850_trend_30, jet_DJF, lat_jet_DJF] = NCEP2_u850_trends_seasonal(trend_period)

%% Load and do windstress calculations

cd /data1/fesd1/jthom143/NCEP_Reanalyses/Data

filename = 'uwnd.mon.mean_r2.nc';

uwnd    = ncread(filename, 'uwnd');     % m/s
lat     = ncread(filename, 'lat');      % Degrees Lat
p_level = ncread(filename, 'level');    % mb 
time    = ncread(filename, 'time');     % Hours since 1800-1-1

% Create useful time vectors 

dayssince111=time/24;
datevalue=dayssince111+datenum([1800,1,1]);	
DateVec = datevec(datevalue);

time_month = (1980:1/12:2014);
time_month(313) = [];
time_year = 1980:2013;

% Trim Data to years 1980-2005(324) or 2013(420)
u850 = squeeze(uwnd(:,:,3,13:420));
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

jet_u850_trend = polyfit(time_year(10:34),jet_DJF(10:34),1); % Units: Pa/year
jet_u850_trend_30 = jet_u850_trend(1).*trend_period; % Units: Pa/30 yrs


% Jet Location

lat_u850_trend = polyfit(time_year(10:34),lat_jet_DJF(10:34),1); % Units: Pa/year
lat_u850_trend_30 = lat_u850_trend(1).*trend_period; % Units: Pa/30 yrs



%% figure
% Defaults for figures
width = 6;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 12;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

jet_DJF_smoothed = interp1(time_year, jet_DJF, 1980:(1/4):2014,'cubic');
lat_jet_DJF_smoothed = interp1(time_year, lat_jet_DJF, 1980:(1/4):2014,'cubic');


figure(1)
h1 = plot(1980:(1/4):2014, jet_DJF_smoothed, 'linewidth', lw, 'color', [0,204/255,0]);
pos = get(gcf, 'Position');
xlim([1980 2014])
set(gca, 'fontsize', fsz)
ylabel('Wind speed (m s^{-1})')
xlabel('Time (years)')
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size

figure(2)
h1 = plot(1980:(1/4):2014, lat_jet_DJF_smoothed, 'linewidth', lw, 'color', [0,204/255,0]);
pos = get(gcf, 'Position');
xlim([1980 2014])
set(gca, 'fontsize', fsz)
ylabel('Latitude (Degrees)')
xlabel('Time (years)')
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size



