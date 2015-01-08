cd /data1/fesd1/jthom143/piControl_paper/Figures/SAM_CDFs
figure(1)
h1 = plot(can_esm2_sam_xi, can_esm2_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
h2 = vline(can_esm2_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)')
ylabel('Probability Density', 'fontsize', 20) 
legend([h1, h2, h3], 'Pi-control CDF', 'Historical Run Trend', 'Renanalysis 1 Trend')
set(gca, 'fontsize', 11)
print -depsc can_esm2_sam_cdf


figure(2)
h1 = plot(ccsm4_sam_xi, ccsm4_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
h2 = vline(ccsm4_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc ccsm4_sam_cdf


figure(3)
h1 = plot(cnrm_cm5_sam_xi, cnrm_cm5_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
h2 = vline(cnrm_cm5_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc cnrm_cm5_sam_cdf

figure(4)
h1 = plot(cnrm_cm52_sam_xi, cnrm_cm52_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
% h2 = vline(cnrm_cm52_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc cnrm_cm52_sam_cdf

figure(5)
h1 = plot(gfdl_esm2g_sam_xi, gfdl_esm2g_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
h2 = vline(cnrm_cm5_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc gfdl_esm2g_sam_cdf

figure(6)
h1 = plot(gfdl_esm2m_sam_xi, gfdl_esm2m_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
h2 = vline(gfdl_esm2m_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc gfdl_esm2m_sam_cdf

figure(7)
h1 = plot(ipsl_cm5a_lr_sam_xi, ipsl_cm5a_lr_sam_f);
hold on
% %xlim([-2 2])
% %ylim([0 1.2])
h2 = vline(ipsl_cm5a_lr_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc ipsl_cm5a_lr_sam_cdf

figure(8)
h1 = plot(ipsl_cm5a_mr_sam_xi, ipsl_cm5a_mr_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(ipsl_cm5a_mr_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc ipsl_cm5a_mr_sam_cdf

figure(9)
h1 = plot(ipsl_cm5b_lr_sam_xi, ipsl_cm5b_lr_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(ipsl_cm5b_lr_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc ipsl_cm5b_lr_sam_cdf

figure(10)
h1 = plot(miroc_esm_sam_xi, miroc_esm_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(miroc_esm_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc miroc_esm_sam_cdf

figure(11)
h1 = plot(miroc_esm_chem_sam_xi, miroc_esm_chem_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(miroc_esm_chem_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc miroc_esm_chem_sam_cdf

figure(12)
h1 = plot(miroc5_sam_xi, miroc5_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(miroc5_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)
%xlim([-2 2])
%ylim([0 1.2])
print -depsc miroc5_sam_cdf

figure(13)
h1 = plot(mpi_esm_lr_sam_xi, mpi_esm_lr_sam_f);
hold on
h2 = vline(mpi_esm_lr_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc mpi_esm_lr_sam_cdf

figure(14)
h1 = plot(mpi_esm_mr_sam_xi, mpi_esm_mr_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(mpi_esm_mr_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc mpi_esm_mr_sam_cdf

figure(15)
h1 = plot(mri_cgcm3_sam_xi, mri_cgcm3_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(mri_cgcm3_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc mri_cgcm3_sam_cdf

figure(16)
h1 = plot(nor_esm1m_m_sam_xi, nor_esm1m_m_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(nor_esm1m_m_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc nor_esm1m_m_sam_cdf

figure(17)
h1 = plot(nor_esm1m_me_sam_xi, nor_esm1m_me_sam_f);
hold on
%xlim([-2 2])
%ylim([0 1.2])
h2 = vline(nor_esm1m_me_sam_trend_30);
h3 = vline(sam_trend_30);
set(h1, 'linewidth', 2)
set(h2, 'linestyle', '- -', 'linewidth', 2)
set(h3, 'linestyle', '- -', 'linewidth', 2, 'color', [0, 0.8, 0])
xlabel('Linear SAM Trend (hPa/25 years)') 
ylabel('Probability Density', 'fontsize', 11)  
set(gca, 'fontsize', 11)

print -depsc nor_esm1m_me_sam_cdf


