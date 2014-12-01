%% Mean of each model's ensemble mean

can_esm2_ensemble_trends     = [can_esm2_jet_trend_30_u850, can_esm2_jet_trend_30_u850_e2, can_esm2_jet_trend_30_u850_e3, can_esm2_jet_trend_30_u850_e4, can_esm2_jet_trend_30_u850_e5];
cnrm_cm5_ensemble_trends     = [cnrm_cm5_jet_trend_30_u850, cnrm_cm5_jet_trend_30_u850_e2, cnrm_cm5_jet_trend_30_u850_e3, cnrm_cm5_jet_trend_30_u850_e4, cnrm_cm5_jet_trend_30_u850_e5, cnrm_cm5_jet_trend_30_u850_e6, cnrm_cm5_jet_trend_30_u850_e7, cnrm_cm5_jet_trend_30_u850_e8, cnrm_cm5_jet_trend_30_u850_e9];
ipsl_cm5a_lr_ensemble_trends = [ipsl_cm5a_lr_jet_trend_30_u850, ipsl_cm5a_lr_jet_trend_30_u850_e2, ipsl_cm5a_lr_jet_trend_30_u850_e3, ipsl_cm5a_lr_jet_trend_30_u850_e4, ipsl_cm5a_lr_jet_trend_30_u850_e5, ipsl_cm5a_lr_jet_trend_30_u850_e6];
ipsl_cm5a_mr_ensemble_trends = [ipsl_cm5a_mr_jet_trend_30_u850, ipsl_cm5a_mr_jet_trend_30_u850_e2, ipsl_cm5a_mr_jet_trend_30_u850_e3];
miroc_esm_ensemble_trends    = [miroc_esm_jet_trend_30_u850, miroc_esm_jet_trend_30_u850_e2, miroc_esm_jet_trend_30_u850_e3];
miroc5_ensemble_trends       = [miroc5_jet_trend_30_u850, miroc5_jet_trend_30_u850_e2, miroc5_jet_trend_30_u850_e3, miroc5_jet_trend_30_u850_e4, miroc5_jet_trend_30_u850_e5];
mpi_esm_lr_ensemble_trends   = [mpi_esm_lr_jet_trend_30_u850, mpi_esm_lr_jet_trend_30_u850_e2, mpi_esm_lr_jet_trend_30_u850_e3];
mpi_esm_mr_ensemble_trends   = [mpi_esm_mr_jet_trend_30_u850, mpi_esm_mr_jet_trend_30_u850_e2, mpi_esm_mr_jet_trend_30_u850_e3];
mri_cgcm3_ensemble_trends    = [mri_cgcm3_jet_trend_30_u850, mri_cgcm3_jet_trend_30_u850_e2, mri_cgcm3_jet_trend_30_u850_e3];
nor_esm1m_m_ensemble_trends  = [nor_esm1m_m_jet_trend_30_u850, nor_esm1m_m_jet_trend_30_u850_e2, nor_esm1m_m_jet_trend_30_u850_e3];

