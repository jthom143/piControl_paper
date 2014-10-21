function [time_year, sam_DJF, sam_trend_30, sam_trend, begin_time, end_time] = MPI_ESM_MR_historical_ps
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%% Import Data
current_path = pwd;
pathname_ps = fullfile(current_path,'HistoricalData/MPI_ESM_MR_historical_r1i1p1_ps.cdf');

ps = ncread(pathname_ps, 'ps');                 % Pa
time = ncread(pathname_ps, 'T');                % Months since 1800
lat_atmos = ncread(pathname_ps, 'lat');         % Degrees


clear pathname_ps

 %% Change Units on Surface Pressure

slp_mon = ps./100;    %hPa
clear ps

%% Create Useful time vectors

yearnum = 1:length(time)/12;
time_year = 1849+yearnum;
 


%% SAM Calculations

[ ~, SAM_mon_unnormalized] = SAM_calculate( lat_atmos, slp_mon);

% Annual Average SAM 

SAM_unnormalized = squeeze(nanmean(reshape(SAM_mon_unnormalized, 12, []),1));
%% Seasonal Analysis 

sam_mon_additional_cells = NaN*(1:(length(time)+3));
sam_mon_additional_cells(2:length(time)+1) = SAM_mon_unnormalized;

iDJF = 1;
% iMAM = 4;
% iJJA = 7;
% iSON = 10;

for i = 1:length(time_year)
    sam_DJF(i) = nanmean(sam_mon_additional_cells(iDJF:iDJF+2));
    iDJF = iDJF+12;
    
%     sam_MAM(i) = nanmean(sam_mon_additional_cells(iMAM:iMAM+2));
%     iMAM = iMAM+12;
%     
%     sam_JJA(i) = nanmean(sam_mon_additional_cells(iJJA:iJJA+2));
%     iJJA = iJJA+12;
%     
%     sam_SON(i) = nanmean(sam_mon_additional_cells(iSON:iSON+2));
%     iSON = iSON+12;
    
end


%% Trend Analysis PDFs

trend_period = 25; %yeares

begin_time = findnearest(1980, time_year);
end_time   = findnearest(2005, time_year);

sam_trend = polyfit(time_year(begin_time:end_time), sam_DJF(:,begin_time:end_time),1); % Units: mb/year
sam_trend_30 = sam_trend(1).*trend_period; % Units: Pa/30 yrs


end