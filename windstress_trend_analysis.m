%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Seasonal Trend Comparison
% CMIP5 Models
% Windstress Timeseries
%
% Jordan Thomas
% July 15, 2014

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Good Matlab Housekeeping

close all
clear all

% addpath /Users/jordanthomas/Desktop/Research/NCEPReanalysis1
% addpath /Users/jordanthomas/Desktop/Research/NCEPReanalysis2
% addpath /Users/jordanthomas/Documents/MATLAB/GeneralFunctions

addpath /home/jthom143/NCEPReanalysis1
addpath /home/jthom143/NCEPReanalysis2
addpath /data1/fesd1/jthom143/piControl_paper/windstress_analysis

%% Trend Analysis

 [ can_esm2_jet_f        , can_esm2_jet_xi        , can_esm2_mean_jet        , can_esm2_std_jet        , can_esm2_jet_trends_yrs       , can_esm2_jet_loc_f            , can_esm2_jet_loc_xi           , can_esm2_mean_jet_loc       , can_esm2_std_jet_loc       , can_esm2_jet_loc_trends_yrs       , can_esm2_time_year       , can_esm2_jet_DJF       , can_esm2_jet_loc_DJF      ] = CanESM2_taux_seasonal;
 [ ccsm4_jet_f           , ccsm4_jet_xi           , ccsm4_mean_jet           , ccsm4_std_jet           , ccsm4_jet_trends_yrs          , ccsm4_jet_loc_f               , ccsm4_jet_loc_xi              , ccsm4_mean_jet_loc          , ccsm4_std_jet_loc          , ccsm4_jet_loc_trends_yrs          , ccsm4_time_year          , ccsm4_jet_DJF          , ccsm4_jet_loc_DJF         ] = CCSM4_taux_seasonal;
 [ cmcc_cesm_jet_f       , cmcc_cesm_jet_xi       , cmcc_cesm_mean_jet       , cmcc_cesm_std_jet       , cmcc_cesm_jet_trends_yrs      , cmcc_cesm_jet_loc_f           , cmcc_cesm_jet_loc_xi          , cmcc_cesm_mean_jet_loc      , cmcc_cesm_std_jet_loc      , cmcc_cesm_jet_loc_trends_yrs      , cmcc_cesm_time_year      , cmcc_cesm_jet_DJF      , cmcc_cesm_jet_loc_DJF     ] = CMCC_CESM_taux_seasonal;
 [ cmcc_cm_jet_f         , cmcc_cm_jet_xi         , cmcc_cm_mean_jet         , cmcc_cm_std_jet         , cmcc_cm_jet_trends_yrs        , cmcc_cm_jet_loc_f             , cmcc_cm_jet_loc_xi            , cmcc_cm_mean_jet_loc        , cmcc_cm_std_jet_loc        , cmcc_cm_jet_loc_trends_yrs        , cmcc_cm_time_year        , cmcc_cm_jet_DJF        , cmcc_cm_jet_loc_DJF       ] = CMCC_CM_taux_seasonal;
 [ cmcc_cms_jet_f        , cmcc_cms_jet_xi        , cmcc_cms_mean_jet        , cmcc_cms_std_jet        , cmcc_cms_jet_trends_yrs       , cmcc_cms_jet_loc_f            , cmcc_cms_jet_loc_xi           , cmcc_cms_mean_jet_loc       , cmcc_cms_std_jet_loc       , cmcc_cms_jet_loc_trends_yrs       , cmcc_cms_time_year       , cmcc_cms_jet_DJF       , cmcc_cms_jet_loc_DJF      ] = CMCC_CMs_taux_seasonal;
 [ cnrm_cm5_jet_f        , cnrm_cm5_jet_xi        , cnrm_cm5_mean_jet        , cnrm_cm5_std_jet        , cnrm_cm5_jet_trends_yrs       , cnrm_cm5_jet_loc_f            , cnrm_cm5_jet_loc_xi           , cnrm_cm5_mean_jet_loc       , cnrm_cm5_std_jet_loc       , cnrm_cm5_jet_loc_trends_yrs       , cnrm_cm5_time_year       , cnrm_cm5_jet_DJF       , cnrm_cm5_jet_loc_DJF      ] = CNRM_CM5_taux_seasonal;
 [ cnrm_cm52_jet_f       , cnrm_cm52_jet_xi       , cnrm_cm52_mean_jet       , cnrm_cm52_std_jet       , cnrm_cm52_jet_trends_yrs      , cnrm_cm52_jet_loc_f           , cnrm_cm52_jet_loc_xi          , cnrm_cm52_mean_jet_loc      , cnrm_cm52_std_jet_loc      , cnrm_cm52_jet_loc_trends_yrs      , cnrm_cm52_time_year      , cnrm_cm52_jet_DJF      , cnrm_cm52_jet_loc_DJF     ] = CNRM_CM52_taux_seasonal;
 [ gfdl_esm2g_jet_f      , gfdl_esm2g_jet_xi      , gfdl_esm2g_mean_jet      , gfdl_esm2g_std_jet      , gfdl_esm2g_jet_trends_yrs     , gfdl_esm2g_jet_loc_f          , gfdl_esm2g_jet_loc_xi         , gfdl_esm2g_mean_jet_loc     , gfdl_esm2g_std_jet_loc     , gfdl_esm2g_jet_loc_trends_yrs     , gfdl_esm2g_time_year     , gfdl_esm2g_jet_DJF     , gfdl_esm2g_jet_loc_DJF    ] = GFDL_ESM2G_taux_seasonal;
 [ gfdl_esm2m_jet_f      , gfdl_esm2m_jet_xi      , gfdl_esm2m_mean_jet      , gfdl_esm2m_std_jet      , gfdl_esm2m_jet_trends_yrs     , gfdl_esm2m_jet_loc_f          , gfdl_esm2m_jet_loc_xi         , gfdl_esm2m_mean_jet_loc     , gfdl_esm2m_std_jet_loc     , gfdl_esm2m_jet_loc_trends_yrs     , gfdl_esm2m_time_year     , gfdl_esm2m_jet_DJF     , gfdl_esm2m_jet_loc_DJF    ] = GFDL_ESM2M_taux_seasonal;
 [ ipsl_cm5a_lr_jet_f    , ipsl_cm5a_lr_jet_x     , ipsl_cm5a_lr_mean_jet    , ipsl_cm5a_lr_std_jet    , ipsl_cm5a_lr_jet_trends_yrs   , ipsl_cm5a_lr_jet_loc_f        , ipsl_cm5a_lr_jet_loc_xi       , ipsl_cm5a_lr_mean_jet_loc   , ipsl_cm5a_lr_std_jet_loc   , ipsl_cm5a_lr_jet_loc_trends_yrs   , ipsl_cm5a_lr_time_year   , ipsl_cm5a_lr_jet_DJF   , ipsl_cm5a_lr_jet_loc_DJF  ] = IPSL_CM5a_LR_taux_seasonal;
 [ ipsl_cm5a_mr_jet_f    , ipsl_cm5a_mr_jet_xi    , ipsl_cm5a_mr_mean_jet    , ipsl_cm5a_mr_std_jet    , ipsl_cm5a_mr_jet_trends_yrs   , ipsl_cm5a_mr_jet_loc_f        , ipsl_cm5a_mr_jet_loc_xi       , ipsl_cm5a_mr_mean_jet_loc   , ipsl_cm5a_mr_std_jet_loc   , ipsl_cm5a_mr_jet_loc_trends_yrs   , ipsl_cm5a_mr_time_year   , ipsl_cm5a_mr_jet_DJF   , ipsl_cm5a_mr_jet_loc_DJF  ] = IPSL_CM5a_MR_taux_seasonal;
 [ ipsl_cm5b_lr_jet_f    , ipsl_cm5b_lr_jet_xi    , ipsl_cm5b_lr_mean_jet    , ipsl_cm5b_lr_std_jet    , ipsl_cm5b_lr_jet_trends_yrs   , ipsl_cm5b_lr_jet_loc_f        , ipsl_cm5b_lr_jet_loc_xi       , ipsl_cm5b_lr_mean_jet_loc   , ipsl_cm5b_lr_std_jet_loc   , ipsl_cm5b_lr_jet_loc_trends_yrs   , ipsl_cm5b_lr_time_year   , ipsl_cm5b_lr_jet_DJF   , ipsl_cm5b_lr_jet_loc_DJF  ] = IPSL_CM5b_LR_taux_seasonal;
 [ miroc_esm_jet_f       , miroc_esm_jet_xi       , miroc_esm_mean_jet       , miroc_esm_std_jet       , miroc_esm_jet_trends_yrs      , miroc_esm_jet_loc_f           , miroc_esm_jet_loc_xi          , miroc_esm_mean_jet_loc      , miroc_esm_std_jet_loc      , miroc_esm_jet_loc_trends_yrs      , miroc_esm_time_year      , miroc_esm_jet_DJF      , miroc_esm_jet_loc_DJF     ] = MIROC_ESM_taux_seasonal;
 [ miroc_esm_chem_jet_f  , miroc_esm_chem_jet_xi  , miroc_esm_chem_mean_jet  , miroc_esm_chem_std_jet  , miroc_esm_chem_jet_trends_yrs , miroc_esm_chem_jet_loc_f      , miroc_esm_chem_jet_loc_xi     , miroc_esm_chem_mean_jet_loc , miroc_esm_chem_std_jet_loc , miroc_esm_chem_jet_loc_trends_yrs , miroc_esm_chem_time_year , miroc_esm_chem_jet_DJF , miroc_esm_chem_jet_loc_DJF] = MIROC_ESM_CHEM_taux_seasonal;
 [ mri_cgcm3_jet_f       , mri_cgcm3_jet_xi       , mri_cgcm3_mean_jet       , mri_cgcm3_std_jet       , mri_cgcm3_jet_trends_yrs      , mri_cgcm3_jet_loc_f           , mri_cgcm3_jet_loc_xi          , mri_cgcm3_mean_jet_loc      , mri_cgcm3_std_jet_loc      , mri_cgcm3_jet_loc_trends_yrs      , mri_cgcm3_time_year      , mri_cgcm3_jet_DJF      , mri_cgcm3_jet_loc_DJF     ] = MRI_CGCM3_taux_seasonal;
 [ mpi_esm_lr_jet_f      , mpi_esm_lr_jet_xi      , mpi_esm_lr_mean_jet      , mpi_esm_lr_std_jet      , mpi_esm_lr_jet_trends_yrs     , mpi_esm_lr_jet_loc_f          , mpi_esm_lr_jet_loc_xi         , mpi_esm_lr_mean_jet_loc     , mpi_esm_lr_std_jet_loc     , mpi_esm_lr_jet_loc_trends_yrs     , mpi_esm_lr_time_year     , mpi_esm_lr_jet_DJF     , mpi_esm_lr_jet_loc_DJF    ] = MPI_ESM_LR_taux_seasonal;
 [ mpi_esm_mr_jet_f      , mpi_esm_mr_jet_xi      , mpi_esm_mr_mean_jet      , mpi_esm_mr_std_jet      , mpi_esm_mr_jet_trends_yrs     , mpi_esm_mr_jet_loc_f          , mpi_esm_mr_jet_loc_xi         , mpi_esm_mr_mean_jet_loc     , mpi_esm_mr_std_jet_loc     , mpi_esm_mr_jet_loc_trends_yrs     , mpi_esm_mr_time_year     , mpi_esm_mr_jet_DJF     , mpi_esm_mr_jet_loc_DJF    ] = MPI_ESM_MR_taux_seasonal;
 [ miroc5_jet_f          , miroc5_jet_xi          , miroc5_mean_jet          , miroc5_std_jet          , miroc5_jet_trends_yrs         , miroc5_jet_loc_f              , miroc5_jet_loc_xi             , miroc5_mean_jet_loc         , miroc5_std_jet_loc         , miroc5_jet_loc_trends_yrs         , miroc5_time_year         , miroc5_jet_DJF         , miroc5_jet_loc_DJF        ] = MIROC5_taux_seasonal;
