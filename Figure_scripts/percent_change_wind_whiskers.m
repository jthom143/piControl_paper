%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate Percent Change Trends and make box and whisker plots
% Nov 19, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Calculate Percent Change: 

% Jet Magnitude piControl
can_esm2_percent_change_jet       = (can_esm2_jet_trends_yrs)      ./(nanmean(can_esm2_jet_DJF)) ;
ccsm4_percent_change_jet          = (ccsm4_jet_trends_yrs)         ./(nanmean(ccsm4_jet_DJF)) ;
cnrm_cm5_percent_change_jet       = (cnrm_cm5_jet_trends_yrs)      ./(nanmean(cnrm_cm5_jet_DJF)) ;
gfdl_esm2g_percent_change_jet     = (gfdl_esm2g_jet_trends_yrs)    ./(nanmean(gfdl_esm2g_jet_DJF)) ;
gfdl_esm2m_percent_change_jet     = (gfdl_esm2m_jet_trends_yrs)    ./(nanmean(gfdl_esm2m_jet_DJF)) ;
ipsl_cm5a_lr_percent_change_jet   = (ipsl_cm5a_lr_jet_trends_yrs)  ./(nanmean(ipsl_cm5a_lr_jet_DJF)) ;
ipsl_cm5a_mr_percent_change_jet   = (ipsl_cm5a_mr_jet_trends_yrs)  ./(nanmean(ipsl_cm5a_mr_jet_DJF)) ;
ipsl_cm5b_lr_percent_change_jet   = (ipsl_cm5b_lr_jet_trends_yrs)  ./(nanmean(ipsl_cm5b_lr_jet_DJF)) ;
miroc_esm_percent_change_jet      = (miroc_esm_jet_trends_yrs)     ./(nanmean(miroc_esm_jet_DJF)) ;
miroc_esm_chem_percent_change_jet = (miroc_esm_chem_jet_trends_yrs)./(nanmean(miroc_esm_chem_jet_DJF)) ;
miroc5_percent_change_jet         = (miroc5_jet_trends_yrs)        ./(nanmean(miroc5_jet_DJF)) ;
mpi_esm_lr_percent_change_jet     = (mpi_esm_lr_jet_trends_yrs)    ./(nanmean(mpi_esm_lr_jet_DJF)) ;
mpi_esm_mr_percent_change_jet     = (mpi_esm_mr_jet_trends_yrs)    ./(nanmean(mpi_esm_mr_jet_DJF)) ;
mri_cgcm3_percent_change_jet      = (mri_cgcm3_jet_trends_yrs)     ./(nanmean(mri_cgcm3_jet_DJF)) ;
nor_esm1m_m_percent_change_jet    = (nor_esm1m_m_jet_trends_yrs)   ./(nanmean(nor_esm1m_m_jet_DJF)) ;
nor_esm1m_me_percent_change_jet   = (nor_esm1m_me_jet_trends_yrs)  ./(nanmean(nor_esm1m_me_jet_DJF)) ;

