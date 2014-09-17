function [ jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs, time_year, jet_DJF, lat_jet_DJF ] = CanESM2_taux_seasonal

%CanESM2_taux loads in the windstress data for the CMCC CESM model and calculates the westerly wind jet and location and then calcuates the trend pdfs for these two variables. 

%% Import Data
% current_path = pwd;
% pathname_taux1 = fullfile(current_path, 'piControlData/CanESM2/data.cdf');     % CDF file from Lamont website
% pathname_taux2 = fullfile(current_path, 'piControlData/CanESM2/data(1).cdf');     % CDF file from Lamont website
% 
% taux1 = ncread(pathname_taux1, 'tauuo');
% taux2 = ncread(pathname_taux2, 'tauuo');
% 
% time1 = ncread(pathname_taux1, 'T');
% time2 = ncread(pathname_taux2, 'T');
% 
% taux = cat(3, taux1, taux2);
% time = cat(1, time1, time2);
% 
% lat = ncread('piControlData/CanESM2/data.cdf', 'lat');
% lon = ncread('piControlData/CanESM2/data.cdf', 'lon');
% 
% 
% 
% clear current_path pathname_taux1 pathname_taux2 time1 time2 taux1 taux2
% 
% %% Change from single type to double type
% lat = double(lat);
% lon = double(lon);
% taux = double(taux);
% 
% %% Change land values to be NaNs
% taux(taux>1e15)=NaN;
% 
% save('CanESM2_windstress.mat', 'taux', 'time', 'lat', 'lon', '-v7.3');

load piControlData/CanESM2/CanESM2_windstress.mat

%% Create Useful time vectors
time_year = 1:996;
time = double(time);


%% Jet Strength and Location Analysis

[ jet_mon, lat_jet_mon, ~, ~, ~ ] = taux_findmax( taux, lat, time );                                              

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

trend_period = 30;
trend_length = 30;

[jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs] = Windstress_Trends( time_year, jet_DJF, lat_jet_DJF, trend_period, trend_length );


end

