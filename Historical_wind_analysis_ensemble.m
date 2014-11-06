%% Matlab script to run Historical 850mb wind functions 

addpath /data1/fesd1/jthom143/piControl_paper/HistoricalData
addpath /home/jthom143/NCEPReanalysis1
addpath /home/jthom143/NCEPReanalysis2
addpath /data1/fesd1/jthom143/piControl_paper/historical_wind_analysis
addpath /data1/fesd1/jthom143/piControl_paper/tools


% Run Matlab Functions 

%CanESM2
[ can_esm2_time_year_u850         , can_esm2_jet_DJF_u850         , can_esm2_lat_jet_DJF_u850         , can_esm2_jet_trend_u850         , can_esm2_jet_trend_30_u850         , can_esm2_jet_loc_trend_u850         , can_esm2_jet_loc_trend_30_u850          ] = CanESM2_historical_u850('CanESM2_historical_u850.cdf');
[ can_esm2_time_year_u850_e2      , can_esm2_jet_DJF_u850_e2      , can_esm2_lat_jet_DJF_u850_e2      , can_esm2_jet_trend_u850_e2      , can_esm2_jet_trend_30_u850_e2      , can_esm2_jet_loc_trend_u850_e2      , can_esm2_jet_loc_trend_30_u850_e2       ] = CanESM2_historical_u850('CanESM2_historical_u850_r2i1p1.cdf');
[ can_esm2_time_year_u850_e3      , can_esm2_jet_DJF_u850_e3      , can_esm2_lat_jet_DJF_u850_e3      , can_esm2_jet_trend_u850_e3      , can_esm2_jet_trend_30_u850_e3      , can_esm2_jet_loc_trend_u850_e3      , can_esm2_jet_loc_trend_30_u850_e3       ] = CanESM2_historical_u850('CanESM2_historical_u850_r3i1p1.cdf');
[ can_esm2_time_year_u850_e4      , can_esm2_jet_DJF_u850_e4      , can_esm2_lat_jet_DJF_u850_e4      , can_esm2_jet_trend_u850_e4      , can_esm2_jet_trend_30_u850_e4      , can_esm2_jet_loc_trend_u850_e4      , can_esm2_jet_loc_trend_30_u850_e4       ] = CanESM2_historical_u850('CanESM2_historical_u850_r4i1p1.cdf');
[ can_esm2_time_year_u850_e5      , can_esm2_jet_DJF_u850_e5      , can_esm2_lat_jet_DJF_u850_e5      , can_esm2_jet_trend_u850_e5      , can_esm2_jet_trend_30_u850_e5      , can_esm2_jet_loc_trend_u850_e5      , can_esm2_jet_loc_trend_30_u850_e5       ] = CanESM2_historical_u850('CanESM2_historical_u850_r5i1p1.cdf');

