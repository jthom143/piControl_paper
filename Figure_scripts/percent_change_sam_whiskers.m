%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate Percent Change Trends and make box and whisker plots
% Nov 19, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Calculate Percent Change: 

% Jet Magnitude piControl
can_esm2_percent_change_sam       = (can_esm2_sam_trends_yrs)      ./(nanmean(can_esm2_SAM_unnormalized)) ;
ccsm4_percent_change_sam          = (ccsm4_sam_trends_yrs)         ./(nanmean(ccsm4_SAM_unnormalized)) ;
cnrm_cm5_percent_change_sam       = (cnrm_cm5_sam_trends_yrs)      ./(nanmean(cnrm_cm5_SAM_unnormalized)) ;
gfdl_esm2g_percent_change_sam     = (gfdl_esm2g_sam_trends_yrs)    ./(nanmean(gfdl_esm2g_SAM_unnormalized)) ;
gfdl_esm2m_percent_change_sam     = (gfdl_esm2m_sam_trends_yrs)    ./(nanmean(gfdl_esm2m_SAM_unnormalized)) ;
ipsl_cm5a_lr_percent_change_sam   = (ipsl_cm5a_lr_sam_trends_yrs)  ./(nanmean(ipsl_cm5a_lr_SAM_unnormalized)) ;
ipsl_cm5a_mr_percent_change_sam   = (ipsl_cm5a_mr_sam_trends_yrs)  ./(nanmean(ipsl_cm5a_mr_SAM_unnormalized)) ;
ipsl_cm5b_lr_percent_change_sam   = (ipsl_cm5b_lr_sam_trends_yrs)  ./(nanmean(ipsl_cm5b_lr_SAM_unnormalized)) ;
miroc_esm_percent_change_sam      = (miroc_esm_sam_trends_yrs)     ./(nanmean(miroc_esm_SAM_unnormalized)) ;
miroc_esm_chem_percent_change_sam = (miroc_esm_chem_sam_trends_yrs)./(nanmean(miroc_esm_chem_SAM_unnormalized)) ;
miroc5_percent_change_sam         = (miroc5_sam_trends_yrs)        ./(nanmean(miroc5_SAM_unnormalized)) ;
mpi_esm_lr_percent_change_sam     = (mpi_esm_lr_sam_trends_yrs)    ./(nanmean(mpi_esm_lr_SAM_unnormalized)) ;
mpi_esm_mr_percent_change_sam     = (mpi_esm_mr_sam_trends_yrs)    ./(nanmean(mpi_esm_mr_SAM_unnormalized)) ;
mri_cgcm3_percent_change_sam      = (mri_cgcm3_sam_trends_yrs)     ./(nanmean(mri_cgcm3_SAM_unnormalized)) ;
nor_esm1m_m_percent_change_sam    = (nor_esm1m_m_sam_trends_yrs)   ./(nanmean(nor_esm1m_m_SAM_unnormalized)) ;
nor_esm1m_me_percent_change_sam   = (nor_esm1m_me_sam_trends_yrs)  ./(nanmean(nor_esm1m_me_SAM_unnormalized)) ;

%% Ensemble Members Percent Change 

