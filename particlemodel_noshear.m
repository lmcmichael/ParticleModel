%simplified Langevin model to calculate ensemble of particle trajectories 

%number of ensemble members
ens_num = 20 ;

%number of particles to be modeled
part_num = 200.0; 

%C_0 values from large particle number Control runs
C_0 = -0.52;
C_0_st1 = -0.39;
C_0_st2 = -0.17;

%model fluctations in velocity and predict particle position

dt = 120; %in seconds

%convert time to seconds 
time_s = double((time - 12.0)*3600.0);

time0 = time - 12.0;
t = linspace(0.5,36,72);
t_s(:) = t(:)*3600.0; %s

%start time for particle model
time_start_index = 1; %(time_start_index/2.0 = # of hours)
t_start = fix(time_start_index);  
dt_data = 900.0; %time step in input data

%linearly interpolate time array
start_t = floor(min(time_s));
end_t = ceil(max(time_s));

new_time = transpose(start_t:dt:end_t);

new_time_hr = new_time/3600.0;

%interpolate MEAN_U, MEAN_U2, and NEW_TS
MEAN_U_interp = interp1(time_s,MEAN_U,new_time);
MEAN_U_st1_interp = interp1(time_s,MEAN_U_st1,new_time);
MEAN_U_st2_interp = interp1(time_s,MEAN_U_st2,new_time);
MEAN_U2_interp = interp1(time_s,MEAN_U2,new_time);
MEAN_U2_st1_interp = interp1(time_s,MEAN_U2_st1,new_time);
MEAN_U2_st2_interp = interp1(time_s,MEAN_U2_st2,new_time);
NEW_TS_interp = interp1(time_s,NEW_TS,new_time);
NEW_TS_st1_interp = interp1(time_s,NEW_TS_st1,new_time);
NEW_TS_st2_interp = interp1(time_s,NEW_TS_st2,new_time);

%initialize particle positions based on first LES datapoint (t = 2.0 hr)
std_dev = 0.5*width_1std_100_noshear(t_start)*1000.0; %1 std dev in meters 
mu = 0;

part_pos_init = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_init_st1 = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_init_st2 = mu + std_dev * randn(part_num, 1); %particle position in meters

for m=1:ens_num
    part_pos_0(:,m) = part_pos_init(:);
    part_pos_0_st1(:,m) = part_pos_init_st1(:);
    part_pos_0_st2(:,m) = part_pos_init_st2(:);
end

%convert from two hours to new time index
dt_ind = fix((double(t_s(t_start))/dt_data) + 1);

%initialize particle velocities 
%std_dev_vel = sqrt(MEAN_U2(dt_ind));
std_dev_vel = 0.0;
mean_u_vel = MEAN_U(dt_ind);

%std_dev_vel_st1 = sqrt(MEAN_U2_st1(dt_ind));
std_dev_vel_st1 = 0.0;
mean_u_vel_st1 = MEAN_U_st1(dt_ind);

%std_dev_vel_st2 = sqrt(MEAN_U2_st2(dt_ind));
std_dev_vel_st2 = 0.0;
mean_u_vel_st2 = MEAN_U_st2(dt_ind);

part_vel_init = mean_u_vel + std_dev_vel * randn(part_num,1);

part_vel_init_st1 = mean_u_vel_st1 + std_dev_vel_st1 * randn(part_num,1);

part_vel_init_st2 = mean_u_vel_st2 + std_dev_vel_st2 * randn(part_num,1);

for m=1:ens_num
    part_vel_0(:,m) = part_vel_init(:);
    part_vel_0_st1(:,m) = part_vel_init_st1(:);
    part_vel_0_st2(:,m) = part_vel_init_st2(:);
end

%calculate first time point in new time array
dt_ind_start = (double(dt_data)/double(dt))*(dt_ind-1);

%calculate each ensemble particle trajectory
for m = 1:ens_num

    %calculate relaxation timescale from k/eps from LES
    T_L = NEW_TS_interp.*(1/(0.5 + 0.75.*C_0));
    T_L_st1 = NEW_TS_st1_interp.*(1/(0.5 + 0.75.*C_0_st1));
    T_L_st2 = NEW_TS_st2_interp.*(1/(0.5 + 0.75.*C_0_st2));

    %calculate langevin equation for each particle

    %start from t = 3 (0.5 hour) 
    for n=dt_ind_start:length(new_time)
        for i=1:part_num

            %particle velocities (domain avg)
            part_vel(i,n,m) = part_vel_0(i,m) + (MEAN_U_interp(n) - part_vel_0(i,m)).*(dt/T_L(n)) ...
                           + sqrt((2*MEAN_U2_interp(n)*dt)/T_L(n)).*randn();

            %particle velocities (in-plume)
            part_vel_st1(i,n,m) = part_vel_0_st1(i,m) + (MEAN_U_st1_interp(n) - part_vel_0_st1(i,m)).*(dt/T_L_st1(n)) ...
                           + sqrt((2*MEAN_U2_st1_interp(n)*dt)/T_L_st1(n)).*randn();

            %particle velocities (plume edge)
            part_vel_st2(i,n,m) = part_vel_0_st2(i,m) + (MEAN_U_st2_interp(n) - part_vel_0_st2(i,m)).*(dt/T_L_st2(n)) ...
                           + sqrt((2*MEAN_U2_st2_interp(n)*dt)/T_L_st2(n)).*randn();

            %particle positions (domain avg)
            part_pos(i,n,m) = part_pos_0(i,m) + part_vel(i,n,m)*dt;

            %particle positions (in-plume)
            part_pos_st1(i,n,m) = part_pos_0_st1(i,m) + part_vel_st1(i,n,m)*dt;

            %particle positions (plume edge)
            part_pos_st2(i,n,m) = part_pos_0_st2(i,m) + part_vel_st2(i,n,m)*dt;

        end

        part_vel_0(:,m) = part_vel(:,n,m);
        part_vel_0_st1(:,m) = part_vel_st1(:,n,m);
        part_vel_0_st2(:,m) = part_vel_st2(:,n,m);

        part_pos_0(:,m) = part_pos(:,n,m);
        part_pos_0_st1(:,m) = part_pos_st1(:,n,m);
        part_pos_0_st2(:,m) = part_pos_st2(:,n,m);

    end    

    %convert zonal particle positions to km
    part_pos(:,:,m) = part_pos(:,:,m)./1000.0;
    part_pos_st1(:,:,m) = part_pos_st1(:,:,m)./1000.0;
    part_pos_st2(:,:,m) = part_pos_st2(:,:,m)./1000.0;

    %calculate the standard deviation of the particle positions
    for n=dt_ind_start:length(new_time)
        part_width(n,m) = 2.0*std(part_pos(:,n,m));
        part_width_st1(n,m) = 2.0*std(part_pos_st1(:,n,m));
        part_width_st2(n,m) = 2.0*std(part_pos_st2(:,n,m));
    end

    downsamplingfactor = ceil((double(length(new_time))/double(length(width_1std_100_noshear))));

    % grab every other particle width to match LES data
    part_width_avg(:,m) = part_width(1:downsamplingfactor:end,m);
    part_width_avg_st1(:,m) = part_width_st1(1:downsamplingfactor:end,m);
    part_width_avg_st2(:,m) = part_width_st2(1:downsamplingfactor:end,m);

end

    %calculate ensemble average best performing particle width
    part_width_new = 0.0;
    part_width_st1_new = 0.0;
    part_width_st2_new = 0.0;
    for m=1:ens_num
        part_width_new = part_width_new + part_width_avg(:,m);
        part_width_st1_new = part_width_st1_new + part_width_avg_st1(:,m);
        part_width_st2_new = part_width_st2_new + part_width_avg_st2(:,m);
    end

    ens_width = part_width_new/double(ens_num);
    ens_width_st1 = part_width_st1_new/double(ens_num);
    ens_width_st2 = part_width_st2_new/double(ens_num);

%     ens_width = mean(part_width_avg,2);
%     ens_width_st1 = mean(part_width_avg_st1,2);
%     ens_width_st2 = mean(part_width_avg_st2,2);

    %calculate square root growth
    for n = 1:72
        sq_growth(n) = 2*sqrt(2*1500*t_s(n))/1000.0;
    end

    for n = 1:72
        con_growth(n) = t(n)*2.0; %km
        con_growth4(n) = t(n)*3.0; %km
    end

%plot ensemble members for domain average
figure;
plot(t(t_start:72),width_1std_100_noshear(t_start:72),'LineWidth',3,'color',[0.0 0.0 0.0])
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(t_start:71),ens_width((t_start+1):72),'LineWidth',3,'color','b')
for m=1:ens_num
    plot(t(t_start:71),part_width_avg((t_start+1):72,m),'LineWidth',0.01,'color','b','LineStyle','-.');
