%% Windstress Trend Analysis Figures 

%% Jet Location
figure(1)
plot(can_esm2_jet_xi, can_esm2_jet_f, 'r-.')
hold on
plot(ccsm4_jet_xi, ccsm4_jet_f, 'b-o' )
plot(cmcc_cesm_jet_xi, cmcc_cesm_jet_f, 'g-o')
plot(cmcc_cm_jet_xi      , cmcc_cm_jet_f          , 'r-o')
plot(cmcc_cms_jet_xi     , cmcc_cms_jet_f         , 'c-o')
plot(cnrm_cm5_jet_xi      , cnrm_cm5_jet_f        , 'k-o')
plot(cnrm_cm52_jet_xi     , cnrm_cm52_jet_f       , 'm-o')
plot(gfdl_esm2g_jet_xi    , gfdl_esm2g_jet_f      , 'c-' )
plot(gfdl_esm2m_jet_xi    , gfdl_esm2m_jet_f      , 'g-' )
plot(ipsl_cm5a_lr_jet_x   , ipsl_cm5a_lr_jet_f  , 'b-*')
plot(ipsl_cm5a_mr_jet_xi  , ipsl_cm5a_mr_jet_f  , 'g-*')
plot(ipsl_cm5b_lr_jet_xi  , ipsl_cm5b_lr_jet_f  , 'r-*')
plot(miroc_esm_jet_xi     , miroc_esm_jet_f     , 'c-*')
plot(miroc_esm_chem_jet_xi, miroc_esm_chem_jet_f, 'k-*')
plot(mri_cgcm3_jet_xi     , mri_cgcm3_jet_f       , 'b-s')
plot(mpi_esm_lr_jet_xi    , mpi_esm_lr_jet_f      , 'g-s')
plot(mpi_esm_mr_jet_xi    , mpi_esm_mr_jet_f      , 'r-s')
plot(miroc5_jet_xi        , miroc5_jet_f          , 'r-' )
%plot(nor_esm1m_m_jet_xi   , nor_esm1m_m_jet_f     , 'c-s')
plot(nor_esm1m_me_jet_xi  , nor_esm1m_me_jet_f    , 'k-s')

plot(cm2mc_jet_xi, cm2mc_jet_f, 'b', 'linewidth', 2)
plot(cm21_jet_xi , cm21_jet_f , 'g', 'linewidth', 2)

hR1 = vline(taux_trend_30, '-k');
%hR2 = vline(taux_trend_30_2, '-.k');

legend('CanESM2','CCSM4', 'CMCC CESM', 'CMCC CM', 'CMCC CMs','CNRM CM5','CNRM CM5-2','GFDL ESM2M','GFDL ESM2G', 'IPSL CM5a LR', 'IPSL CM5a MR', 'IPSL CM5b LR','MIROC ESM','MIROC ESM CHEM', 'MRI CGCM3', 'MPI ESM LR', 'MPI ESM MR', 'MIROC5', 'NOR ESM1m ME', 'CM2Mc', 'CM2.1')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 895])
xlabel('30 Year Linear Trend (Pa/30 years)', 'fontsize', 12)
ylabel('Probability density estimate', 'fontsize', 12)
title('Jet Magnitude PDFs', 'fontsize', 20)

% Create Model Labels for x-axis
model_labels = {'   ';'CanESM2'; 'CCSM4';'CMCC CESM'; 'CMCC CM'; 'CMCC CMs'; 'CNRM CM5'; 'CNRM CM5-2';'GFDL ESM2G';'GFDL_ESM2M'; 'IPSL CM5a LR'; 'IPSL CM5a MR';...
    'IPSL CM5b LR'; 'MIROC ESM'; 'MIROC ESM CHEM';'MIROC5';'MPI ESM LR'; 'MPI ESM MR';'MRI CGCM3'; 'NOR ESM1m M'; 'NOR ESM1m ME';...
    'CM2Mc'; 'CM2.1'; '   '};

% Plot 2 x standard deviation and 95th percentile

