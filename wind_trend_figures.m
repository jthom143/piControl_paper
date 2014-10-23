%% Jet Location
figure(1)
plot(can_esm2_jet_xi, can_esm2_jet_f, 'r')
hold on
plot(cnrm_cm5_jet_xi      , cnrm_cm5_jet_f        , 'k')
plot(gfdl_esm2m_jet_xi    , gfdl_esm2m_jet_f      , 'g' )
plot(mpi_esm_lr_jet_xi    , mpi_esm_lr_jet_f      , 'b' )
hR1 = vline(jet_u850_trend_30, '-g');
legend('CanESM2', 'CNRM CM5', 'GFDL ESM2M', 'MPI ESM LR')
xlabel('Jet Trend (m/s/30 years)')
ylabel('Probability Density')


 
figure(8)
subplot(2,2,1)
plot(can_esm2_jet_xi, can_esm2_jet_f)
title('CanESM2', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-g');
hHist = vline(can_esm2_jet_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);
ylabel('Probability Density')


subplot(2,2,2)
plot(cnrm_cm5_jet_xi      , cnrm_cm5_jet_f )
title('CNRM CM5', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-g');
hHist = vline(cnrm_cm5_jet_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);



subplot(2,2,3)
plot(gfdl_esm2m_jet_xi    , gfdl_esm2m_jet_f )
title('GFDL ESM2M', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-g');
hHist = vline(gfdl_esm2m_jet_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);




subplot(2,2,4)
plot(mpi_esm_lr_jet_xi, mpi_esm_lr_jet_f)
title('MPI ESM LR', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-g');
hHist = vline(mpi_esm_lr_jet_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);
xlabel('25 year trend (m/s/25yrs)')



 
figure(9)
subplot(2,2,1)
plot(can_esm2_jet_loc_xi, can_esm2_jet_loc_f)
title('CanESM2', 'fontsize', 12)
%ylim([0 1.5])
hR1 = vline(lat_u850_trend_30, '-g');
hHist = vline(can_esm2_jet_loc_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);
ylabel('Probability Density')


subplot(2,2,2)
plot(cnrm_cm5_jet_loc_xi      , cnrm_cm5_jet_loc_f )
title('CNRM CM5', 'fontsize', 12)
%ylim([0 1.5])
hR1 = vline(lat_u850_trend_30, '-g');
hHist = vline(cnrm_cm5_jet_loc_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);



subplot(2,2,3)
plot(gfdl_esm2m_jet_loc_xi    , gfdl_esm2m_jet_loc_f )
title('GFDL ESM2M', 'fontsize', 12)
%ylim([0 1.5])
hR1 = vline(lat_u850_trend_30, '-g');
hHist = vline(gfdl_esm2m_jet_loc_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);




subplot(2,2,4)
plot(mpi_esm_lr_jet_loc_xi, mpi_esm_lr_jet_loc_f)
title('MPI ESM LR', 'fontsize', 12)
%ylim([0 1.5])
hR1 = vline(lat_u850_trend_30, '-g');
hHist = vline(mpi_esm_lr_jet_loc_trend_30_u850, 'r');
set(hR1,  'color', [0, 0.8, 0], 'linewidth', 1.5);
set(hHist, 'linewidth', 1.5);
xlabel('25 year trend (degrees/25yrs)')





