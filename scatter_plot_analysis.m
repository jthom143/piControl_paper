%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Scatter Plot Analysis
% - code to create scatter plots of trends in sam, jet magnitude and
% location
%
% Jordan Thomas
% July 1, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% First run both "trend_comparison_jet.m" and "trend_comparison.m" to load
% all data and calculate trends

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TRENDS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% CanESM2

figure
subplot(1,2,1)
plot(can_esm2_jet_trends_yrs, can_esm2_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CanESM2', 'fontsize', 16)


subplot(1,2,2)
plot(can_esm2_jet_loc_trends_yrs, can_esm2_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CanESM2_scatter_trends.eps')

%% CCSM4

% Windstress and surface pressure vectors different lengths <-- FIX! 

%% CMCC CESM

figure
subplot(1,2,1)
plot(cmcc_cesm_jet_trends_yrs, cmcc_cesm_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CMCC CESM', 'fontsize', 16)


subplot(1,2,2)
plot(cmcc_cesm_jet_loc_trends_yrs, cmcc_cesm_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CMCC_CESM_scatter_trends.eps')

%% CMCC CM

figure
subplot(1,2,1)
plot(cmcc_cm_jet_trends_yrs, cmcc_cm_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CMCC CM', 'fontsize', 16)

subplot(1,2,2)
plot(cmcc_cm_jet_loc_trends_yrs, cmcc_cm_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CMCC_CM_scatter_trends.eps')

%% CMCC CMs

figure
subplot(1,2,1)
plot(cmcc_cms_jet_trends_yrs, cmcc_cms_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CMCC CMs', 'fontsize', 16)

subplot(1,2,2)
plot(cmcc_cms_jet_loc_trends_yrs, cmcc_cms_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CMCC_CMs_scatter_trends.eps')

%% CNRM CM5


figure
subplot(1,2,1)
plot(cnrm_cm5_jet_trends_yrs, cnrm_cm5_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CNRM CM5', 'fontsize', 16)

subplot(1,2,2)
plot(cnrm_cm5_jet_loc_trends_yrs, cnrm_cm5_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CNRM_CM5_scatter_trends.eps')

%% CNRM CM52

% Windstress and surface pressure vectors different lengths <-- FIX! 

% figure
% subplot(1,2,1)
% plot(cnrm_cm52_jet_trends_yrs, cnrm_cm52_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(cnrm_cm52_jet_loc_trends_yrs, cnrm_cm52_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% GFDL ESM2G

figure
subplot(1,2,1)
plot(gfdl_esm2g_jet_trends_yrs, gfdl_esm2g_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('GFDL ESM2G', 'fontsize', 16)

subplot(1,2,2)
plot(gfdl_esm2g_jet_loc_trends_yrs, gfdl_esm2g_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'GFDL_ESM2G_scatter_trends.eps')

%% GFDL ESM2M

figure
subplot(1,2,1)
plot(gfdl_esm2m_jet_trends_yrs, gfdl_esm2m_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('GFDL ESM2M', 'fontsize', 16)

subplot(1,2,2)
plot(gfdl_esm2m_jet_loc_trends_yrs, gfdl_esm2m_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'GFDL_ESM2M_scatter_trends.eps')

%% IPSL CM5a LR

figure
subplot(1,2,1)
plot(ipsl_cm5a_lr_jet_trends_yrs, ipsl_cm5a_lr_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('IPSL CM5a LR', 'fontsize', 16)

subplot(1,2,2)
plot(ipsl_cm5a_lr_jet_loc_trends_yrs, ipsl_cm5a_lr_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'IPSL_CM5a_LR_scatter_trends.eps')

%% IPSL CM5a MR

figure
subplot(1,2,1)
plot(ipsl_cm5a_mr_jet_trends_yrs, ipsl_cm5a_mr_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('IPSL CM5a MR', 'fontsize', 16)

subplot(1,2,2)
plot(ipsl_cm5a_mr_jet_loc_trends_yrs, ipsl_cm5a_mr_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'IPSL_CM5a_MR_scatter_trends.eps')

%% IPSL CM5b LR

figure
subplot(1,2,1)
plot(ipsl_cm5b_lr_jet_trends_yrs, ipsl_cm5b_lr_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('IPSL CM5b LR', 'fontsize', 16)

subplot(1,2,2)
plot(ipsl_cm5b_lr_jet_loc_trends_yrs, ipsl_cm5b_lr_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'IPSL_CM5b_LR_scatter_trends.eps')

%% MIROC ESM

% Windstress and surface pressure vectors different lengths <-- FIX! 
% 
% figure
% subplot(1,2,1)
% plot(miroc_esm_jet_trends_yrs, miroc_esm_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(miroc_esm_jet_loc_trends_yrs, miroc_esm_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% MIROC ESM CHEM

figure
subplot(1,2,1)
plot(miroc_esm_chem_jet_trends_yrs, miroc_esm_chem_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('MIROC ESM CHEM', 'fontsize', 16)

subplot(1,2,2)
plot(miroc_esm_chem_jet_loc_trends_yrs, miroc_esm_chem_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'MIROC_ESM_CHEM_scatter_trends.eps')

%% MIROC5

% Windstress and surface pressure vectors different lengths <-- FIX! 

% figure
% subplot(1,2,1)
% plot(miroc5_jet_trends_yrs, miroc5_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(miroc5_jet_loc_trends_yrs, miroc5_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% MRI CGCM3

figure
subplot(1,2,1)
plot(mri_cgcm3_jet_trends_yrs, mpi_cgcm3_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('MRI CGCM3', 'fontsize', 16)

subplot(1,2,2)
plot(mri_cgcm3_jet_loc_trends_yrs, mpi_cgcm3_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'MRI_CGCM3_scatter_trends.eps')

%% MPI ESM LR
% 
% figure
% subplot(1,2,1)
% plot(mpi_esm_lr_jet_trends_yrs, mpi_esm_lr_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(mpi_esm_lr_jet_loc_trends_yrs, mpi_esm_lr_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% MPI ESM MR

figure
subplot(1,2,1)
plot(mpi_esm_mr_jet_trends_yrs, mpi_esm_mr_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('MPI ESM MR', 'fontsize', 16)

subplot(1,2,2)
plot(mpi_esm_mr_jet_loc_trends_yrs, mpi_esm_mr_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'MPI_ESM_MR_scatter_trends.eps')

%% NOR ESM1m M

% Currently no windstress data

%% NOR ESM1m ME

figure
subplot(1,2,1)
plot(nor_esm1m_me_jet_trends_yrs, nor_esm1m_me_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('NOR ESM1m ME', 'fontsize', 16)

subplot(1,2,2)
plot(nor_esm1m_me_jet_loc_trends_yrs, nor_esm1m_me_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'NOR_ESM1m_ME_scatter_trends.eps')


%% CM2Mc

figure
subplot(1,2,1)
plot(cm2mc_jet_trends_yrs, cm2mc_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CM2Mc', 'fontsize', 16)

subplot(1,2,2)
plot(cm2mc_jet_loc_trends_yrs, cm2mc_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CM2Mc_scatter_trends.eps')

%% CM2.1


figure
subplot(1,2,1)
plot(cm21_jet_trends_yrs, cm21_sam_trends_yrs, '*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
title('CM2.1', 'fontsize', 16)

subplot(1,2,2)
plot(cm21_jet_loc_trends_yrs, cm21_sam_trends_yrs, '*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CM2.1_scatter_trends.eps')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fields
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% CanESM2

figure
subplot(1,2,1)
plot(can_esm2_jet_ann, can_esm2_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('CanESM2', 'fontsize', 16)

subplot(1,2,2)
plot(can_esm2_jet_loc_ann, can_esm2_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CanESM2_scatter.eps')


%% CCSM4

% Windstress and surface pressure vectors different lengths <-- FIX! 

%% CMCC CESM

figure
subplot(1,2,1)
plot(cmcc_cesm_jet_ann, cmcc_cesm_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('CMCC CESM', 'fontsize', 16)

subplot(1,2,2)
plot(cmcc_cesm_jet_loc_ann, cmcc_cesm_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CMCC_CESM_scatter.eps')


%% CMCC CM

figure
subplot(1,2,1)
plot(cmcc_cm_jet_ann, cmcc_cm_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('CMCC CM', 'fontsize', 16)

subplot(1,2,2)
plot(cmcc_cm_jet_loc_ann, cmcc_cm_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CMCC_CM_scatter.eps')


%% CMCC CMs

figure
subplot(1,2,1)
plot(cmcc_cms_jet_ann, cmcc_csm_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('CMCC CMs', 'fontsize', 16)

subplot(1,2,2)
plot(cmcc_cms_jet_loc_ann, cmcc_csm_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CMCC_CMs_scatter.eps')


%% CNRM CM5


figure
subplot(1,2,1)
plot(cnrm_cm5_jet_ann, cnrm_cm5_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('CNRM CM5', 'fontsize', 16)

subplot(1,2,2)
plot(cnrm_cm5_jet_loc_ann, cnrm_cm5_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CNRM_CM5_scatter.eps')


%% CNRM CM52

% Windstress and surface pressure vectors different lengths <-- FIX! 

% figure
% subplot(1,2,1)
% plot(cnrm_cm52_jet_trends_yrs, cnrm_cm52_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(cnrm_cm52_jet_loc_trends_yrs, cnrm_cm52_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% GFDL ESM2G

figure
subplot(1,2,1)
plot(gfdl_esm2g_jet_ann, gfdl_esm2g_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('GFDL ESM2G', 'fontsize', 16)

subplot(1,2,2)
plot(gfdl_esm2g_jet_loc_ann, gfdl_esm2g_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'GFDL_ESM2G_scatter.eps')


%% GFDL ESM2M

figure
subplot(1,2,1)
plot(gfdl_esm2m_jet_ann, gfdl_esm2m_SAM_unnormalized, 'g*')
ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('GFDL ESM2M', 'fontsize', 16)

subplot(1,2,2)
plot(gfdl_esm2m_jet_loc_ann, gfdl_esm2m_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'GFDL_ESM2M_scatter.eps')


%% IPSL CM5a LR

figure
subplot(1,2,1)
plot(ipsl_cm5a_lr_jet_ann, ipsl_cm5a_lr_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('IPSL CM5a LR', 'fontsize', 16)

subplot(1,2,2)
plot(ipsl_cm5a_lr_jet_loc_ann, ipsl_cm5a_lr_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'IPSL_CM5a_LR_scatter.eps')



%% IPSL CM5a MR

figure
subplot(1,2,1)
plot(ipsl_cm5a_mr_jet_ann, ipsl_cm5a_mr_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('IPSL CM5a MR', 'fontsize', 16)

subplot(1,2,2)
plot(ipsl_cm5a_mr_jet_loc_ann, ipsl_cm5a_mr_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'IPSL_CM5a_MR_scatter.eps')



%% IPSL CM5b LR

figure
subplot(1,2,1)
plot(ipsl_cm5b_lr_jet_ann, ipsl_cm5b_lr_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('IPSL CM5b LR', 'fontsize', 16)


subplot(1,2,2)
plot(ipsl_cm5b_lr_jet_loc_ann, ipsl_cm5b_lr_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'IPSL_CM5b_LR_scatter.eps')



%% MIROC ESM

% Windstress and surface pressure vectors different lengths <-- FIX! 
% 
% figure
% subplot(1,2,1)
% plot(miroc_esm_jet_trends_yrs, miroc_esm_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(miroc_esm_jet_loc_trends_yrs, miroc_esm_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% MIROC ESM CHEM

figure
subplot(1,2,1)
plot(miroc_esm_chem_jet_ann, miroc_esm_chem_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('MIROC ESM CHEM', 'fontsize', 16)

subplot(1,2,2)
plot(miroc_esm_chem_jet_loc_ann, miroc_esm_chem_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'MIROC_ESM_CHEM_scatter.eps')


%% MIROC5

% Windstress and surface pressure vectors different lengths <-- FIX! 

% figure
% subplot(1,2,1)
% plot(miroc5_jet_trends_yrs, miroc5_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(miroc5_jet_loc_trends_yrs, miroc5_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% MRI CGCM3

figure
subplot(1,2,1)
plot(mri_cgcm3_jet_ann, mpi_cgcm3_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('MRI CGCM3', 'fontsize', 16)

subplot(1,2,2)
plot(mri_cgcm3_jet_loc_ann, mpi_cgcm3_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'MRI_CGCM3_scatter.eps')



%% MPI ESM LR
% 
% figure
% subplot(1,2,1)
% plot(mpi_esm_lr_jet_trends_yrs, mpi_esm_lr_sam_trends_yrs, '*')
% ylabel('SAM Trend (Pa/30 years)','fontsize', 12)
% xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)
% 
% 
% subplot(1,2,2)
% plot(mpi_esm_lr_jet_loc_trends_yrs, mpi_esm_lr_sam_trends_yrs, '*')
% set(gca, 'fontsize', 12)
% set(gcf, 'position', [100, 100, 1049, 495])
% xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)

%% MPI ESM MR

figure
subplot(1,2,1)
plot(mpi_esm_mr_jet_ann, mpi_esm_mr_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('MRI ESM MR', 'fontsize', 16)

subplot(1,2,2)
plot(mpi_esm_mr_jet_loc_ann, mpi_esm_mr_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'MPI_ESM_MR_scatter.eps')


%% NOR ESM1m M

% Currently no windstress data

%% NOR ESM1m ME

figure
subplot(1,2,1)
plot(nor_esm1m_me_jet_ann, nor_esm1m_me_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude (Pa/30 years)', 'fontsize', 12)
title('NOR ESM1m ME', 'fontsize', 16)

subplot(1,2,2)
plot(nor_esm1m_me_jet_loc_ann, nor_esm1m_me_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'NOR_ESM1m_ME_scatter.eps')



% CM2Mc

figure
subplot(1,2,1)
plot(cm2mc_jet_ann, cm2mc_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)


subplot(1,2,2)
plot(cm2mc_jet_ann, cm2mc_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CM2Mc_scatter.eps')


%% CM2.1


figure
subplot(1,2,1)
plot(cm21_jet_ann, cm21_SAM_unnormalized, 'g*')
ylabel('SAM (Pa/30 years)','fontsize', 12)
xlabel('Jet Magnitude Trend (Pa/30 years)', 'fontsize', 12)


subplot(1,2,2)
plot(cm21_jet_loc_ann, cm21_SAM_unnormalized, 'g*')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
xlabel('Jet Location Trend (^o Lat/30 years)', 'fontsize', 12)
print('-depsc', 'CM21_scatter.eps')

