%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Trend Comparison
% CMIP5 Models
% SAM Timeseries
%
% Jordan Thomas
% May 8, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Good Matlab Housekeeping

% close all
% clear all

% addpath /Users/jordanthomas/Desktop/Research/NCEPReanalysis1
% addpath /Users/jordanthomas/Desktop/Research/NCEPReanalysis2
% addpath /Users/jordanthomas/Documents/MATLAB/GeneralFunctions

addpath /data1/fesd1/jthom143/piControl_paper/surface_pressure_analysis
addpath /data1/fesd1/jthom143/piControl_paper/Observations
addpath /data1/fesd1/jthom143/piControl_paper/tools

%% Trend Analysis

[ can_esm2_sam_f      , can_esm2_sam_xi      , can_esm2_mean_sam      , can_esm2_std_sam      , can_esm2_time_year      , can_esm2_SAM_unnormalized       , can_esm2_sam_trends_yrs      ] = CanESM2_seasonal_index;
[ ccsm4_sam_f         , ccsm4_sam_xi         , ccsm4_mean_sam         , ccsm4_std_sam         , ccsm4_time_year         , ccsm4_SAM_unnormalized          , ccsm4_sam_trends_yrs         ] = CCSM4_seasonal_index;
[ cmcc_cesm_sam_f     , cmcc_cesm_sam_xi     , cmcc_cesm_mean_sam     , cmcc_cesm_std_sam     , cmcc_cesm_time_year     , cmcc_cesm_SAM_unnormalized      , cmcc_cesm_sam_trends_yrs     ] = CMCC_CESM_seasonal_index;
[ cmcc_cm_sam_f       , cmcc_cm_sam_xi       , cmcc_cm_mean_sam       , cmcc_cm_std_sam       , cmcc_cm_time_year       , cmcc_cm_SAM_unnormalized        , cmcc_cm_sam_trends_yrs       ] = CMCC_CM_seasonal_index;
[ cmcc_cms_sam_f      , cmcc_cms_sam_xi      , cmcc_cms_mean_sam      , cmcc_csm_std_sam      , cmcc_csm_time_year      , cmcc_csm_SAM_unnormalized       , cmcc_cms_sam_trends_yrs      ] = CMCC_CMs_seasonal_index;
[ cnrm_cm5_sam_f      , cnrm_cm5_sam_xi      , cnrm_cm5_mean_sam      , cnrm_cm5_std_sam      , cnrm_cm5_time_year      , cnrm_cm5_SAM_unnormalized       , cnrm_cm5_sam_trends_yrs      ] = CNRM_CM5_seasonal_index;
[ cnrm_cm52_sam_f     , cnrm_cm52_sam_xi     , cnrm_cm52_mean_sam     , cnrm_cm52_std_sam     , cnrm_cm52_time_year     , cnrm_cm52_SAM_unnormalized      , cnrm_cm52_sam_trends_yrs     ] = CNRM_CM52_seasonal_index;
[ gfdl_esm2g_sam_f    , gfdl_esm2g_sam_xi    , gfdl_esm2g_mean_sam    , gfdl_esm2g_std_sam    , gfdl_esm2g_time_year    , gfdl_esm2g_SAM_unnormalized     , gfdl_esm2g_sam_trends_yrs    ] = GFDL_ESM2G_seasonal_index;
[ gfdl_esm2m_sam_f    , gfdl_esm2m_sam_xi    , gfdl_esm2m_mean_sam    , gfdl_esm2m_std_sam    , gfdl_esm2m_time_year    , gfdl_esm2m_SAM_unnormalized     , gfdl_esm2m_sam_trends_yrs    ] = GFDL_ESM2M_seasonal_index;
[ ipsl_cm5a_lr_sam_f  , ipsl_cm5a_lr_sam_xi  , ipsl_cm5a_lr_mean_sam  , ipsl_cm5a_lr_std_sam  , ipsl_cm5a_lr_time_year  , ipsl_cm5a_lr_SAM_unnormalized   , ipsl_cm5a_lr_sam_trends_yrs  ] = IPSL_CM5a_LR_seasonal_index;
[ ipsl_cm5a_mr_sam_f  , ipsl_cm5a_mr_sam_xi  , ipsl_cm5a_mr_mean_sam  , ipsl_cm5a_mr_std_sam  , ipsl_cm5a_mr_time_year  , ipsl_cm5a_mr_SAM_unnormalized   , ipsl_cm5a_mr_sam_trends_yrs  ] = IPSL_CM5a_MR_seasonal_index;
[ ipsl_cm5b_lr_sam_f  , ipsl_cm5b_lr_sam_xi  , ipsl_cm5b_lr_mean_sam  , ipsl_cm5b_lr_std_sam  , ipsl_cm5b_lr_time_year  , ipsl_cm5b_lr_SAM_unnormalized   , ipsl_cm5b_lr_sam_trends_yrs  ] = IPSL_CM5b_LR_seasonal_index;
[ miroc5_sam_f        , miroc5_sam_xi        , miroc5_mean_sam        , miroc5_std_sam        , miroc5_time_year        , miroc5_SAM_unnormalized         , miroc5_sam_trends_yrs        ] = MIROC5_seasonal_index;
[ miroc_esm_sam_f     , miroc_esm_sam_xi     , miroc_esm_mean_sam     , miroc_esm_std_sam     , miroc_esm_time_year     , miroc_esm_SAM_unnormalized      , miroc_esm_sam_trends_yrs     ] = MIROC_ESM_seasonal_index;
[ miroc_esm_chem_sam_f, miroc_esm_chem_sam_xi, miroc_esm_chem_mean_sam, miroc_esm_chem_std_sam, miroc_esm_chem_time_year, miroc_esm_chem_SAM_unnormalized , miroc_esm_chem_sam_trends_yrs] = MIROC_ESM_CHEM_seasonal_index;
[ mri_cgcm3_sam_f     , mri_cgcm3_sam_xi     , mri_cgcm3_mean_sam     , mri_cgcm3_std_sam     , mri_cgcm3_time_year     , mri_cgcm3_SAM_unnormalized      , mri_cgcm3_sam_trends_yrs     ] = MRI_CGCM3_seasonal_index;
[ mpi_esm_lr_sam_f    , mpi_esm_lr_sam_xi    , mpi_esm_lr_mean_sam    , mpi_esm_lr_std_sam    , mpi_esm_lr_time_year    , mpi_esm_lr_SAM_unnormalized     , mpi_esm_lr_sam_trends_yrs    ] = MPI_ESM_LR_seasonal_index;
[ mpi_esm_mr_sam_f    , mpi_esm_mr_sam_xi    , mpi_esm_mr_mean_sam    , mpi_esm_mr_std_sam    , mpi_esm_mr_time_year    , mpi_esm_mr_SAM_unnormalized     , mpi_esm_mr_sam_trends_yrs    ] = MPI_ESM_MR_seasonal_index;
[ nor_esm1m_m_sam_f   , nor_esm1m_m_sam_xi   , nor_esm1m_m_mean_sam   , nor_esm1m_m_std_sam   , nor_esm1m_m_time_year   , nor_esm1m_m_SAM_unnormalized    , nor_esm1m_m_sam_trends_yrs   ] = NOR_ESM1m_M_seasonal_index;
[ nor_esm1m_me_sam_f  , nor_esm1m_me_sam_xi  , nor_esm1m_me_mean_sam  , nor_esm1m_me_std_sam  , nor_esm1m_me_time_year  , nor_esm1m_me_SAM_unnormalized   , nor_esm1m_me_sam_trends_yrs  ] = NOR_ESM1m_ME_seasonal_index;

