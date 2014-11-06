function [ jet_f, jet_xi, mean_jet, std_jet, jet_trends_yrs, jet_loc_f, jet_loc_xi, mean_jet_loc, std_jet_loc, jet_loc_trends_yrs] = Windstress_Trends( time_year, jet, jet_loc, trend_period, trend_length, Type )
% Windstress_Trends calculates the kernel density smoothing functio associated
%       with the period trends of the Southern Ocean westerly jet strength,
%       location, and the SAM index in the CM2.1 model output. 


%% Trend Analysis (annually averaged data)

num_periods = length(time_year) - (trend_period - 1);

% Jet

jet_trends = NaN*ones(num_periods, 2);

for i =1:num_periods;
    k = i+(trend_period - 1);
    jet_trends(i,:) = polyfit(time_year(i:k),jet(i:k),1); % Units: Pa/year
end

std1 = std(jet);
bw = ((4*(std1.^5))/(3*length(time_year))).^(1/5) ;

jet_trends_yrs = jet_trends(:,1).*trend_length; % Units: Pa/X yrs
[jet_f, jet_xi] = ksdensity(jet_trends_yrs, 'width', bw,'function',Type);

mean_jet = nanmean(jet_trends_yrs);
std_jet = nanstd(jet_trends_yrs);

% Jet Location

jet_loc_trends = NaN*ones(num_periods, 2);

for i =1:num_periods;
    k = i+(trend_period - 1);
    jet_loc_trends(i,:) = polyfit(time_year(i:k),jet_loc(i:k),1); % Units: Pa/year
end

std1 = std(jet_loc);
bw = ((4*(std1^5))/(3*length(time_year)))^(1/5) ;

jet_loc_trends_yrs = jet_loc_trends(:,1).*trend_length; % Units: Pa/X yrs
[jet_loc_f, jet_loc_xi] = ksdensity(jet_loc_trends_yrs, 'width', bw,'function',Type);

mean_jet_loc = nanmean(jet_loc_trends_yrs);
std_jet_loc = nanstd(jet_loc_trends_yrs);

end % Function end