figure(2)
h1 = plot(1, 2*can_esm2_std_jet, '*', 'markersize', 12);
hold on
plot(2, 2*ccsm4_std_jet, '*', 'markersize', 12);
plot(3, 2*cmcc_cesm_std_jet, '*', 'markersize', 12)
plot(4, 2*cmcc_cm_std_jet, '*', 'markersize', 12)
plot(5, 2*cmcc_cms_std_jet, '*', 'markersize', 12)
plot(6, 2*cnrm_cm5_std_jet, '*', 'markersize', 12)
plot(7, 2*cnrm_cm52_std_jet, '*', 'markersize', 12)
plot(8, 2*gfdl_esm2g_std_jet, '*', 'markersize', 12)
plot(9, 2*gfdl_esm2m_std_jet, '*', 'markersize', 12)
plot(10, 2*ipsl_cm5a_lr_std_jet, '*', 'markersize', 12)
plot(11, 2*ipsl_cm5a_mr_std_jet, '*', 'markersize', 12)
plot(12, 2*ipsl_cm5b_lr_std_jet, '*', 'markersize', 12)
plot(13, 2*miroc_esm_std_jet, '*', 'markersize', 12)
plot(14, 2*miroc_esm_chem_std_jet, '*', 'markersize', 12)
plot(15, 2*miroc5_std_jet, '*', 'markersize', 12)
plot(16, 2*mpi_esm_lr_std_jet, '*', 'markersize', 12)
plot(17, 2*mpi_esm_mr_std_jet, '*', 'markersize', 12)
plot(18, 2*mri_cgcm3_std_jet, '*', 'markersize', 12)
%plot(19, 2*nor_esm1m_m_std_jet, '*', 'markersize', 12)
plot(20, 2*nor_esm1m_me_std_jet, '*', 'markersize', 12)
plot(21, 2*cm2mc_std_jet, '*', 'markersize', 12)
plot(22, 2*cm21_std_jet, '*', 'markersize', 12)

xlim([0,23])
hR1 = hline(taux_trend_30, '-k');
%hR2 = hline(taux_trend_30_2, '-.k');

h2 = plot(1, percentile_jet(1), 'r*', 'markersize', 12);
plot(2, percentile_jet(2), 'r*', 'markersize', 12)
plot(3, percentile_jet(3), 'r*', 'markersize', 12)
plot(4, percentile_jet(4), 'r*', 'markersize', 12)
plot(5, percentile_jet(5), 'r*', 'markersize', 12)
plot(6, percentile_jet(6), 'r*', 'markersize', 12)
plot(7, percentile_jet(7), 'r*', 'markersize', 12)
plot(8, percentile_jet(8), 'r*', 'markersize', 12)
plot(9, percentile_jet(9), 'r*', 'markersize', 12)
plot(10, percentile_jet(10), 'r*', 'markersize', 12)
plot(11, percentile_jet(11), 'r*', 'markersize', 12)
plot(12, percentile_jet(12), 'r*', 'markersize', 12)
plot(13, percentile_jet(13), 'r*', 'markersize', 12)
plot(14, percentile_jet(14), 'r*', 'markersize', 12)
plot(15, percentile_jet(15), 'r*', 'markersize', 12)
plot(16, percentile_jet(16), 'r*', 'markersize', 12)
plot(17, percentile_jet(17), 'r*', 'markersize', 12)
plot(18, percentile_jet(18), 'r*', 'markersize', 12)
%plot(19, percentile(19), 'r*', 'markersize', 12)
plot(20, percentile_jet(20), 'r*', 'markersize', 12)
plot(21, percentile_jet(21), 'r*', 'markersize', 12)
plot(22, percentile_jet(22), 'r*', 'markersize', 12)

set(gca, 'XTick', 0:23)
set(gca, 'XTickLabel', model_labels)
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
ylabel('Wind stress (Pa)','fontsize', 12)
legend([h1, h2, hR1], '2 x Standard Deviation', '95th Percentile','Reanalysis 1')
rotateXLabels( gca(), 45 )
title('Jet Magnitude Statistics', 'fontsize', 20)




% Plot box and whiskers