% Jet Location piControl
can_esm2_percent_change_jet_loc       = (can_esm2_jet_loc_trends_yrs)      ./(nanmean(can_esm2_jet_loc_DJF)) ;
ccsm4_percent_change_jet_loc          = (ccsm4_jet_loc_trends_yrs)         ./(nanmean(ccsm4_jet_loc_DJF)) ;
cnrm_cm5_percent_change_jet_loc       = (cnrm_cm5_jet_loc_trends_yrs)      ./(nanmean(cnrm_cm5_jet_loc_DJF)) ;
gfdl_esm2g_percent_change_jet_loc     = (gfdl_esm2g_jet_loc_trends_yrs)    ./(nanmean(gfdl_esm2g_jet_loc_DJF)) ;
gfdl_esm2m_percent_change_jet_loc     = (gfdl_esm2m_jet_loc_trends_yrs)    ./(nanmean(gfdl_esm2m_jet_loc_DJF)) ;
ipsl_cm5a_lr_percent_change_jet_loc   = (ipsl_cm5a_lr_jet_loc_trends_yrs)  ./(nanmean(ipsl_cm5a_lr_jet_loc_DJF)) ;
ipsl_cm5a_mr_percent_change_jet_loc   = (ipsl_cm5a_mr_jet_loc_trends_yrs)  ./(nanmean(ipsl_cm5a_mr_jet_loc_DJF)) ;
ipsl_cm5b_lr_percent_change_jet_loc   = (ipsl_cm5b_lr_jet_loc_trends_yrs)  ./(nanmean(ipsl_cm5b_lr_jet_loc_DJF)) ;
miroc_esm_percent_change_jet_loc      = (miroc_esm_jet_loc_trends_yrs)     ./(nanmean(miroc_esm_jet_loc_DJF)) ;
miroc_esm_chem_percent_change_jet_loc = (miroc_esm_chem_jet_loc_trends_yrs)./(nanmean(miroc_esm_chem_jet_loc_DJF)) ;
miroc5_percent_change_jet_loc         = (miroc5_jet_loc_trends_yrs)        ./(nanmean(miroc5_jet_loc_DJF)) ;
mpi_esm_lr_percent_change_jet_loc     = (mpi_esm_lr_jet_loc_trends_yrs)    ./(nanmean(mpi_esm_lr_jet_loc_DJF)) ;
mpi_esm_mr_percent_change_jet_loc     = (mpi_esm_mr_jet_loc_trends_yrs)    ./(nanmean(mpi_esm_mr_jet_loc_DJF)) ;
mri_cgcm3_percent_change_jet_loc      = (mri_cgcm3_jet_loc_trends_yrs)     ./(nanmean(mri_cgcm3_jet_loc_DJF)) ;
nor_esm1m_m_percent_change_jet_loc    = (nor_esm1m_m_jet_loc_trends_yrs)   ./(nanmean(nor_esm1m_m_jet_loc_DJF)) ;
nor_esm1m_me_percent_change_jet_loc   = (nor_esm1m_me_jet_loc_trends_yrs)  ./(nanmean(nor_esm1m_me_jet_loc_DJF)) ;

%% Ensemble Members Percent Change 

% Jet Magnitude Trends Ensemble Members
can_esm2_ensemble_trends     = [can_esm2_jet_trend_30_u850, can_esm2_jet_trend_30_u850_e2, can_esm2_jet_trend_30_u850_e3, can_esm2_jet_trend_30_u850_e4, can_esm2_jet_trend_30_u850_e5];
ccsm4_ensemble_trends        = [ccsm4_jet_trend_30_u850];
cnrm_cm5_ensemble_trends     = [cnrm_cm5_jet_trend_30_u850, cnrm_cm5_jet_trend_30_u850_e2, cnrm_cm5_jet_trend_30_u850_e3, cnrm_cm5_jet_trend_30_u850_e4, cnrm_cm5_jet_trend_30_u850_e5, cnrm_cm5_jet_trend_30_u850_e6, cnrm_cm5_jet_trend_30_u850_e7, cnrm_cm5_jet_trend_30_u850_e8, cnrm_cm5_jet_trend_30_u850_e9];
gfdl_esm2g_ensemble_trends   = [gfdl_esm2g_jet_trend_30_u850];
gfdl_esm2m_ensemble_trends   = [gfdl_esm2m_jet_trend_30_u850];
ipsl_cm5a_lr_ensemble_trends = [ipsl_cm5a_lr_jet_trend_30_u850, ipsl_cm5a_lr_jet_trend_30_u850_e2, ipsl_cm5a_lr_jet_trend_30_u850_e3, ipsl_cm5a_lr_jet_trend_30_u850_e4, ipsl_cm5a_lr_jet_trend_30_u850_e5, ipsl_cm5a_lr_jet_trend_30_u850_e6];
ipsl_cm5a_mr_ensemble_trends = [ipsl_cm5a_mr_jet_trend_30_u850, ipsl_cm5a_mr_jet_trend_30_u850_e2, ipsl_cm5a_mr_jet_trend_30_u850_e3];
ipsl_cm5b_lr_ensemble_trends = [ipsl_cm5b_lr_jet_trend_30_u850];
miroc_esm_ensemble_trends    = [miroc_esm_jet_trend_30_u850, miroc_esm_jet_trend_30_u850_e2, miroc_esm_jet_trend_30_u850_e3];
miroc_esm_chem_ensemble_trends = [miroc_esm_chem_jet_trend_30_u850];
miroc5_ensemble_trends       = [miroc5_jet_trend_30_u850, miroc5_jet_trend_30_u850_e2, miroc5_jet_trend_30_u850_e3, miroc5_jet_trend_30_u850_e4, miroc5_jet_trend_30_u850_e5];
mpi_esm_lr_ensemble_trends   = [mpi_esm_lr_jet_trend_30_u850, mpi_esm_lr_jet_trend_30_u850_e2, mpi_esm_lr_jet_trend_30_u850_e3];
mpi_esm_mr_ensemble_trends   = [mpi_esm_mr_jet_trend_30_u850, mpi_esm_mr_jet_trend_30_u850_e2, mpi_esm_mr_jet_trend_30_u850_e3];
mri_cgcm3_ensemble_trends    = [mri_cgcm3_jet_trend_30_u850, mri_cgcm3_jet_trend_30_u850_e2, mri_cgcm3_jet_trend_30_u850_e3];
nor_esm1m_m_ensemble_trends  = [nor_esm1m_m_jet_trend_30_u850, nor_esm1m_m_jet_trend_30_u850_e2, nor_esm1m_m_jet_trend_30_u850_e3];
nor_esm1m_me_ensemble_trends = [nor_esm1m_me_jet_trend_30_u850];

