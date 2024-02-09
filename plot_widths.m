
    for n = 1:72
        con_growth(n) = 2.0 + t(n)*1.0; %km
        con_growth2(n) = 2.0 + t(n)*2.0; %km
        con_growth4(n) = 2.0 + t(n)*3.0; %km
    end
  
    %calculate square root growth
    for n = 1:72
        sq_growth(n) = 2*sqrt(2*2500*t_s(n))/1000.0;
    end


figure;
plot(t,width_1std_100_control,'LineWidth',4,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',4,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',4,'color','cyan')
plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
plot(t,sq_growth,'LineWidth',1,'color',[0.0 0.0 0.0],'LineStyle','--')
plot(t,con_growth,'LineWidth',1,'color',[0.0 0.0 0.0],'LineStyle','-.')
ylim([0 70]);
xlim([0 36]);
title(['Estimated Width from LES']);
pbaspect([1.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control','Strong Shear', 'Weak Shear','Polluted','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',2,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',2,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',2,'color','cyan')
%plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
plot(t(1:71),control_width_oldTS(2:72),'LineWidth',2,'color','b','LineStyle','--')
plot(t(1:71),strong_width_oldTS(2:72),'LineWidth',2,'color','magenta','LineStyle','-.')
plot(t(1:71),noshear_width_oldTS(2:72),'LineWidth',3,'color','cyan','LineStyle',':')
%plot(t,polluted_width_oldTS,'LineWidth',1,'color','g','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title(['Domain-averaged PM Width vs. LES width']);
pbaspect([1.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear(LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',2,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',2,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',2,'color','cyan')
%plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
plot(t(1:71),control_width_st1_oldTS(2:72),'LineWidth',2,'color','b','LineStyle','--')
plot(t(1:71),strong_width_st1_oldTS(2:72),'LineWidth',2,'color','magenta','LineStyle','-.')
plot(t(1:71),noshear_width_st1_oldTS(2:72),'LineWidth',3,'color','cyan','LineStyle',':')
%plot(t,polluted_width_oldTS,'LineWidth',1,'color','g','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title(['Plume-averaged PM Width vs. LES width']);
pbaspect([1.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear(LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',2,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',2,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',2,'color','cyan')
%plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
plot(t(1:71),control_width(2:72),'LineWidth',2,'color','b','LineStyle','--')
plot(t(1:71),strong_width(2:72),'LineWidth',2,'color','magenta','LineStyle','-.')
plot(t(1:71),noshear_width(2:72),'LineWidth',3,'color','cyan','LineStyle',':')
%plot(t,polluted_width_oldTS,'LineWidth',1,'color','g','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title(['Domain-averaged PM Width vs. LES width (modified relaxation timescale)']);
pbaspect([1.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear(LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',2,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',2,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',2,'color','cyan')
%plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
plot(t(1:71),control_width_st1(2:72),'LineWidth',2,'color','b','LineStyle','--')
plot(t(1:71),strong_width_st1(2:72),'LineWidth',2,'color','magenta','LineStyle','-.')
plot(t(1:71),noshear_width_st1(2:72),'LineWidth',3,'color','cyan','LineStyle',':')
%plot(t,polluted_width_oldTS,'LineWidth',1,'color','g','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title(['Plume-averaged PM Width vs. LES width (modified relaxation timescale)']);
pbaspect([1.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear(LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
%plot(t,width_1std_100_control,'LineWidth',4,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
%plot(t,width_1std_100_strongshear,'LineWidth',4,'color','magenta')
%plot(t,width_1std_100_noshear,'LineWidth',4,'color','cyan')
%plot(t,width_1std_100_polluted,'LineWidth',4,'color','g')
plot(t(1:71),polluted_width_oldTS(2:72),'LineWidth',2,'color','b','LineStyle','-.')
plot(t(1:71),polluted_width(2:72),'LineWidth',2,'color','b','LineStyle',':')
plot(t(1:71),polluted_width_fit(2:72),'LineWidth',2,'color','b','LineStyle','--')
%plot(t,polluted_width_oldTS,'LineWidth',1,'color','g','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title(['PM vs. Polluted LES']);
pbaspect([1.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Polluted (LES)', 'PM (C_{0} = -0.29)','PM, modified TS (C_{0} = -0.52)','PM, modified TS (C_{0} = -0.17)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),control_st2(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),strong_st2(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),noshear_st2(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Ensemble Particle Model (plume-edge forcing)')
pbaspect([2.5 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','northwest')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),part_width_control_newTS(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_strongshear_newTS(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_noshear_newTS(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Particle Model - Modified TS, domain average forcing')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),part_width_control_oldTS_st1(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_strongshear_oldTS_st1(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_noshear_oldTS_st1(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Particle Model - Original TS, in-plume forcing')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),part_width_control_st1(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_strongshear_st1(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_noshear_st1(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Particle Model - Modified TS, in-plume forcing')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),part_width_control_oldTS_st2(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_strongshear_oldTS_st2(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_noshear_oldTS_st2(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Particle Model - Original TS, plume edge forcing')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),part_width_control_st2(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_strongshear_st2(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_noshear_st2(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Particle Model - Modified TS, plume edge forcing')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
%plot(t,width_1std_100_control,'LineWidth',3,'color','b')
plot(t(1:71),part_width_control_newTS(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
%plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
%plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
%plot(t(1:71),part_width_control_newTS(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_strongshear_newTS(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_noshear_newTS(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
plot(t,con_growth,'LineWidth',1,'Color','black','LineStyle','-.')
plot(t,sq_growth,'LineWidth',2,'Color','black','LineStyle',':')
ylim([0 70]);
xlim([0 36]);
title('Particle Model - Modified TS, domain average forcing')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(11:71),PM_control_newTS_Init(12:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(11:71),PM_control_newTS_init_st1(12:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(11:71),PM_control_newTS_init_st2(12:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Control Run (Late Initialization)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Particle Model (domain avg)', 'Particle Model (in-plume)','Particle Model (plume edge)','Location','southeast')

figure;
plot(t,width_1std_100_noshear,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(11:71),PM_noshear_newTS_init(12:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(11:71),PM_noshear_newTS_init_st1(12:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(11:71),PM_noshear_newTS_init_st2(12:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('No Shear Run (Late Initialization)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('No Shear (LES)','Particle Model (domain avg)', 'Particle Model (in-plume)','Particle Model (plume edge)','Location','southeast')

figure;
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(11:71),PM_strong_newTS_init(12:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(11:71),PM_strong_newTS_init_st1(12:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(11:71),PM_strong_newTS_init_st2(12:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('Strong Shear Run (Late Initialization)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Strong Shear (LES)','Particle Model (domain avg)', 'Particle Model (in-plume)','Particle Model (plume edge)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(11:71),PM_control_newTS_init_st1(12:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(11:71),PM_strong_newTS_init_st1(12:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(11:71),PM_noshear_newTS_init_st1(12:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('New TS, in-plume forcing, late initialization')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(11:71),PM_control_newTS_Init(12:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(11:71),PM_strong_newTS_init(12:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(11:71),PM_noshear_newTS_init(12:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('New TS, domain-averaged forcing, late initialization')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(11:71),PM_control_newTS_init_st2(12:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(11:71),PM_strong_newTS_init_st2(12:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(11:71),PM_noshear_newTS_init_st2(12:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('New TS, plume-edge forcing, late initialization')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),PM_control_new_st1(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),PM_strong_new_st1(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),PM_noshear_new_st1(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('New TS, in-plume forcing, normal initialization')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),PM_control_new(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),PM_strong_new(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),PM_noshear_new(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('New TS, domain-averaged forcing, normal initialization')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')

figure;
plot(t,width_1std_100_control,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','magenta')
plot(t,width_1std_100_noshear,'LineWidth',3,'color','cyan')
plot(t(1:71),PM_control_new_st2(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),PM_strong_new_st2(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),PM_noshear_new_st2(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([0 70]);
xlim([0 36]);
title('New TS, plume-edge forcing, normal initialization')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control (LES)','Strong Shear (LES)', 'Weak Shear (LES)','Control (PM)','Strong Shear (PM)','Weak Shear (PM)','Location','southeast')
