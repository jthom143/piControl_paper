function [ jet_mon, lat_jet_mon, y_mon, jet_ann, lat_jet_ann ] = taux_findmax_ncep( taux_mon,  lat, time_month )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%% Maximum Wind Stress for Monthly Data 

% Zonal Average Monthly Data 

taux_zonalavg = squeeze(mean(taux_mon));


% Fit cubic function to the monthly wind stress data 

lat_30 = findnearest(-30,lat);
lat_60 = findnearest(-60,lat);

lat1 = lat(lat_30:lat_60,:);

taux_zonalavg_window  = taux_zonalavg(lat_30:lat_60,:);        % Zonally averaged wind stress between 40-60

y_mon = -9999*ones(length(lat1),length(time_month));

for i = 1:length(time_month)
    [p,s,mu] = polyfit(lat1, squeeze(taux_zonalavg_window(:,i)), 3); 
    
    y_mon(:,i) = polyval(p, lat1, s, mu);
end

% Interpolate Polynomial to 0.1 meridional grid: 

lat_new = lat(length(lat)):0.1:lat(1);
lat_new = lat_new';
lat_new = flipud(lat_new);

lat_30 = findnearest(-30,lat_new);
lat_60 = findnearest(-60,lat_new);
lat_new = lat_new(lat_30:lat_60);


y_mon_new = interp1(lat1, y_mon, lat_new, 'cubic');

% Find Maximum Wind Stress Value and Location 

[jet_mon, jet_loc_mon] = max(y_mon_new, [], 1);
lat_jet_mon = lat_new(jet_loc_mon)';


%% Annual Average of Jet Strength and Location
jet_ann = squeeze(nanmean(reshape(jet_mon, 12, []),1));
lat_jet_ann = squeeze(nanmean(reshape(lat_jet_mon, 12, []),1));


end