% Jet Location Trends Ensemble Members
can_esm2_ensemble_trends_loc     = [can_esm2_jet_loc_trend_30_u850, can_esm2_jet_loc_trend_30_u850_e2, can_esm2_jet_loc_trend_30_u850_e3, can_esm2_jet_loc_trend_30_u850_e4, can_esm2_jet_loc_trend_30_u850_e5];
ccsm4_ensemble_trends_loc        = [ccsm4_jet_loc_trend_30_u850];
cnrm_cm5_ensemble_trends_loc     = [cnrm_cm5_jet_loc_trend_30_u850, cnrm_cm5_jet_loc_trend_30_u850_e2, cnrm_cm5_jet_loc_trend_30_u850_e3, cnrm_cm5_jet_loc_trend_30_u850_e4, cnrm_cm5_jet_loc_trend_30_u850_e5, cnrm_cm5_jet_loc_trend_30_u850_e6, cnrm_cm5_jet_loc_trend_30_u850_e7, cnrm_cm5_jet_loc_trend_30_u850_e8, cnrm_cm5_jet_loc_trend_30_u850_e9];
gfdl_esm2g_ensemble_trends_loc   = [gfdl_esm2g_jet_loc_trend_30_u850];
gfdl_esm2m_ensemble_trends_loc   = [gfdl_esm2m_jet_loc_trend_30_u850];
ipsl_cm5a_lr_ensemble_trends_loc = [ipsl_cm5a_lr_jet_loc_trend_30_u850, ipsl_cm5a_lr_jet_loc_trend_30_u850_e2, ipsl_cm5a_lr_jet_loc_trend_30_u850_e3, ipsl_cm5a_lr_jet_loc_trend_30_u850_e4, ipsl_cm5a_lr_jet_loc_trend_30_u850_e5, ipsl_cm5a_lr_jet_loc_trend_30_u850_e6];
ipsl_cm5a_mr_ensemble_trends_loc = [ipsl_cm5a_mr_jet_loc_trend_30_u850, ipsl_cm5a_mr_jet_loc_trend_30_u850_e2, ipsl_cm5a_mr_jet_loc_trend_30_u850_e3];
ipsl_cm5b_lr_ensemble_trends_loc = [ipsl_cm5b_lr_jet_loc_trend_30_u850];
miroc_esm_ensemble_trends_loc    = [miroc_esm_jet_loc_trend_30_u850, miroc_esm_jet_loc_trend_30_u850_e2, miroc_esm_jet_loc_trend_30_u850_e3];
miroc5_ensemble_trends_loc       = [miroc5_jet_loc_trend_30_u850, miroc5_jet_loc_trend_30_u850_e2, miroc5_jet_loc_trend_30_u850_e3, miroc5_jet_loc_trend_30_u850_e4, miroc5_jet_loc_trend_30_u850_e5];
miroc_esm_chem_ensemble_trends_loc = [miroc_esm_chem_jet_loc_trend_30_u850];
mpi_esm_lr_ensemble_trends_loc   = [mpi_esm_lr_jet_loc_trend_30_u850, mpi_esm_lr_jet_loc_trend_30_u850_e2, mpi_esm_lr_jet_loc_trend_30_u850_e3];
mpi_esm_mr_ensemble_trends_loc   = [mpi_esm_mr_jet_loc_trend_30_u850, mpi_esm_mr_jet_loc_trend_30_u850_e2, mpi_esm_mr_jet_loc_trend_30_u850_e3];
mri_cgcm3_ensemble_trends_loc    = [mri_cgcm3_jet_loc_trend_30_u850, mri_cgcm3_jet_loc_trend_30_u850_e2, mri_cgcm3_jet_loc_trend_30_u850_e3];
nor_esm1m_m_ensemble_trends_loc  = [nor_esm1m_m_jet_loc_trend_30_u850, nor_esm1m_m_jet_loc_trend_30_u850_e2, nor_esm1m_m_jet_loc_trend_30_u850_e3];
nor_esm1m_me_ensemble_trends_loc  = [nor_esm1m_me_jet_loc_trend_30_u850];

