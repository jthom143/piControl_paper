addpath /data1/fesd1/jthom143/piControl_paper/tools
addpath /data1/fesd1/jthom143/piControl_paper/wind_analysis
addpath /data1/fesd1/jthom143/piControl_paper/historical_wind_analysis
addpath /home/jthom143/NCEPReanalysis1

%% CanESM2
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CanESM2_u850_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CanESM2_historical_u850;
[ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);

figure(1)
h1 = plot(jet_loc_xi, jet_loc_f);
hold on
h2 = vline(historical_jet_loc_trend_30);
h3 = vline(lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Wind Jet Location Trend (degrees/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CAN_ESM2_wind_jet_loc_pdf

close all
clear all

% %% CMCC CCSM4
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CCSM4_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CCSM4_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Trend (m/s/25 years)')
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc CCSM4_wind_jet_loc_pdf
% 
% close all
% clear all

% %% CMCC CESM
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CMCC_CESM_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CMCC_CESM_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Trend (m/s/25 years)')
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc CMCC_CESM_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% 
% 
% %% CMCC CMs
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CMCC_CMs_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CMCC_CMs_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Trend (m/s/25 years)')
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc CMCC_CMs_wind_jet_loc_pdf
% 
% close all
% clear all

%% CNRM CM5
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CNRM_CM5_u850_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CNRM_CM5_historical_u850;
[ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);

figure(1)
h1 = plot(jet_loc_xi, jet_loc_f);
hold on
h2 = vline(historical_jet_loc_trend_30);
h3 = vline(lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CNRM_CM5_wind_jet_loc_pdf

close all
clear all

%% CNRM CM5-2
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CNRM_CM52_u850_seasonal;
%[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CNRM_CM52_historical_u850;
[ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);

figure(1)
h1 = plot(jet_loc_xi, jet_loc_f);
hold on
%h2 = vline(historical_jet_loc_trend_30);
h3 = vline(lat_u850_trend_30);
set(h1, 'linewidth', 2)
%set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
ylabel('Probability Density')
legend([h1, h3], 'Pi-control PDF', 'Renanalysis 1 Trend')
print -depsc CNRM_CM5_2_wind_jet_loc_pdf

close all
clear all

%% GFDL ESM2G
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = GFDL_ESM2G_u850_seasonal;
%[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = GFDL_ESM2G_historical_u850;
[ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);

figure(1)
h1 = plot(jet_loc_xi, jet_loc_f);
hold on
%h2 = vline(historical_jet_loc_trend_30);
h3 = vline(lat_u850_trend_30);
set(h1, 'linewidth', 2)
%set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
ylabel('Probability Density')
legend([h1, h3], 'Pi-control PDF', 'Renanalysis 1 Trend')
print -depsc GFDL_ESM2G_wind_jet_loc_pdf

close all
clear all

%% GFDL ESM2M
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = GFDL_ESM2M_u850_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = GFDL_ESM2M_historical_u850;
[ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);

figure(1)
h1 = plot(jet_loc_xi, jet_loc_f);
hold on
h2 = vline(historical_jet_loc_trend_30);
h3 = vline(lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc GFDL_ESM2M_wind_jet_loc_pdf

close all
clear all

% %% IPSL CM5a LR
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = IPSL_CM5a_LR_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = IPSL_CM5a_LR_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc IPSL_CM5a_LR_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% IPSL CM5a MR
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = IPSL_CM5a_MR_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = IPSL_CM5a_MR_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc IPSL_CM5a_MR_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% IPSL CM5b LR
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = IPSL_CM5b_LR_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = IPSL_CM5b_LR_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc IPSL_CM5b_LR_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% MIROC5
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MIROC5_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MIROC5_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc MIROC5_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% MIROC ESM
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MIROC_ESM_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MIROC_ESM_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc MIROC_ESM_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% MIROC ESM CHEM
% [ jet_f, jet_xi, mean_sam, std_sam, time_year, SAM_unnormalized, sam_trends_yrs ] = MIROC_ESM_CHEM_u850_seasonal;
% [historical_time_year, sam_DJF, historical_jet_trend_30, sam_trend, begin_time, end_time ] = MIROC_ESM_CHEM_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc MIROC_ESM_CHEM_wind_jet_loc_pdf
% 
% close all
% clear all

%% MPI ESM LR
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MPI_ESM_LR_u850_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MPI_ESM_LR_historical_u850;
[ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);

figure(1)
h1 = plot(jet_loc_xi, jet_loc_f);
hold on
h2 = vline(historical_jet_loc_trend_30);
h3 = vline(lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MPI_ESM_LR_wind_jet_loc_pdf

close all
clear all

% %% MPI ESM MR
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MPI_ESM_MR_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MPI_ESM_MR_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc MPI_ESM_MR_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% MRI CGCM3
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MRI_CGCM3_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MRI_CGCM3_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc MRI_CGCM3_wind_jet_loc_pdf
% 
% close all
% clear all
% 
% %% NOR ESM1m ME
% [ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = NOR_ESM1m_ME_u850_seasonal;
% [ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = NOR_ESM1m_ME_historical_u850;
% [ jet_u850_trend_30, lat_u850_trend_30] = NCEP1_u850_trends_seasonal(25);
% 
% figure(1)
% h1 = plot(jet_loc_xi, jet_loc_f);
% hold on
% h2 = vline(historical_jet_loc_trend_30);
% h3 = vline(lat_u850_trend_30);
% set(h1, 'linewidth', 2)
% set(h2, 'linestyle', '- -', 'linewidth', 2)
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% xlabel('Linear Wind Jet Location Trend (Degrees/25 years)') 
% ylabel('Probability Density')
% legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
% print -depsc NOR_ESM1m_ME_wind_jet_loc_pdf
% 
% close all
% clear all