can_esm2_ensemble_trends_loc     = [can_esm2_jet_loc_trend_30_u850, can_esm2_jet_loc_trend_30_u850_e2, can_esm2_jet_loc_trend_30_u850_e3, can_esm2_jet_loc_trend_30_u850_e4, can_esm2_jet_loc_trend_30_u850_e5];
cnrm_cm5_ensemble_trends_loc     = [cnrm_cm5_jet_loc_trend_30_u850, cnrm_cm5_jet_loc_trend_30_u850_e2, cnrm_cm5_jet_loc_trend_30_u850_e3, cnrm_cm5_jet_loc_trend_30_u850_e4, cnrm_cm5_jet_loc_trend_30_u850_e5, cnrm_cm5_jet_loc_trend_30_u850_e6, cnrm_cm5_jet_loc_trend_30_u850_e7, cnrm_cm5_jet_loc_trend_30_u850_e8, cnrm_cm5_jet_loc_trend_30_u850_e9];
ipsl_cm5a_lr_ensemble_trends_loc = [ipsl_cm5a_lr_jet_loc_trend_30_u850, ipsl_cm5a_lr_jet_loc_trend_30_u850_e2, ipsl_cm5a_lr_jet_loc_trend_30_u850_e3, ipsl_cm5a_lr_jet_loc_trend_30_u850_e4, ipsl_cm5a_lr_jet_loc_trend_30_u850_e5, ipsl_cm5a_lr_jet_loc_trend_30_u850_e6];
ipsl_cm5a_mr_ensemble_trends_loc = [ipsl_cm5a_mr_jet_loc_trend_30_u850, ipsl_cm5a_mr_jet_loc_trend_30_u850_e2, ipsl_cm5a_mr_jet_loc_trend_30_u850_e3];
miroc_esm_ensemble_trends_loc    = [miroc_esm_jet_loc_trend_30_u850, miroc_esm_jet_loc_trend_30_u850_e2, miroc_esm_jet_loc_trend_30_u850_e3];
miroc5_ensemble_trends_loc       = [miroc5_jet_loc_trend_30_u850, miroc5_jet_loc_trend_30_u850_e2, miroc5_jet_loc_trend_30_u850_e3, miroc5_jet_loc_trend_30_u850_e4, miroc5_jet_loc_trend_30_u850_e5];
mpi_esm_lr_ensemble_trends_loc   = [mpi_esm_lr_jet_loc_trend_30_u850, mpi_esm_lr_jet_loc_trend_30_u850_e2, mpi_esm_lr_jet_loc_trend_30_u850_e3];
mpi_esm_mr_ensemble_trends_loc   = [mpi_esm_mr_jet_loc_trend_30_u850, mpi_esm_mr_jet_loc_trend_30_u850_e2, mpi_esm_mr_jet_loc_trend_30_u850_e3];
mri_cgcm3_ensemble_trends_loc    = [mri_cgcm3_jet_loc_trend_30_u850, mri_cgcm3_jet_loc_trend_30_u850_e2, mri_cgcm3_jet_loc_trend_30_u850_e3];
nor_esm1m_m_ensemble_trends_loc  = [nor_esm1m_m_jet_loc_trend_30_u850, nor_esm1m_m_jet_loc_trend_30_u850_e2, nor_esm1m_m_jet_loc_trend_30_u850_e3];


mean_can_esm2_jet       = nanmean(can_esm2_ensemble_trends);
mean_ccsm4_jet          = ccsm4_jet_trend_30_u850;
mean_cnrm_cm5_jet       = nanmean(cnrm_cm5_ensemble_trends);
mean_gfdl_esm2g_jet     = gfdl_esm2g_jet_trend_30_u850;
mean_gfdl_esm2m_jet     = gfdl_esm2m_jet_trend_30_u850;
mean_ipsl_cm5a_lr_jet   = nanmean(ipsl_cm5a_lr_ensemble_trends);
mean_ipsl_cm5a_mr_jet   = nanmean(ipsl_cm5a_mr_ensemble_trends);
mean_ipsl_cm5b_lr_jet   = ipsl_cm5b_lr_jet_trend_30_u850;
mean_miroc_esm_jet      = nanmean(miroc_esm_ensemble_trends);
mean_miroc_esm_chem_jet = miroc_esm_chem_jet_trend_30_u850;
mean_miroc5_jet         = nanmean(miroc5_ensemble_trends);
mean_mpi_esm_lr_jet     = nanmean(mpi_esm_lr_ensemble_trends);
mean_mpi_esm_mr_jet     = nanmean(mpi_esm_mr_ensemble_trends);
mean_mri_cgcm3_jet      = nanmean(mri_cgcm3_ensemble_trends);
mean_nor_esm1m_m_jet    = nanmean(nor_esm1m_m_ensemble_trends);
mean_nor_esm1m_me_jet   = nor_esm1m_me_jet_trend_30_u850;

