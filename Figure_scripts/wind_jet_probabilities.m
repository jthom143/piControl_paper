%% Calculate the percent probability of obtaining a trend 

% Run "wind_tremd_analysis.m" with Type='cdf' and Historical_wind_analysis

Models = {'CanESM2';      'CCSM4';        'CNRM CM5';     'GFDL ESM2G'; 'GFDL ESM2M'; ...
          'IPSL CM5a LR'; 'IPSL CM5a MR'; 'IPSL CM5b LR'; 'MIROC ESM';  'MIROC ESM CHEM'; ...
          'MIROC5';       'MPI ESM LR';   'MPI ESM MR';   'MRI CGCM3';  'NOR ESM1m M';...
          'NOR ESM1m ME'};
%% Reanalysis Trend      
% Jet Magnitude:
% CanESM2
Probability_R1(1,1) = 1 - can_esm2_jet_f(findnearest(jet_u850_trend_30, can_esm2_jet_xi));
% CCSM4
Probability_R1(2,1) = 1 - ccsm4_jet_f(findnearest(jet_u850_trend_30, ccsm4_jet_xi));
% CNRM CM5
Probability_R1(3,1) = 1 - cnrm_cm5_jet_f(findnearest(jet_u850_trend_30, cnrm_cm5_jet_xi));
% GFDL ESM2G
Probability_R1(4,1) = 1 - gfdl_esm2g_jet_f(findnearest(jet_u850_trend_30, gfdl_esm2g_jet_xi));
% GFDL ESM2M
Probability_R1(5,1) = 1 - gfdl_esm2m_jet_f(findnearest(jet_u850_trend_30, gfdl_esm2m_jet_xi));
% IPSL CM5a LR
Probability_R1(6,1) = 1 - ipsl_cm5a_lr_jet_f(findnearest(jet_u850_trend_30, ipsl_cm5a_lr_jet_xi));
% IPSL CM5a MR
Probability_R1(7,1) = 1 - ipsl_cm5a_mr_jet_f(findnearest(jet_u850_trend_30, ipsl_cm5a_mr_jet_xi));
% IPSL CM5b LR
Probability_R1(8,1) = 1 - ipsl_cm5b_lr_jet_f(findnearest(jet_u850_trend_30, ipsl_cm5b_lr_jet_xi));
% MIROC ESM
Probability_R1(9,1) = 1 - miroc_esm_jet_f(findnearest(jet_u850_trend_30, miroc_esm_jet_xi));
% MIROC ESM CHEM
Probability_R1(10,1) = 1 - miroc_esm_chem_jet_f(findnearest(jet_u850_trend_30, miroc_esm_chem_jet_xi));
% MIROC5
Probability_R1(11,1) = 1 - miroc5_jet_f(findnearest(jet_u850_trend_30, miroc5_jet_xi));
% MPI ESM LR
Probability_R1(12,1) = 1 - mpi_esm_lr_jet_f(findnearest(jet_u850_trend_30, mpi_esm_lr_jet_xi));
% MPI ESM MR
Probability_R1(13,1) = 1 - mpi_esm_mr_jet_f(findnearest(jet_u850_trend_30, mpi_esm_mr_jet_xi));
% MRI CGCM3
Probability_R1(14,1) = 1 - mri_cgcm3_jet_f(findnearest(jet_u850_trend_30, mri_cgcm3_jet_xi));
% NOR ESM1m M
Probability_R1(15,1) = 1 - nor_esm1m_m_jet_f(findnearest(jet_u850_trend_30, nor_esm1m_m_jet_xi));
% NOR ESM1m ME
Probability_R1(16,1) = 1 - nor_esm1m_me_jet_f(findnearest(jet_u850_trend_30, nor_esm1m_me_jet_xi));

