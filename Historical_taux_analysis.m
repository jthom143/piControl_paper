%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Historical Run Windstress DJF Analysis 
% 
% Script to run individual historical analysis functions for each model. 
% Resulting jet location and magnitude are for DJF only
%
% Jordan Thomas 
% Created: Sept 24, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Matlab Housekeeping 

close all
clear all

addpath /data1/fesd1/jthom143/piControl_paper/tools 
addpath /data1/fesd1/jthom143/piControl_paper/HistoricalData
addpath /data1/fesd1/jthom143/piControl_paper/historical_windstress_analysis

%% Run Individual Model Functions

[ can_esm2_time_year      , can_esm2_jet_DJF      , can_esm2_lat_jet_DJF      , can_esm2_jet_trend      , can_esm2_jet_trend_30      , can_esm2_jet_loc_trend      , can_esm2_jet_loc_trend_30       ] = CanESM2_historical_taux;
[ ccsm4_time_year         , ccsm4_jet_DJF         , ccsm4_lat_jet_DJF         , ccsm4_jet_trend         , ccsm4_jet_trend_30         , ccsm4_jet_loc_trend         , ccsm4_jet_loc_trend_30          ] = CCSM4_historical_taux;
[ cmcc_cesm_time_year     , cmcc_cesm_jet_DJF     , cmcc_cesm_lat_jet_DJF     , cmcc_cesm_jet_trend     , cmcc_cesm_jet_trend_30     , cmcc_cesm_jet_loc_trend     , cmcc_cesm_jet_loc_trend_30      ] = CMCC_CESM_historical_taux;
[ cmcc_cm_time_year       , cmcc_cm_jet_DJF       , cmcc_cm_lat_jet_DJF       , cmcc_cm_jet_trend       , cmcc_cm_jet_trend_30       , cmcc_cm_jet_loc_trend       , cmcc_cm_jet_loc_trend_30        ] = CMCC_CM_historical_taux;
[ cmcc_cms_time_year      , cmcc_cms_jet_DJF      , cmcc_cms_lat_jet_DJF      , cmcc_cms_jet_trend      , cmcc_cms_jet_trend_30      , cmcc_cms_jet_loc_trend      , cmcc_cms_jet_loc_trend_30       ] = CMCC_CMs_historical_taux;
[ cnrm_cm5_time_year      , cnrm_cm5_jet_DJF      , cnrm_cm5_lat_jet_DJF      , cnrm_cm5_jet_trend      , cnrm_cm5_jet_trend_30      , cnrm_cm5_jet_loc_trend      , cnrm_cm5_jet_loc_trend_30       ] = CNRM_CM5_historical_taux;
%[ cnrm_cm52_time_year    , cnrm_cm52_jet_DJF     , cnrm_cm52_lat_jet_DJF     , cnrm_cm52_jet_trend     , cnrm_cm52_jet_trend_30     , cnrm_cm52_jet_loc_trend     , cnrm_cm52_jet_loc_trend_30      ] = CNRM_CM52_historical_taux;
[ gfdl_esm2g_time_year    , gfdl_esm2g_jet_DJF    , gfdl_esm2g_lat_jet_DJF    , gfdl_esm2g_jet_trend    , gfdl_esm2g_jet_trend_30    , gfdl_esm2g_jet_loc_trend    , gfdl_esm2g_jet_loc_trend_30     ] = GFDL_ESM2G_historical_taux;
[ gfdl_esm2m_time_year    , gfdl_esm2m_jet_DJF    , gfdl_esm2m_lat_jet_DJF    , gfdl_esm2m_jet_trend    , gfdl_esm2m_jet_trend_30    , gfdl_esm2m_jet_loc_trend    , gfdl_esm2m_jet_loc_trend_30     ] = CanESM2_historical_taux;
[ ipsl_cm5a_lr_time_year  , ipsl_cm5a_lr_jet_DJF  , ipsl_cm5a_lr_lat_jet_DJF  , ipsl_cm5a_lr_jet_trend  , ipsl_cm5a_lr_jet_trend_30  , ipsl_cm5a_lr_jet_loc_trend  , ipsl_cm5a_lr_jet_loc_trend_30   ] = IPSL_CM5a_LR_historical_taux;
[ ipsl_cm5a_mr_time_year  , ipsl_cm5a_mr_jet_DJF  , ipsl_cm5a_mr_lat_jet_DJF  , ipsl_cm5a_mr_jet_trend  , ipsl_cm5a_mr_jet_trend_30  , ipsl_cm5a_mr_jet_loc_trend  , ipsl_cm5a_mr_jet_loc_trend_30   ] = IPSL_CM5a_MR_historical_taux;
[ ipsl_cm5b_lr_time_year  , ipsl_cm5b_lr_jet_DJF  , ipsl_cm5b_lr_lat_jet_DJF  , ipsl_cm5b_lr_jet_trend  , ipsl_cm5b_lr_jet_trend_30  , ipsl_cm5b_lr_jet_loc_trend  , ipsl_cm5b_lr_jet_loc_trend_30   ] = IPSL_CM5b_LR_historical_taux;
[ miroc_esm_time_year     , miroc_esm_jet_DJF     , miroc_esm_lat_jet_DJF     , miroc_esm_jet_trend     , miroc_esm_jet_trend_30     , miroc_esm_jet_loc_trend     , miroc_esm_jet_loc_trend_30      ] = MIROC_ESM_historical_taux;
[ miroc_esm_chem_time_year, miroc_esm_chem_jet_DJF, miroc_esm_chem_lat_jet_DJF, miroc_esm_chem_jet_trend, miroc_esm_chem_jet_trend_30, miroc_esm_chem_jet_loc_trend, miroc_esm_chem_jet_loc_trend_30 ] = MIROC_ESM_CHEM_historical_taux;
[ miroc5_time_year        , miroc5_jet_DJF        , miroc5_lat_jet_DJF        , miroc5_jet_trend        , miroc5_jet_trend_30        , miroc5_jet_loc_trend        , miroc5_jet_loc_trend_30         ] = MIROC5_historical_taux;
[ mpi_esm_lr_time_year    , mpi_esm_lr_jet_DJF    , mpi_esm_lr_lat_jet_DJF    , mpi_esm_lr_jet_trend    , mpi_esm_lr_jet_trend_30    , mpi_esm_lr_jet_loc_trend    , mpi_esm_lr_jet_loc_trend_30     ] = MPI_ESM_LR_historical_taux;
[ mpi_esm_mr_time_year    , mpi_esm_mr_jet_DJF    , mpi_esm_mr_lat_jet_DJF    , mpi_esm_mr_jet_trend    , mpi_esm_mr_jet_trend_30    , mpi_esm_mr_jet_loc_trend    , mpi_esm_mr_jet_loc_trend_30     ] = MPI_ESM_MR_historical_taux;
[ mri_cgcm3_time_year     , mri_cgcm3_jet_DJF     , mri_cgcm3_lat_jet_DJF     , mri_cgcm3_jet_trend     , mri_cgcm3_jet_trend_30     , mri_cgcm3_jet_loc_trend     , mri_cgcm3_jet_loc_trend_30      ] = MRI_CGCM3_historical_taux;
[ nor_esm1m_me_time_year  , nor_esm1m_me_jet_DJF  , nor_esm1m_me_lat_jet_DJF  , nor_esm1m_me_jet_trend  , nor_esm1m_me_jet_trend_30  , nor_esm1m_me_jet_loc_trend  , nor_esm1m_me_jet_loc_trend_30   ] = NOR_ESM1m_ME_historical_taux;




