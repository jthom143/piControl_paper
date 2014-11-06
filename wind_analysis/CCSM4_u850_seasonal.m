function [ jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs, time_year, jet_DJF, lat_jet_DJF ] = CCSM4_u850_seasonal(Type)


%% Import Data

current_path = pwd;
pathname_u850 = fullfile(current_path, 'piControlData/CCSM4/CCSM4_u850.cdf');     % CDF file from Lamont website

lat = ncread(pathname_u850, 'lat');
time_month = ncread(pathname_u850, 'T');
u850 = ncread(pathname_u850, 'ua');

clear current_path pathname_u850

%% Change from single type to double type
lat = double(lat);
u850 = double(u850);
time_month = double(time_month);

%% Change land values to be NaNs
u850(u850>1e15)=NaN;
u850 = squeeze(u850);

%% Create Useful time vectors
time_year = 1:length(time_month)/12;

%% Jet Strength and Location Analysis

[ jet_mon, lat_jet_mon, ~, ~, ~ ] = taux_findmax_new( u850, lat, time_month );

%% Seasonal Analysis 

jet_mon_additional_cells = NaN*(1:(length(time_month)+3));
jet_mon_additional_cells(2:length(time_month)+1) = jet_mon;

lat_jet_mon_additional_cells = NaN*(1:(length(time_month)+3));
lat_jet_mon_additional_cells(2:length(time_month)+1) = lat_jet_mon;

iDJF = 1;
% iMAM = 4;
% iJJA = 7;
% iSON = 10;

for i = 1:length(time_year)
    jet_DJF(i) = nanmean(jet_mon_additional_cells(iDJF:iDJF+2));
    lat_jet_DJF(i) = nanmean(lat_jet_mon_additional_cells(iDJF:iDJF+2));
    iDJF = iDJF+12;
    
%     jet_MAM(i) = nanmean(jet_mon_additional_cells(iMAM:iMAM+2));
%     lat_jet_MAM(i) = nanmean(lat_jet_mon_additional_cells(iMAM:iMAM+2));
%     iMAM = iMAM+12;
%     
%     jet_JJA(i) = nanmean(jet_mon_additional_cells(iJJA:iJJA+2));
%     lat_jet_JJA(i) = nanmean(lat_jet_mon_additional_cells(iJJA:iJJA+2));
%     iJJA = iJJA+12;
%     
%     jet_SON(i) = nanmean(jet_mon_additional_cells(iSON:iSON+2));
%     lat_jet_SON(i) = nanmean(lat_jet_mon_additional_cells(iSON:iSON+2));
%     iSON = iSON+12;
    
end


%% Trend Analysis PDFs

trend_period = 25;
trend_length = 25;

[jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs] = Windstress_Trends( time_year, jet_DJF, lat_jet_DJF, trend_period, trend_length, Type );


end