% Jet Location
% CanESM2
Probability_R1(1,2) = can_esm2_jet_loc_f(findnearest(lat_u850_trend_30, can_esm2_jet_loc_xi));
% CCSM4
Probability_R1(2,2) = ccsm4_jet_loc_f(findnearest(lat_u850_trend_30, ccsm4_jet_loc_xi));
% CNRM CM5
Probability_R1(3,2) = cnrm_cm5_jet_loc_f(findnearest(lat_u850_trend_30, cnrm_cm5_jet_loc_xi));
% GFDL ESM2G
Probability_R1(4,2) = gfdl_esm2g_jet_loc_f(findnearest(lat_u850_trend_30, gfdl_esm2g_jet_loc_xi));
% GFDL ESM2M
Probability_R1(5,2) = gfdl_esm2m_jet_loc_f(findnearest(lat_u850_trend_30, gfdl_esm2m_jet_loc_xi));
% IPSL CM5a LR
Probability_R1(6,2) = ipsl_cm5a_lr_jet_loc_f(findnearest(lat_u850_trend_30, ipsl_cm5a_lr_jet_loc_xi));
% IPSL CM5a MR
Probability_R1(7,2) = ipsl_cm5a_mr_jet_loc_f(findnearest(lat_u850_trend_30, ipsl_cm5a_mr_jet_loc_xi));
% IPSL CM5b LR
Probability_R1(8,2) = ipsl_cm5b_lr_jet_loc_f(findnearest(lat_u850_trend_30, ipsl_cm5b_lr_jet_loc_xi));
% MIROC ESM
Probability_R1(9,2) = miroc_esm_jet_loc_f(findnearest(lat_u850_trend_30, miroc_esm_jet_loc_xi));
% MIROC ESM CHEM
Probability_R1(10,2) = miroc_esm_chem_jet_loc_f(findnearest(lat_u850_trend_30, miroc_esm_chem_jet_loc_xi));
% MIROC5
Probability_R1(11,2) = miroc5_jet_loc_f(findnearest(lat_u850_trend_30, miroc5_jet_loc_xi));
% MPI ESM LR
Probability_R1(12,2) = mpi_esm_lr_jet_loc_f(findnearest(lat_u850_trend_30, mpi_esm_lr_jet_loc_xi));
% MPI ESM MR
Probability_R1(13,2) = mpi_esm_mr_jet_loc_f(findnearest(lat_u850_trend_30, mpi_esm_mr_jet_loc_xi));
% MRI CGCM3
Probability_R1(14,2) = mri_cgcm3_jet_loc_f(findnearest(lat_u850_trend_30, mri_cgcm3_jet_loc_xi));
% NOR ESM1m M
Probability_R1(15,2) = nor_esm1m_m_jet_loc_f(findnearest(lat_u850_trend_30, nor_esm1m_m_jet_loc_xi));
% NOR ESM1m ME
Probability_R1(16,2) = nor_esm1m_me_jet_loc_f(findnearest(lat_u850_trend_30, nor_esm1m_me_jet_loc_xi));

Probability_R1 = Probability_R1*100;


%% Historical Trend

% Jet Magnitude:
% CanESM2
Probability_Hist(1,1) = 1 - can_esm2_jet_f(findnearest(can_esm2_jet_trend_30_u850, can_esm2_jet_xi));
% CCSM4
Probability_Hist(2,1) = 1 - ccsm4_jet_f(findnearest(ccsm4_jet_trend_30_u850, ccsm4_jet_xi));
% CNRM CM5
Probability_Hist(3,1) = 1 - cnrm_cm5_jet_f(findnearest(cnrm_cm5_jet_trend_30_u850, cnrm_cm5_jet_xi));
% GFDL ESM2G
Probability_Hist(4,1) = 1 - gfdl_esm2g_jet_f(findnearest(gfdl_esm2g_jet_trend_30_u850, gfdl_esm2g_jet_xi));
% GFDL ESM2M
Probability_Hist(5,1) = 1 - gfdl_esm2m_jet_f(findnearest(gfdl_esm2m_jet_trend_30_u850, gfdl_esm2m_jet_xi));
% IPSL CM5a LR
Probability_Hist(6,1) = 1 - ipsl_cm5a_lr_jet_f(findnearest(ipsl_cm5a_lr_jet_trend_30_u850, ipsl_cm5a_lr_jet_xi));
% IPSL CM5a MR
Probability_Hist(7,1) = 1 - ipsl_cm5a_mr_jet_f(findnearest(ipsl_cm5a_mr_jet_trend_30_u850, ipsl_cm5a_mr_jet_xi));
% IPSL CM5b LR
Probability_Hist(8,1) = 1 - ipsl_cm5b_lr_jet_f(findnearest(ipsl_cm5b_lr_jet_trend_30_u850, ipsl_cm5b_lr_jet_xi));
% MIROC ESM
Probability_Hist(9,1) = 1 - miroc_esm_jet_f(findnearest(miroc_esm_jet_trend_30_u850, miroc_esm_jet_xi));
% MIROC ESM CHEM
Probability_Hist(10,1) = 1 - miroc_esm_chem_jet_f(findnearest(miroc_esm_chem_jet_trend_30_u850, miroc_esm_chem_jet_xi));
% MIROC5
Probability_Hist(11,1) = 1 - miroc5_jet_f(findnearest(miroc5_jet_trend_30_u850, miroc5_jet_xi));
% MPI ESM LR
Probability_Hist(12,1) = 1 - mpi_esm_lr_jet_f(findnearest(mpi_esm_lr_jet_trend_30_u850, mpi_esm_lr_jet_xi));
% MPI ESM MR
Probability_Hist(13,1) = 1 - mpi_esm_mr_jet_f(findnearest(mpi_esm_mr_jet_trend_30_u850, mpi_esm_mr_jet_xi));
% MRI CGCM3
Probability_Hist(14,1) = 1 - mri_cgcm3_jet_f(findnearest(mri_cgcm3_jet_trend_30_u850, mri_cgcm3_jet_xi));
% NOR ESM1m M
Probability_Hist(15,1) = 1 - nor_esm1m_m_jet_f(findnearest(nor_esm1m_m_jet_trend_30_u850, nor_esm1m_m_jet_xi));
% NOR ESM1m ME
Probability_Hist(16,1) = 1 - nor_esm1m_me_jet_f(findnearest(nor_esm1m_me_jet_trend_30_u850, nor_esm1m_me_jet_xi));

