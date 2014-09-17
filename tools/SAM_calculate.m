function [ SAM, SAM_unnormalized ] = SAM_calculate( lat, slp )
% SAM Index Calculation
%   SAM Index calculated as the normalized monthly zonal mean sea level
%   pressure difference between 40 and 65 degrees south. 

%   Index is normalized by subtracting the mean from the entire period and
%   dividing by the standard deviation. 



% Find indicies of 40 and 65 degrees S
lat_40 = findnearest(-40,lat);
lat_65 = findnearest(-65,lat);


% Zonally Average Sea Level Pressure Data
slp_zonalavg = squeeze(nanmean(slp));

% Calculate Pressure Difference
SAM_unnormalized = slp_zonalavg(lat_40,:) - slp_zonalavg(lat_65,:); 

% Calculate the mean and standard deviation of the unnormalized SAM 
SAM_mean = nanmean(SAM_unnormalized);
SAM_std = nanstd(SAM_unnormalized);

% Normalize the SAM Index 
SAM = (SAM_unnormalized - SAM_mean)./SAM_std;





end

