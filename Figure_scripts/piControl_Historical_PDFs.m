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

%% Make PDF Plots

% CanESM2
figure(1) 
subplot(5,4,1)
h1 = plot(can_esm2_jet_xi, can_esm2_jet_f, 'linewidth', 2);
 
ylabel('Probability Density')
title('CanESM2')
ylim([0 100])

hold on
h2 = vline(can_esm2_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CCSM4
figure(1)
subplot(5,4,2)
h1 = plot(ccsm4_jet_xi, ccsm4_jet_f, 'linewidth', 2);
 
 
title('CCSM4')
ylim([0 100])

hold on
h2 = vline(ccsm4_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CESM 
figure(1)
subplot(5,4,3)
h1 = plot(cmcc_cesm_jet_xi, cmcc_cesm_jet_f, 'linewidth', 2);
 
 
title('CMCC CESM')
ylim([0 100])

hold on
h2 = vline(cmcc_cesm_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CM
figure(1)
subplot(5,4,4)
h1 = plot(cmcc_cm_jet_xi, cmcc_cm_jet_f, 'linewidth', 2);
 
 
title('CMCC CM')
ylim([0 100])

hold on
h2 = vline(cmcc_cm_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CMs
figure(1)
subplot(5,4,5)
h1 = plot(cmcc_cms_jet_xi, cmcc_cms_jet_f, 'linewidth', 2);
 
 
title('CMCC CMs')
ylim([0 100])

hold on
h2 = vline(cmcc_cms_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CNRM CM5
figure(1)
subplot(5,4,6)
h1 = plot(cnrm_cm5_jet_xi, cnrm_cm5_jet_f, 'linewidth', 2);
 
 
title('CNRM CM5')
ylim([0 100])

hold on
h2 = vline(cnrm_cm5_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CNRM CM52
figure(1)
subplot(5,4,7)
h1 = plot(cnrm_cm52_jet_xi, cnrm_cm52_jet_f, 'linewidth', 2);
 
 
title('CNRM CM5-2')
ylim([0 100])

hold on
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

%  GFDL ESM2G
figure(1)
subplot(5,4,8)
h1 = plot(gfdl_esm2g_jet_xi, gfdl_esm2g_jet_f, 'linewidth', 2);
 
 
title('GFDL ESM2G')
ylim([0 100])

hold on
h2 = vline(gfdl_esm2g_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% GFDL ESM2M
figure(1)
subplot(5,4,9)
h1 = plot(gfdl_esm2m_jet_xi, gfdl_esm2m_jet_f, 'linewidth', 2);
 
 
title('GFDL ESM2M')
ylim([0 100])

hold on
h2 = vline(gfdl_esm2m_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5a LR
figure(1)
subplot(5,4,10)
h1 = plot(ipsl_cm5a_lr_jet_xi, ipsl_cm5a_lr_jet_f, 'linewidth', 2);
 
 
title('IPSL CM5a LR')
ylim([0 100])

hold on
h2 = vline(ipsl_cm5a_lr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5a MR
figure(1)
subplot(5,4,11)
h1 = plot(ipsl_cm5a_mr_jet_xi, ipsl_cm5a_mr_jet_f, 'linewidth', 2);
 
 
title('IPSL CM5a MR')
ylim([0 100])

hold on
h2 = vline(ipsl_cm5a_mr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5b LR
figure(1)
subplot(5,4,12)
h1 = plot(ipsl_cm5b_lr_jet_xi, ipsl_cm5b_lr_jet_f, 'linewidth', 2);
 
 
title('IPSL CM5b LR')
ylim([0 100])

hold on
h2 = vline(ipsl_cm5b_lr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC ESM
figure(1)
subplot(5,4,13)
h1 = plot(miroc_esm_jet_xi, miroc_esm_jet_f, 'linewidth', 2);
 
 
title('MIROC ESM')
ylim([0 100])

hold on
h2 = vline(miroc_esm_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC ESM CHEM
figure(1)
subplot(5,4,14)
h1 = plot(miroc_esm_chem_jet_xi, miroc_esm_chem_jet_f, 'linewidth', 2);
 
 
title('GFDL ESM2M')
ylim([0 100])

hold on
h2 = vline(miroc_esm_chem_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC5
figure(1)
subplot(5,4,15)
h1 = plot(miroc5_jet_xi, miroc5_jet_f, 'linewidth', 2);
 
 
title('MIROC5')
ylim([0 100])

hold on
h2 = vline(miroc5_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MPI ESM LR
figure(1)
subplot(5,4,16)
h1 = plot(mpi_esm_lr_jet_xi, mpi_esm_lr_jet_f, 'linewidth', 2);
 
 
title('MPI ESM LR')
ylim([0 100])

hold on
h2 = vline(mpi_esm_lr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MPI ESM MR
figure(1)
subplot(5,4,17)
h1 = plot(mpi_esm_mr_jet_xi, mpi_esm_mr_jet_f, 'linewidth', 2);
 
 
title('MPI ESM MR')
ylim([0 100])

hold on
h2 = vline(mpi_esm_mr_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MRI CGCM3
figure(1)
subplot(5,4,18)
h1 = plot(mri_cgcm3_jet_xi, mri_cgcm3_jet_f, 'linewidth', 2);
 
 
title('MRI CGCM3')
ylim([0 100])

hold on
h2 = vline(mri_cgcm3_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

figure(1)
subplot(5,4,19)
h1 = plot(nor_esm1m_me_jet_xi, nor_esm1m_me_jet_f, 'linewidth', 2);
xlabel('Pa/25 yrs')
 
 
title('NOR ESM1m ME')
ylim([0 100])

hold on
h2 = vline(nor_esm1m_me_jet_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(taux_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

print -depsc jet_pdfs_DJF

%% Jet Magnitude



% CanESM2
figure(2)
subplot(5,4,1)
h1 = plot(can_esm2_jet_loc_xi, can_esm2_jet_loc_f, 'linewidth', 2);
 
ylabel('Probability Density')
title('CanESM2')
 

hold on
h2 = vline(can_esm2_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CCSM4
figure(2)
subplot(5,4,2)
h1 = plot(ccsm4_jet_loc_xi, ccsm4_jet_loc_f, 'linewidth', 2);
 
 
title('CCSM4')
 

hold on
h2 = vline(ccsm4_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CESM 
figure(2)
subplot(5,4,3)
h1 = plot(cmcc_cesm_jet_loc_xi, cmcc_cesm_jet_loc_f, 'linewidth', 2);
 
 
title('CMCC CESM')
 

hold on
h2 = vline(cmcc_cesm_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CM
figure(2)
subplot(5,4,4)
h1 = plot(cmcc_cm_jet_loc_xi, cmcc_cm_jet_loc_f, 'linewidth', 2);
 
 
title('CMCC CM')
 

hold on
h2 = vline(cmcc_cm_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CMCC CMs
figure(2)
subplot(5,4,5)
h1 = plot(cmcc_cms_jet_loc_xi, cmcc_cms_jet_loc_f, 'linewidth', 2);
 
 
title('CMCC CMs')
 

hold on
h2 = vline(cmcc_cms_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CNRM CM5
figure(2)
subplot(5,4,6)
h1 = plot(cnrm_cm5_jet_loc_xi, cnrm_cm5_jet_loc_f, 'linewidth', 2);
 
 
title('CNRM CM5')
 

hold on
h2 = vline(cnrm_cm5_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% CNRM CM52
figure(2)
subplot(5,4,7)
h1 = plot(cnrm_cm52_jet_loc_xi, cnrm_cm52_jet_loc_f, 'linewidth', 2);
 
 
title('CNRM CM5-2')
 

hold on
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

%  GFDL ESM2G
figure(2)
subplot(5,4,8)
h1 = plot(gfdl_esm2g_jet_loc_xi, gfdl_esm2g_jet_loc_f, 'linewidth', 2);
 
 
title('GFDL ESM2G')
 

hold on
h2 = vline(gfdl_esm2g_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% GFDL ESM2M
figure(2)
subplot(5,4,9)
h1 = plot(gfdl_esm2m_jet_loc_xi, gfdl_esm2m_jet_loc_f, 'linewidth', 2);
 
 
title('GFDL ESM2M')
 

hold on
h2 = vline(gfdl_esm2m_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5a LR
figure(2)
subplot(5,4,10)
h1 = plot(ipsl_cm5a_lr_jet_loc_xi, ipsl_cm5a_lr_jet_loc_f, 'linewidth', 2);
 
 
title('IPSL CM5a LR')
 

hold on
h2 = vline(ipsl_cm5a_lr_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5a MR
figure(2)
subplot(5,4,11)
h1 = plot(ipsl_cm5a_mr_jet_loc_xi, ipsl_cm5a_mr_jet_loc_f, 'linewidth', 2);
 
 
title('IPSL CM5a MR')
 

hold on
h2 = vline(ipsl_cm5a_mr_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% IPSL CM5b LR
figure(2)
subplot(5,4,12)
h1 = plot(ipsl_cm5b_lr_jet_loc_xi, ipsl_cm5b_lr_jet_loc_f, 'linewidth', 2);
 
 
title('IPSL CM5b LR')
 

hold on
h2 = vline(ipsl_cm5b_lr_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC ESM
figure(2)
subplot(5,4,13)
h1 = plot(miroc_esm_jet_loc_xi, miroc_esm_jet_loc_f, 'linewidth', 2);
 
 
title('MIROC ESM')
 

hold on
h2 = vline(miroc_esm_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC ESM CHEM
figure(2)
subplot(5,4,14)
h1 = plot(miroc_esm_chem_jet_loc_xi, miroc_esm_chem_jet_loc_f, 'linewidth', 2);
 
 
title('GFDL ESM2M')
 

hold on
h2 = vline(miroc_esm_chem_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MIROC5
figure(2)
subplot(5,4,15)
h1 = plot(miroc5_jet_loc_xi, miroc5_jet_loc_f, 'linewidth', 2);
 
 
title('MIROC5')
 

hold on
h2 = vline(miroc5_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MPI ESM LR
figure(2)
subplot(5,4,16)
h1 = plot(mpi_esm_lr_jet_loc_xi, mpi_esm_lr_jet_loc_f, 'linewidth', 2);
 
 
title('MPI ESM LR')
 

hold on
h2 = vline(mpi_esm_lr_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MPI ESM MR
figure(2)
subplot(5,4,17)
h1 = plot(mpi_esm_mr_jet_loc_xi, mpi_esm_mr_jet_loc_f, 'linewidth', 2);
 
 
title('MPI ESM MR')
 

hold on
h2 = vline(mpi_esm_mr_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

% MRI CGCM3
figure(2)
subplot(5,4,18)
h1 = plot(mri_cgcm3_jet_loc_xi, mri_cgcm3_jet_loc_f, 'linewidth', 2);
 
 
title('MRI CGCM3')
 

hold on
h2 = vline(mri_cgcm3_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

figure(2)
subplot(5,4,19)
h1 = plot(nor_esm1m_me_jet_loc_xi, nor_esm1m_me_jet_loc_f, 'linewidth', 2);
xlabel('Pa/25 yrs')
 
 
title('NOR ESM1m ME')
 

hold on
h2 = vline(nor_esm1m_me_jet_loc_trend_30);
set(h2, 'linewidth', 2, 'color', 'r', 'linestyle', '--')
hR1 = vline(lat_trend_30 );
set(hR1, 'linewidth', 2, 'color', 'g', 'linestyle', '--')
 

print -depsc jet_loc_pdfs_DJF