% Mean Jet Magnitude Ensemble
can_esm2_ensemble_mean     = nanmean([can_esm2_jet_DJF_u850; can_esm2_jet_DJF_u850_e2; can_esm2_jet_DJF_u850_e3; can_esm2_jet_DJF_u850_e4; can_esm2_jet_DJF_u850_e5],2);
ccsm4_ensemble_mean        = nanmean(ccsm4_jet_DJF_u850);
cnrm_cm5_ensemble_mean     = nanmean([cnrm_cm5_jet_DJF_u850; cnrm_cm5_jet_DJF_u850_e2; cnrm_cm5_jet_DJF_u850_e3; cnrm_cm5_jet_DJF_u850_e4; cnrm_cm5_jet_DJF_u850_e5; cnrm_cm5_jet_DJF_u850_e6; cnrm_cm5_jet_DJF_u850_e7; cnrm_cm5_jet_DJF_u850_e8; cnrm_cm5_jet_DJF_u850_e9],2);
gfdl_esm2g_ensemble_mean   = nanmean(gfdl_esm2g_jet_DJF_u850);
gfdl_esm2m_ensemble_mean   = nanmean(gfdl_esm2m_jet_DJF_u850);
ipsl_cm5a_lr_ensemble_mean = nanmean([ipsl_cm5a_lr_jet_DJF_u850; ipsl_cm5a_lr_jet_DJF_u850_e2; ipsl_cm5a_lr_jet_DJF_u850_e3; ipsl_cm5a_lr_jet_DJF_u850_e4; ipsl_cm5a_lr_jet_DJF_u850_e5; ipsl_cm5a_lr_jet_DJF_u850_e6],2);
ipsl_cm5a_mr_ensemble_mean = nanmean([ipsl_cm5a_mr_jet_DJF_u850; ipsl_cm5a_mr_jet_DJF_u850_e2; ipsl_cm5a_mr_jet_DJF_u850_e3],2);
ipsl_cm5b_lr_ensemble_mean = nanmean(ipsl_cm5b_lr_jet_DJF);
miroc_esm_ensemble_mean    = nanmean([miroc_esm_jet_DJF_u850; miroc_esm_jet_DJF_u850_e2; miroc_esm_jet_DJF_u850_e3],2);
miroc_esm_chem_ensemble_mean = nanmean(miroc_esm_chem_jet_DJF);
miroc5_ensemble_mean       = nanmean([miroc5_jet_DJF_u850; miroc5_jet_DJF_u850_e2; miroc5_jet_DJF_u850_e3; miroc5_jet_DJF_u850_e4; miroc5_jet_DJF_u850_e5],2);
mpi_esm_lr_ensemble_mean   = nanmean([mpi_esm_lr_jet_DJF_u850; mpi_esm_lr_jet_DJF_u850_e2; mpi_esm_lr_jet_DJF_u850_e3],2);
mpi_esm_mr_ensemble_mean   = nanmean([mpi_esm_mr_jet_DJF_u850; mpi_esm_mr_jet_DJF_u850_e2; mpi_esm_mr_jet_DJF_u850_e3],2);
mri_cgcm3_ensemble_mean    = nanmean([mri_cgcm3_jet_DJF_u850; mri_cgcm3_jet_DJF_u850_e2; mri_cgcm3_jet_DJF_u850_e3],2);
nor_esm1m_m_ensemble_mean  = nanmean([nor_esm1m_m_jet_DJF_u850; nor_esm1m_m_jet_DJF_u850_e2; nor_esm1m_m_jet_DJF_u850_e3],2);
nor_esm1m_me_ensemble_mean  = nanmean(nor_esm1m_me_jet_DJF_u850); 

