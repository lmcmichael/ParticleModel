;datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_512x128x144_200m/S12_CTLmod_512x128x144_200m_Ship_512_0000002400.nc')
;datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_highfreq_3D/S12_CTLmod_2048x512x144_50m_ShipTrack_lcs2_2048_0000001200.nc')
;datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_2048x512x144_stats/S12_3D_14400.nc')
;datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_2048x256_100m_36hr_stats/S12_CTLmod_2048x256_100m_2048proc_36hours_2048_0000043200.nc')
;datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_hyperv_3D/S12_CTLmod_2048x256_100m_2048proc_36hours_2048_0000001200.nc')
;datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_512x128x144_200m/S12_CTLmod_512x128x144_200m_Ship_spinup_512_0000014400.nc')
;datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_strongshear/S12_CTLmod_2048x256_100m_strongshear_spinup_2048_0000014400.nc')
;datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_strongshear/S12_CTLmod_2048x256_100m_strongshear_2048_0000030000.nc')
;datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_noshear/S12_CTLmod_2048x256_100m_noshear_2048_0000001200.nc')
datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_polluted/S12_CTLmod_2048x256_100m_polluted22_2048_0000043200.nc')

print, ' '
print, datafiles

    READ_3D, datafiles, $
    x, y, z, p, TABS, QN, NAd, QP, TRACER

nx = (SIZE(x, /dim))[0]
ny = (SIZE(y, /dim))[0]
nzm = (SIZE(z, /dim))[0]

x = x/1000
y = y/1000
z = z/1000

Rd = 287.0 ;J/kg
rhoair = FLTARR(nx,ny,nzm)
FOR k = 0, nzm-1 DO BEGIN
  rhoair[*,*,k] = (p[k]*100.0)/(Rd*TABS[*,*,k]) ;kg/m^3
ENDFOR

;calculate liquid water path
lwp3D = FLTARR(nx,ny)
FOR k=0, nzm-2 DO BEGIN
  lwp3D[*,*] = lwp3D[*,*] + rhoair[*,*,k]*QN[*,*,k]*(z[k+1]-z[k])*1000.0
ENDFOR

;calculate cloud fraction
cftmp = WHERE(lwp3D NE 0.0)
cfnum = N_ELEMENTS(cftmp)
cfnum2 = FLOAT(cfnum)
cfrac = cfnum2/(nx*ny)
print, 'cloud fraction no thresh=', cfrac

tot_depth = z[30] - z[0] ;depth of averaging layer
NAd_avg = FLTARR(nx,ny)
FOR k = 0, 29 DO BEGIN
  NAd_avg[*,*] = NAd_avg[*,*] + NAd[*,*,k]*((z[k+1]-z[k])/tot_depth)
ENDFOR

;PLOT X-Y LIQUID WATER AND NAd
NAd_XY = FLTARR(nx, ny)
NAd_XY[*,*] = QN[*,*,50]
nacont = 21
nalvls = [0.0,0.05,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,$
          0.8,0.85,0.9,0.95,1.0]
