



%% CMCC CMs
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = CMCC_CMs_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = CMCC_CMs_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CMCC_CMs_sam_pdf

close all
clear all

%% CNRM CM5
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = CNRM_CM5_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = CNRM_CM5_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CNRM_CM5_sam_pdf

close all
clear all

%% CNRM CM5-2
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = CNRM_CM52_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = CNRM_CM52_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc CNRM_CM5_2_sam_pdf

close all
clear all

%% GFDL ESM2G
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = GFDL_ESM2G_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = GFDL_ESM2G_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc GFDL_ESM2G_sam_pdf

close all
clear all

%% GFDL ESM2M
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = GFDL_ESM2M_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = GFDL_ESM2M_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc GFDL_ESM2M_sam_pdf

close all
clear all

%% IPSL CM5a LR
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = IPSL_CM5a_LR_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = IPSL_CM5a_LR_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc IPSL_CM5a_LR_sam_pdf

close all
clear all

%% IPSL CM5a MR
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = IPSL_CM5a_MR_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = IPSL_CM5a_MR_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc IPSL_CM5a_MR_sam_pdf

close all
clear all

%% IPSL CM5b LR
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = IPSL_CM5b_LR_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = IPSL_CM5b_LR_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc IPSL_CM5b_LR_sam_pdf

close all
clear all

%% MIROC5
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = MIROC5_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = MIROC5_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MIROC5_sam_pdf

close all
clear all

%% MIROC ESM
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = MIROC_ESM_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = MIROC_ESM_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MIROC_ESM_sam_pdf

close all
clear all

%% MIROC ESM CHEM
[ sam_f, sam_xi, mean_sam, std_sam, time_year, SAM_unnormalized, sam_trends_yrs ] = MIROC_ESM_CHEM_seasonal;
[historical_time_year, sam_DJF, historical_sam_trend_30, sam_trend, begin_time, end_time ] = MIROC_ESM_CHEM_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MIROC_ESM_CHEM_sam_pdf

close all
clear all

%% MPI ESM LR
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = MPI_ESM_LR_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = MPI_ESM_LR_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MPI_ESM_LR_sam_pdf

close all
clear all

%% MPI ESM MR
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = MPI_ESM_MR_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = MPI_ESM_MR_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MPI_ESM_MR_sam_pdf

close all
clear all

%% MRI CGCM3
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = MRI_CGCM3_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = MRI_CGCM3_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc MRI_CGCM3_sam_pdf

close all
clear all

%% NOR ESM1m ME
[ sam_f, sam_xi, ~, ~, ~, ~, ~ ] = NOR_ESM1m_ME_seasonal;
[~, ~, historical_sam_trend_30, ~, ~, ~ ] = NOR_ESM1m_ME_historical_ps;
[ ~, ~, sam_trend_30 ] = NCEP1_trends_seasonal(25);

figure(1)
h1 = plot(sam_xi, sam_f);
hold on
h2 = vline(historical_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (mb/25 years)')
ylabel('Probability Density')
legend([h1, h2, h3], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
print -depsc NOR_ESM1m_ME_sam_pdf

close all
clear all