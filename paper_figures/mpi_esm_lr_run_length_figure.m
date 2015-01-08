%% Run length analysis

%% Load in data and do initial calculations
% Import Data
current_path = pwd;
pathname_ps = fullfile(current_path,'piControlData/MPI_ESM_LR/MPI_ESM_LR_ps.cdf');

ps = ncread(pathname_ps, 'ps');                 % Pa
time = ncread(pathname_ps, 'T');                % Months since 1800
lat_atmos = ncread(pathname_ps, 'lat');         % Degrees


clear pathname_ps

% Change Units on Surface Pressure

slp_mon = ps./100;    %hPa
clear ps

% Create Useful time vectors

time_year = 1:1000;

month_num = -9999*ones(1, length(time));

i = 1;

for ii = 1:length(time)/12;
    month_num(i:i+11) = [1:12];
    i = i+12;
end

month_num = month_num';


% SAM Calculations

[ SAM_mon, ~] = SAM_calculate( lat_atmos, slp_mon);

% Annual Average SAM 

SAM = squeeze(nanmean(reshape(SAM_mon, 12, []),1));

% Seasonal Analysis 
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

sam_DJF = [a_DJF, accumarray(b_DJF, SAM_mon', [], @mean)];

% Remove a = 0 from DJF and keep only 2nd column

sam_DJF(1,:)=[];            
sam_DJF = sam_DJF(:,2)';

clear time slp_mon month_num ii i current_path a_DJF b_DJF SAM_mon DJF SAM

Type = 'pdf';

%% 1000 year trends

trend_period = 25;
trend_length = 25;

[ sam_f, sam_xi, mean_sam, std_sam, ~] = SAM_Trends( time_year, sam_DJF, trend_period, trend_length, Type );

%% 500 year trends

window1 = time_year(1:500);
window2 = time_year(501:1000);

%Period 1

[ sam_f_500_1, sam_xi_500_1, mean_sam_500_1, std_sam_500_1, ~] = SAM_Trends( time_year(window1), sam_DJF(window1), trend_period, trend_length, Type);


%Period 2

[ sam_f_500_2, sam_xi_500_2, mean_sam_500_2, std_sam_500_2, ~] = SAM_Trends( time_year(window2), sam_DJF(window2), trend_period, trend_length, Type);


%% 250 year trends

window1 = time_year(1:250); 
window2 = time_year(251:500); 
window3 = time_year(501:750); 
window4 = time_year(751:1000);

%Period 1

[ sam_f_250_1, sam_xi_250_1, mean_sam_250_1, std_sam_250_1, ~] = SAM_Trends( time_year(window1), sam_DJF(window1), trend_period, trend_length, Type);

%Period 2

[ sam_f_250_2, sam_xi_250_2, mean_sam_250_2, std_sam_250_2, ~] = SAM_Trends( time_year(window2), sam_DJF(window2), trend_period, trend_length, Type);

%Period 3

[ sam_f_250_3, sam_xi_250_3, mean_sam_250_3, std_sam_250_3, ~] = SAM_Trends( time_year(window3), sam_DJF(window3), trend_period, trend_length, Type);

%Period 4

[ sam_f_250_4, sam_xi_250_4, mean_sam_250_4, std_sam_250_4, ~] = SAM_Trends( time_year(window4), sam_DJF(window4), trend_period, trend_length, Type);


%% 200 year trends

window1 = time_year(1:200); 
window2 = time_year(201:400); 
window3 = time_year(401:600); 
window4 = time_year(601:800); 
window5 = time_year(801:1000); 


%Period 1

[ sam_f_200_1, sam_xi_200_1, mean_sam_200_1, std_sam_200_1, ~] = SAM_Trends( time_year(window1), sam_DJF(window1), trend_period, trend_length, Type);

%Period 2

[ sam_f_200_2, sam_xi_200_2, mean_sam_200_2, std_sam_200_2, ~] = SAM_Trends( time_year(window2), sam_DJF(window2), trend_period, trend_length, Type);

%Period 3

[ sam_f_200_3, sam_xi_200_3, mean_sam_200_3, std_sam_200_3, ~] = SAM_Trends( time_year(window3), sam_DJF(window3), trend_period, trend_length, Type);

%Period 4

[ sam_f_200_4, sam_xi_200_4, mean_sam_200_4, std_sam_200_4, ~] = SAM_Trends( time_year(window4), sam_DJF(window4), trend_period, trend_length, Type);

%Period 5

[ sam_f_200_5, sam_xi_200_5, mean_sam_200_5, std_sam_200_5, ~] = SAM_Trends( time_year(window5), sam_DJF(window5), trend_period, trend_length, Type);



%% Create Figure
mean_sam_trends_500 = [mean_sam_500_1, mean_sam_500_2];
mean_sam_trends_250 = [mean_sam_250_1, mean_sam_250_2, mean_sam_250_3, mean_sam_250_4];
mean_sam_trends_200 = [mean_sam_200_1, mean_sam_200_2, mean_sam_200_3, mean_sam_200_4, mean_sam_200_5];
               
std_sam_trends_500 = [std_sam_500_1, std_sam_500_2];
std_sam_trends_250 = [std_sam_250_1, std_sam_250_2, std_sam_250_3, std_sam_250_4];
std_sam_trends_200 = [std_sam_200_1, std_sam_200_2, std_sam_200_3, std_sam_200_4, std_sam_200_5];
               
         
xticks = {'  ';'1000 year run'; '500 year run'; '500 year run'; '250 year run';'250 year run';'250 year run';'250 year run';'200 year run';'200 year run';'200 year run';'200 year run';'200 year run'; '   '};

figure(1)
width = 5;     % Width in inches
height = 3.75;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
h1 = errorbar(1,mean_sam,2.*std_sam);
hold on 
h2 = errorbar([2,3],mean_sam_trends_500,2.*std_sam_trends_500, 'color', [0, 0.8, 0]);
h3 = errorbar([4,5,6,7],mean_sam_trends_250,2.*std_sam_trends_250, 'color', [0.9 0.6 0.2]);
h4 = errorbar([8,9,10,11,12],mean_sam_trends_200,2.*std_sam_trends_200, 'r');
set(h1,'marker','o', 'MarkerFaceColor', 'b')
set(h1,'linestyle','none')
set(h2,'marker','o', 'MarkerFaceColor', [0, 0.8, 0])
set(h2,'linestyle','none')
set(h3,'marker','o', 'MarkerFaceColor', [0.9 0.6 0.2])
set(h3,'linestyle','none')
set(h4,'marker','o', 'MarkerFaceColor', 'r')
set(h4,'linestyle','none')
xlim([0 13])
set(gca, 'XTick', 0:13)
set(gca, 'XTickLabel', xticks)
rotateXLabels( gca, 45 )

title('(c) MPI ESM LR Run Length Analysis')
ylabel('mb/25years')

% Preserve size of image when we save it
set(gcf,'InvertHardcopy','on');
set(gcf,'PaperUnits', 'inches');
papersize = get(gcf, 'PaperSize');
left = (papersize(1)- width)/2;
bottom = (papersize(2)- height)/2;
myfiguresize = [left, bottom, width, height];
set(gcf,'PaperPosition', myfiguresize);

cd /data1/fesd1/jthom143/piControl_paper/paper_figures
print -depsc intro_methods_run_length