figure(3)
boxplot(Trends', Models)
hold on
hR1 = hline(taux_trend_30, '-k');
set(hR1, 'linewidth', 2)
set(gca, 'fontsize', 12)
legend([hR1], 'Reanalysis 1')
ylim([-0.03 0.05])
set(gcf, 'position', [100, 100, 1049, 495])
    text_h = findobj(gca, 'Type', 'text');

    for cnt = 1:length(text_h)
        set(text_h(cnt),    'FontSize', 12,...
                            'Rotation', 45, ...
                            'HorizontalAlignment', 'right')
    end
    
    % 'VerticalAlignment', 'cap', ...
    
    % smaller box for axes, in order to un-hide the labels
    squeeze = 0.2;
    left = 0.02;
    right = 1;
    bottom = squeeze;
    top = 1-squeeze;
    set(gca, 'OuterPosition', [left bottom right top])


%% Jet Location

% PDF 
figure(5)
plot(can_esm2_jet_loc_xi, can_esm2_jet_loc_f, 'r-.')
hold on
plot(ccsm4_jet_loc_xi, ccsm4_jet_loc_f, 'b-o' )
plot(cmcc_cesm_jet_loc_xi, cmcc_cesm_jet_loc_f, 'g-o')
plot(cmcc_cm_jet_loc_xi, cmcc_cm_jet_loc_f, 'r-o')
plot(cmcc_cms_jet_loc_xi, cmcc_cms_jet_loc_f, 'c-o')
plot(cnrm_cm5_jet_loc_xi, cnrm_cm5_jet_loc_f, 'k-o')
plot(cnrm_cm52_jet_loc_xi, cnrm_cm52_jet_loc_f, 'm-o')
plot(gfdl_esm2g_jet_loc_xi, gfdl_esm2g_jet_loc_f, 'r-')
plot(gfdl_esm2m_jet_loc_xi, gfdl_esm2m_jet_loc_f, 'g-')
plot(ipsl_cm5a_lr_jet_loc_xi, ipsl_cm5a_lr_jet_loc_f, 'b-*')
plot(ipsl_cm5a_mr_jet_loc_xi, ipsl_cm5a_mr_jet_loc_f, 'g-*')
plot(ipsl_cm5b_lr_jet_loc_xi, ipsl_cm5b_lr_jet_loc_f, 'r-*')
plot(miroc_esm_jet_loc_xi, miroc_esm_jet_loc_f,'c-*')
plot(miroc_esm_chem_jet_loc_xi, miroc_esm_chem_jet_loc_f, 'k-*')
plot(miroc5_jet_loc_xi, miroc5_jet_loc_f, 'c-*')
plot(mri_cgcm3_jet_loc_xi, mri_cgcm3_jet_loc_f, 'b-s')
plot(mpi_esm_lr_jet_loc_xi, mpi_esm_lr_jet_loc_f,'g-s')
plot(mpi_esm_mr_jet_loc_xi, mpi_esm_mr_jet_loc_f,'r-s')
%plot(nor_esm1m_m_jet_loc_xi, nor_esm1m_m_jet_loc_f,'c-s')
plot(nor_esm1m_me_jet_loc_xi, nor_esm1m_me_jet_loc_f,'k-s')
plot(cm2mc_jet_loc_xi, cm2mc_jet_loc_f, 'b', 'linewidth', 2)
plot(cm21_jet_loc_xi, cm21_jet_loc_f, 'g', 'linewidth', 2)
hR1 = vline(lat_trend_30, '-k');
%hR2 = vline(lat_trend_30_2, '-.k');
legend('CanESM2','CCSM4', 'CMCC CESM', 'CMCC CM', 'CMCC CMs','CNRM CM5','CNRM CM5-2','GFDL ESM2M',...
    'GFDL ESM2G', 'IPSL CM5a LR', 'IPSL CM5a MR', 'IPSL CM5b LR', 'MRI CGCM3',...
    'MPI ESM LR', 'MPI ESM MR', 'MIROC5', 'NOR ESM1m ME', 'CM2Mc', 'CM2.1')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 895])
xlabel('30 Year Linear Trend (Degrees Lat/30 years)', 'fontsize', 12)
ylabel('Probability density estimate', 'fontsize', 12)
title('Jet Location PDFs', 'fontsize', 20)

cd /data1/fesd1/jthom143/piControlFigures/Seasonal/Jet_Position
print('-depsc', 'lat_pdf_DJF2.eps')
cd /data1/fesd1/jthom143/piControlTrends
   