% Mean Jet Location Ensemble
can_esm2_ensemble_mean_loc     = nanmean([can_esm2_lat_jet_DJF_u850; can_esm2_lat_jet_DJF_u850_e2; can_esm2_lat_jet_DJF_u850_e3; can_esm2_lat_jet_DJF_u850_e4; can_esm2_lat_jet_DJF_u850_e5],2);
ccsm4_ensemble_mean_loc        = nanmean(ccsm4_lat_jet_DJF_u850);
cnrm_cm5_ensemble_mean_loc     = nanmean([cnrm_cm5_lat_jet_DJF_u850; cnrm_cm5_lat_jet_DJF_u850_e2; cnrm_cm5_lat_jet_DJF_u850_e3; cnrm_cm5_lat_jet_DJF_u850_e4; cnrm_cm5_lat_jet_DJF_u850_e5; cnrm_cm5_lat_jet_DJF_u850_e6; cnrm_cm5_lat_jet_DJF_u850_e7; cnrm_cm5_lat_jet_DJF_u850_e8; cnrm_cm5_lat_jet_DJF_u850_e9],2);
gfdl_esm2g_ensemble_mean_loc   = nanmean(gfdl_esm2g_lat_jet_DJF_u850);
gfdl_esm2m_ensemble_mean_loc   = nanmean(gfdl_esm2m_lat_jet_DJF_u850);
ipsl_cm5a_lr_ensemble_mean_loc = nanmean([ipsl_cm5a_lr_lat_jet_DJF_u850; ipsl_cm5a_lr_lat_jet_DJF_u850_e2; ipsl_cm5a_lr_lat_jet_DJF_u850_e3; ipsl_cm5a_lr_lat_jet_DJF_u850_e4; ipsl_cm5a_lr_lat_jet_DJF_u850_e5; ipsl_cm5a_lr_lat_jet_DJF_u850_e6],2);
ipsl_cm5a_mr_ensemble_mean_loc = nanmean([ipsl_cm5a_mr_lat_jet_DJF_u850; ipsl_cm5a_mr_lat_jet_DJF_u850_e2; ipsl_cm5a_mr_lat_jet_DJF_u850_e3],2);
ipsl_cm5b_lr_ensemble_mean_loc = nanmean(ipsl_cm5b_lr_lat_jet_DJF_u850);
miroc_esm_ensemble_mean_loc    = nanmean([miroc_esm_lat_jet_DJF_u850; miroc_esm_lat_jet_DJF_u850_e2; miroc_esm_lat_jet_DJF_u850_e3],2);
miroc_esm_chem_ensemble_mean_loc = nanmean(miroc_esm_chem_lat_jet_DJF_u850);
miroc5_ensemble_mean_loc       = nanmean([miroc5_lat_jet_DJF_u850; miroc5_lat_jet_DJF_u850_e2; miroc5_lat_jet_DJF_u850_e3; miroc5_lat_jet_DJF_u850_e4; miroc5_lat_jet_DJF_u850_e5],2);
mpi_esm_lr_ensemble_mean_loc   = nanmean([mpi_esm_lr_lat_jet_DJF_u850; mpi_esm_lr_lat_jet_DJF_u850_e2; mpi_esm_lr_lat_jet_DJF_u850_e3],2);
mpi_esm_mr_ensemble_mean_loc   = nanmean([mpi_esm_mr_lat_jet_DJF_u850; mpi_esm_mr_lat_jet_DJF_u850_e2; mpi_esm_mr_lat_jet_DJF_u850_e3],2);
mri_cgcm3_ensemble_mean_loc    = nanmean([mri_cgcm3_lat_jet_DJF_u850; mri_cgcm3_lat_jet_DJF_u850_e2; mri_cgcm3_lat_jet_DJF_u850_e3],2);
nor_esm1m_m_ensemble_mean_loc  = nanmean([nor_esm1m_m_lat_jet_DJF_u850; nor_esm1m_m_lat_jet_DJF_u850_e2; nor_esm1m_m_lat_jet_DJF_u850_e3],2);
nor_esm1m_me_ensemble_mean_loc  = nanmean(nor_esm1m_me_lat_jet_DJF_u850); 


