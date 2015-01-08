function [ sam_f, sam_xi, mean_sam, std_sam, sam_trends_yrs] = SAM_Trends( time_year, SAM_unnormalized, trend_period, trend_length, Type )
% CM2Mc_Trends calculates the kernel density smoothing functio associated
%       with the period trends of the Southern Ocean westerly jet strength,
%       location, and the SAM index in the CM2.1 model output. 


%% Trend Analysis (annually averaged data)

num_periods = length(time_year) - (trend_period - 1);

% SAM Index

sam_trends = NaN*ones(num_periods, 2);

for i =1:num_periods;
    k = i+(trend_period - 1);
    sam_trends(i,:) = polyfit(time_year(i:k),SAM_unnormalized(i:k),1); % Units: Pa/year
end

std1 = std(SAM_unnormalized);
bw = ((4*(std1^5))/(3*length(time_year)))^(1/5) ;

sam_trends_yrs = sam_trends(:,1).*trend_length; % Units: Pa/X yrs
[sam_f, sam_xi] = ksdensity(sam_trends_yrs, 'width', bw,'function',Type);

mean_sam = nanmean(sam_trends_yrs);
std_sam = nanstd(sam_trends_yrs);



end % Function end

