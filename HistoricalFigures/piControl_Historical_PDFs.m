%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Historical Run Windstress DJF Figures 
% 
% Script create historical jet figures 
% Resulting jet location and magnitude are for DJF only
%
% Jordan Thomas 
% Created: Sept 24, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Matlab Housekeeping 

close all
clear all

%% Run piControl and Historical Analysis scripts 

windstress_trend_analysis
Historical_taux_analysis

%% Figure Parameters

pdfheight = 40;
pdfwidth = 32;

leftedge=1.2;
rightedge=0.4;   
topedge=1;
bottomedge=1.5;
spacex=0.2;
spacey=0.2;
fontsize=12;
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperSize', [pdfwidth pdfheight]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 pdfwidth pdfheight]);
set(gca, 'fontsize', fontsize)

%% Make PDF Plots

% CanESM2
figure(1)
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperSize', [pdfwidth pdfheight]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 pdfwidth pdfheight]);
set(gca, 'fontsize', fontsize)

subplot(5,4,1)
h1 = plot(can_esm2_jet_xi, can_esm2_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
ylabel('Probability Density')
title('CanESM2', 'fontsize', fontsize + 2)

hold on
h2 = vline(can_esm2_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CCSM4

subplot(5,4,2)
h1 = plot(ccsm4_jet_xi, ccsm4_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('CCSM4', 'fontsize', fontsize + 2)

hold on
h2 = vline(ccsm4_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CESM 

subplot(5,4,3)
h1 = plot(cmcc_cesm_jet_xi, cmcc_cesm_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('CMCC CESM', 'fontsize', fontsize + 2)

hold on
h2 = vline(ccmcc_cesm_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CM

subplot(5,4,4)
h1 = plot(cmcc_cm_jet_xi, cmcc_cm_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('CMCC CM', 'fontsize', fontsize + 2)

hold on
h2 = vline(cmcc_cm_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CMs

subplot(5,4,5)
h1 = plot(cmcc_cms_jet_xi, cmcc_cms_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('CMCC CMs', 'fontsize', fontsize + 2)

hold on
h2 = vline(cmcc_cms_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CNRM CM5

subplot(5,4,6)
h1 = plot(cnrm_cm5_jet_xi, cnrm_cm5_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('CNRM CM5', 'fontsize', fontsize + 2)

hold on
h2 = vline(cnrm_cm5_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CNRM CM52

subplot(5,4,7)
h1 = plot(cnrm_cm52_jet_xi, cnrm_cm52_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('CNRM CM5-2', 'fontsize', fontsize + 2)

hold on
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

%  GFDL ESM2G

subplot(5,4,8)
h1 = plot(gfdl_esm2g_jet_xi, gfdl_esm2g_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('GFDL ESM2G', 'fontsize', fontsize + 2)

hold on
h2 = vline(gfdl_esm2g_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% GFDL ESM2M

subplot(5,4,9)
h1 = plot(gfdl_esm2m_jet_xi, gfdl_esm2m_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('GFDL ESM2M', 'fontsize', fontsize + 2)

hold on
h2 = vline(gfdl_esm2m_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5a LR

subplot(5,4,10)
h1 = plot(ipsl_cm5a_lr_jet_xi, ipsl_cm5a_lr_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('IPSL CM5a LR', 'fontsize', fontsize + 2)

hold on
h2 = vline(ipsl_cm5a_lr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5a MR

subplot(5,4,11)
h1 = plot(ipsl_cm5a_mr_jet_xi, ipsl_cm5a_mr_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('IPSL CM5a MR', 'fontsize', fontsize + 2)

hold on
h2 = vline(ipsl_cm5a_mr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5b LR

subplot(5,4,12)
h1 = plot(ipsl_cm5b_lr_jet_xi, ipsl_cm5b_lr_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('IPSL CM5b LR', 'fontsize', fontsize + 2)

hold on
h2 = vline(ipsl_cm5b_lr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC ESM

subplot(5,4,13)
h1 = plot(miroc_esm_jet_xi, miroc_esm_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('MIROC ESM', 'fontsize', fontsize + 2)

hold on
h2 = vline(miroc_esm_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC ESM CHEM

subplot(5,4,14)
h1 = plot(miroc_esm_chem_jet_xi, miroc_esm_chem_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('GFDL ESM2M', 'fontsize', fontsize + 2)

hold on
h2 = vline(miroc_esm_chem_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC5

subplot(5,4,15)
h1 = plot(miroc5_jet_xi, miroc5_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('MIROC5', 'fontsize', fontsize + 2)

hold on
h2 = vline(miroc5_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MPI ESM LR

subplot(5,4,16)
h1 = plot(mpi_esm_lr_jet_xi, mpi_esm_lr_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('MPI ESM LR', 'fontsize', fontsize + 2)

hold on
h2 = vline(mpi_esm_lr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MPI ESM MR

subplot(5,4,17)
h1 = plot(mpi_esm_mr_jet_xi, mpi_esm_mr_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('MPI ESM MR', 'fontsize', fontsize + 2)

hold on
h2 = vline(mpi_esm_mr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MRI CGCM3

subplot(5,4,18)
h1 = plot(mri_cgcm3_jet_xi, mri_cgcm3_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('MRI CGCM3', 'fontsize', fontsize + 2)

hold on
h2 = vline(mri_cgcm3_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 


subplot(5,4,19)
h1 = plot(nor_esm1m_me_jet_xi, nor_esm1m_me_jet_f, 'linewidth', 2);
xlabel('Pa/30 yrs')
 
title('NOR ESM1m ME', 'fontsize', fontsize + 2)

hold on
h2 = vline(nor_esm1m_me_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

print -depsc jet_pdfs_DJF