% NOR ESM1m M
 [ nor_esm1m_me_jet_f    , nor_esm1m_me_jet_xi    , nor_esm1m_me_mean_jet    , nor_esm1m_me_std_jet    , nor_esm1m_me_jet_trends_yrs   , nor_esm1m_me_jet_loc_f        , nor_esm1m_me_jet_loc_xi       , nor_esm1m_me_mean_jet_loc   , nor_esm1m_me_std_jet_loc   , nor_esm1m_me_jet_loc_trends_yrs   , nor_esm1m_me_time_year   , nor_esm1m_me_jet_DJF   , nor_esm1m_me_jet_loc_DJF  ] = NOR_ESM1m_ME_taux_seasonal;

% GFDL Models
 [ cm2mc_jet_f    , cm2mc_jet_xi    , cm2mc_mean_jet    , cm2mc_std_jet    , cm2mc_jet_trends_yrs   , cm2mc_jet_loc_f        , cm2mc_jet_loc_xi       , cm2mc_mean_jet_loc   , cm2mc_std_jet_loc   , cm2mc_jet_loc_trends_yrs   , cm2mc_time_year, cm2mc_jet_DJF, cm2mc_jet_loc_DJF] = CM2Mc_taux_seasonal;
 [ cm21_jet_f    , cm21_jet_xi    , cm21_mean_jet    , cm21_std_jet    , cm21_jet_trends_yrs   , cm21_jet_loc_f        , cm21_jet_loc_xi       , cm21_mean_jet_loc   , cm21_std_jet_loc   , cm21_jet_loc_trends_yrs   , cm21_time_year, cm21_jet_DJF, cm21_jet_loc_DJF] = CM21_taux_seasonal;

 
