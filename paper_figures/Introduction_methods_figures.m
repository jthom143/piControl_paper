%% Make introduction/methods plots 

figure(1)
width = 5;     % Width in inches
height = 2.5;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth

pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties

h1 = plot(can_esm2_time_year(1:100), can_esm2_SAM_unnormalized(1:100));
set(h1, 'linewidth', lw)
set(gca, 'fontsize', fsz)
ylabel('Pressure Difference (hPa)', 'fontsize', fsz)
xlabel('Time (years)', 'fontsize', fsz)
title('(a) Pre-industrial CanESM2 SAM Timeseries')

% Preserve size of image when we save it
set(gcf,'InvertHardcopy','on');
set(gcf,'PaperUnits', 'inches');
papersize = get(gcf, 'PaperSize');
left = (papersize(1)- width)/2;
bottom = (papersize(2)- height)/2;
myfiguresize = [left, bottom, width, height];
set(gcf,'PaperPosition', myfiguresize);

print -depsc introduction_timeseries_figure


figure(2)
width = 5;     % Width in inches
height = 3;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth

pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
h2 = plot(can_esm2_sam_xi, can_esm2_sam_f);
hold on
ylim([0 0.18])
h3 = vline(can_esm2_sam_trend_30);
h4 = vline(sam_trend_30);
set(h2, 'linewidth', 1.5)
set(gca, 'fontsize', 12)
ylabel('Probability Density', 'fontsize', 12)
xlabel('25 year linear trend (hPa/25 years)', 'fontsize', 12)
set(h3, 'linestyle', '-', 'linewidth', 1.5)
set(h4, 'linestyle', '-', 'color', [0, 0.8, 0], 'linewidth', 1.5)
title('(b) Pre-industrial CanESM2 25-year linear trend PDF')

% Preserve size of image when we save it
set(gcf,'InvertHardcopy','on');
set(gcf,'PaperUnits', 'inches');
papersize = get(gcf, 'PaperSize');
left = (papersize(1)- width)/2;
bottom = (papersize(2)- height)/2;
myfiguresize = [left, bottom, width, height];
set(gcf,'PaperPosition', myfiguresize);

print -depsc introduction_pdf_figure





