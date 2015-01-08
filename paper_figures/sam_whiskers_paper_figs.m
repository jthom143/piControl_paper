cd /data1/fesd1/jthom143/piControl_paper/paper_figures
close all

mean_trend_sam = [can_esm2_mean_sam,...
                      ccsm4_mean_sam,...
                      cnrm_cm52_mean_sam,...
                      gfdl_esm2m_mean_sam,...
                      ipsl_cm5a_lr_mean_sam,...
                      ipsl_cm5a_mr_mean_sam,...
                      ipsl_cm5b_lr_mean_sam,...
                      miroc_esm_mean_sam,...
                      miroc_esm_chem_mean_sam,...
                      miroc5_mean_sam,...
                      mpi_esm_lr_mean_sam,...
                      mpi_esm_mr_mean_sam,...
                      mri_cgcm3_mean_sam,...
                      nor_esm1m_m_mean_sam,...
                      nor_esm1m_me_mean_sam];

std_trend_sam = [can_esm2_std_sam,...
                      ccsm4_std_sam,...
                      cnrm_cm52_std_sam,...
                      gfdl_esm2m_std_sam,...
                      ipsl_cm5a_lr_std_sam,...
                      ipsl_cm5a_mr_std_sam,...
                      ipsl_cm5b_lr_std_sam,...
                      miroc_esm_std_sam,...
                      miroc_esm_chem_std_sam,...
                      miroc5_std_sam,...
                      mpi_esm_lr_std_sam,...
                      mpi_esm_mr_std_sam,...
                      mri_cgcm3_std_sam,...
                      nor_esm1m_m_std_sam,...
                      nor_esm1m_me_std_sam];
                  
historical_trend_sam = [can_esm2_sam_trend_30,...
                    ccsm4_sam_trend_30,...
                    cnrm_cm5_sam_trend_30,...
                    gfdl_esm2m_sam_trend_30,...
                    ipsl_cm5a_lr_sam_trend_30,...
                    ipsl_cm5a_mr_sam_trend_30,...
                    ipsl_cm5b_lr_sam_trend_30,...
                    miroc_esm_sam_trend_30,...
                    miroc_esm_chem_sam_trend_30,...
                    miroc5_sam_trend_30,...
                    mpi_esm_lr_sam_trend_30,...
                    mpi_esm_mr_sam_trend_30,...
                    mri_cgcm3_sam_trend_30,...
                    nor_esm1m_m_sam_trend_30,...
                    nor_esm1m_me_sam_trend_30];
               
                
%% Ensemble Figures
can_esm2_ensemble_trends     = [can_esm2_sam_trend_30, can_esm2_sam_trend_30_e2, can_esm2_sam_trend_30_e3, can_esm2_sam_trend_30_e4, can_esm2_sam_trend_30_e5];
cnrm_cm5_ensemble_trends     = [cnrm_cm5_sam_trend_30, cnrm_cm5_sam_trend_30_e2, cnrm_cm5_sam_trend_30_e3, cnrm_cm5_sam_trend_30_e4, cnrm_cm5_sam_trend_30_e5, cnrm_cm5_sam_trend_30_e6, cnrm_cm5_sam_trend_30_e7, cnrm_cm5_sam_trend_30_e8, cnrm_cm5_sam_trend_30_e9];
ipsl_cm5a_lr_ensemble_trends = [ipsl_cm5a_lr_sam_trend_30, ipsl_cm5a_lr_sam_trend_30_e2, ipsl_cm5a_lr_sam_trend_30_e3, ipsl_cm5a_lr_sam_trend_30_e4, ipsl_cm5a_lr_sam_trend_30_e5, ipsl_cm5a_lr_sam_trend_30_e6];
ipsl_cm5a_mr_ensemble_trends = [ipsl_cm5a_mr_sam_trend_30, ipsl_cm5a_mr_sam_trend_30_e2, ipsl_cm5a_mr_sam_trend_30_e3];
miroc_esm_ensemble_trends    = [miroc_esm_sam_trend_30, miroc_esm_sam_trend_30_e2, miroc_esm_sam_trend_30_e3];
miroc5_ensemble_trends       = [miroc5_sam_trend_30, miroc5_sam_trend_30_e2, miroc5_sam_trend_30_e3, miroc5_sam_trend_30_e4, miroc5_sam_trend_30_e5];
mpi_esm_lr_ensemble_trends   = [mpi_esm_lr_sam_trend_30, mpi_esm_lr_sam_trend_30_e2, mpi_esm_lr_sam_trend_30_e3];
mpi_esm_mr_ensemble_trends   = [mpi_esm_mr_sam_trend_30, mpi_esm_mr_sam_trend_30_e2, mpi_esm_mr_sam_trend_30_e3];
mri_cgcm3_ensemble_trends    = [mri_cgcm3_sam_trend_30, mri_cgcm3_sam_trend_30_e2, mri_cgcm3_sam_trend_30_e3];
nor_esm1m_m_ensemble_trends  = [nor_esm1m_m_sam_trend_30, nor_esm1m_m_sam_trend_30_e2, nor_esm1m_m_sam_trend_30_e3];