% Jet Magnitude Trends Ensemble Members
can_esm2_ensemble_trends     = [can_esm2_sam_trend_30, can_esm2_sam_trend_30_e2, can_esm2_sam_trend_30_e3, can_esm2_sam_trend_30_e4, can_esm2_sam_trend_30_e5];
ccsm4_ensemble_trends        = [ccsm4_sam_trend_30];
cnrm_cm5_ensemble_trends     = [cnrm_cm5_sam_trend_30, cnrm_cm5_sam_trend_30_e2, cnrm_cm5_sam_trend_30_e3, cnrm_cm5_sam_trend_30_e4, cnrm_cm5_sam_trend_30_e5, cnrm_cm5_sam_trend_30_e6, cnrm_cm5_sam_trend_30_e7, cnrm_cm5_sam_trend_30_e8, cnrm_cm5_sam_trend_30_e9];
gfdl_esm2g_ensemble_trends   = [gfdl_esm2g_sam_trend_30];
gfdl_esm2m_ensemble_trends   = [gfdl_esm2m_sam_trend_30];
ipsl_cm5a_lr_ensemble_trends = [ipsl_cm5a_lr_sam_trend_30, ipsl_cm5a_lr_sam_trend_30_e2, ipsl_cm5a_lr_sam_trend_30_e3, ipsl_cm5a_lr_sam_trend_30_e4, ipsl_cm5a_lr_sam_trend_30_e5, ipsl_cm5a_lr_sam_trend_30_e6];
ipsl_cm5a_mr_ensemble_trends = [ipsl_cm5a_mr_sam_trend_30, ipsl_cm5a_mr_sam_trend_30_e2, ipsl_cm5a_mr_sam_trend_30_e3];
ipsl_cm5b_lr_ensemble_trends = [ipsl_cm5b_lr_sam_trend_30];
miroc_esm_ensemble_trends    = [miroc_esm_sam_trend_30, miroc_esm_sam_trend_30_e2, miroc_esm_sam_trend_30_e3];
miroc_esm_chem_ensemble_trends = [miroc_esm_chem_sam_trend_30];
miroc5_ensemble_trends       = [miroc5_sam_trend_30, miroc5_sam_trend_30_e2, miroc5_sam_trend_30_e3, miroc5_sam_trend_30_e4, miroc5_sam_trend_30_e5];
mpi_esm_lr_ensemble_trends   = [mpi_esm_lr_sam_trend_30, mpi_esm_lr_sam_trend_30_e2, mpi_esm_lr_sam_trend_30_e3];
mpi_esm_mr_ensemble_trends   = [mpi_esm_mr_sam_trend_30, mpi_esm_mr_sam_trend_30_e2, mpi_esm_mr_sam_trend_30_e3];
mri_cgcm3_ensemble_trends    = [mri_cgcm3_sam_trend_30, mri_cgcm3_sam_trend_30_e2, mri_cgcm3_sam_trend_30_e3];
nor_esm1m_m_ensemble_trends  = [nor_esm1m_m_sam_trend_30, nor_esm1m_m_sam_trend_30_e2, nor_esm1m_m_sam_trend_30_e3];
nor_esm1m_me_ensemble_trends = [nor_esm1m_me_sam_trend_30];

% Mean Jet Magnitude Ensemble
can_esm2_ensemble_mean     = nanmean([can_esm2_sam_DJF; can_esm2_sam_DJF_e2; can_esm2_sam_DJF_e3; can_esm2_sam_DJF_e4; can_esm2_sam_DJF_e5],2);
ccsm4_ensemble_mean        = nanmean(ccsm4_sam_DJF);
cnrm_cm5_ensemble_mean     = nanmean([cnrm_cm5_sam_DJF; cnrm_cm5_sam_DJF_e2; cnrm_cm5_sam_DJF_e3; cnrm_cm5_sam_DJF_e4; cnrm_cm5_sam_DJF_e5; cnrm_cm5_sam_DJF_e6; cnrm_cm5_sam_DJF_e7; cnrm_cm5_sam_DJF_e8; cnrm_cm5_sam_DJF_e9],2);
gfdl_esm2g_ensemble_mean   = nanmean(gfdl_esm2g_sam_DJF);
gfdl_esm2m_ensemble_mean   = nanmean(gfdl_esm2m_sam_DJF);
ipsl_cm5a_lr_ensemble_mean = nanmean([ipsl_cm5a_lr_sam_DJF; ipsl_cm5a_lr_sam_DJF_e2; ipsl_cm5a_lr_sam_DJF_e3; ipsl_cm5a_lr_sam_DJF_e4; ipsl_cm5a_lr_sam_DJF_e5; ipsl_cm5a_lr_sam_DJF_e6],2);
ipsl_cm5a_mr_ensemble_mean = nanmean([ipsl_cm5a_mr_sam_DJF; ipsl_cm5a_mr_sam_DJF_e2; ipsl_cm5a_mr_sam_DJF_e3],2);
ipsl_cm5b_lr_ensemble_mean = nanmean(ipsl_cm5b_lr_sam_DJF);
miroc_esm_ensemble_mean    = nanmean([miroc_esm_sam_DJF; miroc_esm_sam_DJF_e2; miroc_esm_sam_DJF_e3],2);
miroc_esm_chem_ensemble_mean = nanmean(miroc_esm_chem_sam_DJF);
miroc5_ensemble_mean       = nanmean([miroc5_sam_DJF; miroc5_sam_DJF_e2; miroc5_sam_DJF_e3; miroc5_sam_DJF_e4; miroc5_sam_DJF_e5],2);
mpi_esm_lr_ensemble_mean   = nanmean([mpi_esm_lr_sam_DJF; mpi_esm_lr_sam_DJF_e2; mpi_esm_lr_sam_DJF_e3],2);
mpi_esm_mr_ensemble_mean   = nanmean([mpi_esm_mr_sam_DJF; mpi_esm_mr_sam_DJF_e2; mpi_esm_mr_sam_DJF_e3],2);
mri_cgcm3_ensemble_mean    = nanmean([mri_cgcm3_sam_DJF; mri_cgcm3_sam_DJF_e2; mri_cgcm3_sam_DJF_e3],2);
nor_esm1m_m_ensemble_mean  = nanmean([nor_esm1m_m_sam_DJF; nor_esm1m_m_sam_DJF_e2; nor_esm1m_m_sam_DJF_e3],2);
nor_esm1m_me_ensemble_mean  = nanmean(nor_esm1m_me_sam_DJF); 

