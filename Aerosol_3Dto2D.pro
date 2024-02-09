array = ['00600','01200','01800','02400','03000','03600','04200','04800','05400','06000',$
         '06600','07200','07800','08400','09000','09600','10200','10800','11400','12000',$
         '12600','13200','13800','14400','15000','15600','16200','16800','17400','18000',$
         '18600','19200','19800','20400','21000','21600','22200','22800','23400','24000',$
         '24600','25200','25800','26400','27000','27600','28200','28800','29400','30000',$
         '30600','31200','31800','32400','33000','33600','34200','34800','35400','36000',$
         '36600','37200','37800','38400','39000','39600','40200','40800','41400','42000',$
         '42600','43200']

nt = (SIZE(array, /dim))[0] ;number of 2-D samples
;nx = 2048 ;x-dimension
;ny = 512 ;y-dimension
;nzm = 144 ;z-dimension
;h_cb = 40 ;approx. cloud base
;dx =  50.0 ;m
;dy = 50.0 ;m

nx = 2048
ny = 256 
nzm = 144
h_cb = 40
dx = 100.0
dy = 100.0

;global variable
NA_c = FLTARR(nx, ny, nt) ;average BL aerosol conc. (#/mg)
;NA_xyz = FLTARR(nx, ny, nzm, nt) ;3-D background aerosol conc. (#/mg)
U_xy = FLTARR(nx, ny, nt) ;BL averaged zonal velocity (m/s)
V_xy = FLTARR(nx, ny, nt) ;BL averaged meridional velocity (m/s)
;U_xyz = FLTARR(nx, ny, nzm, nt) ;3-D zonal velocity (m/s)
;V_xyz = FLTARR(nx, ny, nzm, nt) ;3-D meriodonal velocity (m/s)
;W_xyz = FLTARR(nx, ny, nzm, nt) ;3-D vertical velocity (m/s)

;read in one 3-D file at a time
FOR n = 0, nt-1 DO BEGIN

    ;datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_hyperv_3D/S12_CTLmod_2048x256_100m_2048proc_36hours_2048_00000'+array[n]+'.nc')
    ;datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_noshear/S12_CTLmod_2048x256_100m_noshear_2048_00000'+array[n]+'.nc')
    ;datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_strongshear/S12_CTLmod_2048x256_100m_strongshear_2048_00000'+array[n]+'.nc')
    datafiles = FILE_SEARCH('/home/disk/eos3/mcmic/S12_2048x256_100m_polluted/S12_CTLmod_2048x256_100m_polluted22_2048_00000'+array[n]+'.nc')

    print, 'datafile =', datafiles

    read_3Dplume, datafiles, $
    x, y, z, TABS, NAc, NC, U, V, W

    NA_tot = FLTARR(nx,ny,nzm)
    NA_tot[*,*,*] = NAc[*,*,*] 

    print, '..computing inversion height in each column'

    der_thresh = 0.03
    der_temp = 0.0

    ;correct grids
    z_new = FLTARR(nzm)
    T_new = FLTARR(nx,ny,nzm)
    z_new[0:nzm-2] = (z[0:nzm-2] + z[1:nzm-1])/2.0
    T_new[*,*,0:nzm-2] = (TABS[*,*,0:nzm-2] + TABS[*,*,1:nzm-1])/2.0

    ;find grid spacing 
    dz = FLTARR(nzm)
    dT = FLTARR(nx,ny,nzm)
    FOR k = 0, nzm-1 DO BEGIN
        IF (k EQ 0) THEN BEGIN
           dz[k] = z_new[k]
           dT[*,*,k] = 0.0
        ENDIF
           dz[k] = (z_new[k] - z_new[k-1])
           dT[*,*,k] = (T_new[*,*,k] - T_new[*,*,k-1])
    ENDFOR

    height_inv = FLTARR(nx, ny)
    FOR i = 0, nx-1 DO BEGIN
        FOR j = 0, ny-1 DO BEGIN
            FOR k = h_cb, nzm-2 DO BEGIN
                der_temp = (dT[i,j,k]/dz[k])
                IF (der_temp GT der_thresh) THEN BEGIN
                    height_inv[i,j] = k
                    BREAK
                ENDIF
            ENDFOR
        ENDFOR
    ENDFOR

    print, 'Domain-mean inversion height =', MEAN(z[height_inv[*,*]])

    print, 'Computing BL-average aerosol in each column'
    ;compute BL-average aerosol concentration in each column
    NA_bl = FLTARR(nx, ny)
    U_bl = FLTARR(nx, ny)
    V_bl = FLTARR(nx, ny)
    FOR i = 0, nx-1 DO BEGIN
        FOR j = 0, ny-1 DO BEGIN
            FOR k = 0, height_inv[i,j] DO BEGIN
                NA_bl[i,j] = NA_bl[i,j] + NA_tot[i,j,k]*(dz[k]/z[height_inv[i,j]]) 
                U_bl[i,j] = U_bl[i,j] + U[i,j,k]*(dz[k]/z[height_inv[i,j]])
                V_bl[i,j] = V_bl[i,j] + V[i,j,k]*(dz[k]/z[height_inv[i,j]])
            ENDFOR
        ENDFOR
    ENDFOR

    print, 'Average BL aerosol conc. (#/mg) =', MEAN(NA_bl[*,*])

    NA_c[*,*,n] = NA_bl[*,*]
 ;   NA_xyz[*,*,*,n] = NA_tot[*,*,*]

    U_xy[*,*,n] = U_bl[*,*]
    V_xy[*,*,n] = V_bl[*,*]

 ;   U_xyz[*,*,*,n] = U[*,*,*]
 ;   V_xyz[*,*,*,n] = V[*,*,*]
 ;   W_xyz[*,*,*,n] = W[*,*,*]

    TABS = !NULL
    NAc = !NULL
    NC = !NULL
    U = !NULL
    V = !NULL
    W = !NULL
    U_bl = !NULL
    V_bl = !NULL
       
ENDFOR

;write netcdf of plume width
print, 'Writing Netcdf...'
id = NCDF_CREATE('Polluted_100m_data_v2.nc', /CLOBBER)
NCDF_CONTROL, id, /FILL

xid = NCDF_DIMDEF(id,'x',N_ELEMENTS(x))
yid = NCDF_DIMDEF(id,'y',N_ELEMENTS(y))
zid = NCDF_DIMDEF(id,'z',N_ELEMENTS(z))
tid = NCDF_DIMDEF(id,'time',N_ELEMENTS(array)) ;number of hours

wid1 = NCDF_VARDEF(id, 'NA_c', [xid,yid,tid], /FLOAT)
wid2 = NCDF_VARDEF(id, 'U_xy', [xid,yid,tid], /FLOAT)
wid3 = NCDF_VARDEF(id, 'V_xy', [xid,yid,tid], /FLOAT)
;wid4 = NCDF_VARDEF(id, 'NA_xyz', [xid,yid,zid,tid], /FLOAT)
;wid5 = NCDF_VARDEF(id, 'U_xyz', [xid,yid,zid,tid], /FLOAT)
;wid6 = NCDF_VARDEF(id, 'V_xyz', [xid,yid,zid,tid], /FLOAT)
;wid7 = NCDF_VARDEF(id, 'W_xyz', [xid,yid,zid,tid], /FLOAT)

NCDF_ATTPUT, id, wid1, 'long_name', 'Boundary-layer average aerosol. conc. (#/mg)'
NCDF_ATTPUT, id, wid2, 'long_name', 'Boundary-layer average zonal velocity (east-west) (m/s)'
NCDF_ATTPUT, id, wid3, 'long_name', 'Boundary-layer average meridional velocity (north-south) (m/s)'
;NCDF_ATTPUT, id, wid4, 'long_name', '3-D aerosol. conc. (#/mg)'
;NCDF_ATTPUT, id, wid5, 'long_name', '3-D zonal velocity (east-west) (m/s)'
;NCDF_ATTPUT, id, wid6, 'long_name', '3-D meridional velocity (north-south) (m/s)'
;NCDF_ATTPUT, id, wid7, 'long_name', '3-D vertical velocity (m/s)'

NCDF_CONTROL, id, /ENDEF

NCDF_VARPUT, id, wid1, NA_c
NCDF_VARPUT, id, wid2, U_xy
NCDF_VARPUT, id, wid3, V_xy
;NCDF_VARPUT, id, wid4, NA_xyz
;NCDF_VARPUT, id, wid5, U_xyz
;NCDF_VARPUT, id, wid6, V_xyz
;NCDF_VARPUT, id, wid7, W_xyz

NCDF_CLOSE, id

END
