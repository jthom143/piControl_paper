%% Matlab script to run Historical 850mb wind functions 

addpath /data1/fesd1/jthom143/piControl_paper/HistoricalData
addpath /home/jthom143/NCEPReanalysis1
addpath /home/jthom143/NCEPReanalysis2
addpath /data1/fesd1/jthom143/piControl_paper/historical_wind_analysis
addpath /data1/fesd1/jthom143/piControl_paper/tools


% Run Matlab Functions 
[ can_esm2_time_year_u850      , can_esm2_jet_DJF_u850      , can_esm2_lat_jet_DJF_u850      , can_esm2_jet_trend_u850      , can_esm2_jet_trend_30_u850      , can_esm2_jet_loc_trend_u850      , can_esm2_jet_loc_trend_30_u850       ] = CanESM2_historical_u850('CanESM2_historical_u850.cdf');
[ ccsm4_time_year_u850         , ccsm4_jet_DJF_u850         , ccsm4_lat_jet_DJF_u850         , ccsm4_jet_trend_u850         , ccsm4_jet_trend_30_u850         , ccsm4_jet_loc_trend_u850         , ccsm4_jet_loc_trend_30_u850          ] = CCSM4_historical_u850('CCSM4_historical_u850.cdf');
[ cnrm_cm5_time_year_u850      , cnrm_cm5_jet_DJF_u850      , cnrm_cm5_lat_jet_DJF_u850      , cnrm_cm5_jet_trend_u850      , cnrm_cm5_jet_trend_30_u850      , cnrm_cm5_jet_loc_trend_u850      , cnrm_cm5_jet_loc_trend_30_u850       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850.cdf');
[ gfdl_esm2g_time_year_u850    , gfdl_esm2g_jet_DJF_u850    , gfdl_esm2g_lat_jet_DJF_u850    , gfdl_esm2g_jet_trend_u850    , gfdl_esm2g_jet_trend_30_u850    , gfdl_esm2g_jet_loc_trend_u850    , gfdl_esm2g_jet_loc_trend_30_u850     ] = GFDL_ESM2G_historical_u850('GFDL_ESM2G_historical_u850.cdf');
[ gfdl_esm2m_time_year_u850    , gfdl_esm2m_jet_DJF_u850    , gfdl_esm2m_lat_jet_DJF_u850    , gfdl_esm2m_jet_trend_u850    , gfdl_esm2m_jet_trend_30_u850    , gfdl_esm2m_jet_loc_trend_u850    , gfdl_esm2m_jet_loc_trend_30_u850     ] = GFDL_ESM2M_historical_u850('GFDL_ESM2M_historical_u850.cdf');
[ ipsl_cm5a_lr_time_year_u850  , ipsl_cm5a_lr_jet_DJF_u850  , ipsl_cm5a_lr_lat_jet_DJF_u850  , ipsl_cm5a_lr_jet_trend_u850  , ipsl_cm5a_lr_jet_trend_30_u850  , ipsl_cm5a_lr_jet_loc_trend_u850  , ipsl_cm5a_lr_jet_loc_trend_30_u850   ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850.cdf');
[ ipsl_cm5a_mr_time_year_u850  , ipsl_cm5a_mr_jet_DJF_u850  , ipsl_cm5a_mr_lat_jet_DJF_u850  , ipsl_cm5a_mr_jet_trend_u850  , ipsl_cm5a_mr_jet_trend_30_u850  , ipsl_cm5a_mr_jet_loc_trend_u850  , ipsl_cm5a_mr_jet_loc_trend_30_u850   ] = IPSL_CM5a_MR_historical_u850('IPSL_CM5a_MR_historical_u850.cdf');
[ ipsl_cm5b_lr_time_year_u850  , ipsl_cm5b_lr_jet_DJF_u850  , ipsl_cm5b_lr_lat_jet_DJF_u850  , ipsl_cm5b_lr_jet_trend_u850  , ipsl_cm5b_lr_jet_trend_30_u850  , ipsl_cm5b_lr_jet_loc_trend_u850  , ipsl_cm5b_lr_jet_loc_trend_30_u850   ] = IPSL_CM5b_LR_historical_u850('IPSL_CM5b_LR_historical_u850.cdf');
[ miroc_esm_time_year_u850     , miroc_esm_jet_DJF_u850     , miroc_esm_lat_jet_DJF_u850     , miroc_esm_jet_trend_u850     , miroc_esm_jet_trend_30_u850     , miroc_esm_jet_loc_trend_u850     , miroc_esm_jet_loc_trend_30_u850      ] = MIROC_ESM_historical_u850('MIROC_ESM_historical_u850.cdf');
[ miroc_esm_chem_time_year_u850, miroc_esm_chem_jet_DJF_u850, miroc_esm_chem_lat_jet_DJF_u850, miroc_esm_chem_jet_trend_u850, miroc_esm_chem_jet_trend_30_u850, miroc_esm_chem_jet_loc_trend_u850, miroc_esm_chem_jet_loc_trend_30_u850 ] = MIROC_ESM_CHEM_historical_u850('MIROC_ESM_CHEM_historical_u850.cdf');
[ miroc5_time_year_u850        , miroc5_jet_DJF_u850        , miroc5_lat_jet_DJF_u850        , miroc5_jet_trend_u850        , miroc5_jet_trend_30_u850        , miroc5_jet_loc_trend_u850        , miroc5_jet_loc_trend_30_u850         ] = MIROC5_historical_u850('MIROC5_historical_u850.cdf');
[ mpi_esm_lr_time_year_u850    , mpi_esm_lr_jet_DJF_u850    , mpi_esm_lr_lat_jet_DJF_u850    , mpi_esm_lr_jet_trend_u850    , mpi_esm_lr_jet_trend_30_u850    , mpi_esm_lr_jet_loc_trend_u850    , mpi_esm_lr_jet_loc_trend_30_u850     ] = MPI_ESM_LR_historical_u850('MPI_ESM_LR_historical_u850.cdf');
[ mpi_esm_mr_time_year_u850    , mpi_esm_mr_jet_DJF_u850    , mpi_esm_mr_lat_jet_DJF_u850    , mpi_esm_mr_jet_trend_u850    , mpi_esm_mr_jet_trend_30_u850    , mpi_esm_mr_jet_loc_trend_u850    , mpi_esm_mr_jet_loc_trend_30_u850     ] = MPI_ESM_MR_historical_u850('MPI_ESM_MR_historical_u850.cdf');
[ mri_cgcm3_time_year_u850     , mri_cgcm3_jet_DJF_u850     , mri_cgcm3_lat_jet_DJF_u850     , mri_cgcm3_jet_trend_u850     , mri_cgcm3_jet_trend_30_u850     , mri_cgcm3_jet_loc_trend_u850     , mri_cgcm3_jet_loc_trend_30_u850      ] = MRI_CGCM3_historical_u850('MRI_CGCM3_historical_u850.cdf');
[ nor_esm1m_m_time_year_u850   , nor_esm1m_m_jet_DJF_u850   , nor_esm1m_m_lat_jet_DJF_u850   , nor_esm1m_m_jet_trend_u850   , nor_esm1m_m_jet_trend_30_u850   , nor_esm1m_m_jet_loc_trend_u850   , nor_esm1m_m_jet_loc_trend_30_u850    ] = NOR_ESM1m_M_historical_u850('NOR_ESM1m_M_historical_u850.cdf');
[ nor_esm1m_me_time_year_u850  , nor_esm1m_me_jet_DJF_u850  , nor_esm1m_me_lat_jet_DJF_u850  , nor_esm1m_me_jet_trend_u850  , nor_esm1m_me_jet_trend_30_u850  , nor_esm1m_me_jet_loc_trend_u850  , nor_esm1m_me_jet_loc_trend_30_u850   ] = NOR_ESM1m_ME_historical_u850('NOR_ESM1m_ME_historical_u850.cdf');



