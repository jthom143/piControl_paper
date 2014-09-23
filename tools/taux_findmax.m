function [ jet_mon, lat_jet_mon, y_mon, jet_ann, lat_jet_ann ] = taux_findmax( taux_mon, lat, time_month )
%taux_findmax locates the westerly jet in the southern hemisphere including
%magnitude and location

%   First, a 3rd order polynomial is fit to the monthly windstress data between 30
%   and 60S. This polynomial is then interpolated onto a 0.1 degree
%   meridional grid. The maximum value (jet magnitude) and location is then
%   found. 

%   An annual average is then taken of this jet magnitude and location

%% Maximum Wind Stress for Monthly Data 

% Zonally averaged wind stress between 40-60

taux_zonalavg = squeeze(nanmean(taux_mon));

lat_30 = findnearest(-30,lat);
lat_70 = findnearest(-70,lat);

lat1 = lat(lat_70:lat_30,:);

taux_zonalavg_window  = taux_zonalavg(lat_70:lat_30,:); 

% Interpolate Windstress to 0.1 meridional grid: 

lat_new = lat(1):0.1:lat(length(lat));
lat_new = lat_new';

lat_30 = findnearest(-30,lat_new);
lat_70 = findnearest(-70,lat_new);
lat_new = lat_new(lat_70:lat_30);


y_mon = interp1(lat1, taux_zonalavg_window, lat_new, 'cubic');


% Find Maximum Wind Stress Value and Location 

[jet_mon, jet_loc_mon] = max(y_mon, [], 1);
lat_jet_mon = lat_new(jet_loc_mon)';


%% Annual Average of Jet Strength and Location
jet_ann = squeeze(nanmean(reshape(jet_mon, 12, []),1));
lat_jet_ann = squeeze(nanmean(reshape(lat_jet_mon, 12, []),1));

end