% Jet Magnitude Ensemble Percent Change 
can_esm2_percent_change_sam_ensemble = can_esm2_ensemble_trends./can_esm2_ensemble_mean'*100;
ccsm4_percent_change_sam_ensemble = ccsm4_ensemble_trends./ccsm4_ensemble_mean'*100;
cnrm_cm5_percent_change_sam_ensemble = cnrm_cm5_ensemble_trends./cnrm_cm5_ensemble_mean'*100;
gfdl_esm2g_percent_change_sam_ensemble = gfdl_esm2g_ensemble_trends./gfdl_esm2g_ensemble_mean'*100;
gfdl_esm2m_percent_change_sam_ensemble = gfdl_esm2m_ensemble_trends./gfdl_esm2m_ensemble_mean'*100;
ipsl_cm5a_lr_percent_change_sam_ensemble = ipsl_cm5a_lr_ensemble_trends./ipsl_cm5a_lr_ensemble_mean'*100;
ipsl_cm5a_mr_percent_change_sam_ensemble = ipsl_cm5a_mr_ensemble_trends./ipsl_cm5a_mr_ensemble_mean'*100;
ipsl_cm5b_lr_percent_change_sam_ensemble = ipsl_cm5b_lr_ensemble_trends./ipsl_cm5b_lr_ensemble_mean'*100;
miroc_esm_percent_change_sam_ensemble = miroc_esm_ensemble_trends./miroc_esm_ensemble_mean'*100;
miroc_esm_chem_percent_change_sam_ensemble = miroc_esm_chem_ensemble_trends./miroc_esm_chem_ensemble_mean'*100;
miroc5_percent_change_sam_ensemble = miroc5_ensemble_trends./miroc5_ensemble_mean'*100;
mpi_esm_lr_percent_change_sam_ensemble = mpi_esm_lr_ensemble_trends./mpi_esm_lr_ensemble_mean'*100;
mpi_esm_mr_percent_change_sam_ensemble = mpi_esm_mr_ensemble_trends./mpi_esm_mr_ensemble_mean'*100;
mri_cgcm3_percent_change_sam_ensemble = mri_cgcm3_ensemble_trends./mri_cgcm3_ensemble_mean'*100;
nor_esm1m_m_percent_change_sam_ensemble = nor_esm1m_m_ensemble_trends./nor_esm1m_m_ensemble_mean'*100;
nor_esm1m_me_percent_change_sam_ensemble = nor_esm1m_me_ensemble_trends./nor_esm1m_me_ensemble_mean'*100;


%% Calculate Mean Percent Change

mean_percent_change_sam = [nanmean(can_esm2_percent_change_sam),...
                           nanmean(ccsm4_percent_change_sam),...
                           nanmean(cnrm_cm5_percent_change_sam),...
                           nanmean(gfdl_esm2g_percent_change_sam),...
                           nanmean(gfdl_esm2m_percent_change_sam),...
                           nanmean(ipsl_cm5a_lr_percent_change_sam),...
                           nanmean(ipsl_cm5a_mr_percent_change_sam),...
                           nanmean(ipsl_cm5b_lr_percent_change_sam),...
                           nanmean(miroc_esm_percent_change_sam),...
                           nanmean(miroc_esm_chem_percent_change_sam),...
                           nanmean(miroc5_percent_change_sam),...
                           nanmean(mpi_esm_lr_percent_change_sam),...
                           nanmean(mpi_esm_mr_percent_change_sam),...
                           nanmean(mri_cgcm3_percent_change_sam),...
                           nanmean(nor_esm1m_m_percent_change_sam),...
                           nanmean(nor_esm1m_me_percent_change_sam)];
                       
