%% Matlab script to run Historical 850mb wind functions 

% Run Matlab Functions 
[ can_esm2_time_year_u850  , can_esm2_jet_DJF_u850  , can_esm2_lat_jet_DJF_u850  , can_esm2_jet_trend_u850  , can_esm2_jet_trend_30_u850  , can_esm2_jet_loc_trend_u850  , can_esm2_jet_loc_trend_30_u850   ] = CanESM2_historical_u850;
[ cnrm_cm5_time_year_u850  , cnrm_cm5_jet_DJF_u850  , cnrm_cm5_lat_jet_DJF_u850  , cnrm_cm5_jet_trend_u850  , cnrm_cm5_jet_trend_30_u850  , cnrm_cm5_jet_loc_trend_u850  , cnrm_cm5_jet_loc_trend_30_u850   ] = CNRM_CM5_historical_u850;
[ gfdl_esm2m_time_year_u850, gfdl_esm2m_jet_DJF_u850, gfdl_esm2m_lat_jet_DJF_u850, gfdl_esm2m_jet_trend_u850, gfdl_esm2m_jet_trend_30_u850, gfdl_esm2m_jet_loc_trend_u850, gfdl_esm2m_jet_loc_trend_30_u850 ] = GFDL_ESM2M_historical_u850;
[ mpi_esm_lr_time_year_u850, mpi_esm_lr_jet_DJF_u850, mpi_esm_lr_lat_jet_DJF_u850, mpi_esm_lr_jet_trend_u850, mpi_esm_lr_jet_trend_30_u850, mpi_esm_lr_jet_loc_trend_u850, mpi_esm_lr_jet_loc_trend_30_u850 ] = MPI_ESM_LR_historical_u850;