%CCSM4
[ ccsm4_time_year_u850         , ccsm4_jet_DJF_u850         , ccsm4_lat_jet_DJF_u850         , ccsm4_jet_trend_u850         , ccsm4_jet_trend_30_u850         , ccsm4_jet_loc_trend_u850         , ccsm4_jet_loc_trend_30_u850          ] = CCSM4_historical_u850('CCSM4_historical_u850.cdf');
% [ ccsm4_time_year_u850_e2         , ccsm4_jet_DJF_u850_e2         , ccsm4_lat_jet_DJF_u850_e2         , ccsm4_jet_trend_u850_e2         , ccsm4_jet_trend_30_u850_e2         , ccsm4_jet_loc_trend_u850_e2         , ccsm4_jet_loc_trend_30_u850_e2          ] = CCSM4_historical_u850('CCSM4_historical_u850_r2i1p1.cdf');
% [ ccsm4_time_year_u850_e3         , ccsm4_jet_DJF_u850_e3         , ccsm4_lat_jet_DJF_u850_e3         , ccsm4_jet_trend_u850_e3         , ccsm4_jet_trend_30_u850_e3         , ccsm4_jet_loc_trend_u850_e3         , ccsm4_jet_loc_trend_30_u850_e3          ] = CCSM4_historical_u850('CCSM4_historical_u850_r3i1p1.cdf');
% [ ccsm4_time_year_u850_e4         , ccsm4_jet_DJF_u850_e4         , ccsm4_lat_jet_DJF_u850_e4         , ccsm4_jet_trend_u850_e4         , ccsm4_jet_trend_30_u850_e4         , ccsm4_jet_loc_trend_u850_e4         , ccsm4_jet_loc_trend_30_u850_e4          ] = CCSM4_historical_u850('CCSM4_historical_u850_r4i1p1.cdf');
% [ ccsm4_time_year_u850_e5         , ccsm4_jet_DJF_u850_e5         , ccsm4_lat_jet_DJF_u850_e5         , ccsm4_jet_trend_u850_e5         , ccsm4_jet_trend_30_u850_e5         , ccsm4_jet_loc_trend_u850_e5         , ccsm4_jet_loc_trend_30_u850_e5          ] = CCSM4_historical_u850('CCSM4_historical_u850_r5i1p1.cdf');
% [ ccsm4_time_year_u850_e6         , ccsm4_jet_DJF_u850_e6         , ccsm4_lat_jet_DJF_u850_e6         , ccsm4_jet_trend_u850_e6         , ccsm4_jet_trend_30_u850_e6         , ccsm4_jet_loc_trend_u850_e6         , ccsm4_jet_loc_trend_30_u850_e6          ] = CCSM4_historical_u850('CCSM4_historical_u850_r6i1p1.cdf');


