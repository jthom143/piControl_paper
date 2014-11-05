function [ jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs] = Wind_5070_Trends( time_year, u850_5070_DJF, trend_period, trend_length )
% Windstress_Trends calculates the kernel density smoothing functio associated
%       with the period trends of the Southern Ocean westerly jet strength,
%       location, and the SAM index in the CM2.1 model output. 


%% Trend Analysis (annually averaged data)

num_periods = length(time_year) - (trend_period - 1);

% Jet

jet_trends = NaN*ones(num_periods, 2);

for i =1:num_periods;
    k = i+(trend_period - 1);
    jet_trends(i,:) = polyfit(time_year(i:k),u850_5070_DJF(i:k),1); % Units: Pa/year
end

std1 = std(u850_5070_DJF);
bw = ((4*(std1.^5))/(3*length(time_year))).^(1/5) ;

jet_trends_yrs = jet_trends(:,1).*trend_length; % Units: Pa/X yrs
[jet_f, jet_xi] = ksdensity(jet_trends_yrs, 'width', bw,'function','pdf');

mean_jet = nanmean(jet_trends_yrs);
std_jet = nanstd(jet_trends_yrs);