mean_can_esm2_lat       = nanmean(can_esm2_ensemble_trends_loc);
mean_ccsm4_lat          = ccsm4_jet_loc_trend_30_u850;
mean_cnrm_cm5_lat       = nanmean(cnrm_cm5_ensemble_trends_loc);
mean_gfdl_esm2g_lat     = gfdl_esm2g_jet_loc_trend_30_u850;
mean_gfdl_esm2m_lat     = gfdl_esm2m_jet_loc_trend_30_u850;
mean_ipsl_cm5a_lr_lat   = nanmean(ipsl_cm5a_lr_ensemble_trends_loc);
mean_ipsl_cm5a_mr_lat   = nanmean(ipsl_cm5a_mr_ensemble_trends_loc);
mean_ipsl_cm5b_lr_lat   = ipsl_cm5b_lr_jet_loc_trend_30_u850;
mean_miroc_esm_lat      = nanmean(miroc_esm_ensemble_trends_loc);
mean_miroc_esm_chem_lat = miroc_esm_chem_jet_loc_trend_30_u850;
mean_miroc5_lat         = nanmean(miroc5_ensemble_trends_loc);
mean_mpi_esm_lr_lat     = nanmean(mpi_esm_lr_ensemble_trends_loc);
mean_mpi_esm_mr_lat     = nanmean(mpi_esm_mr_ensemble_trends_loc);
mean_mri_cgcm3_lat      = nanmean(mri_cgcm3_ensemble_trends_loc);
mean_nor_esm1m_m_lat    = nanmean(nor_esm1m_m_ensemble_trends_loc);
mean_nor_esm1m_me_lat   = nor_esm1m_me_jet_loc_trend_30_u850;

mean_jet_ensemble_models = [mean_can_esm2_jet,...
                            mean_ccsm4_jet,...
                            mean_cnrm_cm5_jet,...
                            mean_gfdl_esm2g_jet,...
                            mean_gfdl_esm2m_jet,...
                            mean_ipsl_cm5a_lr_jet,...
                            mean_ipsl_cm5a_mr_jet,...
                            mean_ipsl_cm5b_lr_jet,...
                            mean_miroc_esm_jet,...
                            mean_miroc_esm_chem_jet,...
                            mean_miroc5_jet,...
                            mean_mpi_esm_lr_jet,...
                            mean_mpi_esm_mr_jet,...
                            mean_mri_cgcm3_jet,...
                            mean_nor_esm1m_m_jet,...
                            mean_nor_esm1m_me_jet];

mean_lat_ensemble_models = [mean_can_esm2_lat,...
                            mean_ccsm4_lat,...
                            mean_cnrm_cm5_lat,...
                            mean_gfdl_esm2g_lat,...
                            mean_gfdl_esm2m_lat,...
                            mean_ipsl_cm5a_lr_lat,...
                            mean_ipsl_cm5a_mr_lat,...
                            mean_ipsl_cm5b_lr_lat,...
                            mean_miroc_esm_lat,...
                            mean_miroc_esm_chem_lat,...
                            mean_miroc5_lat,...
                            mean_mpi_esm_lr_lat,...
                            mean_mpi_esm_mr_lat,...
                            mean_mri_cgcm3_lat,...
                            mean_nor_esm1m_m_lat,...
                            mean_nor_esm1m_me_lat];
                        
mean_jet_ensemble = nanmean(mean_jet_ensemble_models);
mean_lat_ensemble = nanmean(mean_lat_ensemble_models); 

x_label = {'  ';'CMIP5'; 'Reanalysis 1'; 'Reanalysis 2'; 'ERA_Interim'; '  '}';


figure(1) 
plot(2, jet_u850_trend_30, '*', 'color', [0, 0.8, 0], 'MarkerSize', 12)
hold on
plot(3, r2_jet_u850_trend_30, '*', 'color', [0.9 0.6 0.2], 'MarkerSize', 12)
plot(4, era_int_jet_u850_trend_30, '*', 'color', [0.6 0.03 0.9], 'MarkerSize', 12)
h1 = errorbar(1, mean_jet_ensemble, max(mean_jet_ensemble_models)-mean_jet_ensemble, 'r');
xlim([0 5])
ylim([-1.7 1.7])
set(h1,'marker','o', 'MarkerFaceColor', 'r')
set(h1,'linestyle','none', 'linewidth', 1.5)
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:5)
rotateXLabels( gca, 45 )
set(gca, 'fontsize', 14)

print -depsc averave_model_ensemble_average_jet


