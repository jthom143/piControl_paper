function [ jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs, time_year, jet_DJF, lat_jet_DJF] = CM2Mc_taux_seasonal

%CM2Mc_taux loads in the windstress data for the CM2Mc model and calculates the westerly wind jet and location and then calcuates the trend pdfs for these two variables.

%% Import Data
% pathname_ps = '/Users/jordanthomas/Desktop/Research/CM2Mc/Analysis2/Data/cm2mc_ps.nc';
pathname_taux = '/home/jthom143/CM2Mc/Analysis2/Data/cm2mc_taux.nc';

taux = ncread(pathname_taux, 'TAU_X');                 % Pa
lat = ncread(pathname_taux, 'YU_OCEAN');         % Degrees
time = ncread(pathname_taux, 'TIME1');
lon = ncread(pathname_taux, 'XU_OCEAN');


clear pathname_taux

%% Create Useful time vectors

time_year = 1:500;


%% Jet Strength and Location Analysis

[ jet_mon, lat_jet_mon, ~, ~, ~ ] = taux_findmax_new( taux, lat, time );                                              

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
trend_length = 25;

[jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs] = Windstress_Trends( time_year, jet_DJF, lat_jet_DJF, trend_period, trend_length, 'pdf' );

end