% Plot 2 x standard deviation and 95th percentile 
figure(6)
h1 = plot(1, 2*can_esm2_std_jet_loc, '*', 'markersize', 12);
hold on
plot(2, 2*ccsm4_std_jet_loc, '*', 'markersize', 12)
plot(3, 2*cmcc_cesm_std_jet_loc, '*', 'markersize', 12)
plot(4, 2*cmcc_cm_std_jet_loc, '*', 'markersize', 12)
plot(5, 2*cmcc_cms_std_jet_loc, '*', 'markersize', 12)
plot(6, 2*cnrm_cm5_std_jet_loc, '*', 'markersize', 12)
plot(7, 2*cnrm_cm52_std_jet_loc, '*', 'markersize', 12)
plot(8, 2*gfdl_esm2g_std_jet_loc, '*', 'markersize', 12)
plot(9, 2*gfdl_esm2m_std_jet_loc, '*', 'markersize', 12)
plot(10, 2*ipsl_cm5a_lr_std_jet_loc, '*', 'markersize', 12)
plot(11, 2*ipsl_cm5a_mr_std_jet_loc, '*', 'markersize', 12)
plot(12, 2*ipsl_cm5b_lr_std_jet_loc, '*', 'markersize', 12)
plot(13, 2*miroc_esm_std_jet_loc, '*', 'markersize', 12)
plot(14, 2*miroc_esm_chem_std_jet_loc, '*', 'markersize', 12)
plot(15, 2*miroc5_std_jet_loc, '*', 'markersize', 12)
plot(16, 2*mpi_esm_lr_std_jet_loc, '*', 'markersize', 12)
plot(17, 2*mpi_esm_mr_std_jet_loc, '*', 'markersize', 12)
plot(18, 2*mri_cgcm3_std_jet_loc, '*', 'markersize', 12)
%plot(19, 2*nor_esm1m_m_std_jet_loc, '*', 'markersize', 12)
plot(20, 2*nor_esm1m_me_std_jet_loc, '*', 'markersize', 12)
plot(21, 2*cm2mc_std_jet_loc, '*', 'markersize', 12)
plot(22, 2*cm21_std_jet_loc, '*', 'markersize', 12)

xlim([0,23])
hR1 = hline(-lat_trend_30, '-k');
%hR2 = hline(-lat_trend_30_2, '-.k');

h2 = plot(1, percentile_loc(1), 'r*', 'markersize', 12);
plot(2, percentile_loc(2), 'r*', 'markersize', 12)
plot(3, percentile_loc(3), 'r*', 'markersize', 12)
plot(4, percentile_loc(4), 'r*', 'markersize', 12)
plot(5, percentile_loc(5), 'r*', 'markersize', 12)
plot(6, percentile_loc(6), 'r*', 'markersize', 12)
plot(7, percentile_loc(7), 'r*', 'markersize', 12)
plot(8, percentile_loc(8), 'r*', 'markersize', 12)
plot(9, percentile_loc(9), 'r*', 'markersize', 12)
plot(10, percentile_loc(10), 'r*', 'markersize', 12)
plot(11, percentile_loc(11), 'r*', 'markersize', 12)
plot(12, percentile_loc(12), 'r*', 'markersize', 12)
plot(13, percentile_loc(13), 'r*', 'markersize', 12)
plot(14, percentile_loc(14), 'r*', 'markersize', 12)
plot(15, percentile_loc(15), 'r*', 'markersize', 12)
plot(16, percentile_loc(16), 'r*', 'markersize', 12)
plot(17, percentile_loc(17), 'r*', 'markersize', 12)
plot(18, percentile_loc(18), 'r*', 'markersize', 12)
%plot(19, percentile(19), 'r*', 'markersize', 12)
plot(20, percentile_loc(20), 'r*', 'markersize', 12)
plot(21, percentile_loc(21), 'r*', 'markersize', 12)
plot(22, percentile_loc(22), 'r*', 'markersize', 12)

set(gca, 'XTick', 0:23)
set(gca, 'XTickLabel', model_labels)
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
ylabel('Degrees Latitude','fontsize', 12)
legend([h1, h2, hR1], '2 x Standard Deviation', '95th Percentile','abs(Reanalysis 1 trend)')
rotateXLabels( gca(), 45 )
title('Jet Location Statistics', 'fontsize', 20)
ylim([0 9])


% Plot box and whiskers 

figure(7)
boxplot(Trends_jet_loc', Models)
hR1 = hline(lat_trend_30, '-k');
set(hR1, 'linewidth', 2)
legend([hR1], 'Reanalysis 1')
set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 495])
    text_h = findobj(gca, 'Type', 'text');

    for cnt = 1:length(text_h)
        set(text_h(cnt),    'FontSize', 12,...
                            'Rotation', 45, ...
                            'HorizontalAlignment', 'right')
    end
    
    % 'VerticalAlignment', 'cap', ...
    
    % smaller box for axes, in order to un-hide the labels
    squeeze = 0.2;
    left = 0.02;
    right = 1;
    bottom = squeeze;
    top = 1-squeeze;
    set(gca, 'OuterPosition', [left bottom right top])
    hold on
    
 %% Plot all model timeseries in individual frames
 
 