figure(2) 
plot(2, lat_u850_trend_30, '*', 'color', [0, 0.8, 0], 'MarkerSize', 12)
hold on
plot(3, r2_lat_u850_trend_30, '*', 'color', [0.9 0.6 0.2], 'MarkerSize', 12)
plot(4, era_int_lat_u850_trend_30, '*', 'color', [0.6 0.03 0.9], 'MarkerSize', 12)
h1 = errorbar(1, mean_lat_ensemble, max(mean_lat_ensemble_models)-mean_lat_ensemble, 'r');
xlim([0 5])
ylim([-4 4])
set(h1,'marker','o', 'MarkerFaceColor', 'r')
set(h1,'linestyle','none', 'linewidth', 1.5)
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:5)
rotateXLabels( gca, 45 )
set(gca, 'fontsize', 14)

print -depsc average_model_ensemble_average_lat

%% Mean of Ensemble members

jet_ensemble_members = [can_esm2_jet_trend_30_u850, can_esm2_jet_trend_30_u850_e2, can_esm2_jet_trend_30_u850_e3, can_esm2_jet_trend_30_u850_e4, can_esm2_jet_trend_30_u850_e5,...
                        ccsm4_jet_trend_30_u850,...
                        cnrm_cm5_jet_trend_30_u850, cnrm_cm5_jet_trend_30_u850_e2, cnrm_cm5_jet_trend_30_u850_e3, cnrm_cm5_jet_trend_30_u850_e4, cnrm_cm5_jet_trend_30_u850_e5, cnrm_cm5_jet_trend_30_u850_e6, cnrm_cm5_jet_trend_30_u850_e7, cnrm_cm5_jet_trend_30_u850_e8, cnrm_cm5_jet_trend_30_u850_e9,...
                        gfdl_esm2g_jet_trend_30_u850,...
                        gfdl_esm2m_jet_trend_30_u850,...
                        ipsl_cm5a_lr_jet_trend_30_u850, ipsl_cm5a_lr_jet_trend_30_u850_e2, ipsl_cm5a_lr_jet_trend_30_u850_e3, ipsl_cm5a_lr_jet_trend_30_u850_e4, ipsl_cm5a_lr_jet_trend_30_u850_e5, ipsl_cm5a_lr_jet_trend_30_u850_e6,...
                        ipsl_cm5a_mr_jet_trend_30_u850, ipsl_cm5a_mr_jet_trend_30_u850_e2, ipsl_cm5a_mr_jet_trend_30_u850_e3,...
                        ipsl_cm5b_lr_jet_trend_30_u850,...
                        miroc_esm_jet_trend_30_u850, miroc_esm_jet_trend_30_u850_e2, miroc_esm_jet_trend_30_u850_e3,...
                        miroc_esm_chem_jet_trend_30_u850,...
                        miroc5_jet_trend_30_u850, miroc5_jet_trend_30_u850_e2, miroc5_jet_trend_30_u850_e3, miroc5_jet_trend_30_u850_e4, miroc5_jet_trend_30_u850_e5,...
                        mpi_esm_lr_jet_trend_30_u850, mpi_esm_lr_jet_trend_30_u850_e2, mpi_esm_lr_jet_trend_30_u850_e3,...
                        mpi_esm_mr_jet_trend_30_u850, mpi_esm_mr_jet_trend_30_u850_e2, mpi_esm_mr_jet_trend_30_u850_e3,...
                        mri_cgcm3_jet_trend_30_u850, mri_cgcm3_jet_trend_30_u850_e2, mri_cgcm3_jet_trend_30_u850_e3,...
                        nor_esm1m_m_jet_trend_30_u850, nor_esm1m_m_jet_trend_30_u850_e2, nor_esm1m_m_jet_trend_30_u850_e3,...
                        nor_esm1m_me_jet_trend_30_u850];
                    
                    
