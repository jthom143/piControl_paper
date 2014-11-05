%% Timeseries 
cd /data1/fesd1/jthom143/piControl_paper/Figures/Wind_Jet_Timeseries


figure(1)
plot(can_esm2_time_year, can_esm2_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CanESM2_jet_mag_timeseries

figure(2)
plot(ccsm4_time_year, ccsm4_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CCSM4_jet_mag_timeseries


figure(3)
plot(cnrm_cm5_time_year, cnrm_cm5_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CNRM_CM5_jet_mag_timeseries


figure(4)
plot(cnrm_cm52_time_year, cnrm_cm52_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CNRM_CM52_jet_mag_timeseries


figure(5)
plot(gfdl_esm2g_time_year, gfdl_esm2g_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc GFDL_ESM2G_jet_mag_timeseries


figure(6)
plot(gfdl_esm2m_time_year, gfdl_esm2m_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc GFDL_ESM2M_jet_mag_timeseries


figure(7)
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc IPSL_CM5a_LR_jet_mag_timeseries


figure(8)
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc IPSL_CM5a_MR_jet_mag_timeseries


figure(9)
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc IPSL_CM5b_LR_jet_mag_timeseries

figure(10)
plot(miroc_esm_time_year, miroc_esm_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MIROC_ESM_jet_mag_timeseries

figure(11)
plot(miroc_esm_chem_time_year, miroc_esm_chem_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MIROC_ESM_CHEM_jet_mag_timeseries

figure(12)
plot(miroc5_time_year, miroc5_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MIROC5_jet_mag_timeseries

figure(13)
plot(mpi_esm_lr_time_year, mpi_esm_lr_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MPI_ESM_LR_jet_mag_timeseries

figure(14)
plot(mpi_esm_mr_time_year, mpi_esm_mr_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MPI_ESM_MR_jet_mag_timeseries

figure(15)
plot(mri_cgcm3_time_year, mri_cgcm3_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MRI_CGCM3_jet_mag_timeseries

figure(16)
plot(nor_esm1m_m_time_year, nor_esm1m_m_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc NOR_ESM1m_M_jet_mag_timeseries

figure(17)
plot(nor_esm1m_me_time_year, nor_esm1m_me_jet_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Magnitude (m/s)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc NOR_ESM1m_ME_jet_mag_timeseries

close all

% Jet Location 
%% Timeseries 
cd /data1/fesd1/jthom143/piControl_paper/Figures/Wind_Jet_Timeseries


figure(1)
plot(can_esm2_time_year, can_esm2_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CanESM2_jet_loc_timeseries

figure(2)
plot(ccsm4_time_year, ccsm4_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CCSM4_jet_loc_timeseries


figure(3)
plot(cnrm_cm5_time_year, cnrm_cm5_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CNRM_CM5_jet_loc_timeseries


figure(4)
plot(cnrm_cm52_time_year, cnrm_cm52_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc CNRM_CM52_jet_loc_timeseries


figure(5)
plot(gfdl_esm2g_time_year, gfdl_esm2g_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc GFDL_ESM2G_jet_loc_timeseries


figure(6)
plot(gfdl_esm2m_time_year, gfdl_esm2m_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc GFDL_ESM2M_jet_loc_timeseries


figure(7)
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc IPSL_CM5a_LR_jet_loc_timeseries


figure(8)
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc IPSL_CM5a_MR_jet_loc_timeseries


figure(9)
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc IPSL_CM5b_LR_jet_loc_timeseries

figure(10)
plot(miroc_esm_time_year, miroc_esm_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MIROC_ESM_jet_loc_timeseries

figure(11)
plot(miroc_esm_chem_time_year, miroc_esm_chem_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MIROC_ESM_CHEM_jet_loc_timeseries

figure(12)
plot(miroc5_time_year, miroc5_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MIROC5_jet_loc_timeseries

figure(13)
plot(mpi_esm_lr_time_year, mpi_esm_lr_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MPI_ESM_LR_jet_loc_timeseries

figure(14)
plot(mpi_esm_mr_time_year, mpi_esm_mr_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MPI_ESM_MR_jet_loc_timeseries

figure(15)
plot(mri_cgcm3_time_year, mri_cgcm3_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc MRI_CGCM3_jet_loc_timeseries

figure(16)
plot(nor_esm1m_m_time_year, nor_esm1m_m_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc NOR_ESM1m_M_jet_loc_timeseries

figure(17)
plot(nor_esm1m_me_time_year, nor_esm1m_me_jet_loc_DJF)
xlabel('Time (years)', 'fontsize', 20)
ylabel('Jet Location (degrees)', 'fontsize', 20); set(gca, 'fontsize', 20)

print -depsc NOR_ESM1m_ME_jet_loc_timeseries
