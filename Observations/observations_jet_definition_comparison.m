%% Comparing observed jet defined by windstress and 850mb winds 
% Run all functions to calculate observed trends and plot jet mag and
% location defined by the two methods on the same figure 
% 
% Jordan Thomas 
% Dec 16, 2014


%% Housekeeping and Definitions 
close all
clear all

trend_period = 25;
time_year = 1980:2013;

%% Run Observed Trend Functions
[ r1_jet_u850_trend_25,  r1_lat_u850_trend_25,  r1_u850_jet_DJF,  r1_u850_lat_jet_DJF ] = NCEP1_u850_trends_seasonal(trend_period);
[ r2_jet_u850_trend_25,  r2_lat_u850_trend_25,  r2_u850_jet_DJF,  r2_u850_lat_jet_DJF ] = NCEP2_u850_trends_seasonal(trend_period);
[ era_jet_u850_trend_25, era_lat_u850_trend_25, era_u850_jet_DJF, era_u850_lat_jet_DJF] = ERA_Interim_u850_trends_seasonal(trend_period);

[ r1_taux_trend_25,  r1_lat_trend_25, ~, ~, r1_taux_jet_DJF,  r1_taux_lat_jet_DJF  ] = NCEP1_trends_seasonal(trend_period);
[ r2_taux_trend_25,  r2_lat_trend_25,       r2_taux_jet_DJF,  r2_taux_lat_jet_DJF  ] = NCEP2_trends_seasonal_taux(trend_period);
[ era_taux_trend_25, era_lat_trend_25,      era_taux_jet_DJF, era_taux_lat_jet_DJF ] = ERA_Interin_trends_seasonal_taux(trend_period);

%% Create time series figure

% Defaults for figures
width = 6;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 12;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize


%%% NOTE%%%
% Windstress analysis goes from 1979-2012 while wind analysis goes from
% 1980-2013. Index accordingly. 

r1_u850_jet_DJF_smoothed     = interp1(time_year(1:26), r1_u850_jet_DJF(1:26), 1980:(1/4):2006,'cubic');
r1_u850_lat_jet_DJF_smoothed = interp1(time_year(1:26), r1_u850_lat_jet_DJF(1:26), 1980:(1/4):2006,'cubic');

r1_taux_jet_DJF_smoothed     = interp1(time_year(1:26), r1_taux_jet_DJF(2:27), 1980:(1/4):2006,'cubic');
r1_taux_lat_jet_DJF_smoothed = interp1(time_year(1:26), r1_taux_lat_jet_DJF(2:27), 1980:(1/4):2006,'cubic');

r2_u850_jet_DJF_smoothed     = interp1(time_year(1:26), r2_u850_jet_DJF(1:26), 1980:(1/4):2006,'cubic');
r2_u850_lat_jet_DJF_smoothed = interp1(time_year(1:26), r2_u850_lat_jet_DJF(1:26), 1980:(1/4):2006,'cubic');

r2_taux_jet_DJF_smoothed     = interp1(time_year(1:26), r2_taux_jet_DJF(2:27), 1980:(1/4):2006,'cubic');
r2_taux_lat_jet_DJF_smoothed = interp1(time_year(1:26), r2_taux_lat_jet_DJF(2:27), 1980:(1/4):2006,'cubic');

era_u850_jet_DJF_smoothed     = interp1(time_year(1:26), era_u850_jet_DJF(1:26), 1980:(1/4):2006,'cubic');
era_u850_lat_jet_DJF_smoothed = interp1(time_year(1:26), era_u850_lat_jet_DJF(1:26), 1980:(1/4):2006,'cubic');

era_taux_jet_DJF_smoothed     = interp1(time_year(1:26), era_taux_jet_DJF(2:27), 1980:(1/4):2006,'cubic');
era_taux_lat_jet_DJF_smoothed = interp1(time_year(1:26), era_taux_lat_jet_DJF(2:27), 1980:(1/4):2006,'cubic');



% Jet Magnitude
figure(1)
[AX_r1,H1_r1,H2_r1] = plotyy(1980:(1/4):2006, r1_u850_jet_DJF_smoothed, 1980:(1/4):2006 ,r1_taux_jet_DJF_smoothed);
hold on
[AX_r2,H1_r2,H2_r2] = plotyy(1980:(1/4):2006, r2_u850_jet_DJF_smoothed, 1980:(1/4):2006 ,r2_taux_jet_DJF_smoothed);
[AX_era,H1_era,H2_era] = plotyy(1980:(1/4):2006, era_u850_jet_DJF_smoothed, 1980:(1/4):2006 ,era_taux_jet_DJF_smoothed);
set([AX_r1, AX_r2, AX_era], 'ycolor', 'k')
pos = get(gcf, 'Position');
set([AX_r1, AX_r2, AX_era], 'fontsize', fsz)
set(H1_r1, 'color', [0,0,1], 'linewidth', lw)
set(H2_r1, 'color', [0,0,1], 'linewidth', lw, 'linestyle',  '- -')
set(H1_r2, 'color', [0,204/255,0], 'linewidth', lw)
set(H2_r2, 'color', [0,204/255,0], 'linewidth', lw, 'linestyle',  '- -')
set(H1_era, 'color', [1,0,0], 'linewidth', lw)
set(H2_era, 'color', [1,0,0], 'linewidth', lw, 'linestyle',  '- -')
ylabel('Wind speed (m s^{-1})')
xlabel('Time (years)')
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size

figure(2)
h1 = plot(1980:(1/4):2006, r1_u850_lat_jet_DJF_smoothed, 'linewidth', lw, 'color', [0,0,1]);
pos = get(gcf, 'Position');
xlim([1980 2014])
set(gca, 'fontsize', fsz)
ylabel('Latitude (Degrees)')
xlabel('Time (years)')
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
hold on