lat_ensemble_members = [can_esm2_jet_loc_trend_30_u850, can_esm2_jet_loc_trend_30_u850_e2, can_esm2_jet_loc_trend_30_u850_e3, can_esm2_jet_loc_trend_30_u850_e4, can_esm2_jet_loc_trend_30_u850_e5,...
                        ccsm4_jet_loc_trend_30_u850,...
                        cnrm_cm5_jet_loc_trend_30_u850, cnrm_cm5_jet_loc_trend_30_u850_e2, cnrm_cm5_jet_loc_trend_30_u850_e3, cnrm_cm5_jet_loc_trend_30_u850_e4, cnrm_cm5_jet_loc_trend_30_u850_e5, cnrm_cm5_jet_loc_trend_30_u850_e6, cnrm_cm5_jet_loc_trend_30_u850_e7, cnrm_cm5_jet_loc_trend_30_u850_e8, cnrm_cm5_jet_loc_trend_30_u850_e9,...
                        gfdl_esm2g_jet_loc_trend_30_u850,...
                        gfdl_esm2m_jet_loc_trend_30_u850,...
                        ipsl_cm5a_lr_jet_loc_trend_30_u850, ipsl_cm5a_lr_jet_loc_trend_30_u850_e2, ipsl_cm5a_lr_jet_loc_trend_30_u850_e3, ipsl_cm5a_lr_jet_loc_trend_30_u850_e4, ipsl_cm5a_lr_jet_loc_trend_30_u850_e5, ipsl_cm5a_lr_jet_loc_trend_30_u850_e6,...
                        ipsl_cm5a_mr_jet_loc_trend_30_u850, ipsl_cm5a_mr_jet_loc_trend_30_u850_e2, ipsl_cm5a_mr_jet_loc_trend_30_u850_e3,...
                        ipsl_cm5b_lr_jet_loc_trend_30_u850,...
                        miroc_esm_jet_loc_trend_30_u850, miroc_esm_jet_loc_trend_30_u850_e2, miroc_esm_jet_loc_trend_30_u850_e3,...
                        miroc_esm_chem_jet_loc_trend_30_u850,...
                        miroc5_jet_loc_trend_30_u850, miroc5_jet_loc_trend_30_u850_e2, miroc5_jet_loc_trend_30_u850_e3, miroc5_jet_loc_trend_30_u850_e4, miroc5_jet_loc_trend_30_u850_e5,...
                        mpi_esm_lr_jet_loc_trend_30_u850, mpi_esm_lr_jet_loc_trend_30_u850_e2, mpi_esm_lr_jet_loc_trend_30_u850_e3,...
                        mpi_esm_mr_jet_loc_trend_30_u850, mpi_esm_mr_jet_loc_trend_30_u850_e2, mpi_esm_mr_jet_loc_trend_30_u850_e3,...
                        mri_cgcm3_jet_loc_trend_30_u850, mri_cgcm3_jet_loc_trend_30_u850_e2, mri_cgcm3_jet_loc_trend_30_u850_e3,...
                        nor_esm1m_m_jet_loc_trend_30_u850, nor_esm1m_m_jet_loc_trend_30_u850_e2, nor_esm1m_m_jet_loc_trend_30_u850_e3,...
                        nor_esm1m_me_jet_loc_trend_30_u850];
                    
                    
figure(3) 
plot(2, jet_u850_trend_30, '*', 'color', [0, 0.8, 0], 'MarkerSize', 12)
hold on
plot(3, r2_jet_u850_trend_30, '*', 'color', [0.9 0.6 0.2], 'MarkerSize', 12)
plot(4, era_int_jet_u850_trend_30, '*', 'color', [0.6 0.03 0.9], 'MarkerSize', 12)
h1 = errorbar(1, mean(jet_ensemble_members), max(jet_ensemble_members)- mean(jet_ensemble_members), 'r');
xlim([0 5])
ylim([-1.7 1.7])
set(h1,'marker','o', 'MarkerFaceColor', 'r')
set(h1,'linestyle','none', 'linewidth', 1.5)
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:5)
rotateXLabels( gca, 45 )
set(gca, 'fontsize', 14)

print -depsc average_ensemble_members_jet

figure(4) 
plot(2, lat_u850_trend_30, '*', 'color', [0, 0.8, 0], 'MarkerSize', 12)
hold on
plot(3, r2_lat_u850_trend_30, '*', 'color', [0.9 0.6 0.2], 'MarkerSize', 12)
plot(4, era_int_lat_u850_trend_30, '*', 'color', [0.6 0.03 0.9], 'MarkerSize', 12)
h1 = errorbar(1, mean(lat_ensemble_members), max(lat_ensemble_members)-mean(lat_ensemble_members), 'r');
xlim([0 5])
ylim([-4 4])
set(h1,'marker','o', 'MarkerFaceColor', 'r')
set(h1,'linestyle','none', 'linewidth', 1.5)
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:5)
rotateXLabels( gca, 45 )
set(gca, 'fontsize', 14)

print -depsc average_ensemble_members_lat
