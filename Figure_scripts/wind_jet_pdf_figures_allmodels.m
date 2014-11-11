cd /data1/fesd1/jthom143/piControl_paper/Figures/Wind_Jet_PDFs
figure(1)
h1 = plot(can_esm2_jet_xi, can_esm2_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(can_esm2_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 16)
ylabel('Probability Density', 'fontsize', 20) 
legend([h1, h2, h3, h4, h5], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend', 'Reanalysis 2 Trend', 'ERA Int Trend')
set(gca, 'fontsize', 16)
print -depsc can_esm2_jet_mag_pdf


figure(2)
h1 = plot(ccsm4_jet_xi, ccsm4_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(ccsm4_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ccsm4_jet_mag_pdf


figure(3)
h1 = plot(cnrm_cm5_jet_xi, cnrm_cm5_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(cnrm_cm5_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc cnrm_cm5_jet_mag_pdf

figure(4)
h1 = plot(cnrm_cm52_jet_xi, cnrm_cm52_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
% h2 = vline(cnrm_cm52_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc cnrm_cm52_jet_mag_pdf

figure(5)
h1 = plot(gfdl_esm2g_jet_xi, gfdl_esm2g_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(gfdl_esm2g_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc gfdl_esm2g_jet_mag_pdf

figure(6)
h1 = plot(gfdl_esm2m_jet_xi, gfdl_esm2m_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(gfdl_esm2m_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc gfdl_esm2m_jet_mag_pdf

figure(7)
h1 = plot(ipsl_cm5a_lr_jet_xi, ipsl_cm5a_lr_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(ipsl_cm5a_lr_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ipsl_cm5a_lr_jet_mag_pdf

figure(8)
h1 = plot(ipsl_cm5a_mr_jet_xi, ipsl_cm5a_mr_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(ipsl_cm5a_mr_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ipsl_cm5a_mr_jet_mag_pdf

figure(9)
h1 = plot(ipsl_cm5b_lr_jet_xi, ipsl_cm5b_lr_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(ipsl_cm5b_lr_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ipsl_cm5b_lr_jet_mag_pdf

figure(10)
h1 = plot(miroc_esm_jet_xi, miroc_esm_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(miroc_esm_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc miroc_esm_jet_mag_pdf

figure(11)
h1 = plot(miroc_esm_chem_jet_xi, miroc_esm_chem_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(miroc_esm_chem_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc miroc_esm_chem_jet_mag_pdf

figure(12)
h1 = plot(miroc5_jet_xi, miroc5_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(miroc5_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)
xlim([-2 2])
ylim([0 1.2])
print -depsc miroc5_jet_mag_pdf

figure(13)
h1 = plot(mpi_esm_lr_jet_xi, mpi_esm_lr_jet_f);
hold on
h2 = vline(mpi_esm_lr_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc mpi_esm_lr_jet_mag_pdf

figure(14)
h1 = plot(mpi_esm_mr_jet_xi, mpi_esm_mr_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(mpi_esm_mr_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc mpi_esm_mr_jet_mag_pdf

figure(15)
h1 = plot(mri_cgcm3_jet_xi, mri_cgcm3_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(mri_cgcm3_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc mri_cgcm3_jet_mag_pdf

figure(16)
h1 = plot(nor_esm1m_m_jet_xi, nor_esm1m_m_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(nor_esm1m_m_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc nor_esm1m_m_jet_mag_pdf

figure(17)
h1 = plot(nor_esm1m_me_jet_xi, nor_esm1m_me_jet_f);
hold on
xlim([-2 2])
ylim([0 1.2])
h2 = vline(nor_esm1m_me_jet_trend_30_u850);
h3 = vline(jet_u850_trend_30);
h4 = vline(r2_jet_u850_trend_30);
h5 = vline(era_int_jet_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Trend (Pa/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc nor_esm1m_me_jet_mag_pdf


%% Jet Location
close all


cd /data1/fesd1/jthom143/piControl_paper/Figures/Wind_Jet_PDFs
figure(1)
h1 = plot(can_esm2_jet_loc_xi, can_esm2_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(can_esm2_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
legend([h1, h2, h3, h4, h5], 'Pi-control PDF', 'Historical Run Trend', 'Renanalysis 1 Trend', 'Reanalysis 2 Trend', 'ERA Int Trend' )
set(gca, 'fontsize', 16)

print -depsc can_esm2_jet_lat_pdf


figure(2)
h1 = plot(ccsm4_jet_loc_xi, ccsm4_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(ccsm4_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ccsm4_jet_lat_pdf


figure(3)
h1 = plot(cnrm_cm5_jet_loc_xi, cnrm_cm5_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(cnrm_cm5_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc cnrm_cm5_jet_lat_pdf

figure(4)
h1 = plot(cnrm_cm52_jet_loc_xi, cnrm_cm52_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
% h2 = vline(cnrm_cm52_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc cnrm_cm52_jet_lat_pdf

figure(5)
h1 = plot(gfdl_esm2g_jet_loc_xi, gfdl_esm2g_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(gfdl_esm2g_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc gfdl_esm2g_jet_lat_pdf

figure(6)
h1 = plot(gfdl_esm2m_jet_loc_xi, gfdl_esm2m_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(gfdl_esm2m_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc gfdl_esm2m_jet_lat_pdf

figure(7)
h1 = plot(ipsl_cm5a_lr_jet_loc_xi, ipsl_cm5a_lr_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(ipsl_cm5a_lr_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ipsl_cm5a_lr_jet_lat_pdf

figure(8)
h1 = plot(ipsl_cm5a_mr_jet_loc_xi, ipsl_cm5a_mr_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(ipsl_cm5a_mr_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ipsl_cm5a_mr_jet_lat_pdf

figure(9)
h1 = plot(ipsl_cm5b_lr_jet_loc_xi, ipsl_cm5b_lr_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(ipsl_cm5b_lr_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc ipsl_cm5b_lr_jet_lat_pdf

figure(10)
h1 = plot(miroc_esm_jet_loc_xi, miroc_esm_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(miroc_esm_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc miroc_esm_jet_lat_pdf

figure(11)
h1 = plot(miroc_esm_chem_jet_loc_xi, miroc_esm_chem_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(miroc_esm_chem_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc miroc_esm_chem_jet_lat_pdf

figure(12)
h1 = plot(miroc5_jet_loc_xi, miroc5_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(miroc5_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc miroc5_jet_lat_pdf

figure(13)
h1 = plot(mpi_esm_lr_jet_loc_xi, mpi_esm_lr_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(mpi_esm_lr_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc mpi_esm_lr_jet_lat_pdf

figure(14)
h1 = plot(mpi_esm_mr_jet_loc_xi, mpi_esm_mr_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(mpi_esm_mr_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc mpi_esm_mr_jet_lat_pdf

figure(15)
h1 = plot(mri_cgcm3_jet_loc_xi, mri_cgcm3_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(mri_cgcm3_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc mri_cgcm3_jet_lat_pdf

figure(16)
h1 = plot(nor_esm1m_m_jet_loc_xi, nor_esm1m_m_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(nor_esm1m_m_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc nor_esm1m_m_jet_lat_pdf

figure(17)
h1 = plot(nor_esm1m_me_jet_loc_xi, nor_esm1m_me_jet_loc_f);
hold on
xlim([-5 5])
ylim([0 .5])
h2 = vline(nor_esm1m_me_jet_loc_trend_30_u850);
h3 = vline(lat_u850_trend_30);
h4 = vline(r2_lat_u850_trend_30);
h5 = vline(era_int_lat_u850_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h4, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h5, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
xlabel('Linear Windstress Jet Location Trend (^o/25 years)', 'fontsize', 20) 
ylabel('Probability Density', 'fontsize', 20)  
set(gca, 'fontsize', 16)

print -depsc nor_esm1m_me_jet_lat_pdf