% NCEP Reanalyses 

trend_period = 30;

[ taux_trend_30, lat_trend_30,~] = NCEP1_trends_seasonal(trend_period);
%[ taux_trend_30_2, ~, lat_trend_30_2, ~, ~, ~ ] = NCEP2_trends(trend_period);


% Create matrix with all the model trend vectors
Trends = NaN*ones(22,4000);
Trends(1, 1:length(can_esm2_jet_trends_yrs)) = can_esm2_jet_trends_yrs;
Trends(2, 1:length(ccsm4_jet_trends_yrs)) = ccsm4_jet_trends_yrs;
Trends(3, 1:length(cmcc_cesm_jet_trends_yrs)) = cmcc_cesm_jet_trends_yrs;
Trends(4, 1:length(cmcc_cm_jet_trends_yrs)) = cmcc_cm_jet_trends_yrs;
Trends(5, 1:length(cmcc_cms_jet_trends_yrs)) = cmcc_cms_jet_trends_yrs;
Trends(6, 1:length(cnrm_cm5_jet_trends_yrs)) = cnrm_cm5_jet_trends_yrs;
Trends(7, 1:length(cnrm_cm52_jet_trends_yrs)) = cnrm_cm52_jet_trends_yrs;
Trends(8, 1:length(gfdl_esm2g_jet_trends_yrs)) = gfdl_esm2g_jet_trends_yrs;
Trends(9, 1:length(gfdl_esm2m_jet_trends_yrs)) = gfdl_esm2m_jet_trends_yrs;
Trends(10, 1:length(ipsl_cm5a_lr_jet_trends_yrs)) = ipsl_cm5a_lr_jet_trends_yrs;
Trends(11, 1:length(ipsl_cm5a_mr_jet_trends_yrs)) = ipsl_cm5a_mr_jet_trends_yrs;
Trends(12, 1:length(ipsl_cm5b_lr_jet_trends_yrs)) = ipsl_cm5b_lr_jet_trends_yrs;
Trends(13, 1:length(miroc_esm_jet_trends_yrs)) = miroc_esm_jet_trends_yrs;
Trends(14, 1:length(miroc_esm_chem_jet_trends_yrs)) = miroc_esm_chem_jet_trends_yrs;
Trends(15, 1:length(miroc5_jet_trends_yrs)) = miroc5_jet_trends_yrs;
Trends(16, 1:length(mpi_esm_lr_jet_trends_yrs)) = mpi_esm_lr_jet_trends_yrs;
Trends(17, 1:length(mpi_esm_mr_jet_trends_yrs)) = mpi_esm_mr_jet_trends_yrs;
Trends(18, 1:length(mri_cgcm3_jet_trends_yrs)) = mri_cgcm3_jet_trends_yrs;
%Trends(19, 1:length(nor_esm1m_m_jet_trends_yrs)) = nor_esm1m_m_jet_trends_yrs;
Trends(20, 1:length(nor_esm1m_me_jet_trends_yrs)) = nor_esm1m_me_jet_trends_yrs;
Trends(21, 1:length(cm2mc_jet_trends_yrs)) = cm2mc_jet_trends_yrs;
Trends(22, 1:length(cm21_jet_trends_yrs)) = cm21_jet_trends_yrs;


