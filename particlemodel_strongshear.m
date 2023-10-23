%simplified Langevin model to model an ensemble of zonal velocity particles 

part_num = 20000.0; %number of particles to be modeled

%model fluctations in velocity and predict particle position

dt = 900; %15 minutes in seconds

%convert time to seconds 
time_s = double((time - 12.0)*3600.0);

%initialize particle positions based on first LES datapoint (t = 0.5 hr)
std_dev = 0.5*width_1std_100_strongshear(1)*1000.0; %1 std dev in meters 
mu = 0;

part_pos_init = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_init_st1 = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_init_st2 = mu + std_dev * randn(part_num, 1); %particle position in meters

part_pos_0(:) = part_pos_init(:);
part_pos_0_st1(:) = part_pos_init_st1(:);
part_pos_0_st2(:) = part_pos_init_st2(:);

%initialize particle velocity
std_dev_vel = sqrt(MEAN_U2(2));
mean_u_vel = MEAN_U(2);

std_dev_vel_st1 = sqrt(MEAN_U2_st1(2));
mean_u_vel_st1 = MEAN_U_st1(2);

std_dev_vel_st2 = sqrt(MEAN_U2_st2(2));
mean_u_vel_st2 = MEAN_U_st2(2);

part_vel_init = mean_u_vel + std_dev_vel * randn(part_num,1);

part_vel_init_st1 = mean_u_vel_st1 + std_dev_vel_st1 * randn(part_num,1);

part_vel_init_st2 = mean_u_vel_st2 + std_dev_vel_st2 * randn(part_num,1);

part_vel_0(:) = part_vel_init(:);
part_vel_0_st1(:) = part_vel_init_st1(:);
part_vel_0_st2(:) = part_vel_init_st2(:);

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

%C_0 values from Control runs
C_0 = -0.5;
C_0_st1 = -0.37;
C_0_st2 = -0.21;

    %calculate relaxation timescale from k/eps from LES
    T_L = NEW_TS.*(1/(0.5 + 0.75.*C_0));
    T_L_st1 = NEW_TS_st1.*(1/(0.5 + 0.75.*C_0_st1));
    T_L_st2 = NEW_TS_st2.*(1/(0.5 + 0.75.*C_0_st2));

    %calculate langevin equation for each particle

    %start from t = 3 (0.5 hour) 
    for n=3:length(time_s)
        for i=1:part_num

            %particle velocities (domain avg)
            part_vel(i,n) = part_vel_0(i) + (MEAN_U(n) - part_vel_0(i)).*(dt/T_L(n)) ...
                           + sqrt((2*MEAN_U2(n)*dt)/T_L(n)).*randn();

            %particle velocities (in-plume)
            part_vel_st1(i,n) = part_vel_0_st1(i) + (MEAN_U_st1(n) - part_vel_0_st1(i)).*(dt/T_L_st1(n)) ...
                           + sqrt((2*MEAN_U2_st1(n)*dt)/T_L_st1(n)).*randn();

            %particle velocities (plume edge)
            part_vel_st2(i,n) = part_vel_0_st2(i) + (MEAN_U_st2(n) - part_vel_0_st2(i)).*(dt/T_L_st2(n)) ...
                           + sqrt((2*MEAN_U2_st2(n)*dt)/T_L_st2(n)).*randn();

            %particle positions (domain avg)
            part_pos(i,n) = part_pos_0(i) + part_vel(i,n)*dt;

            %particle positions (in-plume)
            part_pos_st1(i,n) = part_pos_0_st1(i) + part_vel_st1(i,n)*dt;

            %particle positions (plume edge)
            part_pos_st2(i,n) = part_pos_0_st2(i) + part_vel_st2(i,n)*dt;

        end

        part_vel_0(:) = part_vel(:,n);
        part_vel_0_st1(:) = part_vel_st1(:,n);
        part_vel_0_st2(:) = part_vel_st2(:,n);

        part_pos_0(:) = part_pos(:,n);
        part_pos_0_st1(:) = part_pos_st1(:,n);
        part_pos_0_st2(:) = part_pos_st2(:,n);

    end    

    %convert zonal particle positions to km
    part_pos(:,:) = part_pos(:,:)./1000.0;
    part_pos_st1(:,:) = part_pos_st1(:,:)./1000.0;
    part_pos_st2(:,:) = part_pos_st2(:,:)./1000.0;

    %calculate the standard deviation of the particle positions
    for n=3:length(time_s)
        part_width(n) = 2.0*std(part_pos(:,n));
        part_width_st1(n) = 2.0*std(part_pos_st1(:,n));
        part_width_st2(n) = 2.0*std(part_pos_st2(:,n));
    end

    % grab every other particle width to match LES data
    part_width_avg(:) = part_width(1:2:end);
    part_width_avg_st1(:) = part_width_st1(1:2:end);
    part_width_avg_st2(:) = part_width_st2(1:2:end);

    %pick out best performing particle width
    part_width_new = part_width_avg(:);
    part_width_st1_new = part_width_avg_st1(:);
    part_width_st2_new = part_width_avg_st2(:);

    %plot particle width
    time0 = time - 12.0;
    t = linspace(0.5,36,72);
    t_s(:) = t(:)*3600.0; %s

    %calculate square root growth
    for n = 1:72
        sq_growth(n) = 2*sqrt(2*1500*t_s(n))/1000.0;
    end

    for n = 1:72
        con_growth(n) = t(n)*2.0; %km
        con_growth4(n) = t(n)*3.0; %km
    end

figure;
plot(t,width_1std_100_strongshear,'LineWidth',3,'color','b')
xlabel('time since injection (hrs)')
ylabel('Plume Width (km)')
hold on
plot(t(1:71),part_width_new(2:72),'LineWidth',1.5,'color','b','LineStyle','--')
plot(t(1:71),part_width_st1_new(2:72),'LineWidth',1.5,'color','magenta','LineStyle','--')
plot(t(1:71),part_width_st2_new(2:72),'LineWidth',1.5,'color','cyan','LineStyle','--')
plot(t,con_growth,'LineWidth',1,'Color','black','LineStyle','-.')
plot(t,sq_growth,'LineWidth',2,'Color','black','LineStyle',':')
ylim([0 60]);
xlim([0 36]);
title('Strong Shear Results')
pbaspect([2 1 1]);
patch([15.5 15.5 25.0 25.0 15.5],[0 120 120 0 0], [0.7 0.7 0.7],'FaceAlpha',0.1);
legend('Strong Shear','Particle Model (domain avg)', 'Particle model (in-plume)','Particle model (plume edge)','Location','southeast')