end
ylim([0 70]);
xlim([0 36]);
title('Weak Shear Ensemble Results (domain average)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Weak Shear (LES)','PM Ensemble Avg.','PM Ensemble Members','Location','southeast')

%plot ensemble members for domain average
figure;
plot(t(t_start:72),width_1std_100_noshear(t_start:72),'LineWidth',3,'color',[0.0 0.0 0.0])
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(t_start:71),ens_width_st1((t_start+1):72),'LineWidth',3,'color','magenta')
for m=1:ens_num
    plot(t(t_start:71),part_width_avg_st1((t_start+1):72,m),'LineWidth',0.01,'color','magenta','LineStyle','-.');
end
ylim([0 70]);
xlim([0 36]);
title('Weak Shear Ensemble Results (in-plume average)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Weak Shear (LES)','PM Ensemble Avg.','PM Ensemble Members','Location','southeast')

%plot ensemble members for domain average
figure;
plot(t(t_start:72),width_1std_100_noshear(t_start:72),'LineWidth',3,'color',[0.0 0.0 0.0])
xlabel('Time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(t_start:71),ens_width_st2((t_start+1):72),'LineWidth',3,'color','cyan')
for m=1:ens_num
    plot(t(t_start:71),part_width_avg_st2((t_start+1):72,m),'LineWidth',0.01,'color','cyan','LineStyle','-.');
end
ylim([0 70]);
xlim([0 36]);
title('Weak Shear Ensemble Results (plume-edge average)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Weak Shear (LES)','PM Ensemble Avg.','PM Ensemble Members','Location','southeast')

%plot absolute error between LES and PM
for n=2:length(t)
    err(n) = ens_width(n) - width_1std_100_noshear(n-1);
    err_st1(n) = ens_width_st1(n) - width_1std_100_noshear(n-1);
    err_st2(n) = ens_width_st2(n) - width_1std_100_noshear(n-1);
end

figure;
plot(t(t_start:71),err((t_start+1):72),'LineWidth',1.5,'color','b','LineStyle','--')
xlabel('Time since injection (hrs)')
ylabel('Particle Model Plume Width Error (km)')
hold on
plot(t(t_start:71),err_st1((t_start+1):72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(t_start:71),err_st2(t_start+1:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([-10 10]);
xlim([0 36]);
plot([min(t), max(t)], [0, 0], 'k--');
title('PM and LES comparison (Weak Shear)')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[-50 120 120 -50 -50], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('domain average error','in-plume error', 'plume edge error','Location','northeast')
