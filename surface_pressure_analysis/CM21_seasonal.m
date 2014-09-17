function [ sam_f, sam_xi, mean_sam, std_sam, time_year, SAM_unnormalized, sam_trends_yrs ] = CM21
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%% Import Data

% load /Users/jordanthomas/Desktop/Research/CM2.1/CM2.1_data/cm2.1.taux.slp.mat
load /home/jthom143/CM2.1/CM2.1_data/cm2.1.taux.slp.mat



% Not using wind stress

clear tau_x taux_ann time_month lon


%% Create Useful time vectors

month_num = -9999*ones(1, length(time));

i = 1;

for ii = 1:length(time)/12;
    month_num(i:i+11) = [1:12];
    i = i+12;
end

month_num = month_num';

%% SAM Calculations

[ ~, SAM_mon_unnormalized] = SAM_calculate( lat, slp);

% Annual Average SAM 

SAM_unnormalized = squeeze(nanmean(reshape(SAM_mon_unnormalized, 12, []),1));

%% Seasonal Analysis 
% DJF 

for ii = 1:length(time);
    if month_num(ii) == 1 
        DJF(ii) = 1*ii;
    elseif month_num(ii) == 2 
        DJF(ii) = 1*ii;
    elseif month_num(ii) == 12; 
        DJF(ii) = 1*ii; 
    else 
        DJF(ii) = 0; 
    end
end

DJF = floor(DJF./12);
[a_DJF,~,b_DJF] = unique(DJF);
a_DJF = a_DJF';
b_DJF = b_DJF';

% Jet Strength
sam_DJF = [a_DJF, accumarray(b_DJF, SAM_mon_unnormalized', [], @mean)];

% Remove a = 0 from DJF and keep only 2nd column

sam_DJF(1,:)=[];            
sam_DJF = sam_DJF(:,2)';


% Annual Average SAM 

SAM_unnormalized = squeeze(nanmean(reshape(SAM_mon_unnormalized, 12, []),1));


%% Trend Analysis PDFs

trend_period = 30;
trend_length = 30;

[ sam_f, sam_xi, mean_sam, std_sam,sam_trends_yrs] = SAM_Trends( time_year, sam_DJF, trend_period, trend_length );



end