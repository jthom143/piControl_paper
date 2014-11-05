function [ time_year, jet_DJF, lat_jet_DJF, jet_trend, jet_trend_30, jet_loc_trend, jet_loc_trend_30 ] = CNRM_CM5_historical_u850(filename)

%CanESM2_historical_taux loads in the windstress data for the CanESM2 historical ensemble 1 model run and calculates the westerly wind jet and location and then calcuates the trend pdfs for these two variables. 

%% Import Data
current_path = pwd;
pathname_u850 = fullfile(current_path, 'HistoricalData', filename);     % CDF file from Lamont website


u850       = ncread(pathname_u850, 'ua');
time       = ncread(pathname_u850, 'T');
lat        = ncread(pathname_u850, 'lat');

clear current_path pathname_u850

%% Change from single type to double type
lat = double(lat);
u850 = double(u850);
 
%% Change land values to be NaNs
u850(u850>1e15)=NaN;


%% Create Useful time vectors
yearnum = 1:length(time)/12;
time_year = 1849+yearnum;


%% Jet Strength and Location Analysis

[ jet_mon, lat_jet_mon, ~, ~, ~ ] = taux_findmax_new( u850, lat, time );                                              

%% Seasonal Analysis 

jet_mon_additional_cells = NaN*(1:(length(time)+3));
jet_mon_additional_cells(2:length(time)+1) = jet_mon;

lat_jet_mon_additional_cells = NaN*(1:(length(time)+3));
lat_jet_mon_additional_cells(2:length(time)+1) = lat_jet_mon;

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

begin_time = findnearest(1980, time_year);
end_time   = findnearest(2005, time_year);

jet_trend = polyfit(time_year(begin_time:end_time), jet_DJF(:,begin_time:end_time),1); % Units: mb/year
jet_trend_30 = jet_trend(1).*trend_period; % Units: Pa/30 yrs

jet_loc_trend = polyfit(time_year(begin_time:end_time), lat_jet_DJF(:, begin_time:end_time),1); 
jet_loc_trend_30 = jet_loc_trend(1).*trend_period; % Units: Pa/30 yrs



end

