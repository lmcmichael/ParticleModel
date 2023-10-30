%simplified Langevin model to simulate an ensemble of zonal velocity particles
%this code is used for finding the optimal C_0 parameters for the Control
%simulation. After C_0 has been optimized, use ensemble code to run many
%particle simulations with much lower number of particles (part_num).
%Current version initializes particles at t = 0.5 hr after injection with
%zero initial velocity variance.

%max number of C_0 loops for parameter fitting
c_loop = 60;

part_num = 10000.0; %number of particles to be modeled

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
std_dev = 0.5*width_1std_100_control(t_start)*1000.0; %1 std dev in meters 
mu = 0;

part_pos_init = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_init_st1 = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_init_st2 = mu + std_dev * randn(part_num, 1); %particle position in meters

for m=1:c_loop
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

for m=1:120
    part_vel_0(:,m) = part_vel_init(:);
    part_vel_0_st1(:,m) = part_vel_init_st1(:);
    part_vel_0_st2(:,m) = part_vel_init_st2(:);
end

%plot particle positions of initial distribution
figure;
histogram(part_pos_init, 30); % Adjust the number of bins as needed
title('Normal Distribution of Particles');
xlabel('zonal position (m)');
ylabel('Frequency');

%plot zonal velocity of initial distribution
figure;
histogram(part_vel_init, 30); % Adjust the number of bins as needed
title('Normal Distribution of Particles');
xlabel('zonal velocity (m/s)');
ylabel('Frequency');

%calculate first time point in new time array
dt_ind_start = (double(dt_data)/double(dt))*(dt_ind-1);

%initialize C_0
init_c = 0.0; %initial guess of C_0

C_0 = init_c;
C_0_st1 = init_c;
C_0_st2 = init_c;

%loop through a range of C_0 to find optimal fit for entire duration
%loop from 0.0 to -0.6 (by 0.1 increments) in current configuration
for m = 1:c_loop

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

    downsamplingfactor = ceil((double(length(new_time))/double(length(width_1std_100_control))));

    % grab every other particle width to match LES data
    part_width_avg(:,m) = part_width(1:downsamplingfactor:end,m);
    part_width_avg_st1(:,m) = part_width_st1(1:downsamplingfactor:end,m);
    part_width_avg_st2(:,m) = part_width_st2(1:downsamplingfactor:end,m);

    error(m) = 0;
    error_st1(m) = 0;
    error_st2(m) = 0;
    for n=(t_start+1):length(t)

        %calculate least square error
        error(m) = error(m) + sum((width_1std_100_control(n-1) - part_width_avg(n,m)).^2.0);
        error_st1(m) = error_st1(m) + sum((width_1std_100_control(n-1) - part_width_avg_st1(n,m)).^2.0);
        error_st2(m) = error_st2(m) + sum((width_1std_100_control(n-1) - part_width_avg_st2(n,m)).^2.0);
    
    end

    C_0 = init_c - 0.01*m;
    C_0_st1 = init_c - 0.01*m;
    C_0_st2 = init_c - 0.01*m;

end

    %pick out best fit from range of C_0 values
    C_0_ind = find(error == min(error));
    C_0_ind_st1 = find(error_st1 == min(error_st1));
    C_0_ind_st2 = find(error_st2 == min(error_st2));

    %best fit C_0 value
    C_0_val = init_c - (C_0_ind*0.01);
    C_0_val_st1 = init_c - (C_0_ind_st1*0.01);
    C_0_val_st2 = init_c - (C_0_ind_st2*0.01);

    %pick out best performing particle width
    part_width_new = part_width_avg(:,C_0_ind);
    part_width_st1_new = part_width_avg_st1(:,C_0_ind_st1);
    part_width_st2_new = part_width_avg_st2(:,C_0_ind_st2);

    %calculate square root growth
    for n = 1:72
        sq_growth(n) = 2*sqrt(2*1500*t_s(n))/1000.0;
    end

    for n = 1:72
        con_growth(n) = t(n)*2.0; %km
        con_growth4(n) = t(n)*3.0; %km
    end

figure;
plot(t(t_start:72),width_1std_100_control(t_start:72),'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(t_start:71),part_width_new((t_start+1):72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(t_start:71),part_width_st1_new((t_start+1):72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(t_start:71),part_width_st2_new((t_start+1):72),'LineWidth',1.5,'color','cyan','LineStyle','--')
plot(t,con_growth,'LineWidth',1,'Color','black','LineStyle','-.')
plot(t,sq_growth,'LineWidth',2,'Color','black','LineStyle',':')
ylim([0 60]);
xlim([0 36]);
title('Control Results')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Control','Particle Model (domain avg)', 'Particle model (in-plume)','Particle model (plume edge)','Location','southeast')

%plot absolute error between LES and PM
for n=2:length(t)
    err(n) = part_width_new(n) - width_1std_100_control(n-1);
    err_st1(n) = part_width_st1_new(n) - width_1std_100_control(n-1);
    err_st2(n) = part_width_st2_new(n) - width_1std_100_control(n-1);
end

figure;
plot(t(t_start:71),err((t_start+1):72),'LineWidth',1.5,'color','b','LineStyle','--')
xlabel('time since injection (hrs)')
ylabel('Particle Model Plume Width Error (km)')
hold on
plot(t(t_start:71),err_st1((t_start+1):72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(t_start:71),err_st2(t_start+1:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
ylim([-5 5]);
xlim([0 36]);
plot([min(t), max(t)], [0, 0], 'k--');
title('PM and LES comparison')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[-50 120 120 -50 -50], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('domain average error','in-plume error', 'plume edge error','Location','southeast')
