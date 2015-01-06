cd /data1/fesd1/jthom143/piControl_paper/Figures/Windstress_Jet_Whiskers

mean_trend_jet_mag = [can_esm2_mean_jet,...
                      ccsm4_mean_jet,...
                      cnrm_cm52_mean_jet,...
                      gfdl_esm2m_mean_jet,...
                      ipsl_cm5a_lr_mean_jet,...
                      ipsl_cm5a_mr_mean_jet,...
                      ipsl_cm5b_lr_mean_jet,...
                      miroc_esm_mean_jet,...
                      miroc_esm_chem_mean_jet,...
                      miroc5_mean_jet,...
                      mpi_esm_lr_mean_jet,...
                      mpi_esm_mr_mean_jet,...
                      mri_cgcm3_mean_jet,...
                      NaN,...
                      nor_esm1m_me_mean_jet];

std_trend_jet_mag = [can_esm2_std_jet,...
                      ccsm4_std_jet,...
                      cnrm_cm52_std_jet,...
                      gfdl_esm2m_std_jet,...
                      ipsl_cm5a_lr_std_jet,...
                      ipsl_cm5a_mr_std_jet,...
                      ipsl_cm5b_lr_std_jet,...
                      miroc_esm_std_jet,...
                      miroc_esm_chem_std_jet,...
                      miroc5_std_jet,...
                      mpi_esm_lr_std_jet,...
                      mpi_esm_mr_std_jet,...
                      mri_cgcm3_std_jet,...
                      NaN,...
                      nor_esm1m_me_std_jet];
                  
historical_trend = [can_esm2_jet_trend_30,...
                    ccsm4_jet_trend_30,...
                    cnrm_cm5_jet_trend_30,...
                    gfdl_esm2m_jet_trend_30,...
                    ipsl_cm5a_lr_jet_trend_30,...
                    ipsl_cm5a_mr_jet_trend_30,...
                    ipsl_cm5b_lr_jet_trend_30,...
                    miroc_esm_jet_trend_30,...
                    miroc_esm_chem_jet_trend_30,...
                    miroc5_jet_trend_30,...
                    mpi_esm_lr_jet_trend_30,...
                    mpi_esm_mr_jet_trend_30,...
                    mri_cgcm3_jet_trend_30,...
                    NaN,...
                    nor_esm1m_me_jet_trend_30];
                
mean_trend_jet_loc = [can_esm2_mean_jet_loc,...
                      ccsm4_mean_jet_loc,...
                      cnrm_cm52_mean_jet_loc,...
                      gfdl_esm2m_mean_jet_loc,...
                      ipsl_cm5a_lr_mean_jet_loc,...
                      ipsl_cm5a_mr_mean_jet_loc,...
                      ipsl_cm5b_lr_mean_jet_loc,...
                      miroc_esm_mean_jet_loc,...
                      miroc_esm_chem_mean_jet_loc,...
                      miroc5_mean_jet_loc,...
                      mpi_esm_lr_mean_jet_loc,...
                      mpi_esm_mr_mean_jet_loc,...
                      mri_cgcm3_mean_jet_loc,...
                      NaN,...
                      nor_esm1m_me_mean_jet_loc];

std_trend_jet_loc = [can_esm2_std_jet_loc,...
                      ccsm4_std_jet_loc,...
                      cnrm_cm52_std_jet_loc,...
                      gfdl_esm2m_std_jet_loc,...
                      ipsl_cm5a_lr_std_jet_loc,...
                      ipsl_cm5a_mr_std_jet_loc,...
                      ipsl_cm5b_lr_std_jet_loc,...
                      miroc_esm_std_jet_loc,...
                      miroc_esm_chem_std_jet_loc,...
                      miroc5_std_jet_loc,...
                      mpi_esm_lr_std_jet_loc,...
                      mpi_esm_mr_std_jet_loc,...
                      mri_cgcm3_std_jet_loc,...
                      NaN,...
                      nor_esm1m_me_std_jet_loc];
                  
