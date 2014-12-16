%% Matlab script to run Historical 850mb wind functions 

addpath /data1/fesd1/jthom143/piControl_paper/HistoricalData
addpath /data1/fesd1/jthom143/piControl_paper/historical_surface_pressure_analysis
addpath /data1/fesd1/jthom143/piControl_paper/tools


% Run Matlab Functions 

%CanESM2
[ can_esm2_time_year_ps         , can_esm2_sam_DJF              , can_esm2_sam_trend_30         , ~ , ~, ~] = CanESM2_historical_ps('CanESM2_historical_r1i1p1_ps.cdf');
[ can_esm2_time_year_ps_e2      , can_esm2_sam_DJF_e2           , can_esm2_sam_trend_30_e2      , ~ , ~, ~] = CanESM2_historical_ps('CanESM2_historical_ps_r2i1p1.cdf');
[ can_esm2_time_year_ps_e3      , can_esm2_sam_DJF_e3           , can_esm2_sam_trend_30_e3      , ~ , ~, ~] = CanESM2_historical_ps('CanESM2_historical_ps_r3i1p1.cdf');
[ can_esm2_time_year_ps_e4      , can_esm2_sam_DJF_e4           , can_esm2_sam_trend_30_e4      , ~ , ~, ~] = CanESM2_historical_ps('CanESM2_historical_ps_r4i1p1.cdf');
[ can_esm2_time_year_ps_e5      , can_esm2_sam_DJF_e5           , can_esm2_sam_trend_30_e5      , ~ , ~, ~] = CanESM2_historical_ps('CanESM2_historical_ps_r5i1p1.cdf');

%CCSM4
[ ccsm4_time_year_ps            , ccsm4_sam_DJF                 , ccsm4_sam_trend_30            , ccsm4_sam_trend_30_30            , ~, ~] = CCSM4_historical_ps('CCSM4_historical_r1i1p1_ps.cdf');


