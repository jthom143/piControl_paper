%% CanESM2
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CanESM2_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CanESM2_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CAN_ESM2_taux_jet_pdf

close all
clear all

%% CMCC CCSM4
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CCSM4_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CCSM4_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CCSM4_taux_jet_pdf

close all
clear all

%% CMCC CESM
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CMCC_CESM_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CMCC_CESM_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CMCC_CESM_taux_jet_pdf

close all
clear all

%% CMCC CM
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CMCC_CM_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CMCC_CM_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CMCC_CM_taux_jet_pdf

close all
clear all

%% CMCC CMs
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CMCC_CMs_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CMCC_CMs_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CMCC_CMs_taux_jet_pdf

close all
clear all

%% CNRM CM5
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CNRM_CM5_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CNRM_CM5_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CNRM_CM5_taux_jet_pdf

close all
clear all

%% CNRM CM5-2
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = CNRM_CM52_taux_seasonal;
%[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = CNRM_CM52_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
%h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
%set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h3], 'Pi-control PDF', 'Renanalysis 1 Trend')
print -depsc CNRM_CM5_2_taux_jet_pdf

close all
clear all

%% GFDL ESM2G
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = GFDL_ESM2G_taux_seasonal;
%[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = GFDL_ESM2G_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
%h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
%set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h3], 'Pi-control PDF', 'Renanalysis 1 Trend')
print -depsc GFDL_ESM2G_taux_jet_pdf

close all
clear all

%% GFDL ESM2M
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = GFDL_ESM2M_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = GFDL_ESM2M_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc GFDL_ESM2M_taux_jet_pdf

close all
clear all

%% IPSL CM5a LR
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = IPSL_CM5a_LR_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = IPSL_CM5a_LR_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc IPSL_CM5a_LR_taux_jet_pdf

close all
clear all

%% IPSL CM5a MR
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = IPSL_CM5a_MR_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = IPSL_CM5a_MR_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc IPSL_CM5a_MR_taux_jet_pdf

close all
clear all

%% IPSL CM5b LR
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = IPSL_CM5b_LR_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = IPSL_CM5b_LR_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc IPSL_CM5b_LR_taux_jet_pdf

close all
clear all

%% MIROC5
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MIROC5_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MIROC5_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MIROC5_taux_jet_pdf

close all
clear all

%% MIROC ESM
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MIROC_ESM_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MIROC_ESM_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MIROC_ESM_taux_jet_pdf

close all
clear all

%% MIROC ESM CHEM
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MIROC_ESM_CHEM_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ]  = MIROC_ESM_CHEM_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MIROC_ESM_CHEM_taux_jet_pdf

close all
clear all

%% MPI ESM LR
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MPI_ESM_LR_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MPI_ESM_LR_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MPI_ESM_LR_taux_jet_pdf

close all
clear all

%% MPI ESM MR
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MPI_ESM_MR_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MPI_ESM_MR_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MPI_ESM_MR_taux_jet_pdf

close all
clear all

%% MRI CGCM3
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = MRI_CGCM3_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = MRI_CGCM3_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MRI_CGCM3_taux_jet_pdf

close all
clear all

%% NOR ESM1m ME
[ jet_f, jet_xi, ~, ~, ~, jet_loc_f, jet_loc_xi, ~, ~, ~, ~, ~, ~ ] = NOR_ESM1m_ME_taux_seasonal;
[ ~, ~, ~, ~, historical_jet_trend_30, ~, historical_jet_loc_trend_30 ] = NOR_ESM1m_ME_historical_taux;
[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(jet_xi, jet_f);
hold on
h2 = vline(historical_jet_trend_30);
h3 = vline(taux_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear Windstress Jet Trend (Pa/25 years)') 
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc NOR_ESM1m_ME_taux_jet_pdf

close all
clear all