std_percent_change_sam  = [nanstd(can_esm2_percent_change_sam),...
                           nanstd(ccsm4_percent_change_sam),...
                           nanstd(cnrm_cm5_percent_change_sam),...
                           nanstd(gfdl_esm2g_percent_change_sam),...
                           nanstd(gfdl_esm2m_percent_change_sam),...
                           nanstd(ipsl_cm5a_lr_percent_change_sam),...
                           nanstd(ipsl_cm5a_mr_percent_change_sam),...
                           nanstd(ipsl_cm5b_lr_percent_change_sam),...
                           nanstd(miroc_esm_percent_change_sam),...
                           nanstd(miroc_esm_chem_percent_change_sam),...
                           nanstd(miroc5_percent_change_sam),...
                           nanstd(mpi_esm_lr_percent_change_sam),...
                           nanstd(mpi_esm_mr_percent_change_sam),...
                           nanstd(mri_cgcm3_percent_change_sam),...
                           nanstd(nor_esm1m_m_percent_change_sam),...
                           nanstd(nor_esm1m_me_percent_change_sam)];
                       
                       
                       
%% Make Whisker Diagrams 
cd /data1/fesd1/jthom143/piControl_paper/Figures/SAM                    
                       
x_axis = 1:length(mean_percent_change_sam);
x_label = {'  ';'CanESM2'; 'CCSM4'; 'CNRM CM5'; 'GFDL ESM2G'; 'GFDL ESM2M'; 'IPSL CM5A LR'; 'IPSL CM5A MR'; 'IPSL CM5B LR'; 'MIROC ESM'; 'MIROC ESM CHEM'; 'MIROC5'; 'MPI ESM LR'; 'MPI ESM MR'; 'MRI CGCM3'; 'NOR ESM1M M'; 'NOR ESM1M ME'; '  '}';
 
figure(1)
h1 = errorbar(x_axis,mean_percent_change_sam.*100,2.*std_percent_change_sam.*100);
hold on
h2 = plot(1, can_esm2_percent_change_sam_ensemble, 'r*');
h2 = plot(2, ccsm4_percent_change_sam_ensemble, 'r*');
h2 = plot(3, cnrm_cm5_percent_change_sam_ensemble, 'r*');
h2 = plot(4, gfdl_esm2g_percent_change_sam_ensemble, 'r*');
h2 = plot(5, gfdl_esm2m_percent_change_sam_ensemble, 'r*');
% h2 = plot(6, ipsl_cm5a_lr_percent_change_sam_ensemble, 'r*');
h2 = plot(7, ipsl_cm5a_mr_percent_change_sam_ensemble, 'r*');
% h2 = plot(8, ipsl_cm5b_lr_percent_change_sam_ensemble, 'r*');
h2 = plot(9, miroc_esm_percent_change_sam_ensemble, 'r*');
h2 = plot(10, miroc_esm_chem_percent_change_sam_ensemble, 'r*');
h2 = plot(11, miroc5_percent_change_sam_ensemble, 'r*');
h2 = plot(12, mpi_esm_lr_percent_change_sam_ensemble, 'r*');
h2 = plot(13, mpi_esm_mr_percent_change_sam_ensemble, 'r*');
h2 = plot(14, mri_cgcm3_percent_change_sam_ensemble, 'r*');
h2 = plot(15, nor_esm1m_m_percent_change_sam_ensemble, 'r*');
h2 = plot(16, nor_esm1m_me_percent_change_sam_ensemble, 'r*');
h3 = hline((sam_trend_30/nanmean(sam_DJF))*100);
h4 = hline((r2_sam_trend_30/nanmean(r2_sam_DJF))*100);
h5 = hline((era_int_sam_trend_30/nanmean(era_int_sam_DJF))*100);
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
print -depsc Percent_change_sam_whiskers


                       
                       