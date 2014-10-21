 function [ jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs, time_year, jet_DJF, lat_jet_DJF] = CNRM_CM52_taux_seasonal

%CNRM_CM52_taux loads in the windstress data for the CNRM CM5 2 model and calculates the westerly wind jet and location and then calcuates the trend pdfs for these two variables. 

%% Import Data
% current_path = pwd;
% pathname_taux = fullfile(current_path, 'piControlData/CNRM_CM52/CNRM_CM52_taux.cdf');     % CDF file from Lamont website
% 
% pathname_coord = fullfile(current_path, 'piControlData/CNRM_CM52/tauuo_Omon_CNRM-CM5-2_piControl_r1i1p1_185001-185912.nc');                      % CDF file from Lamont website does not contain lat and lon variables. 'pathname_coord' file downloaded from ESGF website to obtain these variables.
% 
% taux = ncread(pathname_taux,'tauuo'); %N/m^2
% time = ncread(pathname_taux,'T');
% 
% lat = ncread(pathname_coord, 'lat');
% lon = ncread(pathname_coord, 'lon');
% 
% 
% clear current_path pathname_taux
% 
% %% Change from single type to double type
% lat = double(lat);
% lon = double(lon);
% taux = double(taux);
% 
% %% Change land values to be NaNs
% taux(taux>1e15)=NaN;
% 
% %% Plot Raw Data for first time step
% figure(1)
% axesm miller
% surfacem(lat, lon, squeeze(taux(:,:,1)))
% title('CNRM CM52 Surface Windstress - Original Grid', 'fontsize', 12)
% colorbar
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 895])
% 
% %% Regridding
% for i = 1:length(time);
% [lon_new, lat_new, taux_new(:,:,i)] = griddata(lon, lat, squeeze(taux(:,:,i)), [0:360], [-90:90]');
% end
% 
% lat = lat_new;
% lon = lon_new;
% taux = taux_new;
% 
% clear lat_new lon_new taux_new
% 
% save('CNRM_CM52_windstress.mat', 'taux', 'time', '-v7.3');

load piControlData/CNRM_CM52/CNRM_CM52_windstress.mat
load lat_lon.mat

%% Change from single type to double type
lat = double(lat);
lon = double(lon);
taux = double(taux);

%% Change land values to be NaNs
taux(taux>1e15)=NaN;

%% Create lat and lon vectors 
lat_matrix = lat;
lon_matrix = lon;

clear lat lon

lat = lat_matrix(:,1);
lon = lon_matrix(1,:);

%% Create Useful time vectors
time_year = 1:410;

%% Jet Strength and Location Analysis

%Change dimensions on taux for jet location analysis
taux_mon = permute(taux, [2,1,3]);

[ jet_mon, lat_jet_mon, ~, ~, ~ ] = taux_findmax( taux_mon, lat, time );     


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

[jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs] = Windstress_Trends( time_year, jet_DJF, lat_jet_DJF, trend_period, trend_length );


end


