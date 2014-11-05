addpath /data1/fesd1/jthom143/piControl_paper/surface_pressure_analysis
addpath /data1/fesd1/jthom143/piControl_paper/windstress_analysis
addpath /data1/fesd1/jthom143/piControl_paper/wind_analysis
addpath /data1/fesd1/jthom143/piControl_paper/tools
addpath /data1/fesd1/jthom143/piControl_paper/historical_surface_pressure_analysis
addpath /data1/fesd1/jthom143/piControl_paper/historical_windstress_analysis
addpath /data1/fesd1/jthom143/piControl_paper/historical_wind_analysis
addpath /home/jthom143/NCEPReanalysis1




% %% CanESM2
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CanESM2_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CanESM2_taux_seasonal;
% [ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CanESM2_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CanESM2_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CanESM2_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CanESM2_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CanESM2
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc CanESM2_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CanESM2_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CanESM2_picontrol_jet_scatter
% 
% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_wind_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, jet_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc CanESM2_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc CanESM2_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_wind_jet_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot( jet_u850_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc CanESM2_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all
% clear all
% 
% %% CCSM4
% % [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CCSM4_seasonal;
% % [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CCSM4_taux_seasonal;
% % %[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CCSM4_u850_seasonal;
% % 
% % [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CanESM2_historical_ps;
% % [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CanESM2_historical_taux;
% % % [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CanESM2_historical_u850;
% % 
% % [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% % [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% % % [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% % 
% % 
% % cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CCSM4
% % 
% % figure(1)
% % plot(sam_trends_yrs, jet_trends_yrs, '*')
% % hold on
% % plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% % plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% % 
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% % print -depsc CCSM4_picontrol_sam_jet_scatter
% % 
% % figure(2)
% % plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% % hold on 
% % plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% % plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% % 
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% % print -depsc CCSM4_picontrol_sam_jet_loc_scatter
% % 
% % figure(3)
% % plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% % hold on
% % plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% % plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% % 
% % 
% % xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% % ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% % print -depsc CCSM4_picontrol_jet_scatter
% % 
% % % figure(4)
% % % plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% % % xlabel('SAM Trend (mb/25 yrs)')
% % % ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % % print -depsc CCSM4_picontrol_sam_wind_jet_scatter
% % % 
% % % 
% % % figure(5)
% % % plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% % % xlabel('SAM Trend (mb/25 yrs)')
% % % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % % print -depsc CCSM4_picontrol_sam_wind_jet_loc_scatter
% % % 
% % % 
% % % figure(6)
% % % plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% % % xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % % print -depsc CCSM4_picontrol_wind_jet_scatter
% % 
% % cd /data1/fesd1/jthom143/piControl_paper
% % 
% % close all 
% % clear all
% 
% %% CMCC_CESM
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CMCC_CESM_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CMCC_CESM_taux_seasonal;
% %[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CMCC_CESM_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CMCC_CESM_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CMCC_CESM_historical_taux;
% % [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CMCC_CESM_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% % [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CMCC_CESM
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc CMCC_CESM_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CMCC_CESM_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CMCC_CESM_picontrol_jet_scatter
% 
% % figure(4)
% % plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % print -depsc CMCC_CESM_picontrol_sam_wind_jet_scatter
% % 
% % 
% % figure(5)
% % plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc CMCC_CESM_picontrol_sam_wind_jet_loc_scatter
% % 
% % 
% % figure(6)
% % plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% % xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc CMCC_CESM_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all
% clear all
% 
% %% CMCC_CM
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CMCC_CM_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CMCC_CM_taux_seasonal;
% %[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CMCC_CM_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CMCC_CM_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CMCC_CM_historical_taux;
% % [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CMCC_CM_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% % [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CMCC_CM
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc CMCC_CM_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CMCC_CM_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CMCC_CM_picontrol_jet_scatter
% 
% % figure(4)
% % plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % print -depsc CMCC_CM_picontrol_sam_wind_jet_scatter
% % 
% % 
% % figure(5)
% % plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc CMCC_CM_picontrol_sam_wind_jet_loc_scatter
% % 
% % 
% % figure(6)
% % plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% % xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc CMCC_CM_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all
% clear all
% 
% %% CMCC_CMs
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CMCC_CMs_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CMCC_CMs_taux_seasonal;
% %[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CMCC_CMs_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CMCC_CMs_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CMCC_CMs_historical_taux;
% % [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CMCC_CMs_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% % [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CMCC_CMs
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc CMCC_CMs_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CMCC_CMs_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CMCC_CMs_picontrol_jet_scatter
% 
% % figure(4)
% % plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % print -depsc CMCC_CMs_picontrol_sam_wind_jet_scatter
% % 
% % 
% % figure(5)
% % plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc CMCC_CMs_picontrol_sam_wind_jet_loc_scatter
% % 
% % 
% % figure(6)
% % plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% % xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc CMCC_CMs_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all
% clear all
% 
% %% CNRM CM5
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CNRM_CM5_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CNRM_CM5_taux_seasonal;
% [ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CNRM_CM5_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CNRM_CM5_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CNRM_CM5_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CNRM_CM5_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CNRM_CM5
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc CNRM_CM5_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_picontrol_jet_scatter
% 
% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_wind_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, jet_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc CNRM_CM5_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_wind_jet_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot( jet_u850_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all
% clear all

% %% CNRM CM5-2
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = CNRM_CM52_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = CNRM_CM52_taux_seasonal;
% [ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = CNRM_CM52_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = CNRM_CM52_historical_ps;
% %[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = CNRM_CM52_historical_taux;
% %[ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = CNRM_CM52_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/CNRM_CM5_2
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% %plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc CNRM_CM5_2_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% %plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_2_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% %plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_2_picontrol_jet_scatter
% 
% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% hold on 
% % plot(historical_sam_trend_25, historical_wind_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, jet_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc CNRM_CM5_2_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% hold on
% %plot(historical_sam_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_2_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% hold on
% % plot( historical_wind_jet_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot( jet_u850_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc CNRM_CM5_2_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all
% clear all

%% GFDL ESM2G
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = GFDL_ESM2G_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = GFDL_ESM2G_taux_seasonal;
[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = GFDL_ESM2G_u850_seasonal;

% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = GFDL_ESM2G_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = GFDL_ESM2G_historical_taux;
%[ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = GFDL_ESM2G_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
[ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/GFDL_ESM2G

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc GFDL_ESM2G_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2G_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2G_picontrol_jet_scatter

figure(4)
plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
hold on 
% plot(historical_sam_trend_25, historical_wind_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, jet_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
print -depsc GFDL_ESM2G_picontrol_sam_wind_jet_scatter


figure(5)
plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
hold on
% plot(historical_sam_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Wind Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2G_picontrol_sam_wind_jet_loc_scatter


figure(6)
plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
hold on
% plot( historical_wind_jet_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot( jet_u850_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
ylabel('Wind Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2G_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all
clear all

%% GFDL ESM2M
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = GFDL_ESM2M_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = GFDL_ESM2M_taux_seasonal;
[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = GFDL_ESM2M_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = GFDL_ESM2M_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = GFDL_ESM2M_historical_taux;
[ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = GFDL_ESM2M_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
[ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/GFDL_ESM2M

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc GFDL_ESM2M_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2M_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2M_picontrol_jet_scatter

figure(4)
plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
hold on 
% plot(historical_sam_trend_25, historical_wind_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, jet_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
print -depsc GFDL_ESM2M_picontrol_sam_wind_jet_scatter


figure(5)
plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Wind Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2M_picontrol_sam_wind_jet_loc_scatter


figure(6)
plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
hold on
% plot( historical_wind_jet_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot( jet_u850_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
ylabel('Wind Jet Location Trend (degrees/25 yrs)')
print -depsc GFDL_ESM2M_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all
clear all


%% IPSL CM5a LR
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = IPSL_CM5a_LR_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = IPSL_CM5a_LR_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = IPSL_CM5a_LR_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = IPSL_CM5a_LR_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = IPSL_CM5a_LR_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = IPSL_CM5a_LR_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/IPSL_CM5a_LR

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc IPSL_CM5a_LR_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc IPSL_CM5a_LR_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc IPSL_CM5a_LR_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc IPSL_CM5a_LR_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc IPSL_CM5a_LR_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc IPSL_CM5a_LR_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% IPSL CM5a LR
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = IPSL_CM5a_MR_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = IPSL_CM5a_MR_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = IPSL_CM5a_MR_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = IPSL_CM5a_MR_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = IPSL_CM5a_MR_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = IPSL_CM5a_MR_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/IPSL_CM5a_MR

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc IPSL_CM5a_MR_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc IPSL_CM5a_MR_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc IPSL_CM5a_MR_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc IPSL_CM5a_MR_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc IPSL_CM5a_MR_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc IPSL_CM5a_MR_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% IPSL CM5b LR
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = IPSL_CM5b_LR_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = IPSL_CM5b_LR_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = IPSL_CM5b_LR_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = IPSL_CM5b_LR_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = IPSL_CM5b_LR_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = IPSL_CM5b_LR_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/IPSL_CM5b_LR

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc IPSL_CM5b_LR_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc IPSL_CM5b_LR_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc IPSL_CM5b_LR_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc IPSL_CM5b_LR_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc IPSL_CM5b_LR_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc IPSL_CM5b_LR_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% MIROC ESM
% [ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = MIROC_ESM_seasonal;
% [ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = MIROC_ESM_taux_seasonal;
% %[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = MIROC_ESM_u850_seasonal;
% 
% [~, ~, historical_sam_trend_25, ~, ~, ~ ] = MIROC_ESM_historical_ps;
% [ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = MIROC_ESM_historical_taux;
% % [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = MIROC_ESM_historical_u850;
% 
% [ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
% [ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% % [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);
% 
% 
% cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/MIROC_ESM
% 
% figure(1)
% plot(sam_trends_yrs, jet_trends_yrs, '*')
% hold on
% plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% print -depsc MIROC_ESM_picontrol_sam_jet_scatter
% 
% figure(2)
% plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
% hold on 
% plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc MIROC_ESM_picontrol_sam_jet_loc_scatter
% 
% figure(3)
% plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
% hold on
% plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
% plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')
% 
% 
% xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
% ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
% print -depsc MIROC_ESM_picontrol_jet_scatter
% 
% % figure(4)
% % plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % print -depsc MIROC_ESM_picontrol_sam_wind_jet_scatter
% % 
% % 
% % figure(5)
% % plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% % xlabel('SAM Trend (mb/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc MIROC_ESM_picontrol_sam_wind_jet_loc_scatter
% % 
% % 
% % figure(6)
% % plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% % xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% % ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% % print -depsc MIROC_ESM_picontrol_wind_jet_scatter
% 
% cd /data1/fesd1/jthom143/piControl_paper
% 
% close all 
% clear all

%% MIROC ESM CHEM
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = MIROC_ESM_CHEM_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = MIROC_ESM_CHEM_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = MIROC_ESM_CHEM_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = MIROC_ESM_CHEM_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = MIROC_ESM_CHEM_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = MIROC_ESM_CHEM_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/MIROC_ESM_CHEM

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc MIROC_ESM_CHEM_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MIROC_ESM_CHEM_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MIROC_ESM_CHEM_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc MIROC_ESM_CHEM_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MIROC_ESM_CHEM_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MIROC_ESM_CHEM_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% MIROC5
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = MIROC5_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = MIROC5_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = MIROC5_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = MIROC5_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = MIROC5_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = MIROC5_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/MIROC5

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc MIROC5_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MIROC5_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MIROC5_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc MIROC5_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MIROC5_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MIROC5_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% MPI ESM LR

[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = MPI_ESM_LR_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = MPI_ESM_LR_taux_seasonal;
[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = MPI_ESM_LR_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = MPI_ESM_LR_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = MPI_ESM_LR_historical_taux;
[ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = MPI_ESM_LR_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
[ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/MPI_ESM_LR

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc MPI_ESM_LR_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MPI_ESM_LR_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MPI_ESM_LR_picontrol_jet_scatter

figure(4)
plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_wind_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, jet_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
print -depsc MPI_ESM_LR_picontrol_sam_wind_jet_scatter


figure(5)
plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Wind Jet Location Trend (degrees/25 yrs)')
print -depsc MPI_ESM_LR_picontrol_sam_wind_jet_loc_scatter


figure(6)
plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
hold on
plot( historical_wind_jet_trend_25, historical_wind_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot( jet_u850_trend_25, lat_u850_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
ylabel('Wind Jet Location Trend (degrees/25 yrs)')
print -depsc MPI_ESM_LR_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all
clear all

%% MPI ESM MR
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = MPI_ESM_MR_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = MPI_ESM_MR_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = MPI_ESM_MR_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = MPI_ESM_MR_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = MPI_ESM_MR_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = MPI_ESM_MR_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/MPI_ESM_MR

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc MPI_ESM_MR_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MPI_ESM_MR_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MPI_ESM_MR_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc MPI_ESM_MR_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MPI_ESM_MR_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MPI_ESM_MR_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% MRI CGCM3
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = MRI_CGCM3_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = MRI_CGCM3_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = MRI_CGCM3_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = MRI_CGCM3_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = MRI_CGCM3_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = MRI_CGCM3_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/MRI_CGCM3

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc MRI_CGCM3_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MRI_CGCM3_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc MRI_CGCM3_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc MRI_CGCM3_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MRI_CGCM3_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc MRI_CGCM3_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all

%% NOR ESM1m ME
[ ~, ~, ~, ~, ~, ~, sam_trends_yrs ] = NOR_ESM1m_ME_seasonal;
[ ~, ~, ~, ~, jet_trends_yrs, ~, ~, ~, ~, jet_loc_trends_yrs, ~, ~, ~  ] = NOR_ESM1m_ME_taux_seasonal;
%[ ~, ~, ~, ~, wind_jet_trends_yrs, ~, ~, ~, ~, wind_jet_loc_trends_yrs, ~, ~, ~] = NOR_ESM1m_ME_u850_seasonal;

[~, ~, historical_sam_trend_25, ~, ~, ~ ] = NOR_ESM1m_ME_historical_ps;
[ ~, ~, ~, ~, historical_jet_trend_25, ~, historical_jet_loc_trend_25 ] = NOR_ESM1m_ME_historical_taux;
% [ ~, ~, ~, ~, historical_wind_jet_trend_25, ~, historical_wind_jet_loc_trend_25 ] = NOR_ESM1m_ME_historical_u850;

[ ~, ~, sam_trend_25 ] = NCEP1_trends_seasonal(25);
[ taux_trend_25, lat_trend_25,~] = NCEP1_trends_seasonal(25);
% [ jet_u850_trend_25, lat_u850_trend_25] = NCEP1_u850_trends_seasonal(25);


cd /data1/fesd1/jthom143/piControl_paper/Figures/Natural_Variability_All_Models/NOR_ESM1m_ME

figure(1)
plot(sam_trends_yrs, jet_trends_yrs, '*')
hold on
plot(historical_sam_trend_25, historical_jet_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, taux_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
print -depsc NOR_ESM1m_ME_picontrol_sam_jet_scatter

figure(2)
plot(sam_trends_yrs, jet_loc_trends_yrs, '*')
hold on 
plot(historical_sam_trend_25, historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(sam_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')

xlabel('SAM Trend (mb/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc NOR_ESM1m_ME_picontrol_sam_jet_loc_scatter

figure(3)
plot(jet_trends_yrs, jet_loc_trends_yrs,  '*')
hold on
plot( historical_jet_trend_25,historical_jet_loc_trend_25, 'rd', 'markersize', 10, 'markerfacecolor', 'r')
plot(taux_trend_25, lat_trend_25, 'go', 'markersize', 10, 'markerfacecolor', 'g')


xlabel('Windstress Jet Magnitude Trend (Pa/25 yrs)')
ylabel('Windstress Jet Location Trend (degrees/25 yrs)')
print -depsc NOR_ESM1m_ME_picontrol_jet_scatter

% figure(4)
% plot(sam_trends_yrs, wind_jet_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% print -depsc NOR_ESM1m_ME_picontrol_sam_wind_jet_scatter
% 
% 
% figure(5)
% plot(sam_trends_yrs, wind_jet_loc_trends_yrs, '*')
% xlabel('SAM Trend (mb/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc NOR_ESM1m_ME_picontrol_sam_wind_jet_loc_scatter
% 
% 
% figure(6)
% plot(wind_jet_trends_yrs, wind_jet_loc_trends_yrs,  '*')
% xlabel('Wind Jet Magnitude Trend (m/s/25 yrs)')
% ylabel('Wind Jet Location Trend (degrees/25 yrs)')
% print -depsc NOR_ESM1m_ME_picontrol_wind_jet_scatter

cd /data1/fesd1/jthom143/piControl_paper

close all 
clear all