% Jet Magnitude Ensemble Percent Change 
can_esm2_percent_change_jet_loc_ensemble = can_esm2_ensemble_trends./can_esm2_ensemble_mean'*100;
ccsm4_percent_change_jet_loc_ensemble = ccsm4_ensemble_trends./ccsm4_ensemble_mean'*100;
cnrm_cm5_percent_change_jet_loc_ensemble = cnrm_cm5_ensemble_trends./cnrm_cm5_ensemble_mean'*100;
gfdl_esm2g_percent_change_jet_loc_ensemble = gfdl_esm2g_ensemble_trends./gfdl_esm2g_ensemble_mean'*100;
gfdl_esm2m_percent_change_jet_loc_ensemble = gfdl_esm2m_ensemble_trends./gfdl_esm2m_ensemble_mean'*100;
ipsl_cm5a_lr_percent_change_jet_loc_ensemble = ipsl_cm5a_lr_ensemble_trends./ipsl_cm5a_lr_ensemble_mean'*100;
ipsl_cm5a_mr_percent_change_jet_loc_ensemble = ipsl_cm5a_mr_ensemble_trends./ipsl_cm5a_mr_ensemble_mean'*100;
ipsl_cm5b_lr_percent_change_jet_loc_ensemble = ipsl_cm5b_lr_ensemble_trends./ipsl_cm5b_lr_ensemble_mean'*100;
miroc_esm_percent_change_jet_loc_ensemble = miroc_esm_ensemble_trends./miroc_esm_ensemble_mean'*100;
miroc_esm_chem_percent_change_jet_loc_ensemble = miroc_esm_chem_ensemble_trends./miroc_esm_chem_ensemble_mean'*100;
miroc5_percent_change_jet_loc_ensemble = miroc5_ensemble_trends./miroc5_ensemble_mean'*100;
mpi_esm_lr_percent_change_jet_loc_ensemble = mpi_esm_lr_ensemble_trends./mpi_esm_lr_ensemble_mean'*100;
mpi_esm_mr_percent_change_jet_loc_ensemble = mpi_esm_mr_ensemble_trends./mpi_esm_mr_ensemble_mean'*100;
mri_cgcm3_percent_change_jet_loc_ensemble = mri_cgcm3_ensemble_trends./mri_cgcm3_ensemble_mean'*100;
nor_esm1m_m_percent_change_jet_loc_ensemble = nor_esm1m_m_ensemble_trends./nor_esm1m_m_ensemble_mean'*100;
nor_esm1m_me_percent_change_jet_loc_ensemble = nor_esm1m_me_ensemble_trends./nor_esm1m_me_ensemble_mean'*100;

% Jet Location Ensemble Percent Change 
can_esm2_percent_change_jet_ensemble = can_esm2_ensemble_trends_loc./can_esm2_ensemble_mean_loc'*100;
ccsm4_percent_change_jet_ensemble = ccsm4_ensemble_trends_loc./ccsm4_ensemble_mean_loc'*100;
cnrm_cm5_percent_change_jet_ensemble = cnrm_cm5_ensemble_trends_loc./cnrm_cm5_ensemble_mean_loc'*100;
gfdl_esm2g_percent_change_jet_ensemble = gfdl_esm2g_ensemble_trends_loc./gfdl_esm2g_ensemble_mean_loc'*100;
gfdl_esm2m_percent_change_jet_ensemble = gfdl_esm2m_ensemble_trends_loc./gfdl_esm2m_ensemble_mean_loc'*100;
ipsl_cm5a_lr_percent_change_jet_ensemble = ipsl_cm5a_lr_ensemble_trends_loc./ipsl_cm5a_lr_ensemble_mean_loc'*100;
ipsl_cm5a_mr_percent_change_jet_ensemble = ipsl_cm5a_mr_ensemble_trends_loc./ipsl_cm5a_mr_ensemble_mean_loc'*100;
ipsl_cm5b_lr_percent_change_jet_ensemble = ipsl_cm5b_lr_ensemble_trends_loc./ipsl_cm5b_lr_ensemble_mean_loc'*100;
miroc_esm_percent_change_jet_ensemble = miroc_esm_ensemble_trends_loc./miroc_esm_ensemble_mean_loc'*100;
miroc_esm_chem_percent_change_jet_ensemble = miroc_esm_chem_ensemble_trends_loc./miroc_esm_chem_ensemble_mean_loc'*100;
miroc5_percent_change_jet_ensemble = miroc5_ensemble_trends_loc./miroc5_ensemble_mean_loc'*100;
mpi_esm_lr_percent_change_jet_ensemble = mpi_esm_lr_ensemble_trends_loc./mpi_esm_lr_ensemble_mean_loc'*100;
mpi_esm_mr_percent_change_jet_ensemble = mpi_esm_mr_ensemble_trends_loc./mpi_esm_mr_ensemble_mean_loc'*100;
mri_cgcm3_percent_change_jet_ensemble = mri_cgcm3_ensemble_trends_loc./mri_cgcm3_ensemble_mean_loc'*100;
nor_esm1m_m_percent_change_jet_ensemble = nor_esm1m_m_ensemble_trends_loc./nor_esm1m_m_ensemble_mean_loc'*100;
nor_esm1m_me_percent_change_jet_ensemble = nor_esm1m_me_ensemble_trends_loc./nor_esm1m_me_ensemble_mean_loc'*100;


%% Calculate Mean Percent Change