figure(8)
subplot(5,4,1)
plot(can_esm2_time_year, can_esm2_jet_DJF)
xlim([0 996])
ylim([0.01 0.24])
title('CanESM2', 'fontsize', 12)

subplot(5,4,2)
plot(ccsm4_time_year, ccsm4_jet_DJF)
xlim([0 501])
ylim([0.01 0.24])
title('CCSM4', 'fontsize', 12)

subplot(5,4,3)
plot(cmcc_cesm_time_year, cmcc_cesm_jet_DJF)
xlim([0 277])
ylim([0.01 0.24])
title('CMCC CESM', 'fontsize', 12)

subplot(5,4,4)
plot(cmcc_cm_time_year, cmcc_cm_jet_DJF)
xlim([0 330])
ylim([0.01 0.24])
title('CMCC CM', 'fontsize', 12)

subplot(5,4,5)
plot(cmcc_cms_time_year, cmcc_cms_jet_DJF)
xlim([0 500])
ylim([0.01 0.24])
title('CMCC CMs', 'fontsize', 12)

subplot(5,4,6)
plot(cnrm_cm5_time_year, cnrm_cm5_jet_DJF)
xlim([0 850])
ylim([0.01 0.24])
title('CNRM CM5', 'fontsize', 12)

subplot(5,4,7)
plot(cnrm_cm52_time_year, cnrm_cm52_jet_DJF)
xlim([0 359])
ylim([0.01 0.24])
title('CNRM CM5-2', 'fontsize', 12)

subplot(5,4,8)
plot(gfdl_esm2g_time_year, gfdl_esm2g_jet_DJF)
xlim([0 500])
ylim([0.01 0.24])
title('GFDL ESM2G', 'fontsize', 12)

subplot(5,4,9)
plot(gfdl_esm2m_time_year, gfdl_esm2m_jet_DJF)
xlim([0 500])
ylim([0.01 0.24])
title('GFDL ESM2M', 'fontsize', 12)

subplot(5,4,10)
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_jet_DJF)
xlim([0 1000])
ylim([0.01 0.24])
title('IPSL CM5a LR', 'fontsize', 12)

subplot(5,4,11)
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_jet_DJF)
xlim([0 300])
ylim([0.01 0.24])
title('IPSL CM5a MR', 'fontsize', 12)

subplot(5,4,12)
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_jet_DJF)
xlim([0 300])
ylim([0.01 0.24])
title('IPSL CM5b LR', 'fontsize', 12)

subplot(5,4,13)
plot(miroc_esm_time_year, miroc_esm_jet_DJF)
xlim([0 531])
ylim([0.01 0.24])
title('MIROC ESM', 'fontsize', 12)

subplot(5,4,14)
plot(miroc_esm_chem_time_year, miroc_esm_chem_jet_DJF)
xlim([0 255])
ylim([0.01 0.24])
title('MIROC ESM CHEM', 'fontsize', 12)

subplot(5,4,15)
plot(miroc5_time_year, miroc5_jet_DJF)
xlim([0 200])
ylim([0.01 0.24])
title('MIROC5', 'fontsize', 12)

subplot(5,4,16)
plot(mri_cgcm3_time_year, mri_cgcm3_jet_DJF)
xlim([0 200])
ylim([0.01 0.24])
title('MRI CGCM3', 'fontsize', 12)

subplot(5,4,17)
plot(mpi_esm_lr_time_year, mpi_esm_lr_jet_DJF)
xlim([0 1000])
ylim([0.01 0.24])
title('MPI ESM LR', 'fontsize', 12)

subplot(5,4,18)
plot(mpi_esm_mr_time_year, mpi_esm_mr_jet_DJF)
xlim([0 1000])
ylim([0.01 0.24])
title('MPI ESM MR', 'fontsize', 12)

% subplot(5,4,19)
% plot(nor_esm1m_m_time_year, nor_esm1m_m_jet_ann)
% xlim([0 501])
% ylim([0 50])
% title('NOR ESM1m M', 'fontsize', 12)

subplot(5,4,20)
plot(nor_esm1m_me_time_year, nor_esm1m_me_jet_DJF)
xlim([0 252])
ylim([0.01 0.24])
title('NOR ESM1m ME', 'fontsize', 12)

set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 895])

        
%% Jet Location Timeseries  
figure(9)
subplot(5,4,1)
plot(can_esm2_time_year, can_esm2_jet_loc_DJF)
xlim([0 996])
ylim([-80 -40])
title('CanESM2', 'fontsize', 12)