natick = ['0','0.5','1.0']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'QN_XZ.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 13, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], x[*], y[*], /FILL, Aspect=1.0/8.0, $
  xticks = 5, xminor = 0, xrange = [0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  title = 'Liquid Water at 600 m [g/kg]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file


FOR i = 0, nx-1 DO BEGIN
  FOR j=0, ny-1 DO BEGIN
    IF (lwp3D[i,j] LT 1.26) THEN BEGIN
       lwp3D[i,j] = 1.26
    ENDIF
  ENDFOR
ENDFOR

dx = 50.0
F_coeff_l = FLTARR(2048)
FOR j = 0, ny-1 DO BEGIN
    Fm = FFT(lwp3D[0:2047,j], /double) ;compure Fourier coefficients
    F_coeff_l[*] = F_coeff_l[*] + Fm
ENDFOR

;dx = 200.0
;F_coeff_l = FLTARR(512)
;FOR j = 0, ny-1 DO BEGIN
;    Fm = FFT(lwp3D[0:511,j], /double)
;    F_coeff_l[*] = F_coeff_l[*] + Fm
;ENDFOR

;compute power spectra for LWP
;dx = 100.0 ;horizontal grid spacing
;F_coeff_l = FLTARR(1024)
;FOR j = 0, ny-1 DO BEGIN
;    Fm = FFT(lwp3D[0:1023,j], /double) ;compure Fourier coefficients
;    F_coeff_l[*] = F_coeff_l[*] + Fm
;ENDFOR
;
;F_coeff_r = FLTARR(1024)
;FOR j = 0, ny-1 DO BEGIN
;    Fm = FFT(lwp3D[1024:2047,j], /double) ;compure Fourier coefficients
;    F_coeff_r[*] = F_coeff_r[*] + Fm
;ENDFOR
;
;compute variance of LWP

use_color = 1
tick_scale = -0.25
x_tick_scale = 0.005/tick_scale
y_tick_scale = 0.005/tick_scale
xaxisthick = 4
yaxisthick = 4

;F_coeff_l = F_coeff_l/256.0
;F_coeff_r = F_coeff_r/FLOAT(ny)
F_coeff_l = F_coeff_l/FLOAT(ny)

;grab positive frequencies
;F_r = FLTARR(512)
;F_rr = FLTARR(512)
;F_r[1:511] = F_coeff_l[1:511]
;F_rr[1:511] = F_coeff_r[1:511]
F_r = FLTARR(1024)
F_r[1:1023] = F_coeff_l[1:1023]
;F_r = FLTARR(256)
;F_r[1:255] = F_coeff_l[1:255]

;compute max power
;maxf = MAX(ABS(F_r)^2.0) 
;maxf = MAX(ABS(F_rr)^2.0)

;compute power
Power_lwpl = (ABS(F_r)^2.0)
;Power_lwpr = (ABS(F_rr)^2.0)

Power_lwpl1 = TS_SMOOTH(Power_lwpl, 10) 
;Power_lwpr1 = TS_SMOOTH(Power_lwpr, 10)

;Power_lwp = (Power_lwpl1 + Power_lwpr1)/2.0
Power_lwp = Power_lwpl1

;compute normalized power spectrum
;Power_lwp_norml = (ABS(F_r)^2.0)/maxf
;Power_lwp_normr = (ABS(F_rr)^2.0)/maxf
;Power_lwp_norm = (Power_lwp_norml + Power_lwp_normr)/2.0
;Power_lwp_norm = TS_SMOOTH(Power_lwp_norml, 4);

;compute natural frequencies
;100m
;freq = findgen(512)/dx/FLOAT(1024)
;200m
;freq = findgen(257)/dx/FLOAT(512)
;50m
freq = findgen(1025)/dx/FLOAT(2048)

;compute -5/3 line
;Power_kom = (freq^(-5.0/3.0))/300000000.0;

;plot normalized power spectrum
;!P.FONT = 1
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'lwpspectra.eps', $
;   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
;plotposition = ASPECT(1.0, margin = 0.15)
;PLOT, /xlog, freq[*], Power_lwp_norm[*], /nodata,$
;   xstyle = 9, xrange = [0.00001, 0.01], $
;   xticks = 3, xminor = 0, $;xtickv = irtime,$
;   ;xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
;   xtickname = ['100','10','1','0.1'], $
;   xtitle = 'Wavelength [km]', $
;   ystyle = 1, yrange = [0.001, 10], yticks = 4.0, $
;   yminor = 1.0, $
;   ytitle = 'Normalized Power LWP [g!U2!N m!U-4!N]', $
;   position = plotposition, $
;   charsize = 4, thick =4, $
;   xthick = xaxisthick, ythick = yaxisthick, $
;   xticklen = x_tick_scale, yticklen = y_tick_scale
;;   OPLOT, freq[*], Power_lwp[*], $
;   thick = 6, line = 0, color = 0
;DEVICE, /close_file

;!P.FONT = 1
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'lwpspectra.eps', $
;   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
;plotposition = ASPECT(1.0, margin = 0.15)
;PLOT, /xlog, freq[*], Power_lwp_norm[*], /nodata,$
;   xstyle = 9, xrange = [0.00001, 0.01], $
;   xticks = 3, xminor = 0, $;xtickv = irtime,$
;   ;xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
;   ;xtickname = ['','0.8','0.4','0.2'],$
;   xtickname = ['100','10','1','0.1'], $
;   xtitle = 'Wavelength [km]', $
;   ystyle = 1, yrange = [0.0, 0.75], yticks = 3.0, $
;   yminor = 1.0, $
;   ytitle = 'Normalized Power!DLWP!N [g!U2!N m!U-4!N]', $
;   position = plotposition, $
;   charsize = 4, thick =4, $
;   xthick = xaxisthick, ythick = yaxisthick, $
;   xticklen = x_tick_scale, yticklen = y_tick_scale
;   OPLOT, freq[*], Power_lwp_norm[*], $
;   thick = 6, line = 0, color = 0
;DEVICE, /close_file

;!P.FONT = 1
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'lwppower.eps', $
;   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
;plotposition = ASPECT(1.0, margin = 0.15)
;PLOT, /xlog, /ylog, freq[*], Power_lwp[*], /nodata, $
;   xstyle = 9, xrange = [0.00001, 0.001], $
;   xticks = 2, xminor = 4, $;xtickv = irtime,$
;   ;xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
;   ;xtickname = ['','0.8','0.4','0.2'],$
;   ;xtickname = ['100','10','1','0.1'], $
;   xtitle = 'Frequency [km!U-1!N]', $
;   ystyle = 1, yrange = [0.001, 1000], yticks = 3.0, $
;   yminor = 4, $
;   xtickname = ['0.01', '0.1', '1'], $
;   ytitle = 'Power!DLWP!N [g!U2!N m!U-4!N]', $
;   ytickname = ['10!U-3!N','10!U-1!N','10!U1!N','10!U3!N'],$
;   position = plotposition, $
;   charsize = 4, thick =4, $
;   xthick = xaxisthick, ythick = yaxisthick, $
;   xticklen = x_tick_scale, yticklen = y_tick_scale, $
;   color = 0
;   OPLOT, freq[*], Power_lwp[*], $
;   thick = 3, line = 0, color = 0
;   ;OPLOT, freq[*], Power_kom[*], $
;   ;thick = 6, line = 1, color = 0
;DEVICE, /close_file

legend = ['200 m']
!P.FONT = 1
!P.BACKGROUND = 255
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'lwppower.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(1.0, margin = 0.15)
PLOT, /xlog, /ylog, freq[*], Power_lwp[*], /nodata, $
   xstyle = 9, xrange = [0.00001, 0.001], $
   xticks = 2, xminor = 4, $;xtickv = irtime,$
   xtitle = 'Frequency [km!U-1!N]', $
   ystyle = 1, yrange = [0.001, 1000], yticks = 3.0, $
   yminor = 4, $
   xtickname = ['0.01', '0.1', '1'], $
   ytitle = 'Power!DLWP!N [g!U2!N m!U-4!N]', $
   ytickname = ['10!U-3!N','10!U-1!N','10!U1!N','10!U3!N'],$
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, freq[*], Power_lwp[*], $
   thick = 5, line = 0, color = cgColor("Black")
   OPLOT, [freq[14],freq[14]], [0.001,1000], line = 1, thick = 2
   LEGEND, legend, $
   thick = 5, color = cgColor("Black"), line = 0, /top, /right, box = 0, charsize = 3.0
DEVICE, /close_file

shift_amount = 350

;hour 1 (1200) shift 0
;hour 13 (15600) shift 250
;hour 25 (30000) shift 400
;hour 37 (43200) shift 600
NAd_XY = FLTARR(nx,ny)
FOR j = 0,ny-1 DO BEGIN
NAd_XY[*,j] = shift(lwp3D[*,j],shift_amount)
ENDFOR
set_plot, 'ps'
nacont = 26
nalvls = [1.26,1.58,2.0,2.51,3.16,3.98,5.01,6.31,7.94,10.0,12.6,15.8,20.0,25.1,$
          31.6,39.8,50.1,63.1,79.4,100.0,125.9,158.5,199.5,251.2,316.2,398.1]
colors = bindgen(nacont+1)+2B
DEVICE, /color, /encapsulated, filename = 'LWP_XZ.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 17, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], x[*], y[*], /FILL, Aspect=1.0/8.0, $
  xticks = 5, xminor = 0, xrange = [0.0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  title = 'LWP [g m!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, /YLOG, Range = [1, 400], /VERTICAL, /RIGHT, $
   charsize = 2, NColors = nacont+1, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

NAd_xy = FLTARR(nx,ny)
NAd_xy = NAd[*,*,1]
set_plot, 'ps'
nacont = 26
nalvls = [1.26,1.58,2.0,2.51,3.16,3.98,5.01,6.31,7.94,10.0,12.6,15.8,20.0,25.1,$
          31.6,39.8,50.1,63.1,79.4,100.0,125.9,158.5,199.5,251.2,316.2,398.1]
colors = bindgen(nacont+1)+2B
DEVICE, /color, /encapsulated, filename = 'NA_log.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 26, /BREWER, Ncolors=nacont+2, clip = [35,240]
cgCONTOUR, NAd_xy[*,*], x[*], y[*], /FILL, Aspect=1.0/4.0, $
  xticks = 5, xminor = 0, xrange = [0.0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  title = 'Dry Aerosol Conc. [#/mg]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, /YLOG, Range = [1, 400], /VERTICAL, /RIGHT, $
   charsize = 2, NColors = nacont+1, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

NAd_XY = FLTARR(nx, ny)
NAd_XY[*,*] = NAd[*,*,1]
nacont = 17
nalvls = [10.0,12.5,15.0, 17.5, 20.0, 22.5, 25.0, 27.5, 30.0, 32.5, 35.0, 37.5, 40.0, 42.5, 45.0, 47.5, 50.0]
natick = ['10','30','50']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'NAd_XZ.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 26, /BREWER, Ncolors=nacont+2, clip = [35,240]
cgCONTOUR, NAd_XY[*,*], x[*], y[*], /FILL, Aspect=1.0/8.0, $
  xticks = 5, xminor = 0, xrange = [0.0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  ;xtickname = ['-10', 'SHIP', '+10'], $
  title = 'Dry Aerosol Conc. [#/mg]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

NAd_XY_1 = FLTARR(nx, ny)
NAd_XY_1[*,*] = TRACER[*,*,1]/MAX(TRACER[*,*,1])
NAd_XY = FLTARR(nx, ny)
FOR j = 0,ny-1 DO BEGIN
NAd_XY[*,j] = shift(NAd_XY_1[*,j],shift_amount)
ENDFOR
nacont = 21
nalvls = [0.0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0]
;nalvls = [10.0,12.5,15.0, 17.5, 20.0, 22.5, 25.0, 27.5, 30.0, 32.5, 35.0, 37.5, 40.0, 42.5, 45.0, 47.5, 50.0]
natick = ['0','0.5','1']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TR_XZ.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 26, /BREWER, Ncolors=nacont+2, clip = [35,240]
cgCONTOUR, NAd_XY[*,*], x[*], y[*], /FILL, Aspect=1.0/8.0, $
  xticks = 5, xminor = 0, xrange = [0.0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  ;xtickname = ['-10', 'SHIP', '+10'], $
  title = 'Tracer Conc. [#/mg]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

NAd_XY = FLTARR(nx, ny)
nacont = 41
;nalvls = [0.0,2.5,5.0,7.5,10.0,12.5,15.0, 17.5, 20.0, 22.5, 25.0, 27.5, 30.0, 32.5, 35.0, 37.5, 40.0, 42.5, 45.0, 47.5, 50.0]
nalvls = [0.0, 5.0, 10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, $
          95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0, 160.0, 165.0, 170.0, $
          175.0, 180.0, 185.0, 190.0, 195.0, 200.0]
natick = ['0','100','200']
colors = bindgen(nacont+1)+2B
FOR j = 0,ny-1 DO BEGIN
NAd_XY[*,j] = shift(NAd_avg[*,j],shift_amount)
ENDFOR
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'NAd_avg.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 26, /BREWER, Ncolors=nacont+2, clip = [35,240]
cgCONTOUR, NAd_XY[*,*], x[*], y[*], /FILL, Aspect=1.0/8.0, $
  xticks = 5, xminor = 0, xrange = [0.0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  ;xtickname = ['-10', 'SHIP', '+10'], $
  title = 'Dry Aerosol Conc. [#/mg]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

;PLOT X-Y TK
NAd_XY = FLTARR(nx, ny)
NAd_XY[*,*] = QP[*,*,1]
nacont = 13
NAd_XY2 = FLTARR(nx, ny)
FOR j = 0,ny-1 DO BEGIN
NAd_XY2[*,j] = shift(NAd_XY[*,j],shift_amount)
ENDFOR
;;nalvls = [0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.60,0.65,0.70,0.75]
nalvls = [0.0,0.005,0.01,0.015,0.02,0.025,0.03,0.035,0.04,0.045,0.05,0.055,0.06];,0.09,0.1]
natick = ['0.0','0.03','0.06']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Prec_XY.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 11, /BREWER, Ncolors=nacont+2, clip = [35,240]
cgCONTOUR, NAd_XY2[*,*], x[*], y[*], /FILL, Aspect=1.0/8.0, $
  xticks = 5, xminor = 0, xrange = [0,200.0], $
  xtitle = 'x (km)', $
  ystyle = 1, yrange = [0,25.0], yticks = 2, yminor = 0, $
  ytitle = 'y (km)', $
  title = 'Precipitating Condensate [g/kg]', $
  charsize = 2, levels = nalvls, c_colors = colors
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

;NAd_XY = FLTARR(nx, nzm)
;NAd_XY[*,*] = TK[*,10,*]
;nacont = 21
;;nalvls = [0.0,0.05,0.10,0.15,0.20,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.60,0.65,0.70,0.75,0.80]
;;nalvls = [0.0,0.01,0.02,0.03,0.04,0.05,0.06,0.07,0.08,0.09,0.1]
;nalvls = [0.0, 0.025, 0.05, 0.075, 0.1, 0.125, 0.15, 0.175, 0.2, 0.225, 0.25, 0.275, 0.3, $
;          0.325, 0.35, 0.375, 0.4, 0.425, 0.45, 0.475, 0.5]
;natick = ['0.0','0.25','0.5']
;colors = bindgen(nacont+1)+2B
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'TK_XZ_20000.eps', $
;  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
;cgLoadCT, 11, /BREWER, Ncolors=nacont+2, clip = [35,240]
;cgCONTOUR, NAd_XY[*,*], x[*], z[*], /FILL, Aspect=1.0/4.0, $
;  xticks = 2, xminor = 0, xrange = [42.0,62.0], $
;  xtitle = 'x (km)', $
;  ystyle = 1, yrange = [0,1.0], yticks = 2, yminor = 0, $
;  ytitle = 'y (km)', $
;  title = 'Eddy Diffusivity [m!U2!N s!U-1!N]', $
;  xtickname = ['-10', 'SHIP', '+10'], $
;  charsize = 2, levels = nalvls, c_colors = colors
;cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
;   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
;DEVICE, /close_file
;

;NAd_XY = FLTARR(nx, nzm)
;NAd_XY[*,*] = QN[*,10,*]
;nacont = 21
;nalvls = [0.0,0.05,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,$
;          0.8,0.85,0.9,0.95,1.0]
;natick = ['0','0.5','1.0']
;colors = bindgen(nacont+1)+2B
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'QN_XZ_20000.eps', $
;  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
;cgLoadCT, 13, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
;cgCONTOUR, NAd_XY[*,*], x[*], z[*], /FILL, Aspect=1.0/4.0, $
;  xticks = 2, xminor = 0, xrange = [42.0,62.0], $
;  xtitle = 'x (km)', $
;  ystyle = 1, yrange = [0,1.0], yticks = 2, yminor = 0, $
;  ytitle = 'y (km)', $
;  xtickname = ['-10', 'SHIP', '+10'], $
;  title = 'Liquid Water Content [g/kg]', $
;  charsize = 2, levels = nalvls, c_colors = colors
;cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
;   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
;DEVICE, /close_file
;
;NAd_XY = FLTARR(nx, nzm)
;NAd_XY[*,*] = NAd[*,10,*]
;nacont = 21
;nalvls = [0.0,2.5,5.0,7.5,10.0,12.5,15.0, 17.5, 20.0, 22.5, 25.0, 27.5, 30.0, 32.5, 35.0, 37.5, 40.0, 42.5, 45.0, 47.5, 50.0]
;natick = ['0','25','50']
;colors = bindgen(nacont+1)+2B
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'NAd_XZ_20000.eps', $
;  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
;cgLoadCT, 26, /BREWER, Ncolors=nacont+2, clip = [35,240]
;cgCONTOUR, NAd_XY[*,*], x[*], z[*], /FILL, Aspect=1.0/4.0, $
;  xticks = 2, xminor = 0, xrange = [42.0,62.0], $
;  xtitle = 'x (km)', $
;  ystyle = 1, yrange = [0,1.0], yticks = 2, yminor = 0, $
;  ytitle = 'y (km)', $
;  xtickname = ['-10', 'SHIP', '+10'], $
;  title = 'Dry Aerosol Conc. [#/mg]', $
;  charsize = 2, levels = nalvls, c_colors = colors
;cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
;   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
;DEVICE, /close_file
;
END