historical_trend_loc = [can_esm2_jet_loc_trend_30,...
                    ccsm4_jet_loc_trend_30,...
                    cnrm_cm5_jet_loc_trend_30,...
                    gfdl_esm2m_jet_loc_trend_30,...
                    ipsl_cm5a_lr_jet_loc_trend_30,...
                    ipsl_cm5a_mr_jet_loc_trend_30,...
                    ipsl_cm5b_lr_jet_loc_trend_30,...
                    miroc_esm_jet_loc_trend_30,...
                    miroc_esm_chem_jet_loc_trend_30,...
                    miroc5_jet_loc_trend_30,...
                    mpi_esm_lr_jet_loc_trend_30,...
                    mpi_esm_mr_jet_loc_trend_30,...
                    mri_cgcm3_jet_loc_trend_30,...
                    NaN,...
                    nor_esm1m_me_jet_loc_trend_30];

                
                
x_axis = 1:length(mean_trend_jet_mag);
x_label = {'  ';'CanESM2'; 'CCSM4'; 'CNRM CM52'; 'GFDL ESM2M'; 'IPSL CM5A LR'; 'IPSL CM5A MR'; 'IPSL CM5B LR'; 'MIROC ESM'; 'MIROC ESM CHEM'; 'MIROC5'; 'MPI ESM LR'; 'MPI ESM MR'; 'MRI CGCM3'; 'NOR ESM1M M'; 'NOR ESM1M ME'; '  '}';

figure(1)
h1 = errorbar(x_axis,mean_trend_jet_mag,2.*std_trend_jet_mag);
hold on 
h2 = plot(x_axis, historical_trend, 'r*');
h3 = hline(taux_trend_25);
h4 = hline(taux_trend_25_2);
% h5 = hline(era_int_jet_u850_trend_30);
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
% set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
set(h1,'marker','o', 'MarkerFaceColor', 'b')
set(h1,'linestyle','none')
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:16)
rotateXLabels( gca, 45 )

print -depsc allmodels_windstressjet_mag_whiskers