[ cm2mc_sam_f         , cm2mc_sam_xi         , cm2mc_mean_sam         , cm2mc_std_sam         , cm2mc_time_year         , cm2mc_SAM_unnormalized ,cm2mc_sam_trends_yrs         ] = CM2Mc_index;
[ cm21_sam_f          , cm21_sam_xi          , cm21_mean_sam          , cm21_std_sam          , cm21_time_year          , cm21_SAM_unnormalized , cm21_sam_trends_yrs           ] = CM21_index;


%%%%%%%%%%%%


Trends = NaN*ones(22,4000);
Trends(1, 1:length(can_esm2_sam_trends_yrs)) = can_esm2_sam_trends_yrs;
Trends(2, 1:length(ccsm4_sam_trends_yrs)) = ccsm4_sam_trends_yrs;
%Trends(3, 1:length(cmcc_cesm_sam_trends_yrs)) = cmcc_cesm_sam_trends_yrs;
%Trends(4, 1:length(cmcc_cm_sam_trends_yrs)) = cmcc_cm_sam_trends_yrs;
%Trends(5, 1:length(cmcc_cms_sam_trends_yrs)) = cmcc_cms_sam_trends_yrs;
Trends(6, 1:length(cnrm_cm5_sam_trends_yrs)) = cnrm_cm5_sam_trends_yrs;
%Trends(7, 1:length(cnrm_cm52_sam_trends_yrs)) = cnrm_cm52_sam_trends_yrs;
Trends(8, 1:length(gfdl_esm2g_sam_trends_yrs)) = gfdl_esm2g_sam_trends_yrs;
Trends(9, 1:length(gfdl_esm2m_sam_trends_yrs)) = gfdl_esm2m_sam_trends_yrs;
Trends(10, 1:length(ipsl_cm5a_lr_sam_trends_yrs)) = ipsl_cm5a_lr_sam_trends_yrs;
Trends(11, 1:length(ipsl_cm5a_mr_sam_trends_yrs)) = ipsl_cm5a_mr_sam_trends_yrs;
Trends(12, 1:length(ipsl_cm5b_lr_sam_trends_yrs)) = ipsl_cm5b_lr_sam_trends_yrs;
Trends(13, 1:length(miroc_esm_sam_trends_yrs)) = miroc_esm_sam_trends_yrs;
Trends(14, 1:length(miroc_esm_chem_sam_trends_yrs)) = miroc_esm_chem_sam_trends_yrs;
Trends(15, 1:length(miroc5_sam_trends_yrs)) = miroc5_sam_trends_yrs;
Trends(16, 1:length(mpi_esm_lr_sam_trends_yrs)) = mpi_esm_lr_sam_trends_yrs;
Trends(17, 1:length(mpi_esm_mr_sam_trends_yrs)) = mpi_esm_mr_sam_trends_yrs;
Trends(18, 1:length(mri_cgcm3_sam_trends_yrs)) = mri_cgcm3_sam_trends_yrs;
Trends(19, 1:length(nor_esm1m_m_sam_trends_yrs)) = nor_esm1m_m_sam_trends_yrs;
Trends(20, 1:length(nor_esm1m_me_sam_trends_yrs)) = nor_esm1m_me_sam_trends_yrs;
%Trends(21, 1:length(cm2mc_sam_trends_yrs)) = cm2mc_sam_trends_yrs;
%Trends(22, 1:length(cm21_sam_trends_yrs)) = cm21_sam_trends_yrs;