subplot(5,4,2)
plot(ccsm4_time_year, ccsm4_jet_loc_DJF)
xlim([0 501])
ylim([-80 -40])
title('CCSM4', 'fontsize', 12)

subplot(5,4,3)
plot(cmcc_cesm_time_year, cmcc_cesm_jet_loc_DJF)
xlim([0 277])
ylim([-80 -40])
title('CMCC CESM', 'fontsize', 12)

subplot(5,4,4)
plot(cmcc_cm_time_year, cmcc_cm_jet_loc_DJF)
xlim([0 330])
ylim([-80 -40])
title('CMCC CM', 'fontsize', 12)

subplot(5,4,5)
plot(cmcc_cms_time_year, cmcc_cms_jet_loc_DJF)
xlim([0 500])
ylim([-80 -40])
title('CMCC CMs', 'fontsize', 12)

subplot(5,4,6)
plot(cnrm_cm5_time_year, cnrm_cm5_jet_loc_DJF)
xlim([0 850])
ylim([-80 -40])
title('CNRM CM5', 'fontsize', 12)

subplot(5,4,7)
plot(cnrm_cm52_time_year, cnrm_cm52_jet_loc_DJF)
xlim([0 359])
ylim([-80 -40])
title('CNRM CM5-2', 'fontsize', 12)

subplot(5,4,8)
plot(gfdl_esm2g_time_year, gfdl_esm2g_jet_loc_DJF)
xlim([0 500])
%ylim([0 50])
title('GFDL ESM2G', 'fontsize', 12)

subplot(5,4,9)
plot(gfdl_esm2m_time_year, gfdl_esm2m_jet_loc_DJF)
xlim([0 500])
ylim([-80 -40])
title('GFDL ESM2M', 'fontsize', 12)

subplot(5,4,10)
plot(ipsl_cm5a_lr_time_year, ipsl_cm5a_lr_jet_loc_DJF)
xlim([0 1000])
ylim([-80 -40])
title('IPSL CM5a LR', 'fontsize', 12)

subplot(5,4,11)
plot(ipsl_cm5a_mr_time_year, ipsl_cm5a_mr_jet_loc_DJF)
xlim([0 300])
ylim([-80 -40])
title('IPSL CM5a MR', 'fontsize', 12)

subplot(5,4,12)
plot(ipsl_cm5b_lr_time_year, ipsl_cm5b_lr_jet_loc_DJF)
xlim([0 300])
ylim([-80 -40])
title('IPSL CM5b LR', 'fontsize', 12)

subplot(5,4,13)
plot(miroc_esm_time_year, miroc_esm_jet_loc_DJF)
xlim([0 531])
ylim([-80 -40])
title('MIROC ESM', 'fontsize', 12)

subplot(5,4,14)
plot(miroc_esm_chem_time_year, miroc_esm_chem_jet_loc_DJF)
xlim([0 255])
ylim([-80 -40])
title('MIROC ESM CHEM', 'fontsize', 12)

subplot(5,4,15)
plot(miroc5_time_year, miroc5_jet_loc_DJF)
xlim([0 200])
ylim([-80 -40])
title('MIROC5', 'fontsize', 12)

subplot(5,4,16)
plot(mri_cgcm3_time_year, mri_cgcm3_jet_loc_DJF)
xlim([0 200])
ylim([-80 -40])
title('MRI CGCM3', 'fontsize', 12)

subplot(5,4,17)
plot(mpi_esm_lr_time_year, mpi_esm_lr_jet_loc_DJF)
xlim([0 1000])
ylim([-80 -40])
title('MPI ESM LR', 'fontsize', 12)

subplot(5,4,18)
plot(mpi_esm_mr_time_year, mpi_esm_mr_jet_loc_DJF)
xlim([0 1000])
ylim([-80 -40])
title('MPI ESM MR', 'fontsize', 12)

% subplot(5,4,19)
% plot(nor_esm1m_m_time_year, nor_esm1m_m_jet_loc_ann)
% xlim([0 501])
% ylim([0 50])
% title('NOR ESM1m M', 'fontsize', 12)

subplot(5,4,20)
plot(nor_esm1m_me_time_year, nor_esm1m_me_jet_loc_DJF)
xlim([0 252])
ylim([-80 -40])
title('NOR ESM1m ME', 'fontsize', 12)

set(gca, 'fontsize', 12)
set(gcf, 'position', [100, 100, 1049, 895])