figure(2)
h1 = errorbar(x_axis,mean_trend_jet_loc,2.*std_trend_jet_loc);
hold on 
h2 = plot(x_axis, historical_trend_loc, 'r*');
h3 = hline(lat_trend_25);
h4 = hline(lat_trend_25_2);
% h5 = hline(era_int_lat_u850_trend_30);
set(h3, 'linestyle', '-', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
% set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
set(h1,'marker','o', 'MarkerFaceColor', 'b')
set(h1,'linestyle','none')
set(gca, 'XTickLabel', x_label)
set(gca, 'XTick', 0:16)
rotateXLabels( gca, 45 )
ylim([-6 6])

print -depsc allmodels_windstressjet_loc_whiskers              
                
                
                
                
                
                
                
                
                
                
% %% Ensemble Figures
% can_esm2_ensemble_trends     = [can_esm2_jet_trend_30, can_esm2_jet_trend_30_e2, can_esm2_jet_trend_30_e3, can_esm2_jet_trend_30_e4, can_esm2_jet_trend_30_e5];
% cnrm_cm5_ensemble_trends     = [cnrm_cm5_jet_trend_30, cnrm_cm5_jet_trend_30_e2, cnrm_cm5_jet_trend_30_e3, cnrm_cm5_jet_trend_30_e4, cnrm_cm5_jet_trend_30_e5, cnrm_cm5_jet_trend_30_e6, cnrm_cm5_jet_trend_30_e7, cnrm_cm5_jet_trend_30_e8, cnrm_cm5_jet_trend_30_e9];
% ipsl_cm5a_lr_ensemble_trends = [ipsl_cm5a_lr_jet_trend_30, ipsl_cm5a_lr_jet_trend_30_e2, ipsl_cm5a_lr_jet_trend_30_e3, ipsl_cm5a_lr_jet_trend_30_e4, ipsl_cm5a_lr_jet_trend_30_e5, ipsl_cm5a_lr_jet_trend_30_e6];
% ipsl_cm5a_mr_ensemble_trends = [ipsl_cm5a_mr_jet_trend_30, ipsl_cm5a_mr_jet_trend_30_e2, ipsl_cm5a_mr_jet_trend_30_e3];
% miroc_esm_ensemble_trends    = [miroc_esm_jet_trend_30, miroc_esm_jet_trend_30_e2, miroc_esm_jet_trend_30_e3];
% miroc5_ensemble_trends       = [miroc5_jet_trend_30, miroc5_jet_trend_30_e2, miroc5_jet_trend_30_e3, miroc5_jet_trend_30_e4, miroc5_jet_trend_30_e5];
% mpi_esm_lr_ensemble_trends   = [mpi_esm_lr_jet_trend_30, mpi_esm_lr_jet_trend_30_e2, mpi_esm_lr_jet_trend_30_e3];
% mpi_esm_mr_ensemble_trends   = [mpi_esm_mr_jet_trend_30, mpi_esm_mr_jet_trend_30_e2, mpi_esm_mr_jet_trend_30_e3];
% mri_cgcm3_ensemble_trends    = [mri_cgcm3_jet_trend_30, mri_cgcm3_jet_trend_30_e2, mri_cgcm3_jet_trend_30_e3];
% nor_esm1m_m_ensemble_trends  = [nor_esm1m_m_jet_trend_30, nor_esm1m_m_jet_trend_30_e2, nor_esm1m_m_jet_trend_30_e3];
% 
% 
% 
% can_esm2_ensemble_trends_loc     = [can_esm2_jet_loc_trend_30, can_esm2_jet_loc_trend_30_e2, can_esm2_jet_loc_trend_30_e3, can_esm2_jet_loc_trend_30_e4, can_esm2_jet_loc_trend_30_e5];
% cnrm_cm5_ensemble_trends_loc     = [cnrm_cm5_jet_loc_trend_30, cnrm_cm5_jet_loc_trend_30_e2, cnrm_cm5_jet_loc_trend_30_e3, cnrm_cm5_jet_loc_trend_30_e4, cnrm_cm5_jet_loc_trend_30_e5, cnrm_cm5_jet_loc_trend_30_e6, cnrm_cm5_jet_loc_trend_30_e7, cnrm_cm5_jet_loc_trend_30_e8, cnrm_cm5_jet_loc_trend_30_e9];
% ipsl_cm5a_lr_ensemble_trends_loc = [ipsl_cm5a_lr_jet_loc_trend_30, ipsl_cm5a_lr_jet_loc_trend_30_e2, ipsl_cm5a_lr_jet_loc_trend_30_e3, ipsl_cm5a_lr_jet_loc_trend_30_e4, ipsl_cm5a_lr_jet_loc_trend_30_e5, ipsl_cm5a_lr_jet_loc_trend_30_e6];
% ipsl_cm5a_mr_ensemble_trends_loc = [ipsl_cm5a_mr_jet_loc_trend_30, ipsl_cm5a_mr_jet_loc_trend_30_e2, ipsl_cm5a_mr_jet_loc_trend_30_e3];
% miroc_esm_ensemble_trends_loc    = [miroc_esm_jet_loc_trend_30, miroc_esm_jet_loc_trend_30_e2, miroc_esm_jet_loc_trend_30_e3];
% miroc5_ensemble_trends_loc       = [miroc5_jet_loc_trend_30, miroc5_jet_loc_trend_30_e2, miroc5_jet_loc_trend_30_e3, miroc5_jet_loc_trend_30_e4, miroc5_jet_loc_trend_30_e5];
% mpi_esm_lr_ensemble_trends_loc   = [mpi_esm_lr_jet_loc_trend_30, mpi_esm_lr_jet_loc_trend_30_e2, mpi_esm_lr_jet_loc_trend_30_e3];
% mpi_esm_mr_ensemble_trends_loc   = [mpi_esm_mr_jet_loc_trend_30, mpi_esm_mr_jet_loc_trend_30_e2, mpi_esm_mr_jet_loc_trend_30_e3];
% mri_cgcm3_ensemble_trends_loc    = [mri_cgcm3_jet_loc_trend_30, mri_cgcm3_jet_loc_trend_30_e2, mri_cgcm3_jet_loc_trend_30_e3];
% nor_esm1m_m_ensemble_trends_loc  = [nor_esm1m_m_jet_loc_trend_30, nor_esm1m_m_jet_loc_trend_30_e2, nor_esm1m_m_jet_loc_trend_30_e3];
% 
% mean_ensemble_trends = [nanmean(can_esm2_ensemble_trends),...
%                         ccsm4_jet_trend_30,...
%                         nanmean(cnrm_cm5_ensemble_trends),...
%                         gfdl_esm2m_jet_trend_30,...
%                         nanmean(ipsl_cm5a_lr_ensemble_trends),...
%                         nanmean(ipsl_cm5a_mr_ensemble_trends),...
%                         ipsl_cm5b_lr_jet_trend_30,...
%                         nanmean(miroc_esm_ensemble_trends),...
%                         miroc_esm_chem_jet_trend_30,...
%                         nanmean(miroc5_ensemble_trends),...
%                         nanmean(mpi_esm_lr_ensemble_trends),...
%                         nanmean(mpi_esm_mr_ensemble_trends),...
%                         nanmean(mri_cgcm3_ensemble_trends),...
%                         nanmean(nor_esm1m_m_ensemble_trends),...
%                         nor_esm1m_me_jet_trend_30];
%                     
% E_ensemble_trends =    [max(can_esm2_ensemble_trends)-nanmean(can_esm2_ensemble_trends),...
%                         NaN,...
%                         max(cnrm_cm5_ensemble_trends)-nanmean(cnrm_cm5_ensemble_trends),...
%                         NaN,...
%                         max(ipsl_cm5a_lr_ensemble_trends)-nanmean(ipsl_cm5a_lr_ensemble_trends),...
%                         max(ipsl_cm5a_mr_ensemble_trends)-nanmean(ipsl_cm5a_mr_ensemble_trends),...
%                         NaN,...
%                         max(miroc_esm_ensemble_trends)-nanmean(miroc_esm_ensemble_trends),...
%                         NaN,...
%                         max(miroc5_ensemble_trends)-nanmean(miroc5_ensemble_trends),...
%                         max(mpi_esm_lr_ensemble_trends)-nanmean(mpi_esm_lr_ensemble_trends),...
%                         max(mpi_esm_mr_ensemble_trends)-nanmean(mpi_esm_mr_ensemble_trends),...
%                         max(mri_cgcm3_ensemble_trends)-nanmean(mri_cgcm3_ensemble_trends),...
%                         max(nor_esm1m_m_ensemble_trends)-nanmean(nor_esm1m_m_ensemble_trends),...
%                         NaN];
%                         
%  mean_ensemble_trends_loc = [nanmean(can_esm2_ensemble_trends_loc),...
%                         ccsm4_jet_loc_trend_30,...
%                         nanmean(cnrm_cm5_ensemble_trends_loc),...
%                         gfdl_esm2m_jet_loc_trend_30,...
%                         nanmean(ipsl_cm5a_lr_ensemble_trends_loc),...
%                         nanmean(ipsl_cm5a_mr_ensemble_trends_loc),...
%                         ipsl_cm5b_lr_jet_loc_trend_30,...
%                         nanmean(miroc_esm_ensemble_trends_loc),...
%                         miroc_esm_chem_jet_loc_trend_30,...
%                         nanmean(miroc5_ensemble_trends_loc),...
%                         nanmean(mpi_esm_lr_ensemble_trends_loc),...
%                         nanmean(mpi_esm_mr_ensemble_trends_loc),...
%                         nanmean(mri_cgcm3_ensemble_trends_loc),...
%                         nanmean(nor_esm1m_m_ensemble_trends_loc),...
%                         nor_esm1m_me_jet_loc_trend_30];
%                     
% E_ensemble_trends_loc = [max(can_esm2_ensemble_trends_loc)-nanmean(can_esm2_ensemble_trends_loc),...
%                         NaN,...
%                         max(cnrm_cm5_ensemble_trends_loc)-nanmean(cnrm_cm5_ensemble_trends_loc),...
%                         NaN,...
%                         max(ipsl_cm5a_lr_ensemble_trends_loc)-nanmean(ipsl_cm5a_lr_ensemble_trends_loc),...
%                         max(ipsl_cm5a_mr_ensemble_trends_loc)-nanmean(ipsl_cm5a_mr_ensemble_trends_loc),...
%                         NaN,...
%                         max(miroc_esm_ensemble_trends_loc)-nanmean(miroc_esm_ensemble_trends_loc),...
%                         NaN,...
%                         max(miroc5_ensemble_trends_loc)-nanmean(miroc5_ensemble_trends_loc),...
%                         max(mpi_esm_lr_ensemble_trends_loc)-nanmean(mpi_esm_lr_ensemble_trends_loc),...
%                         max(mpi_esm_mr_ensemble_trends_loc)-nanmean(mpi_esm_mr_ensemble_trends_loc),...
%                         max(mri_cgcm3_ensemble_trends_loc)-nanmean(mri_cgcm3_ensemble_trends_loc),...
%                         max(nor_esm1m_m_ensemble_trends_loc)-nanmean(nor_esm1m_m_ensemble_trends_loc),...
%                         NaN];
% 
%                     
%                     
% x_axis = 1:length(mean_trend_jet_mag);
% x_label = {'  ';'CanESM2'; 'CCSM4'; 'CNRM CM5'; 'GFDL ESM2M'; 'IPSL CM5A LR'; 'IPSL CM5A MR'; 'IPSL CM5B LR'; 'MIROC ESM'; 'MIROC ESM CHEM'; 'MIROC5'; 'MPI ESM LR'; 'MPI ESM MR'; 'MRI CGCM3'; 'NOR ESM1M M'; 'NOR ESM1M ME'; '  '}';
% 
% figure(3)
% h1 = errorbar(x_axis,mean_trend_jet_mag,2.*std_trend_jet_mag);
% hold on 
% % h2 = plot(x_axis, historical_trend, 'r*');
% h3 = hline(taux_trend_30);
% h8 = hline(taux_trend_30_2);
% % h9 = hline(era_int_jet_u850_trend_30);
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% set(h8, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
% % set(h9, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
% % h4 = plot(1, can_esm2_ensemble_trends, 'r*');
% % h5 = plot(3, cnrm_cm5_ensemble_trends, 'r*');
% % h6 = plot(5, ipsl_cm5a_lr_ensemble_trends, 'r*');
% % h7 = plot(6, ipsl_cm5a_mr_ensemble_trends, 'r*');
% % h7 = plot(8, miroc_esm_ensemble_trends, 'r*');
% % h7 = plot(10, miroc5_ensemble_trends, 'r*');
% % h7 = plot(11, mpi_esm_lr_ensemble_trends, 'r*');
% % h7 = plot(12, mpi_esm_mr_ensemble_trends, 'r*');
% % h7 = plot(13, mri_cgcm3_ensemble_trends, 'r*');
% % h7 = plot(14, nor_esm1m_m_ensemble_trends, 'r*');
% 
% set(h1,'marker','o', 'MarkerFaceColor', 'b')
% set(h1,'linestyle','none')
% set(gca, 'XTickLabel', x_label)
% set(gca, 'XTick', 0:16)
% rotateXLabels( gca, 45 )
% ylim([-2.2 2.2])
% title('Windstress Jet Magnitude 25 year linear trends')
% ylabel('pa/25 years')
% 
% print -depsc allmodels_windstressjet_mag_whiskers_ensemble
% 
% 
% figure(4)
% h1 = errorbar(x_axis,mean_trend_jet_loc,2.*std_trend_jet_loc);
% hold on 
% % h2 = plot(x_axis, historical_trend_loc, 'r*');
% h3 = hline(lat_trend_30);
% h8 = hline(lat_trend_30_2);
% % h9 = hline(era_int_lat_u850_trend_30);
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% set(h8, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
% % set(h9, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
% % h4 = plot(1, can_esm2_ensemble_trends_loc, 'r*');
% % h5 = plot(3, cnrm_cm5_ensemble_trends_loc, 'r*');
% % h6 = plot(5, ipsl_cm5a_lr_ensemble_trends_loc, 'r*');
% % h7 = plot(6, ipsl_cm5a_mr_ensemble_trends_loc, 'r*');
% % h7 = plot(8, miroc_esm_ensemble_trends_loc, 'r*');
% % h7 = plot(10, miroc5_ensemble_trends_loc, 'r*');
% % h7 = plot(11, mpi_esm_lr_ensemble_trends_loc, 'r*');
% % h7 = plot(12, mpi_esm_mr_ensemble_trends_loc, 'r*');
% % h7 = plot(13, mri_cgcm3_ensemble_trends_loc, 'r*');
% % h7 = plot(14, nor_esm1m_m_ensemble_trends_loc, 'r*');
% 
% set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
% set(h1,'marker','o', 'MarkerFaceColor', 'b')
% set(h1,'linestyle','none')
% set(gca, 'XTickLabel', x_label)
% set(gca, 'XTick', 0:16)
% rotateXLabels( gca, 45 )
% ylim([-6 6])
% title('Windstress Jet Location 25 year linear trends')
% ylabel('Degrees Latitude/25 years')
% 
% print -depsc allmodels_windstressjet_loc_whiskers_ensemble