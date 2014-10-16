% Code to create historical run sam timeseries and compare historical and
%  pre-industrial sam pdfs for each model

%% Add Paths
addpath /home/jthom143/Tools/Functions
addpath /data1/fesd1/jthom143/piControl_paper/historical_surface_pressure_analysis


%% CanESM2

% Run historical run function 
[ can_esm2_time_year      , can_esm2_SAM_unnormalized      , can_esm2_sam_trend_30      , can_esm2_sam_trend      , can_esm2_begin_time      , can_esm2_end_time      ] = CanESM2_historical_ps;
[ ccsm4_time_year         , ccsm4_SAM_unnormalized         , ccsm4_sam_trend_30         , ccsm4_sam_trend         , ccsm4_begin_time         , ccsm4_end_time         ] = CCSM4_historical_ps;
[ cmcc_cesm_time_year     , cmcc_cesm_SAM_unnormalized     , cmcc_cesm_sam_trend_30     , cmcc_cesm_sam_trend     , cmcc_cesm_begin_time     , cmcc_cesm_end_time     ] = CMCC_CESM_historical_ps; 
[ cmcc_cm_time_year       , cmcc_cm_SAM_unnormalized       , cmcc_cm_sam_trend_30       , cmcc_cm_sam_trend       , cmcc_cm_begin_time       , cmcc_cm_end_time       ] = CMCC_CM_historical_ps;
[ cmcc_cms_time_year      , cmcc_cms_SAM_unnormalized      , cmcc_cms_sam_trend_30      , cmcc_cms_sam_trend      , cmcc_cms_begin_time      , cmcc_cms_end_time      ] = CMCC_CMs_historical_ps;
[ cnrm_cm5_time_year      , cnrm_cm5_SAM_unnormalized      , cnrm_cm5_sam_trend_30      , cnrm_cm5_sam_trend      , cnrm_cm5_begin_time      , cnrm_cm5_end_time      ] = CNRM_CM5_historical_ps;
[ cnrm_cm52_time_year     , cnrm_cm52_SAM_unnormalized     , cnrm_cm52_sam_trend_30     , cnrm_cm52_sam_trend     , cnrm_cm52_begin_time     , cnrm_cm52_end_time     ] = CNRM_CM52_historical_ps;
[ gfdl_esm2g_time_year    , gfdl_esm2g_SAM_unnormalized    , gfdl_esm2g_sam_trend_30    , gfdl_esm2g_sam_trend    , gfdl_esm2g_begin_time    , gfdl_esm2g_end_time    ] = GFDL_ESM2G_historical_ps;
[ gfdl_esm2m_time_year    , gfdl_esm2m_SAM_unnormalized    , gfdl_esm2m_sam_trend_30    , gfdl_esm2m_sam_trend    , gfdl_esm2m_begin_time    , gfdl_esm2m_end_time    ] = GFDL_ESM2M_historical_ps;
[ ipsl_cm5a_lr_time_year  , ipsl_cm5a_lr_SAM_unnormalized  , ipsl_cm5a_lr_sam_trend_30  , ipsl_cm5a_lr_sam_trend  , ipsl_cm5a_lr_begin_time  , ipsl_cm5a_lr_end_time  ] = IPSL_CM5a_LR_historical_ps;
[ ipsl_cm5a_mr_time_year  , ipsl_cm5a_mr_SAM_unnormalized  , ipsl_cm5a_mr_sam_trend_30  , ipsl_cm5a_mr_sam_trend  , ipsl_cm5a_mr_begin_time  , ipsl_cm5a_mr_end_time  ] = IPSL_CM5a_MR_historical_ps;
[ ipsl_cm5b_lr_time_year  , ipsl_cm5b_lr_SAM_unnormalized  , ipsl_cm5b_lr_sam_trend_30  , ipsl_cm5b_lr_sam_trend  , ipsl_cm5b_lr_begin_time  , ipsl_cm5b_lr_end_time  ] = IPSL_CM5b_LR_historical_ps;
[ miroc_esm_time_year     , miroc_esm_SAM_unnormalized     , miroc_esm_sam_trend_30     , miroc_esm_sam_trend     , miroc_esm_begin_time     , miroc_esm_end_time     ] = MIROC_ESM_historical_ps;
[ miroc_esm_chem_time_year, miroc_esm_chem_SAM_unnormalized, miroc_esm_chem_sam_trend_30, miroc_esm_chem_sam_trend, miroc_esm_chem_begin_time, miroc_esm_chem_end_time] = MIROC_ESM_CHEM_historical_ps;
[ miroc5_time_year        , miroc5_SAM_unnormalized        , miroc5_sam_trend_30        , miroc5_sam_trend        , miroc5_begin_time        , miroc5_end_time        ] = MIROC5_historical_ps;
[ mpi_esm_lr_time_year    , mpi_esm_lr_SAM_unnormalized    , mpi_esm_lr_sam_trend_30    , mpi_esm_lr_sam_trend    , mpi_esm_lr_begin_time    , mpi_esm_lr_end_time    ] = MPI_ESM_LR_historical_ps;
[ mpi_esm_mr_time_year    , mpi_esm_mr_SAM_unnormalized    , mpi_esm_mr_sam_trend_30    , mpi_esm_mr_sam_trend    , mpi_esm_mr_begin_time    , mpi_esm_mr_end_time    ] = MPI_ESM_MR_historical_ps;
[ mri_cgcm3_time_year     , mri_cgcm3_SAM_unnormalized     , mri_cgcm3_sam_trend_30     , mri_cgcm3_sam_trend     , mri_cgcm3_begin_time     , mri_cgcm3_end_time     ] = MRI_CGCM3_historical_ps;
[ nor_esm1m_me_time_year  , nor_esm1m_me_SAM_unnormalized  , nor_esm1m_me_sam_trend_30  , nor_esm1m_me_sam_trend  , nor_esm1m_me_begin_time  , nor_esm1m_me_end_time  ] = NOR_ESM1m_ME_historical_ps;