% CNRM CM5  
[ cnrm_cm5_time_year_ps         , cnrm_cm5_sam_DJF         , cnrm_cm5_sam_trend_30         , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r1i1p1.cdf');
[ cnrm_cm5_time_year_ps_e2      , cnrm_cm5_sam_DJF_e2      , cnrm_cm5_sam_trend_30_e2      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r2i1p1.cdf');
[ cnrm_cm5_time_year_ps_e3      , cnrm_cm5_sam_DJF_e3      , cnrm_cm5_sam_trend_30_e3      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r3i1p1.cdf');
[ cnrm_cm5_time_year_ps_e4      , cnrm_cm5_sam_DJF_e4      , cnrm_cm5_sam_trend_30_e4      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r4i1p1.cdf');
[ cnrm_cm5_time_year_ps_e5      , cnrm_cm5_sam_DJF_e5      , cnrm_cm5_sam_trend_30_e5      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r5i1p1.cdf');
[ cnrm_cm5_time_year_ps_e6      , cnrm_cm5_sam_DJF_e6      , cnrm_cm5_sam_trend_30_e6      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r6i1p1.cdf');
[ cnrm_cm5_time_year_ps_e7      , cnrm_cm5_sam_DJF_e7      , cnrm_cm5_sam_trend_30_e7      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r7i1p1.cdf');
[ cnrm_cm5_time_year_ps_e8      , cnrm_cm5_sam_DJF_e8      , cnrm_cm5_sam_trend_30_e8      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r8i1p1.cdf');
[ cnrm_cm5_time_year_ps_e9      , cnrm_cm5_sam_DJF_e9      , cnrm_cm5_sam_trend_30_e9      , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r9i1p1.cdf');
%[ cnrm_cm5_time_year_ps_e10     , cnrm_cm5_sam_DJF_e10     , cnrm_cm5_sam_trend_30_e10     , ~ , ~, ~] = CNRM_CM5_historical_ps('CNRM_CM5_historical_ps_r10i1p1.cdf');


[ gfdl_esm2g_time_year_ps    , gfdl_esm2g_sam_DJF        , gfdl_esm2g_sam_trend_30    , ~    , ~, ~] = GFDL_ESM2G_historical_ps('GFDL_ESM2G_historical_r1i1p1_ps.cdf');
[ gfdl_esm2m_time_year_ps    , gfdl_esm2m_sam_DJF        , gfdl_esm2m_sam_trend_30    , ~    , ~, ~] = GFDL_ESM2M_historical_ps('GFDL_ESM2M_historical_r1i1p1_ps.cdf');


% IPSL CM5a LR
[ ipsl_cm5a_lr_time_year_ps     , ipsl_cm5a_lr_sam_DJF       , ipsl_cm5a_lr_sam_trend_30     , ~     , ~, ~] = IPSL_CM5a_LR_historical_ps('IPSL_CM5a_LR_historical_r1i1p1_ps.cdf');
[ ipsl_cm5a_lr_time_year_ps_e2  , ipsl_cm5a_lr_sam_DJF_e2    , ipsl_cm5a_lr_sam_trend_30_e2  , ~  , ~, ~] = IPSL_CM5a_LR_historical_ps('IPSL_CM5a_LR_historical_ps_r2i1p1.cdf');
[ ipsl_cm5a_lr_time_year_ps_e3  , ipsl_cm5a_lr_sam_DJF_e3    , ipsl_cm5a_lr_sam_trend_30_e3  , ~  , ~, ~] = IPSL_CM5a_LR_historical_ps('IPSL_CM5a_LR_historical_ps_r3i1p1.cdf');
[ ipsl_cm5a_lr_time_year_ps_e4  , ipsl_cm5a_lr_sam_DJF_e4    , ipsl_cm5a_lr_sam_trend_30_e4  , ~  , ~, ~] = IPSL_CM5a_LR_historical_ps('IPSL_CM5a_LR_historical_ps_r4i1p1.cdf');
[ ipsl_cm5a_lr_time_year_ps_e5  , ipsl_cm5a_lr_sam_DJF_e5    , ipsl_cm5a_lr_sam_trend_30_e5  , ~  , ~, ~] = IPSL_CM5a_LR_historical_ps('IPSL_CM5a_LR_historical_ps_r5i1p1.cdf');
[ ipsl_cm5a_lr_time_year_ps_e6  , ipsl_cm5a_lr_sam_DJF_e6    , ipsl_cm5a_lr_sam_trend_30_e6  , ~  , ~, ~] = IPSL_CM5a_LR_historical_ps('IPSL_CM5a_LR_historical_ps_r6i1p1.cdf');

% IPSL CM5a MR
[ ipsl_cm5a_mr_time_year_ps   , ipsl_cm5a_mr_sam_DJF   , ipsl_cm5a_mr_sam_trend_30   , ~   , ~, ~] = IPSL_CM5a_MR_historical_ps('IPSL_CM5a_MR_historical_r1i1p1_ps.cdf');
[ ipsl_cm5a_mr_time_year_ps_e2, ipsl_cm5a_mr_sam_DJF_e2, ipsl_cm5a_mr_sam_trend_30_e2, ~, ~, ~] = IPSL_CM5a_MR_historical_ps('IPSL_CM5a_MR_historical_ps_r2i1p1.cdf');
[ ipsl_cm5a_mr_time_year_ps_e3, ipsl_cm5a_mr_sam_DJF_e3, ipsl_cm5a_mr_sam_trend_30_e3, ~, ~, ~] = IPSL_CM5a_MR_historical_ps('IPSL_CM5a_MR_historical_ps_r3i1p1.cdf');


[ ipsl_cm5b_lr_time_year_ps  , ipsl_cm5b_lr_sam_DJF    , ipsl_cm5b_lr_sam_trend_30  , ~  , ~, ~] = IPSL_CM5b_LR_historical_ps('IPSL_CM5b_LR_historical_r1i1p1_ps.cdf');

% MIROC ESM
[ miroc_esm_time_year_ps     , miroc_esm_sam_DJF       , miroc_esm_sam_trend_30   , ~     , ~, ~] = MIROC_ESM_historical_ps('MIROC_ESM_historical_r1i1p1_ps.cdf');
[ miroc_esm_time_year_ps_e2  , miroc_esm_sam_DJF_e2    , miroc_esm_sam_trend_30_e2, ~  , ~, ~] = MIROC_ESM_historical_ps('MIROC_ESM_historical_ps_r2i1p1.cdf');
[ miroc_esm_time_year_ps_e3  , miroc_esm_sam_DJF_e3    , miroc_esm_sam_trend_30_e3, ~  , ~, ~] = MIROC_ESM_historical_ps('MIROC_ESM_historical_ps_r3i1p1.cdf');


[ miroc_esm_chem_time_year_ps, miroc_esm_chem_sam_DJF, miroc_esm_chem_sam_trend_30, ~, ~, ~] = MIROC_ESM_CHEM_historical_ps('MIROC_ESM_CHEM_historical_r1i1p1_ps.cdf');

% MIROC5
[ miroc5_time_year_ps           , miroc5_sam_DJF                   , miroc5_sam_trend_30           , ~           , ~, ~] = MIROC5_historical_ps('MIROC5_historical_r1i1p1_ps.cdf');
[ miroc5_time_year_ps_e2        , miroc5_sam_DJF_e2                , miroc5_sam_trend_30_e2        , ~        , ~, ~] = MIROC5_historical_ps('MIROC5_historical_ps_r2i1p1.cdf');
[ miroc5_time_year_ps_e3        , miroc5_sam_DJF_e3                , miroc5_sam_trend_30_e3        , ~        , ~, ~] = MIROC5_historical_ps('MIROC5_historical_ps_r3i1p1.cdf');
[ miroc5_time_year_ps_e4        , miroc5_sam_DJF_e4                , miroc5_sam_trend_30_e4        , ~        , ~, ~] = MIROC5_historical_ps('MIROC5_historical_ps_r4i1p1.cdf');
[ miroc5_time_year_ps_e5        , miroc5_sam_DJF_e5                , miroc5_sam_trend_30_e5        , ~        , ~, ~] = MIROC5_historical_ps('MIROC5_historical_ps_r5i1p1.cdf');


% MPI ESM LR
[ mpi_esm_lr_time_year_ps       , mpi_esm_lr_sam_DJF           , mpi_esm_lr_sam_trend_30       , ~       , ~, ~] = MPI_ESM_LR_historical_ps('MPI_ESM_LR_historical_r1i1p1_ps.cdf');
[ mpi_esm_lr_time_year_ps_e2    , mpi_esm_lr_sam_DJF_e2        , mpi_esm_lr_sam_trend_30_e2    , ~    , ~, ~] = MPI_ESM_LR_historical_ps('MPI_ESM_LR_historical_ps_r2i1p1.cdf');
[ mpi_esm_lr_time_year_ps_e3    , mpi_esm_lr_sam_DJF_e3        , mpi_esm_lr_sam_trend_30_e3    , ~    , ~, ~] = MPI_ESM_LR_historical_ps('MPI_ESM_LR_historical_ps_r3i1p1.cdf');


% MPI ESM MR
[ mpi_esm_mr_time_year_ps       , mpi_esm_mr_sam_DJF           , mpi_esm_mr_sam_trend_30       , ~    , ~, ~] = MPI_ESM_MR_historical_ps('MPI_ESM_MR_historical_r1i1p1_ps.cdf');
[ mpi_esm_mr_time_year_ps_e2    , mpi_esm_mr_sam_DJF_e2        , mpi_esm_mr_sam_trend_30_e2    , ~    , ~, ~] = MPI_ESM_MR_historical_ps('MPI_ESM_MR_historical_ps_r2i1p1.cdf');
[ mpi_esm_mr_time_year_ps_e3    , mpi_esm_mr_sam_DJF_e3        , mpi_esm_mr_sam_trend_30_e3    , ~    , ~, ~] = MPI_ESM_MR_historical_ps('MPI_ESM_MR_historical_ps_r3i1p1.cdf');

% MRI CGCM3
[ mri_cgcm3_time_year_ps           , mri_cgcm3_sam_DJF                   , mri_cgcm3_sam_trend_30           , ~           , ~, ~] = MRI_CGCM3_historical_ps('MRI_CGCM3_historical_r1i1p1_ps.cdf');
[ mri_cgcm3_time_year_ps_e2        , mri_cgcm3_sam_DJF_e2                , mri_cgcm3_sam_trend_30_e2        , ~        , ~, ~] = MRI_CGCM3_historical_ps('MRI_CGCM3_historical_ps_r2i1p1.cdf');
[ mri_cgcm3_time_year_ps_e3        , mri_cgcm3_sam_DJF_e3                , mri_cgcm3_sam_trend_30_e3        , ~        , ~, ~] = MRI_CGCM3_historical_ps('MRI_CGCM3_historical_ps_r3i1p1.cdf');



% NOR ESM1m M
[ nor_esm1m_m_time_year_ps       , nor_esm1m_m_sam_DJF           , nor_esm1m_m_sam_trend_30       , ~  , ~, ~] = NOR_ESM1m_M_historical_ps('NOR_ESM1m_M_historical_r1i1p1_ps.cdf');
[ nor_esm1m_m_time_year_ps_e2    , nor_esm1m_m_sam_DJF_e2        , nor_esm1m_m_sam_trend_30_e2    , ~  , ~, ~] = NOR_ESM1m_M_historical_ps('NOR_ESM1m_M_historical_ps_r2i1p1.cdf');
[ nor_esm1m_m_time_year_ps_e3    , nor_esm1m_m_sam_DJF_e3        , nor_esm1m_m_sam_trend_30_e3    , ~  , ~, ~] = NOR_ESM1m_M_historical_ps('NOR_ESM1m_M_historical_ps_r3i1p1.cdf');


[ nor_esm1m_me_time_year_ps  , nor_esm1m_me_sam_DJF   , nor_esm1m_me_sam_trend_30                 , ~  , ~, ~] = NOR_ESM1m_ME_historical_ps('NOR_ESM1m_ME_historical_r1i1p1_ps.cdf');



