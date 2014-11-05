function [ jet_mon, lat_jet_mon, y_mon, jet_ann, lat_jet_ann ] = taux_findmax_new( taux_mon, lat, time_month )
%taux_findmax locates the westerly jet in the southern hemisphere including
%magnitude and location

%% Maximum Wind Stress for Monthly Data 

% Isolate SH
lat_0 = findnearest(0,lat);
lat_90 = findnearest(-90,lat);
taux_mon = taux_mon(:,lat_90:lat_0,:);
lat = lat(lat_90:lat_0);

% Zonal Average Monthly Data 

taux_zonalavg = squeeze(nanmean(taux_mon));

% Find Maximum in SH

[wind_max, wind_max_loc] = max(taux_zonalavg, [], 1);

% Isolate the 5 points around the maximum

lower_bound = wind_max_loc - 2;
upper_bound = wind_max_loc + 2;

% Interpolate Polynomial to 0.1 meridional grid: 
for i = 1:length(time_month)
    lat_new(:,i) = lat(lower_bound(i)):0.1:lat(upper_bound(i));

    y_mon_new(:,i) = interp1(lat(lower_bound(i):upper_bound(i)), squeeze(taux_zonalavg((lower_bound(i):upper_bound(i)),i)), lat_new(:,i), 'cubic');

end

% Fit a quadratic to the interpolated function

for i = 1:length(time_month)
    [p,s,mu] = polyfit(lat_new(:,i), y_mon_new(:,i), 2); 
    
    y_mon(:,i) = polyval(p, lat_new(:,i), s, mu);
end


% Find Maximum Wind Stress Value and Location 

[jet_mon, jet_loc_mon] = max(y_mon, [], 1);

for i = 1:length(time_month)
    lat_new_time = lat_new(:,i);
    lat_jet_mon(i) = lat_new_time(jet_loc_mon(i))';
end



%% Annual Average of Jet Strength and Location
jet_ann = squeeze(nanmean(reshape(jet_mon, 12, []),1));
lat_jet_ann = squeeze(nanmean(reshape(lat_jet_mon, 12, []),1));