% Calculate the 95th percentile of the trends for all the models 
percentile_jet = prctile(Trends, 95, 2);


    
    
%% Jet Position Analysis
    

Trends_jet_loc = NaN*ones(22,4000);
Trends_jet_loc(1, 1:length(can_esm2_jet_loc_trends_yrs)) = can_esm2_jet_loc_trends_yrs;
Trends_jet_loc(2, 1:length(ccsm4_jet_loc_trends_yrs)) = ccsm4_jet_loc_trends_yrs;
Trends_jet_loc(3, 1:length(cmcc_cesm_jet_loc_trends_yrs)) = cmcc_cesm_jet_loc_trends_yrs;
Trends_jet_loc(4, 1:length(cmcc_cm_jet_loc_trends_yrs)) = cmcc_cm_jet_loc_trends_yrs;
Trends_jet_loc(5, 1:length(cmcc_cms_jet_loc_trends_yrs)) = cmcc_cms_jet_loc_trends_yrs;
Trends_jet_loc(6, 1:length(cnrm_cm5_jet_loc_trends_yrs)) = cnrm_cm5_jet_loc_trends_yrs;
Trends_jet_loc(7, 1:length(cnrm_cm52_jet_loc_trends_yrs)) = cnrm_cm52_jet_loc_trends_yrs;
Trends_jet_loc(8, 1:length(gfdl_esm2g_jet_loc_trends_yrs)) = gfdl_esm2g_jet_loc_trends_yrs;
Trends_jet_loc(9, 1:length(gfdl_esm2m_jet_loc_trends_yrs)) = gfdl_esm2m_jet_loc_trends_yrs;
Trends_jet_loc(10, 1:length(ipsl_cm5a_lr_jet_loc_trends_yrs)) = ipsl_cm5a_lr_jet_loc_trends_yrs;
Trends_jet_loc(11, 1:length(ipsl_cm5a_mr_jet_loc_trends_yrs)) = ipsl_cm5a_mr_jet_loc_trends_yrs;
Trends_jet_loc(12, 1:length(ipsl_cm5b_lr_jet_loc_trends_yrs)) = ipsl_cm5b_lr_jet_loc_trends_yrs;
Trends_jet_loc(13, 1:length(miroc_esm_jet_loc_trends_yrs)) = miroc_esm_jet_loc_trends_yrs;
Trends_jet_loc(14, 1:length(miroc_esm_chem_jet_loc_trends_yrs)) = miroc_esm_chem_jet_loc_trends_yrs;
Trends_jet_loc(15, 1:length(miroc5_jet_loc_trends_yrs)) = miroc5_jet_loc_trends_yrs;
Trends_jet_loc(16, 1:length(mpi_esm_lr_jet_loc_trends_yrs)) = mpi_esm_lr_jet_loc_trends_yrs;
Trends_jet_loc(17, 1:length(mpi_esm_mr_jet_loc_trends_yrs)) = mpi_esm_mr_jet_loc_trends_yrs;
Trends_jet_loc(18, 1:length(mri_cgcm3_jet_loc_trends_yrs)) = mri_cgcm3_jet_loc_trends_yrs;
%Trends_jet_loc(19, 1:length(nor_esm1m_m_jet_loc_trends_yrs)) = nor_esm1m_m_jet_loc_trends_yrs;
Trends_jet_loc(20, 1:length(nor_esm1m_me_jet_loc_trends_yrs)) = nor_esm1m_me_jet_loc_trends_yrs;
Trends_jet_loc(21, 1:length(cm2mc_jet_loc_trends_yrs)) = cm2mc_jet_loc_trends_yrs;
Trends_jet_loc(22, 1:length(cm21_jet_loc_trends_yrs)) = cm21_jet_loc_trends_yrs;


percentile_loc = prctile(Trends_jet_loc, 95, 2);