Models = {'CanESM2';'CCSM4';'CMCC CESM'; 'CMCC CM'; 'CMCC CMs'; 'CNRM CM5'; 'CNRM CM5-2';'GFDL ESM2G';'GFDL ESM2M'; 'IPSL CM5a LR'; 'IPSL CM5a MR';...
    'IPSL CM5b LR'; 'MIROC ESM'; 'MIROC ESM CHEM';'MIROC5';'MPI ESM LR'; 'MPI ESM MR';'MRI CGCM3'; 'NOR ESM1m M'; 'NOR ESM1m ME';...
    'CM2Mc'; 'CM2.1'};

figure(4)
subplot(5,4,1)
plot(can_esm2_time_year, can_esm2_SAM_unnormalized)
xlim([0 996])
ylim([-4 4])
title('CanESM2', 'fontsize', 12)

subplot(5,4,2)
plot(ccsm4_time_year, ccsm4_SAM_unnormalized)
xlim([0 501])
ylim([-4 4])
title('CCSM4', 'fontsize', 12)

subplot(5,4,3)
plot(cmcc_cesm_time_year, cmcc_cesm_SAM_unnormalized)
xlim([0 277])
ylim([-4 4])
title('CMCC CESM', 'fontsize', 12)

subplot(5,4,4)
plot(cmcc_cm_time_year, cmcc_cm_SAM_unnormalized)
xlim([0 330])
ylim([-4 4])
title('CMCC CM', 'fontsize', 12)