% CNRM CM5  
[ cnrm_cm5_time_year_u850         , cnrm_cm5_jet_DJF_u850         , cnrm_cm5_lat_jet_DJF_u850         , cnrm_cm5_jet_trend_u850         , cnrm_cm5_jet_trend_30_u850         , cnrm_cm5_jet_loc_trend_u850         , cnrm_cm5_jet_loc_trend_30_u850          ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r1i1p1.cdf');
[ cnrm_cm5_time_year_u850_e2      , cnrm_cm5_jet_DJF_u850_e2      , cnrm_cm5_lat_jet_DJF_u850_e2      , cnrm_cm5_jet_trend_u850_e2      , cnrm_cm5_jet_trend_30_u850_e2      , cnrm_cm5_jet_loc_trend_u850_e2      , cnrm_cm5_jet_loc_trend_30_u850_e2       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r2i1p1.cdf');
[ cnrm_cm5_time_year_u850_e3      , cnrm_cm5_jet_DJF_u850_e3      , cnrm_cm5_lat_jet_DJF_u850_e3      , cnrm_cm5_jet_trend_u850_e3      , cnrm_cm5_jet_trend_30_u850_e3      , cnrm_cm5_jet_loc_trend_u850_e3      , cnrm_cm5_jet_loc_trend_30_u850_e3       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r3i1p1.cdf');
[ cnrm_cm5_time_year_u850_e4      , cnrm_cm5_jet_DJF_u850_e4      , cnrm_cm5_lat_jet_DJF_u850_e4      , cnrm_cm5_jet_trend_u850_e4      , cnrm_cm5_jet_trend_30_u850_e4      , cnrm_cm5_jet_loc_trend_u850_e4      , cnrm_cm5_jet_loc_trend_30_u850_e4       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r4i1p1.cdf');
[ cnrm_cm5_time_year_u850_e5      , cnrm_cm5_jet_DJF_u850_e5      , cnrm_cm5_lat_jet_DJF_u850_e5      , cnrm_cm5_jet_trend_u850_e5      , cnrm_cm5_jet_trend_30_u850_e5      , cnrm_cm5_jet_loc_trend_u850_e5      , cnrm_cm5_jet_loc_trend_30_u850_e5       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r5i1p1.cdf');
[ cnrm_cm5_time_year_u850_e6      , cnrm_cm5_jet_DJF_u850_e6      , cnrm_cm5_lat_jet_DJF_u850_e6      , cnrm_cm5_jet_trend_u850_e6      , cnrm_cm5_jet_trend_30_u850_e6      , cnrm_cm5_jet_loc_trend_u850_e6      , cnrm_cm5_jet_loc_trend_30_u850_e6       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r6i1p1.cdf');
[ cnrm_cm5_time_year_u850_e7      , cnrm_cm5_jet_DJF_u850_e7      , cnrm_cm5_lat_jet_DJF_u850_e7      , cnrm_cm5_jet_trend_u850_e7      , cnrm_cm5_jet_trend_30_u850_e7      , cnrm_cm5_jet_loc_trend_u850_e7      , cnrm_cm5_jet_loc_trend_30_u850_e7       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r7i1p1.cdf');
[ cnrm_cm5_time_year_u850_e8      , cnrm_cm5_jet_DJF_u850_e8      , cnrm_cm5_lat_jet_DJF_u850_e8      , cnrm_cm5_jet_trend_u850_e8      , cnrm_cm5_jet_trend_30_u850_e8      , cnrm_cm5_jet_loc_trend_u850_e8      , cnrm_cm5_jet_loc_trend_30_u850_e8       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r8i1p1.cdf');
[ cnrm_cm5_time_year_u850_e9      , cnrm_cm5_jet_DJF_u850_e9      , cnrm_cm5_lat_jet_DJF_u850_e9      , cnrm_cm5_jet_trend_u850_e9      , cnrm_cm5_jet_trend_30_u850_e9      , cnrm_cm5_jet_loc_trend_u850_e9      , cnrm_cm5_jet_loc_trend_30_u850_e9       ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850_r9i1p1.cdf');
[ cnrm_cm5_time_year_u850_e10     , cnrm_cm5_jet_DJF_u850_e10     , cnrm_cm5_lat_jet_DJF_u850_e10     , cnrm_cm5_jet_trend_u850_e10     , cnrm_cm5_jet_trend_30_u850_e10     , cnrm_cm5_jet_loc_trend_u850_e10     , cnrm_cm5_jet_loc_trend_30_u850_e10      ] = CNRM_CM5_historical_u850('CNRM_CM5_historical_u850.cdf');


[ gfdl_esm2g_time_year_u850    , gfdl_esm2g_jet_DJF_u850    , gfdl_esm2g_lat_jet_DJF_u850    , gfdl_esm2g_jet_trend_u850    , gfdl_esm2g_jet_trend_30_u850    , gfdl_esm2g_jet_loc_trend_u850    , gfdl_esm2g_jet_loc_trend_30_u850     ] = GFDL_ESM2G_historical_u850('GFDL_ESM2G_historical_u850.cdf');
[ gfdl_esm2m_time_year_u850    , gfdl_esm2m_jet_DJF_u850    , gfdl_esm2m_lat_jet_DJF_u850    , gfdl_esm2m_jet_trend_u850    , gfdl_esm2m_jet_trend_30_u850    , gfdl_esm2m_jet_loc_trend_u850    , gfdl_esm2m_jet_loc_trend_30_u850     ] = GFDL_ESM2M_historical_u850('GFDL_ESM2M_historical_u850.cdf');


% IPSL CM5a LR
[ ipsl_cm5a_lr_time_year_u850     , ipsl_cm5a_lr_jet_DJF_u850     , ipsl_cm5a_lr_lat_jet_DJF_u850     , ipsl_cm5a_lr_jet_trend_u850     , ipsl_cm5a_lr_jet_trend_30_u850     , ipsl_cm5a_lr_jet_loc_trend_u850     , ipsl_cm5a_lr_jet_loc_trend_30_u850      ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850.cdf');
[ ipsl_cm5a_lr_time_year_u850_e2  , ipsl_cm5a_lr_jet_DJF_u850_e2  , ipsl_cm5a_lr_lat_jet_DJF_u850_e2  , ipsl_cm5a_lr_jet_trend_u850_e2  , ipsl_cm5a_lr_jet_trend_30_u850_e2  , ipsl_cm5a_lr_jet_loc_trend_u850_e2  , ipsl_cm5a_lr_jet_loc_trend_30_u850_e2   ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850_r2i1p1.cdf');
[ ipsl_cm5a_lr_time_year_u850_e3  , ipsl_cm5a_lr_jet_DJF_u850_e3  , ipsl_cm5a_lr_lat_jet_DJF_u850_e3  , ipsl_cm5a_lr_jet_trend_u850_e3  , ipsl_cm5a_lr_jet_trend_30_u850_e3  , ipsl_cm5a_lr_jet_loc_trend_u850_e3  , ipsl_cm5a_lr_jet_loc_trend_30_u850_e3   ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850_r3i1p1.cdf');
[ ipsl_cm5a_lr_time_year_u850_e4  , ipsl_cm5a_lr_jet_DJF_u850_e4  , ipsl_cm5a_lr_lat_jet_DJF_u850_e4  , ipsl_cm5a_lr_jet_trend_u850_e4  , ipsl_cm5a_lr_jet_trend_30_u850_e4  , ipsl_cm5a_lr_jet_loc_trend_u850_e4  , ipsl_cm5a_lr_jet_loc_trend_30_u850_e4   ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850_r4i1p1.cdf');
[ ipsl_cm5a_lr_time_year_u850_e5  , ipsl_cm5a_lr_jet_DJF_u850_e5  , ipsl_cm5a_lr_lat_jet_DJF_u850_e5  , ipsl_cm5a_lr_jet_trend_u850_e5  , ipsl_cm5a_lr_jet_trend_30_u850_e5  , ipsl_cm5a_lr_jet_loc_trend_u850_e5  , ipsl_cm5a_lr_jet_loc_trend_30_u850_e5   ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850_r5i1p1.cdf');
[ ipsl_cm5a_lr_time_year_u850_e6  , ipsl_cm5a_lr_jet_DJF_u850_e6  , ipsl_cm5a_lr_lat_jet_DJF_u850_e6  , ipsl_cm5a_lr_jet_trend_u850_e6  , ipsl_cm5a_lr_jet_trend_30_u850_e6  , ipsl_cm5a_lr_jet_loc_trend_u850_e6  , ipsl_cm5a_lr_jet_loc_trend_30_u850_e6   ] = IPSL_CM5a_LR_historical_u850('IPSL_CM5a_LR_historical_u850_r6i1p1.cdf');

% IPSL CM5a MR
[ ipsl_cm5a_mr_time_year_u850   , ipsl_cm5a_mr_jet_DJF_u850   , ipsl_cm5a_mr_lat_jet_DJF_u850   , ipsl_cm5a_mr_jet_trend_u850   , ipsl_cm5a_mr_jet_trend_30_u850   , ipsl_cm5a_mr_jet_loc_trend_u850   , ipsl_cm5a_mr_jet_loc_trend_30_u850    ] = IPSL_CM5a_MR_historical_u850('IPSL_CM5a_MR_historical_u850.cdf');
[ ipsl_cm5a_mr_time_year_u850_e2, ipsl_cm5a_mr_jet_DJF_u850_e2, ipsl_cm5a_mr_lat_jet_DJF_u850_e2, ipsl_cm5a_mr_jet_trend_u850_e2, ipsl_cm5a_mr_jet_trend_30_u850_e2, ipsl_cm5a_mr_jet_loc_trend_u850_e2, ipsl_cm5a_mr_jet_loc_trend_30_u850_e2 ] = IPSL_CM5a_MR_historical_u850('IPSL_CM5a_MR_historical_u850_r2i1p1.cdf');
[ ipsl_cm5a_mr_time_year_u850_e3, ipsl_cm5a_mr_jet_DJF_u850_e3, ipsl_cm5a_mr_lat_jet_DJF_u850_e3, ipsl_cm5a_mr_jet_trend_u850_e3, ipsl_cm5a_mr_jet_trend_30_u850_e3, ipsl_cm5a_mr_jet_loc_trend_u850_e3, ipsl_cm5a_mr_jet_loc_trend_30_u850_e3 ] = IPSL_CM5a_MR_historical_u850('IPSL_CM5a_MR_historical_u850_r3i1p1.cdf');


[ ipsl_cm5b_lr_time_year_u850  , ipsl_cm5b_lr_jet_DJF_u850  , ipsl_cm5b_lr_lat_jet_DJF_u850  , ipsl_cm5b_lr_jet_trend_u850  , ipsl_cm5b_lr_jet_trend_30_u850  , ipsl_cm5b_lr_jet_loc_trend_u850  , ipsl_cm5b_lr_jet_loc_trend_30_u850   ] = IPSL_CM5b_LR_historical_u850('IPSL_CM5b_LR_historical_u850.cdf');

% MIROC ESM
[ miroc_esm_time_year_u850     , miroc_esm_jet_DJF_u850     , miroc_esm_lat_jet_DJF_u850     , miroc_esm_jet_trend_u850     , miroc_esm_jet_trend_30_u850     , miroc_esm_jet_loc_trend_u850     , miroc_esm_jet_loc_trend_30_u850      ] = MIROC_ESM_historical_u850('MIROC_ESM_historical_u850.cdf');
[ miroc_esm_time_year_u850_e2  , miroc_esm_jet_DJF_u850_e2  , miroc_esm_lat_jet_DJF_u850_e2  , miroc_esm_jet_trend_u850_e2  , miroc_esm_jet_trend_30_u850_e2  , miroc_esm_jet_loc_trend_u850_e2  , miroc_esm_jet_loc_trend_30_u850_e2   ] = MIROC_ESM_historical_u850('MIROC_ESM_historical_u850_r2i1p1.cdf');
[ miroc_esm_time_year_u850_e3  , miroc_esm_jet_DJF_u850_e3  , miroc_esm_lat_jet_DJF_u850_e3  , miroc_esm_jet_trend_u850_e3  , miroc_esm_jet_trend_30_u850_e3  , miroc_esm_jet_loc_trend_u850_e3  , miroc_esm_jet_loc_trend_30_u850_e3   ] = MIROC_ESM_historical_u850('MIROC_ESM_historical_u850_r3i1p1.cdf');


[ miroc_esm_chem_time_year_u850, miroc_esm_chem_jet_DJF_u850, miroc_esm_chem_lat_jet_DJF_u850, miroc_esm_chem_jet_trend_u850, miroc_esm_chem_jet_trend_30_u850, miroc_esm_chem_jet_loc_trend_u850, miroc_esm_chem_jet_loc_trend_30_u850 ] = MIROC_ESM_CHEM_historical_u850('MIROC_ESM_CHEM_historical_u850.cdf');

% MIROC5
[ miroc5_time_year_u850           , miroc5_jet_DJF_u850           , miroc5_lat_jet_DJF_u850           , miroc5_jet_trend_u850           , miroc5_jet_trend_30_u850           , miroc5_jet_loc_trend_u850           , miroc5_jet_loc_trend_30_u850            ] = MIROC5_historical_u850('MIROC5_historical_u850.cdf');
[ miroc5_time_year_u850_e2        , miroc5_jet_DJF_u850_e2        , miroc5_lat_jet_DJF_u850_e2        , miroc5_jet_trend_u850_e2        , miroc5_jet_trend_30_u850_e2        , miroc5_jet_loc_trend_u850_e2        , miroc5_jet_loc_trend_30_u850_e2         ] = MIROC5_historical_u850('MIROC5_historical_u850_r2i1p1.cdf');
[ miroc5_time_year_u850_e3        , miroc5_jet_DJF_u850_e3        , miroc5_lat_jet_DJF_u850_e3        , miroc5_jet_trend_u850_e3        , miroc5_jet_trend_30_u850_e3        , miroc5_jet_loc_trend_u850_e3        , miroc5_jet_loc_trend_30_u850_e3         ] = MIROC5_historical_u850('MIROC5_historical_u850_r3i1p1.cdf');
[ miroc5_time_year_u850_e4        , miroc5_jet_DJF_u850_e4        , miroc5_lat_jet_DJF_u850_e4        , miroc5_jet_trend_u850_e4        , miroc5_jet_trend_30_u850_e4        , miroc5_jet_loc_trend_u850_e4        , miroc5_jet_loc_trend_30_u850_e4         ] = MIROC5_historical_u850('MIROC5_historical_u850_r4i1p1.cdf');
[ miroc5_time_year_u850_e5        , miroc5_jet_DJF_u850_e5        , miroc5_lat_jet_DJF_u850_e5        , miroc5_jet_trend_u850_e5        , miroc5_jet_trend_30_u850_e5        , miroc5_jet_loc_trend_u850_e5        , miroc5_jet_loc_trend_30_u850_e5         ] = MIROC5_historical_u850('MIROC5_historical_u850_r5i1p1.cdf');


% MPI ESM LR
[ mpi_esm_lr_time_year_u850       , mpi_esm_lr_jet_DJF_u850       , mpi_esm_lr_lat_jet_DJF_u850       , mpi_esm_lr_jet_trend_u850       , mpi_esm_lr_jet_trend_30_u850       , mpi_esm_lr_jet_loc_trend_u850       , mpi_esm_lr_jet_loc_trend_30_u850        ] = MPI_ESM_LR_historical_u850('MPI_ESM_LR_historical_u850.cdf');
[ mpi_esm_lr_time_year_u850_e2    , mpi_esm_lr_jet_DJF_u850_e2    , mpi_esm_lr_lat_jet_DJF_u850_e2    , mpi_esm_lr_jet_trend_u850_e2    , mpi_esm_lr_jet_trend_30_u850_e2    , mpi_esm_lr_jet_loc_trend_u850_e2    , mpi_esm_lr_jet_loc_trend_30_u850_e2     ] = MPI_ESM_LR_historical_u850('MPI_ESM_LR_historical_u850_r2i1p1.cdf');
[ mpi_esm_lr_time_year_u850_e3    , mpi_esm_lr_jet_DJF_u850_e3    , mpi_esm_lr_lat_jet_DJF_u850_e3    , mpi_esm_lr_jet_trend_u850_e3    , mpi_esm_lr_jet_trend_30_u850_e3    , mpi_esm_lr_jet_loc_trend_u850_e3    , mpi_esm_lr_jet_loc_trend_30_u850_e3     ] = MPI_ESM_LR_historical_u850('MPI_ESM_LR_historical_u850_r3i1p1.cdf');


% MPI ESM MR
[ mpi_esm_mr_time_year_u850       , mpi_esm_mr_jet_DJF_u850       , mpi_esm_mr_lat_jet_DJF_u850       , mpi_esm_mr_jet_trend_u850       , mpi_esm_mr_jet_trend_30_u850       , mpi_esm_mr_jet_loc_trend_u850       , mpi_esm_mr_jet_loc_trend_30_u850        ] = MPI_ESM_MR_historical_u850('MPI_ESM_MR_historical_u850.cdf');
[ mpi_esm_mr_time_year_u850_e2    , mpi_esm_mr_jet_DJF_u850_e2    , mpi_esm_mr_lat_jet_DJF_u850_e2    , mpi_esm_mr_jet_trend_u850_e2    , mpi_esm_mr_jet_trend_30_u850_e2    , mpi_esm_mr_jet_loc_trend_u850_e2    , mpi_esm_mr_jet_loc_trend_30_u850_e2     ] = MPI_ESM_MR_historical_u850('MPI_ESM_MR_historical_u850_r2i1p1.cdf');
[ mpi_esm_mr_time_year_u850_e3    , mpi_esm_mr_jet_DJF_u850_e3    , mpi_esm_mr_lat_jet_DJF_u850_e3    , mpi_esm_mr_jet_trend_u850_e3    , mpi_esm_mr_jet_trend_30_u850_e3    , mpi_esm_mr_jet_loc_trend_u850_e3    , mpi_esm_mr_jet_loc_trend_30_u850_e3     ] = MPI_ESM_MR_historical_u850('MPI_ESM_MR_historical_u850_r3i1p1.cdf');

% MRI CGCM3
[ mri_cgcm3_time_year_u850           , mri_cgcm3_jet_DJF_u850           , mri_cgcm3_lat_jet_DJF_u850           , mri_cgcm3_jet_trend_u850           , mri_cgcm3_jet_trend_30_u850           , mri_cgcm3_jet_loc_trend_u850           , mri_cgcm3_jet_loc_trend_30_u850            ] = MRI_CGCM3_historical_u850('MRI_CGCM3_historical_u850.cdf');
[ mri_cgcm3_time_year_u850_e2        , mri_cgcm3_jet_DJF_u850_e2        , mri_cgcm3_lat_jet_DJF_u850_e2        , mri_cgcm3_jet_trend_u850_e2        , mri_cgcm3_jet_trend_30_u850_e2        , mri_cgcm3_jet_loc_trend_u850_e2        , mri_cgcm3_jet_loc_trend_30_u850_e2         ] = MRI_CGCM3_historical_u850('MRI_CGCM3_historical_u850_r2i1p1.cdf');
[ mri_cgcm3_time_year_u850_e3        , mri_cgcm3_jet_DJF_u850_e3        , mri_cgcm3_lat_jet_DJF_u850_e3        , mri_cgcm3_jet_trend_u850_e3        , mri_cgcm3_jet_trend_30_u850_e3        , mri_cgcm3_jet_loc_trend_u850_e3        , mri_cgcm3_jet_loc_trend_30_u850_e3         ] = MRI_CGCM3_historical_u850('MRI_CGCM3_historical_u850_r3i1p1.cdf');



% NOR ESM1m M
[ nor_esm1m_m_time_year_u850       , nor_esm1m_m_jet_DJF_u850       , nor_esm1m_m_lat_jet_DJF_u850       , nor_esm1m_m_jet_trend_u850       , nor_esm1m_m_jet_trend_30_u850       , nor_esm1m_m_jet_loc_trend_u850       , nor_esm1m_m_jet_loc_trend_30_u850        ] = NOR_ESM1m_M_historical_u850('NOR_ESM1m_M_historical_u850.cdf');
[ nor_esm1m_m_time_year_u850_e2    , nor_esm1m_m_jet_DJF_u850_e2    , nor_esm1m_m_lat_jet_DJF_u850_e2    , nor_esm1m_m_jet_trend_u850_e2    , nor_esm1m_m_jet_trend_30_u850_e2    , nor_esm1m_m_jet_loc_trend_u850_e2    , nor_esm1m_m_jet_loc_trend_30_u850_e2     ] = NOR_ESM1m_M_historical_u850('NOR_ESM1m_M_historical_u850_r2i1p1.cdf');
[ nor_esm1m_m_time_year_u850_e3    , nor_esm1m_m_jet_DJF_u850_e3    , nor_esm1m_m_lat_jet_DJF_u850_e3    , nor_esm1m_m_jet_trend_u850_e3    , nor_esm1m_m_jet_trend_30_u850_e3    , nor_esm1m_m_jet_loc_trend_u850_e3    , nor_esm1m_m_jet_loc_trend_30_u850_e3     ] = NOR_ESM1m_M_historical_u850('NOR_ESM1m_M_historical_u850_r3i1p1.cdf');


[ nor_esm1m_me_time_year_u850  , nor_esm1m_me_jet_DJF_u850  , nor_esm1m_me_lat_jet_DJF_u850  , nor_esm1m_me_jet_trend_u850  , nor_esm1m_me_jet_trend_30_u850  , nor_esm1m_me_jet_loc_trend_u850  , nor_esm1m_me_jet_loc_trend_30_u850   ] = NOR_ESM1m_ME_historical_u850('NOR_ESM1m_ME_historical_u850.cdf');