mean_percent_change_jet = [nanmean(can_esm2_percent_change_jet),...
                           nanmean(ccsm4_percent_change_jet),...
                           nanmean(cnrm_cm5_percent_change_jet),...
                           nanmean(gfdl_esm2g_percent_change_jet),...
                           nanmean(gfdl_esm2m_percent_change_jet),...
                           nanmean(ipsl_cm5a_lr_percent_change_jet),...
                           nanmean(ipsl_cm5a_mr_percent_change_jet),...
                           nanmean(ipsl_cm5b_lr_percent_change_jet),...
                           nanmean(miroc_esm_percent_change_jet),...
                           nanmean(miroc_esm_chem_percent_change_jet),...
                           nanmean(miroc5_percent_change_jet),...
                           nanmean(mpi_esm_lr_percent_change_jet),...
                           nanmean(mpi_esm_mr_percent_change_jet),...
                           nanmean(mri_cgcm3_percent_change_jet),...
                           nanmean(nor_esm1m_m_percent_change_jet),...
                           nanmean(nor_esm1m_me_percent_change_jet)];
                       
std_percent_change_jet  = [nanstd(can_esm2_percent_change_jet),...
                           nanstd(ccsm4_percent_change_jet),...
                           nanstd(cnrm_cm5_percent_change_jet),...
                           nanstd(gfdl_esm2g_percent_change_jet),...
                           nanstd(gfdl_esm2m_percent_change_jet),...
                           nanstd(ipsl_cm5a_lr_percent_change_jet),...
                           nanstd(ipsl_cm5a_mr_percent_change_jet),...
                           nanstd(ipsl_cm5b_lr_percent_change_jet),...
                           nanstd(miroc_esm_percent_change_jet),...
                           nanstd(miroc_esm_chem_percent_change_jet),...
                           nanstd(miroc5_percent_change_jet),...
                           nanstd(mpi_esm_lr_percent_change_jet),...
                           nanstd(mpi_esm_mr_percent_change_jet),...
                           nanstd(mri_cgcm3_percent_change_jet),...
                           nanstd(nor_esm1m_m_percent_change_jet),...
                           nanstd(nor_esm1m_me_percent_change_jet)];
                       
                       
                       
                       
mean_percent_change_jet_loc = [nanmean(can_esm2_percent_change_jet_loc),...
                               nanmean(ccsm4_percent_change_jet_loc),...
                               nanmean(cnrm_cm5_percent_change_jet_loc),...
                               nanmean(gfdl_esm2g_percent_change_jet_loc),...
                               nanmean(gfdl_esm2m_percent_change_jet_loc),...
                               nanmean(ipsl_cm5a_lr_percent_change_jet_loc),...
                               nanmean(ipsl_cm5a_mr_percent_change_jet_loc),...
                               nanmean(ipsl_cm5b_lr_percent_change_jet_loc),...
                               nanmean(miroc_esm_percent_change_jet_loc),...
                               nanmean(miroc_esm_chem_percent_change_jet_loc),...
                               nanmean(miroc5_percent_change_jet_loc),...
                               nanmean(mpi_esm_lr_percent_change_jet_loc),...
                               nanmean(mpi_esm_mr_percent_change_jet_loc),...
                               nanmean(mri_cgcm3_percent_change_jet_loc),...
                               nanmean(nor_esm1m_m_percent_change_jet_loc),...
                               nanmean(nor_esm1m_me_percent_change_jet_loc)];
                       
std_percent_change_jet_loc  = [nanstd(can_esm2_percent_change_jet_loc),...
                               nanstd(ccsm4_percent_change_jet_loc),...
                               nanstd(cnrm_cm5_percent_change_jet_loc),...
                               nanstd(gfdl_esm2g_percent_change_jet_loc),...
                               nanstd(gfdl_esm2m_percent_change_jet_loc),...
                               nanstd(ipsl_cm5a_lr_percent_change_jet_loc),...
                               nanstd(ipsl_cm5a_mr_percent_change_jet_loc),...
                               nanstd(ipsl_cm5b_lr_percent_change_jet_loc),...
                               nanstd(miroc_esm_percent_change_jet_loc),...
                               nanstd(miroc_esm_chem_percent_change_jet_loc),...
                               nanstd(miroc5_percent_change_jet_loc),...
                               nanstd(mpi_esm_lr_percent_change_jet_loc),...
                               nanstd(mpi_esm_mr_percent_change_jet_loc),...
                               nanstd(mri_cgcm3_percent_change_jet_loc),...
                               nanstd(nor_esm1m_m_percent_change_jet_loc),...
                               nanstd(nor_esm1m_me_percent_change_jet_loc)];
                       
