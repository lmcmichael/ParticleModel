%code to compute the Guassian fit from the boundary-layer-averaged aerosol concentration in the LES

nt = 72; %number of samples (half hour intervals)
nx = 2048;
ny = 256;
x = linspace(1,nx,nx)*0.1; % in km
x = transpose(x);

%Establish Gaussian curve equation with offset for background aerosol
gaussEqn = 'a*exp(-((x-b)/c)^2)+d';

%array of starting points for shear cases
%startPoints = [130.0, 100.0, 8.0, 20.0];
%for polluted case
startPoints = [350.0, 100.0, 8.0, 130.0];

%shift array to keep plume center in middle of domain
%for control and polluted
Shift_plume = linspace(0,350,nt); 
%for strong shear
%Shift_plume = linspace(0,650,nt);

%no shift necessary for no shear run

Shift_plume = round(Shift_plume);

%loop over all time steps and average in the along-plume direction to get
%average cross-plume width
for n = 1:nt
    for j = 1:ny
        % pull out a single cross-plume row from full array
        NA_c = NAc(:,j,n);
        %NA_c = NA_sc(:,j,n);
        %shift plume slice to center of domain
        NA_cs = circshift(NA_c,Shift_plume(n),1);
        %no shear
        %NA_cs = NA_c;
        % use curve fitting tool
        f = fit(x,NA_cs,gaussEqn,'Start',startPoints);
        %grab coeff. from gaussian curve fitter
        Coef = coeffvalues(f); 
        pl_w2(j) = Coef(3)*4; %2 standard deviations (x2) for full width
        pl_w1(j) = Coef(3)*2; %1 standard deviation (x2) for full width
        pl_w15(j) = Coef(3)*3; %1.5 standard deviations (x2) for full width
        %filter out erroneously high plume widths when fit goes awry, 
        %especially prominent at early time steps
        if pl_w1(j) > 40.0 && n < 10 || pl_w1(j) <= 0.0 
           pl_w1(j) = NaN;
           pl_w15(j) = NaN;
           pl_w2(j) = NaN;
        end
        %filter out plume widths that are too large
        if pl_w1(j) > 80.0  
           pl_w1(j) = NaN;
           pl_w15(j) = NaN;
           pl_w2(j) = NaN;
        end
    end
    %average all plume widths in the y-direction at each time step
    width_2std_100(n) = mean(pl_w2(:),'omitnan');
    width_1std_100(n) = mean(pl_w1(:),'omitnan');
    width_15std_100(n) = mean(pl_w15(:),'omitnan');
end
