%% Script to make whisker diagram for 2*sigma windstress trends

ax = plotyy(1, Trends_2sig_mean, 2, Trends_loc_2sig_mean);

hold(ax(1), 'on')                           
h1 = errorbar(ax(1), 1,Trends_2sig_mean, Trends_2sig_2sig);

set(h1,'marker','o', 'MarkerFaceColor', 'b')
ylim([0 0.05])
set(gca, 'ytick', [0, 0.01, 0.02, 0.03, 0.04])
hold(ax(2), 'on')
h2 = errorbar(ax(2), 2,Trends_loc_2sig_mean, Trends_loc_2sig_2sig);



set(ax(2),'ycolor','r')  % Left color red, right color blue...     
set(h2, 'color', 'r')
set(h2, 'marker', 'o', 'MarkerFaceColor', 'r')
x_label = {'  '; 'Taux Mag'; 'Taux Loc'; '  '};
set(ax, 'XTickLabel', x_label)
set(ax, 'Xtick', [0:3])

plot(ax(2), 2, abs(lat_trend_25), 'r*')
plot(1, taux_trend_25, '*')


%% Wind 
%% Script to make whisker diagram for 2*sigma windstress trends

ax = plotyy(1, Trends_2sig_mean, 2, Trends_loc_2sig_mean);

hold(ax(1), 'on')                           
h1 = errorbar(ax(1), 1,Trends_2sig_mean, 2*Trends_2sig_2sig);

set(h1,'marker','o', 'MarkerFaceColor', 'b')
%ylim([0 0.05])
%set(gca, 'ytick', [0, 0.01, 0.02, 0.03, 0.04, 0.05])
hold(ax(2), 'on')
h2 = errorbar(ax(2), 2,Trends_loc_2sig_mean, 2*Trends_loc_2sig_2sig);
set(h2, 'marker', 'o', 'markerfacecolor', 'r')


set(ax(2),'ycolor','r')  % Left color red, right color blue...     
set(h2, 'color', 'r')
x_label = {'  '; 'Wind Mag'; 'Wind Loc'; '  '};
set(ax, 'XTickLabel', x_label)
set(ax, 'Xtick', [0:3])

plot(ax(2), 2, abs(lat_u850_trend_30), 'k*')
plot(1, jet_u850_trend_30, '*')



%% SAM
%% Script to make whisker diagram for 2*sigma windstress trends
Trends_2sigma = 2*nanstd(Trends,0,2);
Trends_2sig_sig = nanstd(Trends_2sigma);
Trends_2sig_mean = nanmean(Trends_2sigma);

Trends_index_2sigma = 2*nanstd(Trends,0,2);
Trends_index_2sig_sig = nanstd(Trends_index_2sigma);
Trends_index_2sig_mean = nanmean(Trends_index_2sigma);



ax = plotyy(1, Trends_2sig_mean, 2, Trends_index_2sig_mean);

hold(ax(1), 'on')                           
h1 = errorbar(ax(1), 1,Trends_2sig_mean, 2*Trends_2sig_sig);

set(h1,'marker','o', 'MarkerFaceColor', 'b')
ylim([0, 10])
set(gca, 'ytick', [ 0, 2, 4, 6, 8, 10])

hold(ax(2), 'on')
h2 = errorbar(ax(2), 2,Trends_index_2sig_mean, 2*Trends_index_2sig_sig);
set(h2, 'marker', 'o', 'markerfacecolor', 'r')
set(ax(2), 'ylim', [0,3])

set(ax(2),'ycolor','r')  % Left color red, right color blue...     
set(h2, 'color', 'r')
x_label = {'  '; 'Unnormalized'; 'Normalized'; '  '};
set(ax, 'XTickLabel', x_label)
set(ax, 'Xtick', [0:3])
w
plot(ax(2), 2, p(1) , 'r*')
plot(1, sam_trend_30, '*')

addpath /data1/fesd1/jthom143/NCEP_Reanalyses/Data/Text_Files