%% Make Whisker Diagrams 
cd /data1/fesd1/jthom143/piControl_paper/Figures/Wind_Jet_Whiskers                     
                       
x_axis = 1:length(mean_percent_change_jet);
x_label = {'  ';'CanESM2'; 'CCSM4'; 'CNRM CM5'; 'GFDL ESM2G'; 'GFDL ESM2M'; 'IPSL CM5A LR'; 'IPSL CM5A MR'; 'IPSL CM5B LR'; 'MIROC ESM'; 'MIROC ESM CHEM'; 'MIROC5'; 'MPI ESM LR'; 'MPI ESM MR'; 'MRI CGCM3'; 'NOR ESM1M M'; 'NOR ESM1M ME'; '  '}';
 
figure(1)
h1 = errorbar(x_axis,mean_percent_change_jet.*100,2.*std_percent_change_jet.*100);
hold on
h2 = plot(1, can_esm2_percent_change_jet_ensemble, 'r*');
h2 = plot(2, ccsm4_percent_change_jet_ensemble, 'r*');
h2 = plot(3, cnrm_cm5_percent_change_jet_ensemble, 'r*');
h2 = plot(4, gfdl_esm2g_percent_change_jet_ensemble, 'r*');
h2 = plot(5, gfdl_esm2m_percent_change_jet_ensemble, 'r*');
h2 = plot(6, ipsl_cm5a_lr_percent_change_jet_ensemble, 'r*');
h2 = plot(7, ipsl_cm5a_mr_percent_change_jet_ensemble, 'r*');
h2 = plot(8, ipsl_cm5b_lr_percent_change_jet_ensemble, 'r*');
h2 = plot(9, miroc_esm_percent_change_jet_ensemble, 'r*');
h2 = plot(10, miroc_esm_chem_percent_change_jet_ensemble, 'r*');
h2 = plot(11, miroc5_percent_change_jet_ensemble, 'r*');
h2 = plot(12, mpi_esm_lr_percent_change_jet_ensemble, 'r*');
h2 = plot(13, mpi_esm_mr_percent_change_jet_ensemble, 'r*');
h2 = plot(14, mri_cgcm3_percent_change_jet_ensemble, 'r*');
h2 = plot(15, nor_esm1m_m_percent_change_jet_ensemble, 'r*');
h2 = plot(16, nor_esm1m_me_percent_change_jet_ensemble, 'r*');
h3 = hline((jet_u850_trend_30/nanmean(jet_DJF))*100);
h4 = hline((r2_jet_u850_trend_30/nanmean(r2_jet_DJF))*100);
h5 = hline((era_int_jet_u850_trend_30/nanmean(eta_int_jet_DJF))*100);
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
set(h1,'marker','o', 'MarkerFaceColor', 'b')
set(h1,'linestyle','none')
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:17)
rotateXLabels( gca, 45 )
ylabel('Percent Change/25 years')
title('Wind Jet Magnitude Trends')
print -depsc Percent_change_wind_jet_whiskers

figure(2)
h1 = errorbar(x_axis,mean_percent_change_jet_loc.*100,2.*std_percent_change_jet_loc.*100);
hold on 
h2 = plot(1, can_esm2_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(2, ccsm4_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(3, cnrm_cm5_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(4, gfdl_esm2g_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(5, gfdl_esm2m_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(6, ipsl_cm5a_lr_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(7, ipsl_cm5a_mr_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(8, ipsl_cm5b_lr_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(9, miroc_esm_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(10, miroc_esm_chem_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(11, miroc5_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(12, mpi_esm_lr_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(13, mpi_esm_mr_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(14, mri_cgcm3_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(15, nor_esm1m_m_percent_change_jet_loc_ensemble, 'r*');
h2 = plot(16, nor_esm1m_me_percent_change_jet_loc_ensemble, 'r*');
h3 = hline((lat_u850_trend_30/(nanmean(lat_jet_DJF)))*100);
h4 = hline((r2_lat_u850_trend_30/nanmean(r2_let_jet_DJF))*100);
h5 = hline((era_int_lat_u850_trend_30)/nanmean(eta_int_lat_jet_DJF)*100);
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
set(h1,'marker','o', 'MarkerFaceColor', 'b')
set(h1,'linestyle','none')
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:16)
rotateXLabels( gca, 45 )
ylabel('Percent Change/ 25 years')
title('Wind Jet Location Trends')
print -depsc Percent_change_wind_jet_lat_whiskers

cd /data1/fesd1/jthom143/piControl_paper

                       
                       