mean_ensemble_trends = [nanmean(can_esm2_ensemble_trends),...
                        ccsm4_sam_trend_30,...
                        nanmean(cnrm_cm5_ensemble_trends),...
                        gfdl_esm2m_sam_trend_30,...
                        nanmean(ipsl_cm5a_lr_ensemble_trends),...
                        nanmean(ipsl_cm5a_mr_ensemble_trends),...
                        ipsl_cm5b_lr_sam_trend_30,...
                        nanmean(miroc_esm_ensemble_trends),...
                        miroc_esm_chem_sam_trend_30,...
                        nanmean(miroc5_ensemble_trends),...
                        nanmean(mpi_esm_lr_ensemble_trends),...
                        nanmean(mpi_esm_mr_ensemble_trends),...
                        nanmean(mri_cgcm3_ensemble_trends),...
                        nanmean(nor_esm1m_m_ensemble_trends),...
                        nor_esm1m_me_sam_trend_30];
                    
E_ensemble_trends =    [max(can_esm2_ensemble_trends)-nanmean(can_esm2_ensemble_trends),...
                        NaN,...
                        max(cnrm_cm5_ensemble_trends)-nanmean(cnrm_cm5_ensemble_trends),...
                        NaN,...
                        max(ipsl_cm5a_lr_ensemble_trends)-nanmean(ipsl_cm5a_lr_ensemble_trends),...
                        max(ipsl_cm5a_mr_ensemble_trends)-nanmean(ipsl_cm5a_mr_ensemble_trends),...
                        NaN,...
                        max(miroc_esm_ensemble_trends)-nanmean(miroc_esm_ensemble_trends),...
                        NaN,...
                        max(miroc5_ensemble_trends)-nanmean(miroc5_ensemble_trends),...
                        max(mpi_esm_lr_ensemble_trends)-nanmean(mpi_esm_lr_ensemble_trends),...
                        max(mpi_esm_mr_ensemble_trends)-nanmean(mpi_esm_mr_ensemble_trends),...
                        max(mri_cgcm3_ensemble_trends)-nanmean(mri_cgcm3_ensemble_trends),...
                        max(nor_esm1m_m_ensemble_trends)-nanmean(nor_esm1m_m_ensemble_trends),...
                        NaN];
                        
                
                    
x_axis = 1:length(mean_trend_sam);

figure(1)
width = 5;     % Width in inches
height = 2.5;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 11;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
h1 = errorbar(x_axis,mean_trend_sam,2.*std_trend_sam);
hold on 
h2 = plot(x_axis, historical_trend_sam, 'r*');
h3 = hline(sam_trend_30);
h8 = hline(r2_sam_trend_30);
h9 = hline(era_int_sam_trend_30);
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
set(h8, 'linestyle', '- -', 'linewidth', 2, 'color', [0.9 0.6 0.2])
set(h9, 'linestyle', '- -', 'linewidth', 2, 'color', [0.6 0.03 0.9])
h4 = plot(1, can_esm2_ensemble_trends, 'r*');
h5 = plot(3, cnrm_cm5_ensemble_trends, 'r*');
h6 = plot(5, ipsl_cm5a_lr_ensemble_trends, 'r*');
h7 = plot(6, ipsl_cm5a_mr_ensemble_trends, 'r*');
h7 = plot(8, miroc_esm_ensemble_trends, 'r*');
h7 = plot(10, miroc5_ensemble_trends, 'r*');
h7 = plot(11, mpi_esm_lr_ensemble_trends, 'r*');
h7 = plot(12, mpi_esm_mr_ensemble_trends, 'r*');
h7 = plot(13, mri_cgcm3_ensemble_trends, 'r*');
h7 = plot(14, nor_esm1m_m_ensemble_trends, 'r*');

set(h1,'marker','o', 'MarkerFaceColor', 'b')
set(h1,'linestyle','none')
set(gca, 'XTickLabel', '')
set(gca, 'XTick', 0:16)
xlim([0 16])
ylim([-20 20])
title('(a) SAM 25 year linear trends')
ylabel('mb/25years')

% Preserve size of image when we save it
set(gcf,'InvertHardcopy','on');
set(gcf,'PaperUnits', 'inches');
papersize = get(gcf, 'PaperSize');
left = (papersize(1)- width)/2;
bottom = (papersize(2)- height)/2;
myfiguresize = [left, bottom, width, height];
set(gcf,'PaperPosition', myfiguresize);

print -depsc allmodels_sam_whiskers_ensemble

