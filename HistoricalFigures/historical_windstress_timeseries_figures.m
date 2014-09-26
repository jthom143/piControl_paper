%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Historical Run Windstress DJF Figures 
% 
% Script create historical jet figures 
% Resulting jet location and magnitude are for DJF only
%
% Jordan Thomas 
% Created: Sept 24, 2014
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Figure Parameters
tsheight = 10;
tswidth = 40;
pdfheight = 20;
pdfwidth = 16;

leftedge=1.2;
rightedge=0.4;   
topedge=1;
bottomedge=1.5;
spacex=0.2;
spacey=0.2;
fontsize=16;
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperSize', [tswidth tsheight]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 tswidth tsheight]);
set(gca, 'fontsize', fontsize)

%% Plot Jet Magnitude timeseries

%CanESM2

begin_time = findnearest(1982, can_esm2_time_year);
end_time   = findnearest(2012, can_esm2_time_year);


figure
plot(can_esm2_time_year, can_esm2_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('CanESM2 Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(can_esm2_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(can_esm2_time_year(begin_time:end_time), can_esm2_jet_trend(1)*can_esm2_time_year(begin_time:end_time)+can_esm2_jet_trend(2), 'r', 'linewidth',2)

print -depsc CanESM2_jet_timeseries

% CCSM4

begin_time = findnearest(1982, ccsm4_time_year);
end_time   = findnearest(2012, ccsm4_time_year);


figure
plot(ccsm4_time_year, ccsm4_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('CCSM4 Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(ccsm4_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ccsm4_time_year(begin_time:end_time), ccsm4_jet_trend(1)*ccsm4_time_year(begin_time:end_time)+ccsm4_jet_trend(2), 'r', 'linewidth',2)


print -depsc CCSM4_jet_timeseries

% CMCC CESM

begin_time = findnearest(1982, cmcc_cesm_time_year);
end_time   = findnearest(2012, cmcc_cesm_time_year);


figure
plot(cmcc_cesm_time_year, cmcc_cesm_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('CMCC CESM Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(cmcc_cesm_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cmcc_cesm_time_year(begin_time:end_time), cmcc_cesm_jet_trend(1)*cmcc_cesm_time_year(begin_time:end_time)+cmcc_cesm_jet_trend(2), 'r', 'linewidth',2)


print -depsc CMCC_CESM_jet_timeseries

% CMCC CM

begin_time = findnearest(1982, cmcc_cm_time_year);
end_time   = findnearest(2012, cmcc_cm_time_year);


figure
plot(cmcc_cm_time_year, cmcc_cm_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('CMCC CM Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(cmcc_cm_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cmcc_cm_time_year(begin_time:end_time), cmcc_cm_jet_trend(1)*cmcc_cm_time_year(begin_time:end_time)+cmcc_cm_jet_trend(2), 'r', 'linewidth',2)


print -depsc CMCC_CM_jet_timeseries

% CMCC CMs

begin_time = findnearest(1982, cmcc_cms_time_year);
end_time   = findnearest(2012, cmcc_cms_time_year);


figure
plot(cmcc_cms_time_year, cmcc_cms_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('CMCC CMs Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(cmcc_cms_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cmcc_cms_time_year(begin_time:end_time), cmcc_cms_jet_trend(1)*cmcc_cms_time_year(begin_time:end_time)+cmcc_cms_jet_trend(2), 'r', 'linewidth',2)


print -depsc CMCC_CMs_jet_timeseries

% CNRM CM5

begin_time = findnearest(1982, cnrm_cm5_time_year);
end_time   = findnearest(2012, cnrm_cm5_time_year);


figure
plot(cnrm_cm5_time_year, cnrm_cm5_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('CNRM CM5 Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(cnrm_cm5_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cnrm_cm5_time_year(begin_time:end_time), cnrm_cm5_jet_trend(1)*cnrm_cm5_time_year(begin_time:end_time)+cnrm_cm5_jet_trend(2), 'r', 'linewidth',2)


print -depsc CNRM_CM5_jet_timeseries

% GFDL ESM2G

begin_time = findnearest(1982, gfdl_esm2g_time_year);
end_time   = findnearest(2012, gfdl_esm2g_time_year);


figure
plot(gfdl_esm2g_time_year, gfdl_esm2g_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('GFDL ESM2G Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(gfdl_esm2g_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(gfdl_esm2g_time_year(begin_time:end_time), gfdl_esm2g_jet_trend(1)*gfdl_esm2g_time_year(begin_time:end_time)+gfdl_esm2g_jet_trend(2), 'r', 'linewidth',2)


print -depsc GFDL_ESM2G_jet_timeseries

% GFDL ESM2M

begin_time = findnearest(1982, gfdl_esm2m_time_year);
end_time   = findnearest(2012, gfdl_esm2m_time_year);


figure
plot(gfdl_esm2m_time_year, gfdl_esm2m_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('GFDL ESM2M Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([0.13 0.23])
h1 = hline(mean(gfdl_esm2m_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(gfdl_esm2m_time_year(begin_time:end_time), gfdl_esm2m_jet_trend(1)*gfdl_esm2m_time_year(begin_time:end_time)+gfdl_esm2m_jet_trend(2), 'r', 'linewidth',2)


print -depsc GFDL_ESM2M_jet_timeseries

% IPSL CM5a LR

begin_time = findnearest(1982, ipsl_cm5a_lr_time_year);
end_time   = findnearest(2012, ipsl_cm5a_lr_time_year);


figure
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('IPSL CM5a LR Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([0.13 0.23])
h1 = hline(mean(ipsl_cm5a_lr_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ipsl_cm5a_lr_time_year(begin_time:end_time), ipsl_cm5a_lr_jet_trend(1)*ipsl_cm5a_lr_time_year(begin_time:end_time)+ipsl_cm5a_lr_jet_trend(2), 'r', 'linewidth',2)


print -depsc IPSL_CM5a_LR_jet_timeseries

% IPSL CM5a MR

begin_time = findnearest(1982, ipsl_cm5a_mr_time_year);
end_time   = findnearest(2012, ipsl_cm5a_mr_time_year);


figure
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('IPSL CM5a MR Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([0.13 0.23])
h1 = hline(mean(ipsl_cm5a_mr_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ipsl_cm5a_mr_time_year(begin_time:end_time), ipsl_cm5a_mr_jet_trend(1)*ipsl_cm5a_mr_time_year(begin_time:end_time)+ipsl_cm5a_mr_jet_trend(2), 'r', 'linewidth',2)


print -depsc IPSL_CM5a_MR_jet_timeseries

% IPSL CM5b LR

begin_time = findnearest(1982, ipsl_cm5b_lr_time_year);
end_time   = findnearest(2012, ipsl_cm5b_lr_time_year);


figure
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('IPSL CM5b LR Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([0.13 0.23])
h1 = hline(mean(ipsl_cm5b_lr_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ipsl_cm5b_lr_time_year(begin_time:end_time), ipsl_cm5b_lr_jet_trend(1)*ipsl_cm5b_lr_time_year(begin_time:end_time)+ipsl_cm5b_lr_jet_trend(2), 'r', 'linewidth',2)


print -depsc IPSL_CM5b_LR_jet_timeseries

% MIROC ESM

begin_time = findnearest(1982, miroc_esm_time_year);
end_time   = findnearest(2012, miroc_esm_time_year);


figure
plot(miroc_esm_time_year, miroc_esm_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('MIROC ESM Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([0.13 0.23])
h1 = hline(mean(miroc_esm_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(miroc_esm_time_year(begin_time:end_time), miroc_esm_jet_trend(1)*miroc_esm_time_year(begin_time:end_time)+miroc_esm_jet_trend(2), 'r', 'linewidth',2)


print -depsc MIROC_ESM_jet_timeseries

% MIROC ESM CHEM

begin_time = findnearest(1982, miroc_esm_chem_time_year);
end_time   = findnearest(2012, miroc_esm_chem_time_year);


figure
plot(miroc_esm_chem_time_year, miroc_esm_chem_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('MIROC ESM CHEM Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([0.13 0.23])
h1 = hline(mean(miroc_esm_chem_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(miroc_esm_chem_time_year(begin_time:end_time), miroc_esm_chem_jet_trend(1)*miroc_esm_chem_time_year(begin_time:end_time)+miroc_esm_chem_jet_trend(2), 'r', 'linewidth',2)


print -depsc MIROC_ESM_CHEM_jet_timeseries

% MIROC5

begin_time = findnearest(1982, miroc5_time_year);
end_time   = findnearest(2012, miroc5_time_year);


figure
plot(miroc5_time_year, miroc5_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('MIROC5 Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(miroc5_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(miroc5_time_year(begin_time:end_time), miroc5_jet_trend(1)*miroc5_time_year(begin_time:end_time)+miroc5_jet_trend(2), 'r', 'linewidth',2)


print -depsc MIROC5_jet_timeseries

% MPI ESM LR

begin_time = findnearest(1982, mpi_esm_lr_time_year);
end_time   = findnearest(2012, mpi_esm_lr_time_year);


figure
plot(mpi_esm_lr_time_year, mpi_esm_lr_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('MPI ESM LR Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(mpi_esm_lr_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(mpi_esm_lr_time_year(begin_time:end_time), mpi_esm_lr_jet_trend(1)*mpi_esm_lr_time_year(begin_time:end_time)+mpi_esm_lr_jet_trend(2), 'r', 'linewidth',2)


print -depsc MPI_ESM_LR_jet_timeseries

% MPI ESM MR

begin_time = findnearest(1982, mpi_esm_mr_time_year);
end_time   = findnearest(2012, mpi_esm_mr_time_year);


figure
plot(mpi_esm_mr_time_year, mpi_esm_mr_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('MPI ESM MR Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(mpi_esm_mr_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(mpi_esm_mr_time_year(begin_time:end_time), mpi_esm_mr_jet_trend(1)*mpi_esm_mr_time_year(begin_time:end_time)+mpi_esm_mr_jet_trend(2), 'r', 'linewidth',2)


print -depsc MPI_ESM_MR_jet_timeseries

% MRI CGCM3

begin_time = findnearest(1982, mri_cgcm3_time_year);
end_time   = findnearest(2012, mri_cgcm3_time_year);


figure
plot(mri_cgcm3_time_year, mri_cgcm3_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('MRI CGCM3 Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(mri_cgcm3_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(mri_cgcm3_time_year(begin_time:end_time), mri_cgcm3_jet_trend(1)*mri_cgcm3_time_year(begin_time:end_time)+mri_cgcm3_jet_trend(2), 'r', 'linewidth',2)


print -depsc MRI_CGCM3_jet_timeseries

% NOR ESM1m ME

begin_time = findnearest(1982, nor_esm1m_me_time_year);
end_time   = findnearest(2012, nor_esm1m_me_time_year);


figure
plot(nor_esm1m_me_time_year, nor_esm1m_me_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Windstress Magnitude (Pa)', 'fontsize', fontsize)
title('NOR ESM1m ME Historical Jet DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([0.13 0.23])
h1 = hline(mean(nor_esm1m_me_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(nor_esm1m_me_time_year(begin_time:end_time), nor_esm1m_me_jet_trend(1)*nor_esm1m_me_time_year(begin_time:end_time)+nor_esm1m_me_jet_trend(2), 'r', 'linewidth',2)


print -depsc NOR_ESM1m_ME_jet_timeseries

%% Plot Jet Location timeseries

%CanESM2

begin_time = findnearest(1982, can_esm2_time_year);
end_time   = findnearest(2012, can_esm2_time_year);


figure
plot(can_esm2_time_year, can_esm2_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('CanESM2 Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(can_esm2_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(can_esm2_time_year(begin_time:end_time), can_esm2_jet_loc_trend(1)*can_esm2_time_year(begin_time:end_time)+can_esm2_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc CanESM2_jet_loc_timeseries

% CCSM4

begin_time = findnearest(1982, ccsm4_time_year);
end_time   = findnearest(2012, ccsm4_time_year);


figure
plot(ccsm4_time_year, ccsm4_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('CCSM4 Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(ccsm4_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ccsm4_time_year(begin_time:end_time), ccsm4_jet_loc_trend(1)*ccsm4_time_year(begin_time:end_time)+ccsm4_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc CCSM4_jet_loc_timeseries

% CMCC CESM

begin_time = findnearest(1982, cmcc_cesm_time_year);
end_time   = findnearest(2012, cmcc_cesm_time_year);


figure
plot(cmcc_cesm_time_year, cmcc_cesm_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('CMCC CESM Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([-55 -40])
h1 = hline(mean(cmcc_cesm_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cmcc_cesm_time_year(begin_time:end_time), cmcc_cesm_jet_loc_trend(1)*cmcc_cesm_time_year(begin_time:end_time)+cmcc_cesm_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc CMCC_CESM_jet_loc_timeseries

% CMCC CM

begin_time = findnearest(1982, cmcc_cm_time_year);
end_time   = findnearest(2012, cmcc_cm_time_year);


figure
plot(cmcc_cm_time_year, cmcc_cm_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('CMCC CM Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([-55 -40])
h1 = hline(mean(cmcc_cm_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cmcc_cm_time_year(begin_time:end_time), cmcc_cm_jet_loc_trend(1)*cmcc_cm_time_year(begin_time:end_time)+cmcc_cm_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc CMCC_CM_jet_loc_timeseries

% CMCC CMs

begin_time = findnearest(1982, cmcc_cms_time_year);
end_time   = findnearest(2012, cmcc_cms_time_year);


figure
plot(cmcc_cms_time_year, cmcc_cms_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('CMCC CMs Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([-55 -40])
h1 = hline(mean(cmcc_cms_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cmcc_cms_time_year(begin_time:end_time), cmcc_cms_jet_loc_trend(1)*cmcc_cms_time_year(begin_time:end_time)+cmcc_cms_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc CMCC_CMs_jet_loc_timeseries

% CNRM CM5

begin_time = findnearest(1982, cnrm_cm5_time_year);
end_time   = findnearest(2012, cnrm_cm5_time_year);


figure
plot(cnrm_cm5_time_year, cnrm_cm5_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('CNRM CM5 Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(cnrm_cm5_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(cnrm_cm5_time_year(begin_time:end_time), cnrm_cm5_jet_loc_trend(1)*cnrm_cm5_time_year(begin_time:end_time)+cnrm_cm5_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc CNRM_CM5_jet_loc_timeseries

% GFDL ESM2G

begin_time = findnearest(1982, gfdl_esm2g_time_year);
end_time   = findnearest(2012, gfdl_esm2g_time_year);


figure
plot(gfdl_esm2g_time_year, gfdl_esm2g_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('GFDL ESM2G Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(gfdl_esm2g_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(gfdl_esm2g_time_year(begin_time:end_time), gfdl_esm2g_jet_loc_trend(1)*gfdl_esm2g_time_year(begin_time:end_time)+gfdl_esm2g_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc GFDL_ESM2G_jet_loc_timeseries

% GFDL ESM2M

begin_time = findnearest(1982, gfdl_esm2m_time_year);
end_time   = findnearest(2012, gfdl_esm2m_time_year);


figure
plot(gfdl_esm2m_time_year, gfdl_esm2m_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('GFDL ESM2M Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(gfdl_esm2m_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(gfdl_esm2m_time_year(begin_time:end_time), gfdl_esm2m_jet_loc_trend(1)*gfdl_esm2m_time_year(begin_time:end_time)+gfdl_esm2m_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc GFDL_ESM2M_jet_loc_timeseries

% IPSL CM5a LR

begin_time = findnearest(1982, ipsl_cm5a_lr_time_year);
end_time   = findnearest(2012, ipsl_cm5a_lr_time_year);


figure
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('IPSL CM5a LR Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(ipsl_cm5a_lr_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ipsl_cm5a_lr_time_year(begin_time:end_time), ipsl_cm5a_lr_jet_loc_trend(1)*ipsl_cm5a_lr_time_year(begin_time:end_time)+ipsl_cm5a_lr_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc IPSL_CM5a_LR_jet_loc_timeseries

% IPSL CM5a MR

begin_time = findnearest(1982, ipsl_cm5a_mr_time_year);
end_time   = findnearest(2012, ipsl_cm5a_mr_time_year);


figure
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('IPSL CM5a MR Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(ipsl_cm5a_mr_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ipsl_cm5a_mr_time_year(begin_time:end_time), ipsl_cm5a_mr_jet_loc_trend(1)*ipsl_cm5a_mr_time_year(begin_time:end_time)+ipsl_cm5a_mr_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc IPSL_CM5a_MR_jet_loc_timeseries

% IPSL CM5b LR

begin_time = findnearest(1982, ipsl_cm5b_lr_time_year);
end_time   = findnearest(2012, ipsl_cm5b_lr_time_year);


figure
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('IPSL CM5b LR Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(ipsl_cm5b_lr_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(ipsl_cm5b_lr_time_year(begin_time:end_time), ipsl_cm5b_lr_jet_loc_trend(1)*ipsl_cm5b_lr_time_year(begin_time:end_time)+ipsl_cm5b_lr_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc IPSL_CM5b_LR_jet_loc_timeseries

% MIROC ESM

begin_time = findnearest(1982, miroc_esm_time_year);
end_time   = findnearest(2012, miroc_esm_time_year);


figure
plot(miroc_esm_time_year, miroc_esm_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('MIROC ESM Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(miroc_esm_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(miroc_esm_time_year(begin_time:end_time), miroc_esm_jet_loc_trend(1)*miroc_esm_time_year(begin_time:end_time)+miroc_esm_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc MIROC_ESM_jet_loc_timeseries

% MIROC ESM CHEM

begin_time = findnearest(1982, miroc_esm_chem_time_year);
end_time   = findnearest(2012, miroc_esm_chem_time_year);


figure
plot(miroc_esm_chem_time_year, miroc_esm_chem_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('MIROC ESM CHEM Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(miroc_esm_chem_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(miroc_esm_chem_time_year(begin_time:end_time), miroc_esm_chem_jet_loc_trend(1)*miroc_esm_chem_time_year(begin_time:end_time)+miroc_esm_chem_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc MIROC_ESM_CHEM_jet_loc_timeseries

% MIROC5

begin_time = findnearest(1982, miroc5_time_year);
end_time   = findnearest(2012, miroc5_time_year);


figure
plot(miroc5_time_year, miroc5_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('MIROC5 Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(miroc5_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(miroc5_time_year(begin_time:end_time), miroc5_jet_loc_trend(1)*miroc5_time_year(begin_time:end_time)+miroc5_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc MIROC5_jet_loc_timeseries

% MPI ESM LR

begin_time = findnearest(1982, mpi_esm_lr_time_year);
end_time   = findnearest(2012, mpi_esm_lr_time_year);


figure
plot(mpi_esm_lr_time_year, mpi_esm_lr_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('MPI ESM LR Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010]) 
ylim([-55 -40])
h1 = hline(mean(mpi_esm_lr_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(mpi_esm_lr_time_year(begin_time:end_time), mpi_esm_lr_jet_loc_trend(1)*mpi_esm_lr_time_year(begin_time:end_time)+mpi_esm_lr_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc MPI_ESM_LR_jet_loc_timeseries

% MPI ESM MR

begin_time = findnearest(1982, mpi_esm_mr_time_year);
end_time   = findnearest(2012, mpi_esm_mr_time_year);


figure
plot(mpi_esm_mr_time_year, mpi_esm_mr_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('MPI ESM MR Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([-55 -40])
h1 = hline(mean(mpi_esm_mr_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(mpi_esm_mr_time_year(begin_time:end_time), mpi_esm_mr_jet_loc_trend(1)*mpi_esm_mr_time_year(begin_time:end_time)+mpi_esm_mr_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc MPI_ESM_MR_jet_loc_timeseries

% MRI CGCM3

begin_time = findnearest(1982, mri_cgcm3_time_year);
end_time   = findnearest(2012, mri_cgcm3_time_year);


figure
plot(mri_cgcm3_time_year, mri_cgcm3_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('MRI CGCM3 Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([-55 -40])
h1 = hline(mean(mri_cgcm3_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(mri_cgcm3_time_year(begin_time:end_time), mri_cgcm3_jet_loc_trend(1)*mri_cgcm3_time_year(begin_time:end_time)+mri_cgcm3_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc MRI_CGCM3_jet_loc_timeseries

% NOR ESM1m ME

begin_time = findnearest(1982, nor_esm1m_me_time_year);
end_time   = findnearest(2012, nor_esm1m_me_time_year);


figure
plot(nor_esm1m_me_time_year, nor_esm1m_me_lat_jet_DJF, 'linewidth', 2)
xlabel('Time (years)', 'fontsize', fontsize)
ylabel('Latitude (degrees)', 'fontsize', fontsize)
title('NOR ESM1m ME Historical Jet Location DJF Timeseries', 'fontsize', fontsize+4)
xlim([1850 2010])
ylim([-55 -40])
h1 = hline(mean(nor_esm1m_me_lat_jet_DJF(1:100)));

set(h1, 'linestyle', '--', 'linewidth', 2, 'color', 'k')

hold on 
plot(nor_esm1m_me_time_year(begin_time:end_time), nor_esm1m_me_jet_loc_trend(1)*nor_esm1m_me_time_year(begin_time:end_time)+nor_esm1m_me_jet_loc_trend(2), 'r', 'linewidth',2)


print -depsc NOR_ESM1m_ME_jet_loc_timeseries