subplot(5,4,5)
plot(cmcc_csm_time_year, cmcc_csm_SAM_unnormalized)
xlim([0 500])
ylim([-4 4])
title('CMCC CMs', 'fontsize', 12)

subplot(5,4,6)
plot(cnrm_cm5_time_year, cnrm_cm5_SAM_unnormalized)
xlim([0 850])
ylim([-4 4])
title('CNRM CM5', 'fontsize', 12)

subplot(5,4,7)
plot(cnrm_cm52_time_year, cnrm_cm52_SAM_unnormalized)
xlim([0 359])
ylim([-4 4])
title('CNRM CM5-2', 'fontsize', 12)

subplot(5,4,8)
plot(gfdl_esm2g_time_year, gfdl_esm2g_SAM_unnormalized)
xlim([0 500])
ylim([-4 4])
title('GFDL ESM2G', 'fontsize', 12)

subplot(5,4,9)
plot(gfdl_esm2m_time_year, gfdl_esm2m_SAM_unnormalized)
xlim([0 500])
ylim([-4 4])
title('GFDL ESM2M', 'fontsize', 12)

subplot(5,4,10)
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_SAM_unnormalized)
xlim([0 1000])
ylim([-4 4])
title('IPSL CM5a LR', 'fontsize', 12)

subplot(5,4,11)
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_SAM_unnormalized)
xlim([0 300])
ylim([-4 4])
title('IPSL CM5a MR', 'fontsize', 12)

subplot(5,4,12)
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_SAM_unnormalized)
xlim([0 300])
ylim([-4 4])
title('IPSL CM5b LR', 'fontsize', 12)

subplot(5,4,13)
plot(miroc_esm_time_year, miroc_esm_SAM_unnormalized)
xlim([0 531])
ylim([-4 4])
title('MIROC ESM', 'fontsize', 12)

subplot(5,4,14)
plot(miroc_esm_chem_time_year, miroc_esm_chem_SAM_unnormalized)
xlim([0 255])
ylim([-4 4])
title('MIROC ESM CHEM', 'fontsize', 12)

subplot(5,4,15)
plot(miroc5_time_year, miroc5_SAM_unnormalized)
xlim([0 200])
ylim([-4 4])
title('MIROC5', 'fontsize', 12)

subplot(5,4,16)
plot(mri_cgcm3_time_year, mri_cgcm3_SAM_unnormalized)
xlim([0 200])
ylim([-4 4])
title('MRI CGCM3', 'fontsize', 12)

subplot(5,4,17)
plot(mpi_esm_lr_time_year, mpi_esm_lr_SAM_unnormalized)
xlim([0 1000])
ylim([-4 4])
title('MPI ESM LR', 'fontsize', 12)

subplot(5,4,18)
plot(mpi_esm_mr_time_year, mpi_esm_mr_SAM_unnormalized)
xlim([0 1000])
ylim([-4 4])
title('MPI ESM MR', 'fontsize', 12)

subplot(5,4,19)
plot(nor_esm1m_m_time_year, nor_esm1m_m_SAM_unnormalized)
xlim([0 501])
ylim([-4 4])
title('NOR ESM1m M', 'fontsize', 12)

subplot(5,4,20)
plot(nor_esm1m_me_time_year, nor_esm1m_me_SAM_unnormalized)
xlim([0 252])
ylim([-4 4])
title('NOR ESM1m ME', 'fontsize', 12)

set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 895])
        
        