%% Matlab script to run Historical 850mb wind functions 

% Run Matlab Functions 
[ can_esm2_time_year  , can_esm2_jet_DJF  , can_esm2_lat_jet_DJF  , can_esm2_jet_trend  , can_esm2_jet_trend_30  , can_esm2_jet_loc_trend  , can_esm2_jet_loc_trend_30   ] = CanESM2_historical_u850;
[ cnrm_cm5_time_year  , cnrm_cm5_jet_DJF  , cnrm_cm5_lat_jet_DJF  , cnrm_cm5_jet_trend  , cnrm_cm5_jet_trend_30  , cnrm_cm5_jet_loc_trend  , cnrm_cm5_jet_loc_trend_30   ] = CNRM_CM5_historical_u850;
[ cnrm_cm52_time_year , cnrm_cm52_jet_DJF , cnrm_cm52_lat_jet_DJF , cnrm_cm52_jet_trend , cnrm_cm52_jet_trend_30 , cnrm_cm52_jet_loc_trend , cnrm_cm52_jet_loc_trend_30  ] = CNRM_CM52_historical_u850;
[ gfdl_esm2g_time_year, gfdl_esm2g_jet_DJF, gfdl_esm2g_lat_jet_DJF, gfdl_esm2g_jet_trend, gfdl_esm2g_jet_trend_30, gfdl_esm2g_jet_loc_trend, gfdl_esm2g_jet_loc_trend_30 ] = GFDL_ESM2G_historical_u850;
[ gfdl_esm2m_time_year, gfdl_esm2m_jet_DJF, gfdl_esm2m_lat_jet_DJF, gfdl_esm2m_jet_trend, gfdl_esm2m_jet_trend_30, gfdl_esm2m_jet_loc_trend, gfdl_esm2m_jet_loc_trend_30 ] = GFDL_ESM2M_historical_u850;