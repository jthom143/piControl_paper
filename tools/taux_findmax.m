function [ jet_mon, lat_jet_mon, y_mon, jet_ann, lat_jet_ann ] = taux_findmax( taux_mon, lat, time_month )
%taux_findmax locates the westerly jet in the southern hemisphere including
%magnitude and location

%   First, a 3rd order polynomial is fit to the monthly windstress data between 30
%   and 60S. This polynomial is then interpolated onto a 0.1 degree
%   meridional grid. The maximum value (jet magnitude) and location is then
%   found. 

%   An annual average is then taken of this jet magnitude and location

%% Maximum Wind Stress for Monthly Data 

% Zonal Average Monthly Data 

taux_zonalavg = squeeze(nanmean(taux_mon));

% Fit cubic function to the monthly wind stress data 

lat_40 = findnearest(-40,lat);
lat_60 = findnearest(-60,lat);

lat1 = lat(lat_60:lat_40,:);

taux_zonalavg_window  = taux_zonalavg(lat_60:lat_40,:);        % Zonally averaged wind stress between 40-60

y_mon = -9999*ones(length(lat1),length(time_month));

for i = 1:length(time_month)
    [p,s,mu] = polyfit(lat1, squeeze(taux_zonalavg_window(:,i)), 3); 
    
    y_mon(:,i) = polyval(p, lat1, s, mu);
end

% Interpolate Polynomial to 0.1 meridional grid: 

lat_new = lat(1):0.1:lat(length(lat));
lat_new = lat_new';

lat_40 = findnearest(-40,lat_new);
lat_60 = findnearest(-60,lat_new);
lat_new = lat_new(lat_60:lat_40);


y_mon_new = interp1(lat1, y_mon, lat_new, 'cubic');

% Find Maximum Wind Stress Value and Location 

[jet_mon, jet_loc_mon] = max(y_mon_new, [], 1);
lat_jet_mon = lat_new(jet_loc_mon)';


%% Annual Average of Jet Strength and Location
jet_ann = squeeze(nanmean(reshape(jet_mon, 12, []),1));
lat_jet_ann = squeeze(nanmean(reshape(lat_jet_mon, 12, []),1));

end