% Jet Location
% CanESM2
Probability_Hist(1,2) = can_esm2_jet_loc_f(findnearest(can_esm2_jet_loc_trend_30_u850, can_esm2_jet_loc_xi));
% CCSM4
Probability_Hist(2,2) = ccsm4_jet_loc_f(findnearest(ccsm4_jet_loc_trend_30_u850, ccsm4_jet_loc_xi));
% CNRM CM5
Probability_Hist(3,2) = cnrm_cm5_jet_loc_f(findnearest(cnrm_cm5_jet_loc_trend_30_u850, cnrm_cm5_jet_loc_xi));
% GFDL ESM2G
Probability_Hist(4,2) = gfdl_esm2g_jet_loc_f(findnearest(gfdl_esm2g_jet_loc_trend_30_u850, gfdl_esm2g_jet_loc_xi));
% GFDL ESM2M
Probability_Hist(5,2) = gfdl_esm2m_jet_loc_f(findnearest(gfdl_esm2m_jet_loc_trend_30_u850, gfdl_esm2m_jet_loc_xi));
% IPSL CM5a LR
Probability_Hist(6,2) = ipsl_cm5a_lr_jet_loc_f(findnearest(ipsl_cm5a_lr_jet_loc_trend_30_u850, ipsl_cm5a_lr_jet_loc_xi));
% IPSL CM5a MR
Probability_Hist(7,2) = ipsl_cm5a_mr_jet_loc_f(findnearest(ipsl_cm5a_mr_jet_loc_trend_30_u850, ipsl_cm5a_mr_jet_loc_xi));
% IPSL CM5b LR
Probability_Hist(8,2) = ipsl_cm5b_lr_jet_loc_f(findnearest(ipsl_cm5b_lr_jet_loc_trend_30_u850, ipsl_cm5b_lr_jet_loc_xi));
% MIROC ESM
Probability_Hist(9,2) = miroc_esm_jet_loc_f(findnearest(miroc_esm_jet_loc_trend_30_u850, miroc_esm_jet_loc_xi));
% MIROC ESM CHEM
Probability_Hist(10,2) = miroc_esm_chem_jet_loc_f(findnearest(miroc_esm_chem_jet_loc_trend_30_u850, miroc_esm_chem_jet_loc_xi));
% MIROC5
Probability_Hist(11,2) = miroc5_jet_loc_f(findnearest(miroc5_jet_loc_trend_30_u850, miroc5_jet_loc_xi));
% MPI ESM LR
Probability_Hist(12,2) = mpi_esm_lr_jet_loc_f(findnearest(mpi_esm_lr_jet_loc_trend_30_u850, mpi_esm_lr_jet_loc_xi));
% MPI ESM MR
Probability_Hist(13,2) = mpi_esm_mr_jet_loc_f(findnearest(mpi_esm_mr_jet_loc_trend_30_u850, mpi_esm_mr_jet_loc_xi));
% MRI CGCM3
Probability_Hist(14,2) = mri_cgcm3_jet_loc_f(findnearest(mri_cgcm3_jet_loc_trend_30_u850, mri_cgcm3_jet_loc_xi));
% NOR ESM1m M
Probability_Hist(15,2) = nor_esm1m_m_jet_loc_f(findnearest(nor_esm1m_m_jet_loc_trend_30_u850, nor_esm1m_m_jet_loc_xi));
% NOR ESM1m ME
Probability_Hist(16,2) = nor_esm1m_me_jet_loc_f(findnearest(nor_esm1m_me_jet_loc_trend_30_u850, nor_esm1m_me_jet_loc_xi));

Probability_Hist = Probability_Hist*100;