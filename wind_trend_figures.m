%% Jet Location
figure(1)
plot(can_esm2_jet_xi, can_esm2_jet_f, 'r')
hold on
plot(cnrm_cm5_jet_xi      , cnrm_cm5_jet_f        , 'k')
plot(cnrm_cm52_jet_xi     , cnrm_cm52_jet_f       , 'm')
plot(gfdl_esm2g_jet_xi    , gfdl_esm2g_jet_f      , 'c' )
plot(gfdl_esm2m_jet_xi    , gfdl_esm2m_jet_f      , 'g' )
hR1 = vline(jet_u850_trend_30, '-k');
legend('CanESM2', 'CNRM CM5', 'CNRM CM5-2', 'GFDL ESM2G', 'GFDL ESM2M')
xlabel('Jet Trend (m/s/30 years)')
ylabel('Probability Density')


 
figure(8)
subplot(2,3,1)
plot(can_esm2_jet_xi, can_esm2_jet_f)
title('CanESM2', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-k');
hHist = vline(can_esm2_jet_trend_30, 'r');


subplot(2,3,2)
plot(cnrm_cm5_jet_xi      , cnrm_cm5_jet_f )
title('CNRM CM5', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-k');
hHist = vline(cnrm_cm5_jet_trend_30, 'r');



subplot(2,3,3)
plot(cnrm_cm52_jet_xi     , cnrm_cm52_jet_f )
title('CNRM CM5-2', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-k');
hHist = vline(cnrm_cm52_jet_trend_30, 'r');



subplot(2,3,4)
plot(gfdl_esm2g_jet_xi    , gfdl_esm2g_jet_f)
title('GFDL ESM2G', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-k');
hHist = vline(gfdl_esm2g_jet_trend_30, 'r');



subplot(2,3,5)
plot(gfdl_esm2m_jet_xi    , gfdl_esm2m_jet_f )
title('GFDL ESM2M', 'fontsize', 12)
ylim([0 1.5])
hR1 = vline(jet_u850_trend_30, '-k');
hHist = vline(gfdl_esm2m_jet_trend_30, 'r');


