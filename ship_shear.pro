;read in stats
datafiles = FILE_SEARCH('/home/disk/eos1/mcmic/S12_2048x256_100m_36hr_stats/S12_CTLmod_2048x256_100m_2048proc_36hours.nc')

read_shipstats, datafiles, $
    time, z, RHO, p, ST1, ST2, ST3, ST4, ZBST1, ZBST2, ZBST3, ZBST4, $
    ZBCTST1, ZBCTST3, WLOST1, WLOST2, WLOST3, WLOST4, WLOTST1, WLOTST3, $
    WLAST1, WLAST2, WLAST3, WLAST4, WLATST1, WLATST3, $
    RDIVST1, RDIVST2, RDIVST3, RDIVST4, SDIVST1, SDIVST2, SDIVST3, $
    SDIVST4, LDIVST1, LDIVST2, LDIVST3, LDIVST4, $
    RDVTST1, RDVTST3, LDVTST1, LDVTST3, SDVTST1, SDVTST3, $
    QT_AST1, QT_AST2, QT_AST3, QT_AST4, TL_AST1, TL_AST2, $
    TL_AST3, TL_AST4, SH_FST1, SH_FST2, SH_FST3, SH_FST4, $
    LH_FST1, LH_FST2, LH_FST3, LH_FST4, PR_SST1, $
    PR_SST3, PR_ZST1, PR_ZST3, $
    PRZTST1, PRZTST3, CBHST1, CBHST3, TCBST1, TCBST3, $
    TLCLST1, TLCLST3, TLSCST1, TLSCST3, QTCLST1, QTCLST3, $
    QTSCST1, QTSCST3, LWPST1, LWPST3, UADTST1, UADTST2, $
    UADTST3, UADTST4, UADQST1, UADQST2, UADQST3, UADQST4, $
    VADTST1, VADTST2, VADTST3, VADTST4, VADQST1, VADQST2, $
    VADQST3, VADQST4, WADTST1, WADTST2, WADTST3, WADTST4, $
    WADQST1, WADQST2, WADQST3, WADQST4, $ 
    DISST1, DISST2, DISST3, DISST4, DIFST1, DIFST2, DIFST3, $
    DIFST4, TKERST1, TKERST2, TKERST3, TKERST4, UST1, UST2, $
    UST3, UST4, VST1, VST2, VST3, VST4, TS2ST1, TS2ST2, TS2ST3, $
    TS2ST4, QS2ST1, QS2ST2, QS2ST3, QS2ST4, $
    WS2ST1, WS2ST2, WS2ST3, WS2ST4, US2ST1, US2ST2, US2ST3, US2ST4, $
    VS2ST1, VS2ST2, VS2ST3, VS2ST4, WTLST1, WTLST2, WTLST3, WTLST4, $
    WQTST1, WQTST2, WQTST3, WQTST4, WTVST1, WTVST2, WTVST3, WTVST4, $
    PFSST1, PFSST2, PFSST3, PFSST4, TLST1, TLST2, TLST3, TLST4, $
    TVST1, TVST2, TVST3, TVST4, QTST1, QTST2, QTST3, QTST4, $
    QVST1, QVST2, QVST3, QVST4, QNST1, QNST2, QNST3, QNST4, $
    SW_UST1, SW_UST2, SW_UST3, SW_UST4, SW_DST1, SW_DST2, SW_DST3, SW_DST4, $
    LW_UST1, LW_UST2, LW_UST3, LW_UST4, LW_DST1, LW_DST2, LW_DST3, LW_DST4, $
    DISSIP, DIFTR, ZINV, U, V, U2, V2, W2, TKE, TKES, WOBS, LWP

datafiles2 = FILE_SEARCH('/home/disk/eos1/mcmic/S12_2048x256_100m_strongshear/S12_CTLmod_2048x256_100m_strongshear.nc')

read_shipstats, datafiles2, $
    time_s, z_s, RHO_s, p_s, ST1_s, ST2_s, ST3_s, ST4_s, ZBST1_s, ZBST2_s, ZBST3_s, ZBST4_s, $
    ZBCTST1_s, ZBCTST3_s, WLOST1_s, WLOST2_s, WLOST3_s, WLOST4_s, WLOTST1_s, WLOTST3_s, $
    WLAST1_s, WLAST2_s, WLAST3_s, WLAST4_s, WLATST1_s, WLATST3_s, $
    RDIVST1_s, RDIVST2_s, RDIVST3_s, RDIVST4_s, SDIVST1_s, SDIVST2_s, SDIVST3_s, $
    SDIVST4_s, LDIVST1_s, LDIVST2_s, LDIVST3_s, LDIVST4_s, $
    RDVTST1_s, RDVTST3_s, LDVTST1_s, LDVTST3_s, SDVTST1_s, SDVTST3_s, $
    QT_AST1_s, QT_AST2_s, QT_AST3_s, QT_AST4_s, TL_AST1_s, TL_AST2_s, $
    TL_AST3_s, TL_AST4_s, SH_FST1_s, SH_FST2_s, SH_FST3_s, SH_FST4_s, $
    LH_FST1_s, LH_FST2_s, LH_FST3_s, LH_FST4_s, PR_SST1_s, $
    PR_SST3_s, PR_ZST1_s, PR_ZST3_s, $
    PRZTST1_s, PRZTST3_s, CBHST1_s, CBHST3_s, TCBST1_s, TCBST3_s, $
    TLCLST1_s, TLCLST3_s, TLSCST1_s, TLSCST3_s, QTCLST1_s, QTCLST3_s, $
    QTSCST1_s, QTSCST3_s, LWPST1_s, LWPST3_s, UADTST1_s, UADTST2_s, $
    UADTST3_s, UADTST4_s, UADQST1_s, UADQST2_s, UADQST3_s, UADQST4_s, $
    VADTST1_s, VADTST2_s, VADTST3_s, VADTST4_s, VADQST1_s, VADQST2_s, $
    VADQST3_s, VADQST4_s, WADTST1_s, WADTST2_s, WADTST3_s, WADTST4_s, $
    WADQST1_s, WADQST2_s, WADQST3_s, WADQST4_s, $
    DISST1_s, DISST2_s, DISST3_s, DISST4_s, DIFST1_s, DIFST2_s, DIFST3_s, $
    DIFST4_s, TKERST1_s, TKERST2_s, TKERST3_s, TKERST4_s, UST1_s, UST2_s, $
    UST3_s, UST4_s, VST1_s, VST2_s, VST3_s, VST4_s, TS2ST1_s, TS2ST2_s, TS2ST3_s, $
    TS2ST4_s, QS2ST1_s, QS2ST2_s, QS2ST3_s, QS2ST4_s, $
    WS2ST1_s, WS2ST2_s, WS2ST3_s, WS2ST4_s, US2ST1_s, US2ST2_s, US2ST3_s, US2ST4_s, $
    VS2ST1_s, VS2ST2_s, VS2ST3_s, VS2ST4_s, WTLST1_s, WTLST2_s, WTLST3_s, WTLST4_s, $
    WQTST1_s, WQTST2_s, WQTST3_s, WQTST4_s, WTVST1_s, WTVST2_s, WTVST3_s, WTVST4_s, $
    PFSST1_s, PFSST2_s, PFSST3_s, PFSST4_s, TLST1_s, TLST2_s, TLST3_s, TLST4_s, $
    TVST1_s, TVST2_s, TVST3_s, TVST4_s, QTST1_s, QTST2_s, QTST3_s, QTST4_s, $
    QVST1_s, QVST2_s, QVST3_s, QVST4_s, QNST1_s, QNST2_s, QNST3_s, QNST4_s, $
    SW_UST1_s, SW_UST2_s, SW_UST3_s, SW_UST4_s, SW_DST1_s, SW_DST2_s, SW_DST3_s, SW_DST4_s, $
    LW_UST1_s, LW_UST2_s, LW_UST3_s, LW_UST4_s, LW_DST1_s, LW_DST2_s, LW_DST3_s, LW_DST4_s, $
    DISSIP_s, DIFTR_s, ZINV_s, U_s, V_s, U2_s, V2_s, W2_s, TKE_s, TKES_s, WOBS_s, LWP_s

datafiles3 = FILE_SEARCH('/home/disk/eos1/mcmic/S12_2048x256_100m_noshear/S12_CTLmod_2048x256_100m_noshear.nc')

read_shipstats, datafiles3, $
    time_n, z_n, RHO_n, p_n, ST1_n, ST2_n, ST3_n, ST4_n, ZBST1_n, ZBST2_n, ZBST3_n, ZBST4_n, $
    ZBCTST1_n, ZBCTST3_n, WLOST1_n, WLOST2_n, WLOST3_n, WLOST4_n, WLOTST1_n, WLOTST3_n, $
    WLAST1_n, WLAST2_n, WLAST3_n, WLAST4_n, WLATST1_n, WLATST3_n, $
    RDIVST1_n, RDIVST2_n, RDIVST3_n, RDIVST4_n, SDIVST1_n, SDIVST2_n, SDIVST3_n, $
    SDIVST4_n, LDIVST1_n, LDIVST2_n, LDIVST3_n, LDIVST4_n, $
    RDVTST1_n, RDVTST3_n, LDVTST1_n, LDVTST3_n, SDVTST1_n, SDVTST3_n, $
    QT_AST1_n, QT_AST2_n, QT_AST3_n, QT_AST4_n, TL_AST1_n, TL_AST2_n, $
    TL_AST3_n, TL_AST4_n, SH_FST1_n, SH_FST2_n, SH_FST3_n, SH_FST4_n, $
    LH_FST1_n, LH_FST2_n, LH_FST3_n, LH_FST4_n, PR_SST1_n, $
    PR_SST3_n, PR_ZST1_n, PR_ZST3_n, $
    PRZTST1_n, PRZTST3_n, CBHST1_n, CBHST3_n, TCBST1_n, TCBST3_n, $
    TLCLST1_n, TLCLST3_n, TLSCST1_n, TLSCST3_n, QTCLST1_n, QTCLST3_n, $
    QTSCST1_n, QTSCST3_n, LWPST1_n, LWPST3_n, UADTST1_n, UADTST2_n, $
    UADTST3_n, UADTST4_n, UADQST1_n, UADQST2_n, UADQST3_n, UADQST4_n, $
    VADTST1_n, VADTST2_n, VADTST3_n, VADTST4_n, VADQST1_n, VADQST2_n, $
    VADQST3_n, VADQST4_n, WADTST1_n, WADTST2_n, WADTST3_n, WADTST4_n, $
    WADQST1_n, WADQST2_n, WADQST3_n, WADQST4_n, $
    DISST1_n, DISST2_n, DISST3_n, DISST4_n, DIFST1_n, DIFST2_n, DIFST3_n, $
    DIFST4_n, TKERST1_n, TKERST2_n, TKERST3_n, TKERST4_n, UST1_n, UST2_n, $
    UST3_n, UST4_n, VST1_n, VST2_n, VST3_n, VST4_n, TS2ST1_n, TS2ST2_n, TS2ST3_n, $
    TS2ST4_n, QS2ST1_n, QS2ST2_n, QS2ST3_n, QS2ST4_n, $
    WS2ST1_n, WS2ST2_n, WS2ST3_n, WS2ST4_n, US2ST1_n, US2ST2_n, US2ST3_n, US2ST4_n, $
    VS2ST1_n, VS2ST2_n, VS2ST3_n, VS2ST4_n, WTLST1_n, WTLST2_n, WTLST3_n, WTLST4_n, $
    WQTST1_n, WQTST2_n, WQTST3_n, WQTST4_n, WTVST1_n, WTVST2_n, WTVST3_n, WTVST4_n, $
    PFSST1_n, PFSST2_n, PFSST3_n, PFSST4_n, TLST1_n, TLST2_n, TLST3_n, TLST4_n, $
    TVST1_n, TVST2_n, TVST3_n, TVST4_n, QTST1_n, QTST2_n, QTST3_n, QTST4_n, $
    QVST1_n, QVST2_n, QVST3_n, QVST4_n, QNST1_n, QNST2_n, QNST3_n, QNST4_n, $
    SW_UST1_n, SW_UST2_n, SW_UST3_n, SW_UST4_n, SW_DST1_n, SW_DST2_n, SW_DST3_n, SW_DST4_n, $
    LW_UST1_n, LW_UST2_n, LW_UST3_n, LW_UST4_n, LW_DST1_n, LW_DST2_n, LW_DST3_n, LW_DST4_n, $
    DISSIP_n, DIFTR_n, ZINV_n, U_n, V_n, U2_n, V2_n, W2_n, TKE_n, TKES_n, WOBS_n, LWP_n

datafiles4 = FILE_SEARCH('/home/disk/eos1/mcmic/S12_2048x256_100m_polluted/S12_CTLmod_2048x256_100m_polluted22.nc')

read_shipstats, datafiles4, $
    time_p, z_p, RHO_p, p_p, ST1_p, ST2_p, ST3_p, ST4_p, ZBST1_p, ZBST2_p, ZBST3_p, ZBST4_p, $
    ZBCTST1_p, ZBCTST3_p, WLOST1_p, WLOST2_p, WLOST3_p, WLOST4_p, WLOTST1_p, WLOTST3_p, $
    WLAST1_p, WLAST2_p, WLAST3_p, WLAST4_p, WLATST1_p, WLATST3_p, $
    RDIVST1_p, RDIVST2_p, RDIVST3_p, RDIVST4_p, SDIVST1_p, SDIVST2_p, SDIVST3_p, $
    SDIVST4_p, LDIVST1_p, LDIVST2_p, LDIVST3_p, LDIVST4_p, $
    RDVTST1_p, RDVTST3_p, LDVTST1_p, LDVTST3_p, SDVTST1_p, SDVTST3_p, $
    QT_AST1_p, QT_AST2_p, QT_AST3_p, QT_AST4_p, TL_AST1_p, TL_AST2_p, $
    TL_AST3_p, TL_AST4_p, SH_FST1_p, SH_FST2_p, SH_FST3_p, SH_FST4_p, $
    LH_FST1_p, LH_FST2_p, LH_FST3_p, LH_FST4_p, PR_SST1_p, $
    PR_SST3_p, PR_ZST1_p, PR_ZST3_p, $
    PRZTST1_p, PRZTST3_p, CBHST1_p, CBHST3_p, TCBST1_p, TCBST3_p, $
    TLCLST1_p, TLCLST3_p, TLSCST1_p, TLSCST3_p, QTCLST1_p, QTCLST3_p, $
    QTSCST1_p, QTSCST3_p, LWPST1_p, LWPST3_p, UADTST1_p, UADTST2_p, $
    UADTST3_p, UADTST4_p, UADQST1_p, UADQST2_p, UADQST3_p, UADQST4_p, $
    VADTST1_p, VADTST2_p, VADTST3_p, VADTST4_p, VADQST1_p, VADQST2_p, $
    VADQST3_p, VADQST4_p, WADTST1_p, WADTST2_p, WADTST3_p, WADTST4_p, $
    WADQST1_p, WADQST2_p, WADQST3_p, WADQST4_p, $
    DISST1_p, DISST2_p, DISST3_p, DISST4_p, DIFST1_p, DIFST2_p, DIFST3_p, $
    DIFST4_p, TKERST1_p, TKERST2_p, TKERST3_p, TKERST4_p, UST1_p, UST2_p, $
    UST3_p, UST4_p, VST1_p, VST2_p, VST3_p, VST4_p, TS2ST1_p, TS2ST2_p, TS2ST3_p, $
    TS2ST4_p, QS2ST1_p, QS2ST2_p, QS2ST3_p, QS2ST4_p, $
    WS2ST1_p, WS2ST2_p, WS2ST3_p, WS2ST4_p, US2ST1_p, US2ST2_p, US2ST3_p, US2ST4_p, $
    VS2ST1_p, VS2ST2_p, VS2ST3_p, VS2ST4_p, WTLST1_p, WTLST2_p, WTLST3_p, WTLST4_p, $
    WQTST1_p, WQTST2_p, WQTST3_p, WQTST4_p, WTVST1_p, WTVST2_p, WTVST3_p, WTVST4_p, $
    PFSST1_p, PFSST2_p, PFSST3_p, PFSST4_p, TLST1_p, TLST2_p, TLST3_p, TLST4_p, $
    TVST1_p, TVST2_p, TVST3_p, TVST4_p, QTST1_p, QTST2_p, QTST3_p, QTST4_p, $
    QVST1_p, QVST2_p, QVST3_p, QVST4_p, QNST1_n, QNST2_n, QNST3_n, QNST4_n, $
    SW_UST1_p, SW_UST2_p, SW_UST3_p, SW_UST4_p, SW_DST1_p, SW_DST2_p, SW_DST3_p, SW_DST4_p, $
    LW_UST1_p, LW_UST2_p, LW_UST3_p, LW_UST4_p, LW_DST1_p, LW_DST2_p, LW_DST3_p, LW_DST4_p, $
    DISSIP_p, DIFTR_p, ZINV_p, U_p, V_p, U2_p, V2_p, W2_p, TKE_p, TKES_p, WOBS_p, LWP_p

;z = z*1.0E-3 ; change from [m] to [km]

use_color = 1
tick_scale = -0.25
x_tick_scale = 0.005/tick_scale
y_tick_scale = 0.005/tick_scale
xaxisthick = 4
yaxisthick = 4

time = (time - 196.0052)*24.0 ;converting time to fractions of hours

nt = (SIZE(time, /dim))[0]
nzm = (SIZE(z, /dim))[0]

ST_1 = FLTARR(nt)
ST_2 = FLTARR(nt)
ST_3 = FLTARR(nt)
ST_4 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
  ST_1[n] = ST1[0,n]
  ST_2[n] = ST2[0,n]
  ST_3[n] = ST3[0,n]
  ST_4[n] = ST4[0,n]
ENDFOR

ST_1_s = FLTARR(nt)
ST_2_s = FLTARR(nt)
ST_3_s = FLTARR(nt)
ST_4_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
  ST_1_s[n] = ST1_s[0,n]
  ST_2_s[n] = ST2_s[0,n]
  ST_3_s[n] = ST3_s[0,n]
  ST_4_s[n] = ST4_s[0,n]
ENDFOR

ST_1_n = FLTARR(nt)
ST_2_n = FLTARR(nt)
ST_3_n = FLTARR(nt)
ST_4_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
  ST_1_n[n] = ST1_n[0,n]
  ST_2_n[n] = ST2_n[0,n]
  ST_3_n[n] = ST3_n[0,n]
  ST_4_n[n] = ST4_n[0,n]
ENDFOR

ST_1_p = FLTARR(nt)
ST_2_p = FLTARR(nt)
ST_3_p = FLTARR(nt)
ST_4_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
  ST_1_p[n] = ST1_p[0,n]
  ST_2_p[n] = ST2_p[0,n]
  ST_3_p[n] = ST3_p[0,n]
  ST_4_p[n] = ST4_p[0,n]
ENDFOR

;compute nearest inversion base index for BL averages
h_cb = 40
tempind = 0.0
tempdif = 500.0
zinv_st1 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST1[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST1[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st1[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st1_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST1_s[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST1_s[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st1_s[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st1_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST1_n[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST1_n[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st1_n[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st1_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST1_p[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST1_p[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st1_p[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st2 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST2[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST2[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st2[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st2_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST2_s[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST2_s[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st2_s[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st2_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST2_n[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST2_n[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st2_n[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st2_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST2_p[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST2_p[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st2_p[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st3_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST3_s[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST3_s[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st3_s[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st3_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST3_n[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST3_n[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st3_n[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st3_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST3_p[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST3_p[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st3_p[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st2 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST2[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST2[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st2[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st3 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST3[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST3[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st3[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st4 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST4[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST4[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st4[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st4_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST4_s[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST4_s[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st4_s[n] = tempind
    tempind = 0.0
    tempdif = 500.0 
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st4_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST4_n[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST4_n[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st4_n[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_st4_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZBST4_p[0,n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZBST4_p[0,n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_st4_p[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

;compute inversion height for entire domain
ZB = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    ZB[n] = ZBST1[0,n]*(ST_1[n]/1.0) + ZBST2[0,n]*(ST_2[n]/1.0) $
            + ZBST3[0,n]*(ST_3[n]/1.0) + ZBST4[0,n]*(ST_4[n]/1.0)
ENDFOR

ZB_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    ZB_s[n] = ZBST1_s[0,n]*(ST_1_s[n]/1.0) + ZBST2_s[0,n]*(ST_2_s[n]/1.0) $
            + ZBST3_s[0,n]*(ST_3_s[n]/1.0) + ZBST4_s[0,n]*(ST_4_s[n]/1.0)
ENDFOR

ZB_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    ZB_n[n] = ZBST1_n[0,n]*(ST_1_n[n]/1.0) + ZBST2_n[0,n]*(ST_2_n[n]/1.0) $
            + ZBST3_n[0,n]*(ST_3_n[n]/1.0) + ZBST4_n[0,n]*(ST_4_n[n]/1.0)
ENDFOR

ZB_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    ZB_p[n] = ZBST1_p[0,n]*(ST_1_p[n]/1.0) + ZBST2_p[0,n]*(ST_2_p[n]/1.0) $
            + ZBST3_p[0,n]*(ST_3_p[n]/1.0) + ZBST4_p[0,n]*(ST_4_p[n]/1.0)
ENDFOR

;compute total surface flux
SHF = FLTARR(nt)
LHF = FLTARR(nt)
SHF_s = FLTARR(nt)
LHF_s = FLTARR(nt)
SHF_n = FLTARR(nt)
LHF_n = FLTARR(nt)
SHF_p = FLTARR(nt)
LHF_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    SHF[n] = SH_FST1[0,n]*(ST_1[n]/1.0) + SH_FST2[0,n]*(ST_2[n]/1.0) $
            + SH_FST3[0,n]*(ST_3[n]/1.0) + SH_FST4[0,n]*(ST_4[n]/1.0)
    LHF[n] = LH_FST1[0,n]*(ST_1[n]/1.0) + LH_FST2[0,n]*(ST_2[n]/1.0) $
            + LH_FST3[0,n]*(ST_3[n]/1.0) + LH_FST4[0,n]*(ST_4[n]/1.0)
    SHF_s[n] = SH_FST1_s[0,n]*(ST_1_s[n]/1.0) + SH_FST2_s[0,n]*(ST_2_s[n]/1.0) $
            + SH_FST3_s[0,n]*(ST_3_s[n]/1.0) + SH_FST4_s[0,n]*(ST_4_s[n]/1.0)
    LHF_s[n] = LH_FST1_s[0,n]*(ST_1_s[n]/1.0) + LH_FST2_s[0,n]*(ST_2_s[n]/1.0) $
            + LH_FST3_s[0,n]*(ST_3_s[n]/1.0) + LH_FST4_s[0,n]*(ST_4_s[n]/1.0)
    SHF_n[n] = SH_FST1_n[0,n]*(ST_1_n[n]/1.0) + SH_FST2_n[0,n]*(ST_2_n[n]/1.0) $
            + SH_FST3_n[0,n]*(ST_3_n[n]/1.0) + SH_FST4_n[0,n]*(ST_4_n[n]/1.0)
    LHF_n[n] = LH_FST1_n[0,n]*(ST_1_n[n]/1.0) + LH_FST2_n[0,n]*(ST_2_n[n]/1.0) $
            + LH_FST3_n[0,n]*(ST_3_n[n]/1.0) + LH_FST4_n[0,n]*(ST_4_n[n]/1.0)
    SHF_p[n] = SH_FST1_p[0,n]*(ST_1_p[n]/1.0) + SH_FST2_p[0,n]*(ST_2_p[n]/1.0) $
            + SH_FST3_p[0,n]*(ST_3_p[n]/1.0) + SH_FST4_p[0,n]*(ST_4_p[n]/1.0)
    LHF_p[n] = LH_FST1_p[0,n]*(ST_1_p[n]/1.0) + LH_FST2_p[0,n]*(ST_2_p[n]/1.0) $
            + LH_FST3_p[0,n]*(ST_3_p[n]/1.0) + LH_FST4_p[0,n]*(ST_4_p[n]/1.0)
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_full = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZB[n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZB[n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_full[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_full_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZB_s[n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZB_s[n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_full_s[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_full_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZB_n[n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZB_n[n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_full_n[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

tempind = 0.0
tempdif = 500.0
zinv_full_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = h_cb, nzm-1 DO BEGIN
    ;find nearest index for inversion base
    IF (ABS(ZB_p[n] - z[k]) LT tempdif) THEN BEGIN
       tempdif = ABS(ZB_p[n] - z[k])
       tempind = k
    ENDIF
    ENDFOR
    zinv_full_p[n] = tempind
    tempind = 0.0
    tempdif = 500.0
ENDFOR

;shift vertical grid
z_new = FLTARR(nzm)
z_new[0:nzm-2] = (z[0:nzm-2] + z[1:nzm-1])/2.0
;find grid spacing 
dz = FLTARR(nzm)
FOR k = 0, nzm-1 DO BEGIN
    IF (k EQ 0) THEN BEGIN
       dz[k] = z_new[k]
    ENDIF
       dz[k] = (z_new[k] - z_new[k-1])
ENDFOR

;calculate entrainment rate from mass budget
dt = 900; seconds
ent = FLTARR(nt)
ent_s = FLTARR(nt)
ent_n = FLTARR(nt)
ent_p = FLTARR(nt)
ent_st1 = FLTARR(nt)
ent_st1_s = FLTARR(nt)
ent_st1_n = FLTARR(nt)
ent_st1_p = FLTARR(nt)
FOR n = 0, nt-2 DO BEGIN
    ent[n] =  (ZB[n+1] - ZB[n])/dt - WOBS[zinv_full[n]] 
    ent_s[n] = (ZB_s[n+1] - ZB_s[n])/dt - WOBS_s[zinv_full_s[n]]
    ent_st1[n] = (ZBST1[0,n+1] - ZBST1[0,n])/dt - WLAST1[0,zinv_st1[n]]
    ent_st1_s[n] = (ZBST1_s[0,n+1] - ZBST1_s[0,n])/dt - WLAST1_s[0,zinv_st1_s[n]]
    ent_n[n] = (ZB_n[n+1] - ZB_n[n])/dt - WOBS_n[zinv_full_n[n]]
    ent_st1_n[n] = (ZBST1_n[0,n+1] - ZBST1_n[0,n])/dt - WLAST1_n[0,zinv_st1_n[n]]
    ent_p[n] = (ZB_p[n+1] - ZB_p[n])/dt - WOBS_p[zinv_full_p[n]]
    ent_st1_p[n] = (ZBST1_p[0,n+1] - ZBST1_p[0,n])/dt - WLAST1_p[0,zinv_st1_p[n]]
ENDFOR

;convert entrainment to mm/hr
ent[*] = SMOOTH(ent[*]*1000.0,3)
ent_s[*] = SMOOTH(ent_s[*]*1000.0,3)
ent_n[*] = SMOOTH(ent_n[*]*1000.0,3)
ent_p[*] = SMOOTH(ent_p[*]*1000.0,3)
ent_st1[*] = SMOOTH(ent_st1[*]*1000.0,3)
ent_st1_s[*] = SMOOTH(ent_st1_s[*]*1000.0,3)
ent_st1_n[*] = SMOOTH(ent_st1_n[*]*1000.0,3)
ent_st1_p[*] = SMOOTH(ent_st1_p[*]*1000.0,3)

DISS_ST1 = FLTARR(nzm, nt)
DISS_ST2 = FLTARR(nzm, nt)
DISS_ST3 = FLTARR(nzm, nt)
DISS_ST4 = FLTARR(nzm, nt)
DISS_ST1[*,*] = -1.0*DIFST1[*,*]
DISS_ST2[*,*] = -1.0*DIFST2[*,*]
DISS_ST3[*,*] = -1.0*DIFST3[*,*]
DISS_ST4[*,*] = -1.0*DIFST4[*,*]

;compute dissip. for entire domain
DISS_TOT = FLTARR(nzm, nt)
FOR n = 0, nt-1 DO BEGIN
    DISS_TOT[*,n] = DISS_ST1[*,n]*(ST_1[n]/1.0) + DISS_ST2[*,n]*(ST_2[n]/1.0) $
            + DISS_ST3[*,n]*(ST_3[n]/1.0) + DISS_ST4[*,n]*(ST_4[n]/1.0)
ENDFOR

DISS_ST1_s = FLTARR(nzm, nt)
DISS_ST2_s = FLTARR(nzm, nt)
DISS_ST3_s = FLTARR(nzm, nt)
DISS_ST4_s = FLTARR(nzm, nt)
DISS_ST1_s[*,*] = -1.0*DIFST1_s[*,*]
DISS_ST2_s[*,*] = -1.0*DIFST2_s[*,*]
DISS_ST3_s[*,*] = -1.0*DIFST3_s[*,*]
DISS_ST4_s[*,*] = -1.0*DIFST4_s[*,*]

;compute dissip. for entire domain
DISS_TOT_s = FLTARR(nzm, nt)
FOR n = 0, nt-1 DO BEGIN
    DISS_TOT_s[*,n] = DISS_ST1_s[*,n]*(ST_1_s[n]/1.0) + DISS_ST2_s[*,n]*(ST_2_s[n]/1.0) $
            + DISS_ST3_s[*,n]*(ST_3_s[n]/1.0) + DISS_ST4_s[*,n]*(ST_4_s[n]/1.0)
ENDFOR

DISS_ST1_n = FLTARR(nzm, nt)
DISS_ST2_n = FLTARR(nzm, nt)
DISS_ST3_n = FLTARR(nzm, nt)
DISS_ST4_n = FLTARR(nzm, nt)
DISS_ST1_n[*,*] = -1.0*DIFST1_n[*,*]
DISS_ST2_n[*,*] = -1.0*DIFST2_n[*,*]
DISS_ST3_n[*,*] = -1.0*DIFST3_n[*,*]
DISS_ST4_n[*,*] = -1.0*DIFST4_n[*,*]

;compute dissip. for entire domain
DISS_TOT_n = FLTARR(nzm, nt)
FOR n = 0, nt-1 DO BEGIN
    DISS_TOT_n[*,n] = DISS_ST1_n[*,n]*(ST_1_n[n]/1.0) + DISS_ST2_n[*,n]*(ST_2_n[n]/1.0) $
            + DISS_ST3_n[*,n]*(ST_3_n[n]/1.0) + DISS_ST4_n[*,n]*(ST_4_n[n]/1.0)
ENDFOR

DISS_ST1_p = FLTARR(nzm, nt)
DISS_ST2_p = FLTARR(nzm, nt)
DISS_ST3_p = FLTARR(nzm, nt)
DISS_ST4_p = FLTARR(nzm, nt)
DISS_ST1_p[*,*] = -1.0*DIFST1_p[*,*]
DISS_ST2_p[*,*] = -1.0*DIFST2_p[*,*]
DISS_ST3_p[*,*] = -1.0*DIFST3_p[*,*]
DISS_ST4_p[*,*] = -1.0*DIFST4_p[*,*]

;compute dissip. for entire domain
DISS_TOT_p = FLTARR(nzm, nt)
FOR n = 0, nt-1 DO BEGIN
    DISS_TOT_p[*,n] = DISS_ST1_p[*,n]*(ST_1_p[n]/1.0) + DISS_ST2_p[*,n]*(ST_2_p[n]/1.0) $
            + DISS_ST3_p[*,n]*(ST_3_p[n]/1.0) + DISS_ST4_p[*,n]*(ST_4_p[n]/1.0)
ENDFOR

RELAX_TS = FLTARR(nzm, nt)
RELAX_TS_ST1 = FLTARR(nzm, nt)
RELAX_TS_ST2 = FLTARR(nzm, nt)
RELAX_TS_ST3 = FLTARR(nzm, nt)
RELAX_TS_ST4 = FLTARR(nzm, nt)
RELAX_TS[*,*] = TKE[*,*]/DISS_TOT[*,*] ;in seconds
RELAX_TS_ST1[*,*] = TKERST1[*,*]/DISS_ST1[*,*]
RELAX_TS_ST2[*,*] = TKERST2[*,*]/DISS_ST2[*,*]
RELAX_TS_ST3[*,*] = TKERST3[*,*]/DISS_ST3[*,*]
RELAX_TS_ST4[*,*] = TKERST4[*,*]/DISS_ST4[*,*]

RELAX_TS_s = FLTARR(nzm, nt)
RELAX_TS_ST1_s = FLTARR(nzm, nt)
RELAX_TS_ST2_s = FLTARR(nzm, nt)
RELAX_TS_ST3_s = FLTARR(nzm, nt)
RELAX_TS_ST4_s = FLTARR(nzm, nt)
RELAX_TS_s[*,*] = TKE_s[*,*]/DISS_TOT_s[*,*] ;in seconds
RELAX_TS_ST1_s[*,*] = TKERST1_s[*,*]/DISS_ST1_s[*,*]
RELAX_TS_ST2_s[*,*] = TKERST2_s[*,*]/DISS_ST2_s[*,*]
RELAX_TS_ST3_s[*,*] = TKERST3_s[*,*]/DISS_ST3_s[*,*]
RELAX_TS_ST4_s[*,*] = TKERST4_s[*,*]/DISS_ST4_s[*,*]

RELAX_TS_n = FLTARR(nzm, nt)
RELAX_TS_ST1_n = FLTARR(nzm, nt)
RELAX_TS_ST2_n = FLTARR(nzm, nt)
RELAX_TS_ST3_n = FLTARR(nzm, nt)
RELAX_TS_ST4_n = FLTARR(nzm, nt)
RELAX_TS_n[*,*] = TKE_n[*,*]/DISS_TOT_n[*,*] ;in seconds
RELAX_TS_ST1_n[*,*] = TKERST1_n[*,*]/DISS_ST1_n[*,*]
RELAX_TS_ST2_n[*,*] = TKERST2_n[*,*]/DISS_ST2_n[*,*]
RELAX_TS_ST3_n[*,*] = TKERST3_n[*,*]/DISS_ST3_n[*,*]
RELAX_TS_ST4_n[*,*] = TKERST4_n[*,*]/DISS_ST4_n[*,*]

RELAX_TS_p = FLTARR(nzm, nt)
RELAX_TS_ST1_p = FLTARR(nzm, nt)
RELAX_TS_ST2_p = FLTARR(nzm, nt)
RELAX_TS_ST3_p = FLTARR(nzm, nt)
RELAX_TS_ST4_p = FLTARR(nzm, nt)
RELAX_TS_p[*,*] = TKE_p[*,*]/DISS_TOT_p[*,*] ;in seconds
RELAX_TS_ST1_p[*,*] = TKERST1_p[*,*]/DISS_ST1_p[*,*]
RELAX_TS_ST2_p[*,*] = TKERST2_p[*,*]/DISS_ST2_p[*,*]
RELAX_TS_ST3_p[*,*] = TKERST3_p[*,*]/DISS_ST3_p[*,*]
RELAX_TS_ST4_p[*,*] = TKERST4_p[*,*]/DISS_ST4_p[*,*]

;modified relaxation timescale for ship track
NEW_RELAX_TS_st1 = FLTARR(nzm, nt)
NEW_RELAX_TS_s_st1 = FLTARR(nzm, nt)
NEW_RELAX_TS_n_st1 = FLTARR(nzm, nt)
NEW_RELAX_TS_p_st1 = FLTARR(nzm, nt)
NEW_RELAX_TS_st3 = FLTARR(nzm, nt)
NEW_RELAX_TS_s_st3 = FLTARR(nzm, nt)
NEW_RELAX_TS_n_st3 = FLTARR(nzm, nt)
NEW_RELAX_TS_p_st3 = FLTARR(nzm, nt)
NEW_RELAX_TS_st4 = FLTARR(nzm, nt)
NEW_RELAX_TS_s_st4 = FLTARR(nzm, nt)
NEW_RELAX_TS_n_st4 = FLTARR(nzm, nt)
NEW_RELAX_TS_p_st4 = FLTARR(nzm, nt)

NEW_RELAX_TS_st3[*,*] = (0.5*(US2ST3[*,*]))/DISS_ST3[*,*]
NEW_RELAX_TS_s_st3[*,*] = (0.5*(US2ST3_s[*,*]))/DISS_ST3_s[*,*]
NEW_RELAX_TS_n_st3[*,*] = (0.5*(US2ST3_n[*,*]))/DISS_ST3_n[*,*]
NEW_RELAX_TS_p_st3[*,*] = (0.5*(US2ST3_p[*,*]))/DISS_ST3_p[*,*]
NEW_RELAX_TS_st1[*,*] = (0.5*(US2ST1[*,*]))/DISS_ST1[*,*]
NEW_RELAX_TS_s_st1[*,*] = (0.5*(US2ST1_s[*,*]))/DISS_ST1_s[*,*]
NEW_RELAX_TS_n_st1[*,*] = (0.5*(US2ST1_n[*,*]))/DISS_ST1_n[*,*]
NEW_RELAX_TS_p_st1[*,*] = (0.5*(US2ST1_p[*,*]))/DISS_ST1_p[*,*]
NEW_RELAX_TS_st4[*,*] = (0.5*(US2ST4[*,*]))/DISS_ST4[*,*]
NEW_RELAX_TS_s_st4[*,*] = (0.5*(US2ST4_s[*,*]))/DISS_ST4_s[*,*]
NEW_RELAX_TS_n_st4[*,*] = (0.5*(US2ST4_n[*,*]))/DISS_ST4_n[*,*]
NEW_RELAX_TS_p_st4[*,*] = (0.5*(US2ST4_p[*,*]))/DISS_ST4_p[*,*]

;modified relaxation timescale for plume edge
NEW_RELAX_TS_st2 = FLTARR(nzm, nt)
NEW_RELAX_TS_s_st2 = FLTARR(nzm, nt)
NEW_RELAX_TS_n_st2 = FLTARR(nzm, nt)
NEW_RELAX_TS_p_st2 = FLTARR(nzm, nt)

NEW_RELAX_TS_st2[*,*] = (0.5*(US2ST2[*,*]))/DISS_ST2[*,*]
NEW_RELAX_TS_s_st2[*,*] = (0.5*(US2ST2_s[*,*]))/DISS_ST2_s[*,*]
NEW_RELAX_TS_n_st2[*,*] = (0.5*(US2ST2_n[*,*]))/DISS_ST2_n[*,*]
NEW_RELAX_TS_p_st2[*,*] = (0.5*(US2ST2_p[*,*]))/DISS_ST2_p[*,*]

;modified relaxation timescale for full domain
NEW_RELAX_TS = FLTARR(nzm, nt)
NEW_RELAX_TS_s = FLTARR(nzm, nt)
NEW_RELAX_TS_n = FLTARR(nzm, nt)
NEW_RELAX_TS_p = FLTARR(nzm, nt)

NEW_RELAX_TS[*,*] = (0.5*(U2[*,*]))/DISS_TOT[*,*]
NEW_RELAX_TS_s[*,*] = (0.5*(U2_s[*,*]))/DISS_TOT_s[*,*]
NEW_RELAX_TS_n[*,*] = (0.5*(U2_n[*,*]))/DISS_TOT_n[*,*]
NEW_RELAX_TS_p[*,*] = (0.5*(U2_p[*,*]))/DISS_TOT_p[*,*]

MEAN_TKE = FLTARR(nt)
MEAN_DISS = FLTARR(nt)
MEAN_TS = FLTARR(nt)
NEW_TS = FLTARR(nt)
MEAN_U2 = FLTARR(nt)
MEAN_V2 = FLTARR(nt)
MEAN_W2 = FLTARR(nt)
MEAN_U = FLTARR(nt)
MEAN_V = FLTARR(nt)
NEW_TS = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_full[n] DO BEGIN
        MEAN_TKE[n] = MEAN_TKE[n] + TKE[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_DISS[n] = MEAN_DISS[n] + DISS_TOT[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_TS[n] = MEAN_TS[n] + RELAX_TS[k,n]*(dz[k]/z[zinv_full[n]])
        NEW_TS[n] = NEW_TS[n] + NEW_RELAX_TS[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_U2[n] = MEAN_U2[n] + U2[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_V2[n] = MEAN_V2[n] + V2[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_W2[n] = MEAN_W2[n] + W2[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_U[n] = MEAN_U[n] + U[k,n]*(dz[k]/z[zinv_full[n]])
        MEAN_V[n] = MEAN_V[n] + V[k,n]*(dz[k]/z[zinv_full[n]])
    ENDFOR
ENDFOR

MEAN_TKE_s = FLTARR(nt)
MEAN_DISS_s = FLTARR(nt)
MEAN_TS_s = FLTARR(nt)
NEW_TS_s = FLTARR(nt)
MEAN_U2_s = FLTARR(nt)
MEAN_V2_s = FLTARR(nt)
MEAN_W2_s = FLTARR(nt)
MEAN_U_s = FLTARR(nt)
MEAN_V_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_full_s[n] DO BEGIN
        MEAN_TKE_s[n] = MEAN_TKE_s[n] + TKE_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_DISS_s[n] = MEAN_DISS_s[n] + DISS_TOT_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_TS_s[n] = MEAN_TS_s[n] + RELAX_TS_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        NEW_TS_s[n] = NEW_TS_s[n] + NEW_RELAX_TS_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_U2_s[n] = MEAN_U2_s[n] + U2_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_V2_s[n] = MEAN_V2_s[n] + V2_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_W2_s[n] = MEAN_W2_s[n] + W2_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_U_s[n] = MEAN_U_s[n] + U_s[k,n]*(dz[k]/z[zinv_full_s[n]])
        MEAN_V_s[n] = MEAN_V_s[n] + V_s[k,n]*(dz[k]/z[zinv_full_s[n]])
    ENDFOR
ENDFOR

MEAN_TKE_n = FLTARR(nt)
MEAN_DISS_n = FLTARR(nt)
MEAN_TS_n = FLTARR(nt)
NEW_TS_n = FLTARR(nt)
MEAN_U2_n = FLTARR(nt)
MEAN_V2_n = FLTARR(nt)
MEAN_W2_n = FLTARR(nt)
MEAN_U_n = FLTARR(nt)
MEAN_V_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_full_n[n] DO BEGIN
        MEAN_TKE_n[n] = MEAN_TKE_n[n] + TKE_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_DISS_n[n] = MEAN_DISS_n[n] + DISS_TOT_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_TS_n[n] = MEAN_TS_n[n] + RELAX_TS_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        NEW_TS_n[n] = NEW_TS_n[n] + NEW_RELAX_TS_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_U2_n[n] = MEAN_U2_n[n] + U2_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_V2_n[n] = MEAN_V2_n[n] + V2_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_W2_n[n] = MEAN_W2_n[n] + W2_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_U_n[n] = MEAN_U_n[n] + U_n[k,n]*(dz[k]/z[zinv_full_n[n]])
        MEAN_V_n[n] = MEAN_V_n[n] + V_n[k,n]*(dz[k]/z[zinv_full_n[n]])
    ENDFOR
ENDFOR

MEAN_TKE_p = FLTARR(nt)
MEAN_DISS_p = FLTARR(nt)
MEAN_TS_p = FLTARR(nt)
NEW_TS_p = FLTARR(nt)
MEAN_U2_p = FLTARR(nt)
MEAN_V2_p = FLTARR(nt)
MEAN_W2_p = FLTARR(nt)
MEAN_U_p = FLTARR(nt)
MEAN_V_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_full_p[n] DO BEGIN
        MEAN_TKE_p[n] = MEAN_TKE_p[n] + TKE_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_DISS_p[n] = MEAN_DISS_p[n] + DISS_TOT_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_TS_p[n] = MEAN_TS_p[n] + RELAX_TS_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        NEW_TS_p[n] = NEW_TS_p[n] + NEW_RELAX_TS_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_U2_p[n] = MEAN_U2_p[n] + U2_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_V2_p[n] = MEAN_V2_p[n] + V2_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_W2_p[n] = MEAN_W2_p[n] + W2_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_U_p[n] = MEAN_U_p[n] + U_p[k,n]*(dz[k]/z[zinv_full_p[n]])
        MEAN_V_p[n] = MEAN_V_p[n] + V_p[k,n]*(dz[k]/z[zinv_full_p[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st1 = FLTARR(nt)
MEAN_DISS_st1 = FLTARR(nt)
MEAN_TS_st1 = FLTARR(nt)
MEAN_U2_st1 = FLTARR(nt)
MEAN_V2_st1 = FLTARR(nt)
MEAN_W2_st1 = FLTARR(nt)
MEAN_U_st1 = FLTARR(nt)
MEAN_V_st1 = FLTARR(nt)
NEW_TS_st1 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st1[n] DO BEGIN
        MEAN_TKE_st1[n] = MEAN_TKE_st1[n] + TKERST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_DISS_st1[n] = MEAN_DISS_st1[n] + DISS_ST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_TS_st1[n] = MEAN_TS_st1[n] + RELAX_TS_ST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_U2_st1[n] = MEAN_U2_st1[n] + US2ST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_V2_st1[n] = MEAN_V2_st1[n] + VS2ST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_W2_st1[n] = MEAN_W2_st1[n] + WS2ST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_U_st1[n] = MEAN_U_st1[n] + UST1[k,n]*(dz[k]/z[zinv_st1[n]])
        MEAN_V_st1[n] = MEAN_V_st1[n] + VST1[k,n]*(dz[k]/z[zinv_st1[n]])
        NEW_TS_st1[n] = NEW_TS_st1[n] + NEW_RELAX_TS_st1[k,n]*(dz[k]/z[zinv_st1[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st3 = FLTARR(nt)
MEAN_DISS_st3 = FLTARR(nt)
MEAN_TS_st3 = FLTARR(nt)
MEAN_U2_st3 = FLTARR(nt)
MEAN_V2_st3 = FLTARR(nt)
MEAN_W2_st3 = FLTARR(nt)
MEAN_U_st3 = FLTARR(nt)
MEAN_V_st3 = FLTARR(nt)
NEW_TS_st3 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st3[n] DO BEGIN
        MEAN_TKE_st3[n] = MEAN_TKE_st3[n] + TKERST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_DISS_st3[n] = MEAN_DISS_st3[n] + DISS_ST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_TS_st3[n] = MEAN_TS_st3[n] + RELAX_TS_ST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_U2_st3[n] = MEAN_U2_st3[n] + US2ST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_V2_st3[n] = MEAN_V2_st3[n] + VS2ST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_W2_st3[n] = MEAN_W2_st3[n] + WS2ST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_U_st3[n] = MEAN_U_st3[n] + UST3[k,n]*(dz[k]/z[zinv_st3[n]])
        MEAN_V_st3[n] = MEAN_V_st3[n] + VST3[k,n]*(dz[k]/z[zinv_st3[n]])
        NEW_TS_st3[n] = NEW_TS_st3[n] + NEW_RELAX_TS_st3[k,n]*(dz[k]/z[zinv_st3[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st4 = FLTARR(nt)
MEAN_DISS_st4 = FLTARR(nt)
MEAN_U2_st4 = FLTARR(nt)
MEAN_U_st4 = FLTARR(nt)
NEW_TS_st4 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st4[n] DO BEGIN
        MEAN_TKE_st4[n] = MEAN_TKE_st4[n] + TKERST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_DISS_st4[n] = MEAN_DISS_st4[n] + DISS_ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        NEW_TS_st4[n] = NEW_TS_st4[n] + NEW_RELAX_TS_st4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_U2_st4[n] = MEAN_U2_st4[n] + US2ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_U_st4[n] = MEAN_U_st4[n] + UST4[k,n]*(dz[k]/z[zinv_st4[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st4_s = FLTARR(nt)
MEAN_DISS_st4_s = FLTARR(nt)
NEW_TS_st4_s = FLTARR(nt)
MEAN_U2_st4_s = FLTARR(nt)
MEAN_U_st4_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st4_s[n] DO BEGIN
        MEAN_TKE_st4_s[n] = MEAN_TKE_st4_s[n] + TKERST4_s[k,n]*(dz[k]/z[zinv_st4_s[n]])
        MEAN_DISS_st4_s[n] = MEAN_DISS_st4_s[n] + DISS_ST4_s[k,n]*(dz[k]/z[zinv_st4_s[n]])
        NEW_TS_st4_s[n] = NEW_TS_st4_s[n] + NEW_RELAX_TS_s_st4[k,n]*(dz[k]/z[zinv_st4_s[n]])
        MEAN_U2_st4_s[n] = MEAN_U2_st4_s[n] + US2ST4_s[k,n]*(dz[k]/z[zinv_st4_s[n]])
        MEAN_U_st4_s[n] = MEAN_U_st4_s[n] + UST4_s[k,n]*(dz[k]/z[zinv_st4_s[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st4_n = FLTARR(nt)
MEAN_DISS_st4_n = FLTARR(nt)
NEW_TS_st4_n = FLTARR(nt)
MEAN_U2_st4_n = FLTARR(nt)
MEAN_U_st4_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st4_n[n] DO BEGIN
        MEAN_TKE_st4_n[n] = MEAN_TKE_st4_n[n] + TKERST4_n[k,n]*(dz[k]/z[zinv_st4_n[n]])
        MEAN_DISS_st4_n[n] = MEAN_DISS_st4_n[n] + DISS_ST4_n[k,n]*(dz[k]/z[zinv_st4_n[n]])
        NEW_TS_st4_n[n] = NEW_TS_st4_n[n] + NEW_RELAX_TS_n_st4[k,n]*(dz[k]/z[zinv_st4_n[n]])
        MEAN_U2_st4_n[n] = MEAN_U2_st4_n[n] + US2ST4_n[k,n]*(dz[k]/z[zinv_st4_n[n]])
        MEAN_U_st4_n[n] = MEAN_U_st4_n[n] + UST4_n[k,n]*(dz[k]/z[zinv_st4_n[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st4_p = FLTARR(nt)
MEAN_DISS_st4_p = FLTARR(nt)
NEW_TS_st4_p = FLTARR(nt)
MEAN_U2_st4_p = FLTARR(nt)
MEAN_U_st4_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st4_p[n] DO BEGIN
        MEAN_TKE_st4_p[n] = MEAN_TKE_st4_p[n] + TKERST4_p[k,n]*(dz[k]/z[zinv_st4_p[n]])
        MEAN_DISS_st4_p[n] = MEAN_DISS_st4_p[n] + DISS_ST4_p[k,n]*(dz[k]/z[zinv_st4_p[n]])
        NEW_TS_st4_p[n] = NEW_TS_st4_p[n] + NEW_RELAX_TS_p_st4[k,n]*(dz[k]/z[zinv_st4_p[n]])
        MEAN_U2_st4_p[n] = MEAN_U2_st4_p[n] + US2ST4_p[k,n]*(dz[k]/z[zinv_st4_p[n]])
        MEAN_U_st4_p[n] = MEAN_U_st4_p[n] + UST4_p[k,n]*(dz[k]/z[zinv_st4_p[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st1_s = FLTARR(nt)
MEAN_DISS_st1_s = FLTARR(nt)
MEAN_TS_st1_s = FLTARR(nt)
MEAN_U2_st1_s = FLTARR(nt)
MEAN_V2_st1_s = FLTARR(nt)
MEAN_W2_st1_s = FLTARR(nt)
MEAN_U_st1_s = FLTARR(nt)
MEAN_V_st1_s = FLTARR(nt)
NEW_TS_st1_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st1_s[n] DO BEGIN
        MEAN_TKE_st1_s[n] = MEAN_TKE_st1_s[n] + TKERST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_DISS_st1_s[n] = MEAN_DISS_st1_s[n] + DISS_ST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_TS_st1_s[n] = MEAN_TS_st1_s[n] + RELAX_TS_ST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_U2_st1_s[n] = MEAN_U2_st1_s[n] + US2ST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_V2_st1_s[n] = MEAN_V2_st1_s[n] + VS2ST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_W2_st1_s[n] = MEAN_W2_st1_s[n] + WS2ST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_U_st1_s[n] = MEAN_U_st1_s[n] + UST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        MEAN_V_st1_s[n] = MEAN_V_st1_s[n] + VST1_s[k,n]*(dz[k]/z[zinv_st1_s[n]])
        NEW_TS_st1_s[n] = NEW_TS_st1_s[n] + NEW_RELAX_TS_s_st1[k,n]*(dz[k]/z[zinv_st1_s[n]]) 
   ENDFOR
ENDFOR

MEAN_TKE_st3_s = FLTARR(nt)
MEAN_DISS_st3_s = FLTARR(nt)
MEAN_TS_st3_s = FLTARR(nt)
MEAN_U2_st3_s = FLTARR(nt)
MEAN_V2_st3_s = FLTARR(nt)
MEAN_W2_st3_s = FLTARR(nt)
MEAN_U_st3_s = FLTARR(nt)
MEAN_V_st3_s = FLTARR(nt)
NEW_TS_st3_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st3_s[n] DO BEGIN
        MEAN_TKE_st3_s[n] = MEAN_TKE_st3_s[n] + TKERST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_DISS_st3_s[n] = MEAN_DISS_st3_s[n] + DISS_ST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_TS_st3_s[n] = MEAN_TS_st3_s[n] + RELAX_TS_ST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_U2_st3_s[n] = MEAN_U2_st3_s[n] + US2ST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_V2_st3_s[n] = MEAN_V2_st3_s[n] + VS2ST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_W2_st3_s[n] = MEAN_W2_st3_s[n] + WS2ST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_U_st3_s[n] = MEAN_U_st3_s[n] + UST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        MEAN_V_st3_s[n] = MEAN_V_st3_s[n] + VST3_s[k,n]*(dz[k]/z[zinv_st3_s[n]])
        NEW_TS_st3_s[n] = NEW_TS_st3_s[n] + NEW_RELAX_TS_s_st3[k,n]*(dz[k]/z[zinv_st3_s[n]])
   ENDFOR
ENDFOR

MEAN_TKE_st1_n = FLTARR(nt)
MEAN_DISS_st1_n = FLTARR(nt)
MEAN_TS_st1_n = FLTARR(nt)
MEAN_U2_st1_n = FLTARR(nt)
MEAN_V2_st1_n = FLTARR(nt)
MEAN_W2_st1_n = FLTARR(nt)
MEAN_U_st1_n = FLTARR(nt)
MEAN_V_st1_n = FLTARR(nt)
NEW_TS_st1_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st1_n[n] DO BEGIN
        MEAN_TKE_st1_n[n] = MEAN_TKE_st1_n[n] + TKERST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_DISS_st1_n[n] = MEAN_DISS_st1_n[n] + DISS_ST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_TS_st1_n[n] = MEAN_TS_st1_n[n] + RELAX_TS_ST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_U2_st1_n[n] = MEAN_U2_st1_n[n] + US2ST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_V2_st1_n[n] = MEAN_V2_st1_n[n] + VS2ST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_W2_st1_n[n] = MEAN_W2_st1_n[n] + WS2ST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_U_st1_n[n] = MEAN_U_st1_n[n] + UST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        MEAN_V_st1_n[n] = MEAN_V_st1_n[n] + VST1_n[k,n]*(dz[k]/z[zinv_st1_n[n]])
        NEW_TS_st1_n[n] = NEW_TS_st1_n[n] + NEW_RELAX_TS_n_st1[k,n]*(dz[k]/z[zinv_st1_n[n]])
   ENDFOR
ENDFOR

MEAN_TKE_st3_n = FLTARR(nt)
MEAN_DISS_st3_n = FLTARR(nt)
MEAN_TS_st3_n = FLTARR(nt)
MEAN_U2_st3_n = FLTARR(nt)
MEAN_V2_st3_n = FLTARR(nt)
MEAN_W2_st3_n = FLTARR(nt)
MEAN_U_st3_n = FLTARR(nt)
MEAN_V_st3_n = FLTARR(nt)
NEW_TS_st3_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st3_n[n] DO BEGIN
        MEAN_TKE_st3_n[n] = MEAN_TKE_st3_n[n] + TKERST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_DISS_st3_n[n] = MEAN_DISS_st3_n[n] + DISS_ST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_TS_st3_n[n] = MEAN_TS_st3_n[n] + RELAX_TS_ST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_U2_st3_n[n] = MEAN_U2_st3_n[n] + US2ST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_V2_st3_n[n] = MEAN_V2_st3_n[n] + VS2ST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_W2_st3_n[n] = MEAN_W2_st3_n[n] + WS2ST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_U_st3_n[n] = MEAN_U_st3_n[n] + UST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        MEAN_V_st3_n[n] = MEAN_V_st3_n[n] + VST3_n[k,n]*(dz[k]/z[zinv_st3_n[n]])
        NEW_TS_st3_n[n] = NEW_TS_st3_n[n] + NEW_RELAX_TS_n_st3[k,n]*(dz[k]/z[zinv_st3_n[n]])
   ENDFOR
ENDFOR

MEAN_TKE_st1_p = FLTARR(nt)
MEAN_DISS_st1_p = FLTARR(nt)
MEAN_TS_st1_p = FLTARR(nt)
MEAN_U2_st1_p = FLTARR(nt)
MEAN_V2_st1_p = FLTARR(nt)
MEAN_W2_st1_p = FLTARR(nt)
MEAN_U_st1_p = FLTARR(nt)
MEAN_V_st1_p = FLTARR(nt)
NEW_TS_st1_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st1_p[n] DO BEGIN
        MEAN_TKE_st1_p[n] = MEAN_TKE_st1_p[n] + TKERST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_DISS_st1_p[n] = MEAN_DISS_st1_p[n] + DISS_ST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_TS_st1_p[n] = MEAN_TS_st1_p[n] + RELAX_TS_ST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_U2_st1_p[n] = MEAN_U2_st1_p[n] + US2ST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_V2_st1_p[n] = MEAN_V2_st1_p[n] + VS2ST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_W2_st1_p[n] = MEAN_W2_st1_p[n] + WS2ST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_U_st1_p[n] = MEAN_U_st1_p[n] + UST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        MEAN_V_st1_p[n] = MEAN_V_st1_p[n] + VST1_p[k,n]*(dz[k]/z[zinv_st1_p[n]])
        NEW_TS_st1_p[n] = NEW_TS_st1_p[n] + NEW_RELAX_TS_p_st1[k,n]*(dz[k]/z[zinv_st1_p[n]])
   ENDFOR
ENDFOR

MEAN_TKE_st3_p = FLTARR(nt)
MEAN_DISS_st3_p = FLTARR(nt)
MEAN_TS_st3_p = FLTARR(nt)
MEAN_U2_st3_p = FLTARR(nt)
MEAN_V2_st3_p = FLTARR(nt)
MEAN_W2_st3_p = FLTARR(nt)
MEAN_U_st3_p = FLTARR(nt)
MEAN_V_st3_p = FLTARR(nt)
NEW_TS_st3_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st3_p[n] DO BEGIN
        MEAN_TKE_st3_p[n] = MEAN_TKE_st3_p[n] + TKERST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_DISS_st3_p[n] = MEAN_DISS_st3_p[n] + DISS_ST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_TS_st3_p[n] = MEAN_TS_st3_p[n] + RELAX_TS_ST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_U2_st3_p[n] = MEAN_U2_st3_p[n] + US2ST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_V2_st3_p[n] = MEAN_V2_st3_p[n] + VS2ST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_W2_st3_p[n] = MEAN_W2_st3_p[n] + WS2ST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_U_st3_p[n] = MEAN_U_st3_p[n] + UST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        MEAN_V_st3_p[n] = MEAN_V_st3_p[n] + VST3_p[k,n]*(dz[k]/z[zinv_st3_p[n]])
        NEW_TS_st3_p[n] = NEW_TS_st3_p[n] + NEW_RELAX_TS_p_st3[k,n]*(dz[k]/z[zinv_st3_p[n]])
   ENDFOR
ENDFOR

;near plume ST2 statistics
MEAN_TKE_st2 = FLTARR(nt)
MEAN_DISS_st2 = FLTARR(nt)
MEAN_TS_st2 = FLTARR(nt)
MEAN_U2_st2 = FLTARR(nt)
MEAN_V2_st2 = FLTARR(nt)
MEAN_W2_st2 = FLTARR(nt)
MEAN_U_st2 = FLTARR(nt)
MEAN_V_st2 = FLTARR(nt)
NEW_TS_st2 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st2[n] DO BEGIN
        MEAN_TKE_st2[n] = MEAN_TKE_st2[n] + TKERST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_DISS_st2[n] = MEAN_DISS_st2[n] + DISS_ST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_TS_st2[n] = MEAN_TS_st2[n] + RELAX_TS_ST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_U2_st2[n] = MEAN_U2_st2[n] + US2ST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_V2_st2[n] = MEAN_V2_st2[n] + VS2ST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_W2_st2[n] = MEAN_W2_st2[n] + WS2ST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_U_st2[n] = MEAN_U_st2[n] + UST2[k,n]*(dz[k]/z[zinv_st2[n]])
        MEAN_V_st2[n] = MEAN_V_st2[n] + VST2[k,n]*(dz[k]/z[zinv_st2[n]])
        NEW_TS_st2[n] = NEW_TS_st2[n] + NEW_RELAX_TS_st2[k,n]*(dz[k]/z[zinv_st2[n]])
    ENDFOR
ENDFOR

MEAN_TKE_st2_s = FLTARR(nt)
MEAN_DISS_st2_s = FLTARR(nt)
MEAN_TS_st2_s = FLTARR(nt)
MEAN_U2_st2_s = FLTARR(nt)
MEAN_V2_st2_s = FLTARR(nt)
MEAN_W2_st2_s = FLTARR(nt)
MEAN_U_st2_s = FLTARR(nt)
MEAN_V_st2_s = FLTARR(nt)
NEW_TS_st2_s = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st2_s[n] DO BEGIN
        MEAN_TKE_st2_s[n] = MEAN_TKE_st2_s[n] + TKERST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_DISS_st2_s[n] = MEAN_DISS_st2_s[n] + DISS_ST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_TS_st2_s[n] = MEAN_TS_st2_s[n] + RELAX_TS_ST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_U2_st2_s[n] = MEAN_U2_st2_s[n] + US2ST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_V2_st2_s[n] = MEAN_V2_st2_s[n] + VS2ST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_W2_st2_s[n] = MEAN_W2_st2_s[n] + WS2ST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_U_st2_s[n] = MEAN_U_st2_s[n] + UST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        MEAN_V_st2_s[n] = MEAN_V_st2_s[n] + VST2_s[k,n]*(dz[k]/z[zinv_st2_s[n]])
        NEW_TS_st2_s[n] = NEW_TS_st2_s[n] + NEW_RELAX_TS_s_st2[k,n]*(dz[k]/z[zinv_st2_s[n]])
   ENDFOR
ENDFOR

MEAN_TKE_st2_n = FLTARR(nt)
MEAN_DISS_st2_n = FLTARR(nt)
MEAN_TS_st2_n = FLTARR(nt)
MEAN_U2_st2_n = FLTARR(nt)
MEAN_V2_st2_n = FLTARR(nt)
MEAN_W2_st2_n = FLTARR(nt)
MEAN_U_st2_n = FLTARR(nt)
MEAN_V_st2_n = FLTARR(nt)
NEW_TS_st2_n = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st2_n[n] DO BEGIN
        MEAN_TKE_st2_n[n] = MEAN_TKE_st2_n[n] + TKERST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_DISS_st2_n[n] = MEAN_DISS_st2_n[n] + DISS_ST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_TS_st2_n[n] = MEAN_TS_st2_n[n] + RELAX_TS_ST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_U2_st2_n[n] = MEAN_U2_st2_n[n] + US2ST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_V2_st2_n[n] = MEAN_V2_st2_n[n] + VS2ST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_W2_st2_n[n] = MEAN_W2_st2_n[n] + WS2ST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_U_st2_n[n] = MEAN_U_st2_n[n] + UST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        MEAN_V_st2_n[n] = MEAN_V_st2_n[n] + VST2_n[k,n]*(dz[k]/z[zinv_st2_n[n]])
        NEW_TS_st2_n[n] = NEW_TS_st2_n[n] + NEW_RELAX_TS_n_st2[k,n]*(dz[k]/z[zinv_st2_n[n]])
   ENDFOR
ENDFOR

MEAN_TKE_st2_p = FLTARR(nt)
MEAN_DISS_st2_p = FLTARR(nt)
MEAN_TS_st2_p = FLTARR(nt)
MEAN_U2_st2_p = FLTARR(nt)
MEAN_V2_st2_p = FLTARR(nt)
MEAN_W2_st2_p = FLTARR(nt)
MEAN_U_st2_p = FLTARR(nt)
MEAN_V_st2_p = FLTARR(nt)
NEW_TS_st2_p = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st2_p[n] DO BEGIN
        MEAN_TKE_st2_p[n] = MEAN_TKE_st2_p[n] + TKERST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_DISS_st2_p[n] = MEAN_DISS_st2_p[n] + DISS_ST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_TS_st2_p[n] = MEAN_TS_st2_p[n] + RELAX_TS_ST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_U2_st2_p[n] = MEAN_U2_st2_p[n] + US2ST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_V2_st2_p[n] = MEAN_V2_st2_p[n] + VS2ST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_W2_st2_p[n] = MEAN_W2_st2_p[n] + WS2ST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_U_st2_p[n] = MEAN_U_st2_p[n] + UST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        MEAN_V_st2_p[n] = MEAN_V_st2_p[n] + VST2_p[k,n]*(dz[k]/z[zinv_st2_p[n]])
        NEW_TS_st2_p[n] = NEW_TS_st2_p[n] + NEW_RELAX_TS_p_st2[k,n]*(dz[k]/z[zinv_st2_p[n]])
   ENDFOR
ENDFOR

;smooth plume-edge statistics
MEAN_TKE_st2 = TS_SMOOTH(MEAN_TKE_st2, 4)
MEAN_DISS_st2 = TS_SMOOTH(MEAN_DISS_st2, 4)
MEAN_TS_st2 = TS_SMOOTH(MEAN_TS_st2, 4)
MEAN_U2_st2 = TS_SMOOTH(MEAN_U2_st2, 4)
MEAN_V2_st2 = TS_SMOOTH(MEAN_V2_st2, 4)
MEAN_W2_st2 = TS_SMOOTH(MEAN_W2_st2, 4)
MEAN_U_st2 = TS_SMOOTH(MEAN_U_st2, 4)
MEAN_V_st2 = TS_SMOOTH(MEAN_V_st2, 4)
NEW_TS_st2 = TS_SMOOTH(NEW_TS_st2, 4)

MEAN_TKE_st2_s = TS_SMOOTH(MEAN_TKE_st2_s, 4)
MEAN_DISS_st2_s = TS_SMOOTH(MEAN_DISS_st2_s, 4)
MEAN_TS_st2_s = TS_SMOOTH(MEAN_TS_st2_s, 4)
MEAN_U2_st2_s = TS_SMOOTH(MEAN_U2_st2_s, 4)
MEAN_V2_st2_s = TS_SMOOTH(MEAN_V2_st2_s, 4)
MEAN_W2_st2_s = TS_SMOOTH(MEAN_W2_st2_s, 4)
MEAN_U_st2_s = TS_SMOOTH(MEAN_U_st2_s, 4)
MEAN_V_st2_s = TS_SMOOTH(MEAN_V_st2_s, 4)
NEW_TS_st2_s = TS_SMOOTH(NEW_TS_st2_s, 4)

MEAN_TKE_st2_n = TS_SMOOTH(MEAN_TKE_st2_n, 4)
MEAN_DISS_st2_n = TS_SMOOTH(MEAN_DISS_st2_n, 4)
MEAN_TS_st2_n = TS_SMOOTH(MEAN_TS_st2_n, 4)
MEAN_U2_st2_n = TS_SMOOTH(MEAN_U2_st2_n, 4)
MEAN_V2_st2_n = TS_SMOOTH(MEAN_V2_st2_n, 4)
MEAN_W2_st2_n = TS_SMOOTH(MEAN_W2_st2_n, 4)
MEAN_U_st2_n = TS_SMOOTH(MEAN_U_st2_n, 4)
MEAN_V_st2_n = TS_SMOOTH(MEAN_V_st2_n, 4)
NEW_TS_st2_n = TS_SMOOTH(NEW_TS_st2_n, 4)

MEAN_TKE_st2_p = TS_SMOOTH(MEAN_TKE_st2_p, 4)
MEAN_DISS_st2_p = TS_SMOOTH(MEAN_DISS_st2_p, 4)
MEAN_TS_st2_p = TS_SMOOTH(MEAN_TS_st2_p, 4)
MEAN_U2_st2_p = TS_SMOOTH(MEAN_U2_st2_p, 4)
MEAN_V2_st2_p = TS_SMOOTH(MEAN_V2_st2_p, 4)
MEAN_W2_st2_p = TS_SMOOTH(MEAN_W2_st2_p, 4)
MEAN_U_st2_p = TS_SMOOTH(MEAN_U_st2_p, 4)
MEAN_V_st2_p = TS_SMOOTH(MEAN_V_st2_p, 4)
NEW_TS_st2_p = TS_SMOOTH(NEW_TS_st2_p, 4)

;MEAN_TKE_st3 = FLTARR(nt)
;MEAN_DISS_st3 = FLTARR(nt)
;MEAN_TS_st3 = FLTARR(nt)
;MEAN_U2_st3 = FLTARR(nt)
;MEAN_V2_st3 = FLTARR(nt)
;MEAN_W2_st3 = FLTARR(nt)
;MEAN_U_st3 = FLTARR(nt)
;FOR n = 0, nt-1 DO BEGIN
;    FOR k = 0, zinv_st3[n] DO BEGIN
;        MEAN_TKE_st3[n] = MEAN_TKE_st3[n] + TKERST3[k,n]*(dz[k]/z[zinv_st3[n]])
;        MEAN_DISS_st3[n] = MEAN_DISS_st3[n] + DISS_ST3[k,n]*(dz[k]/z[zinv_st3[n]])
;        MEAN_TS_st3[n] = MEAN_TS_st3[n] + RELAX_TS_ST3[k,n]*(dz[k]/z[zinv_st3[n]])
;        MEAN_U2_st3[n] = MEAN_U2_st3[n] + US2ST3[k,n]*(dz[k]/z[zinv_st3[n]])
;        MEAN_V2_st3[n] = MEAN_V2_st3[n] + VS2ST3[k,n]*(dz[k]/z[zinv_st3[n]])
;        MEAN_W2_st3[n] = MEAN_W2_st3[n] + WS2ST3[k,n]*(dz[k]/z[zinv_st3[n]])
;        MEAN_U_st3[n] = MEAN_U_st3[n] + UST3[k,n]*(dz[k]/z[zinv_st3[n]])
;    ENDFOR
;ENDFOR

;MEAN_TKE_st4 = FLTARR(nt)
;MEAN_DISS_st4 = FLTARR(nt)
MEAN_TS_st4 = FLTARR(nt)
MEAN_U2_st4 = FLTARR(nt)
MEAN_V2_st4 = FLTARR(nt)
MEAN_W2_st4 = FLTARR(nt)
MEAN_U_st4 = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    FOR k = 0, zinv_st4[n] DO BEGIN
;        MEAN_TKE_st4[n] = MEAN_TKE_st4[n] + TKERST4[k,n]*(dz[k]/z[zinv_st4[n]])
;        MEAN_DISS_st4[n] = MEAN_DISS_st4[n] + DISS_ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_TS_st4[n] = MEAN_TS_st4[n] + RELAX_TS_ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_U2_st4[n] = MEAN_U2_st4[n] + US2ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_V2_st4[n] = MEAN_V2_st4[n] + VS2ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_W2_st4[n] = MEAN_W2_st4[n] + WS2ST4[k,n]*(dz[k]/z[zinv_st4[n]])
        MEAN_U_st4[n] = MEAN_U_st4[n] + UST4[k,n]*(dz[k]/z[zinv_st4[n]])
    ENDFOR
ENDFOR

;difference in zonal shear
U_diff = UST1 - UST1_s

;calculate zonal shear timeseries from UST1 and UST1_s and U and U_s
;find surface value of wind
UST1_surf = FLTARR(nt)
UST1_s_surf = FLTARR(nt)
UST1_n_surf = FLTARR(nt)
UST3_surf = FLTARR(nt)
UST3_s_surf = FLTARR(nt)
UST3_n_surf = FLTARR(nt)

UST1_surf[*] = UST1[1,*]
UST1_s_surf[*] = UST1_s[1,*]
UST1_n_surf[*] = UST1_n[1,*]
UST3_surf[*] = UST3[1,*]
UST3_s_surf[*] = UST3_s[1,*]
UST3_n_surf[*] = UST3_n[1,*]


;find value at inversion base
UST1_inv = FLTARR(nt)
UST1_s_inv = FLTARR(nt)
UST1_n_inv = FLTARR(nt)
UST3_inv = FLTARR(nt)
UST3_s_inv = FLTARR(nt)
UST3_n_inv = FLTARR(nt)
FOR n = 0, nt-1 DO BEGIN
    UST1_inv[n] = UST1[zinv_st1[n],n]
    UST1_s_inv[n] = UST1_s[zinv_st1_s[n],n]
    UST1_n_inv[n] = UST1_n[zinv_st1_n[n],n]
    UST3_inv[n] = UST3[zinv_st3[n],n]
    UST3_s_inv[n] = UST3_s[zinv_st3_s[n],n]
    UST3_n_inv[n] = UST3_n[zinv_st3_n[n],n]
ENDFOR

;compute shear magnitude
;sfc - inv
UST1_shear = FLTARR(nt)
UST1_s_shear = FLTARR(nt)
UST1_n_shear = FLTARR(nt)
UST3_shear = FLTARR(nt)
UST3_s_shear = FLTARR(nt)
UST3_n_shear = FLTARR(nt)
UST1_shear[*] = UST1_surf[*] - UST1_inv[*]
UST1_s_shear[*] = UST1_s_surf[*] - UST1_s_inv[*]
UST1_n_shear[*] = ABS(UST1_n_surf[*] - UST1_n_inv[*])
UST3_shear[*] = UST3_surf[*] - UST3_inv[*]
UST3_s_shear[*] = UST3_s_surf[*] - UST3_s_inv[*]
UST3_n_shear[*] = ABS(UST3_n_surf[*] - UST3_n_inv[*])

use_color = 1
IF (use_color) THEN BEGIN
  line_type = [0]
  line_color = [10]
  line_thick = [5]
  ;LINECOLORS
ENDIF

;legend = ['ship, cloud','ship, no cloud','no ship, cloud','no ship, no cloud']
legend = ['ST1','ST2','ST3','ST4','ST1_s','ST2_s','ST3_s','ST4_s']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'CFtimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], ST_1[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   yminor = 1.0, $
   ytitle = 'FRACTION OF MODEL GRID', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], ST_1[*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], ST_2[*], $
   thick = line_thick, line = line_type, color = cgColor("Green")
   OPLOT, time[*], ST_3[*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], ST_4[*], $
   thick = line_thick, line = line_type, color = cgColor("Orange")
   OPLOT, time[*], ST_1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Red")
   OPLOT, time[*], ST_2_s[*], $
   thick = line_thick, line = 1, color = cgColor("Green")
   OPLOT, time[*], ST_3_s[*], $
   thick = line_thick, line = 1, color = cgColor("Blue")
   OPLOT, time[*], ST_4_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   color = [cgColor("Red"),cgColor("Green"),cgColor("Blue"),cgColor("Orange"),cgColor("Red"),cgColor("Green"),cgColor("Blue"),cgColor("Orange")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['ZBST1','ZCTST1','ZBST3','ZCTST3']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'ZINVtimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], ZBST1[0,*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [500, 700], yticks = 5.0, $
   yminor = 1.0, $
   ytitle = 'Inversion Height [m]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], ZBST1[0,*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], ZBCTST1[0,*], $
   thick = line_thick, line = 1, color = cgColor("Red")
   OPLOT, time[*], ZBST3[0,*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], ZBCTST3[0,*], $
   thick = line_thick, line = 1, color = cgColor("Blue")
   POLYFILL, [12.0,12.0,13.0,13.0], [500.0,700.0,700.0,500.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [500.0,700.0,700.0,500.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,1,0,1], thick = [5,5,5,5], $
   color = [cgColor("Red"),cgColor("Red"),cgColor("Blue"),cgColor("Blue")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'LWP.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], LWP[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 120], yticks = 6.0, $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGED LWP [g m!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], LWP[*], $
   thick = 6, line = 0, color = cgColor("Black")
   OPLOT, time[*], LWP_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], LWP_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], LWP_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,120.0,120.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,120.0,120.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   ;;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'ent.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], ent[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [-1, 5], yticks = 6.0, $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGED W!De!N [mm s!U-1!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], ent[*], $
   thick = 6, line = 0, color = cgColor("Black")
   OPLOT, time[*], ent_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], ent_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], ent_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, [12.0,48.0], [0.0,0.0], line = 1, thick = 2
   POLYFILL, [12.0,12.0,13.0,13.0], [-1.0,5.0,5.0,-1.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [-1.0,5.0,5.0,-1.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   ;;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'LHF.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], LHF[*,0], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [30, 70], yticks = 2.0, $
   yminor = 1.0, $ 
   ytitle = 'DOMAIN-AVERAGED LATENT HEAT FLUX [W m!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], LHF[*,0], $
   thick = 6, line = 0, color = cgColor("Black")
   OPLOT, time[*], LHF_s[*,0], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], LHF_n[*,0], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], LHF_p[*,0], $
   thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [30.0,70.0,70.0,30.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [30.0,70.0,70.0,30.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   ;;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'SHF.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], SHF[*,0], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 20], yticks = 2.0, $
   yminor = 1.0, $ 
   ytitle = 'DOMAIN-AVERAGED SENSIBLE HEAT FLUX [W m!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $ 
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], SHF[*,0], $
   thick = 6, line = 0, color = cgColor("Black")
   OPLOT, time[*], SHF_s[*,0], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], SHF_n[*,0], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], SHF_p[*,0], $
   thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,20.0,20.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,20.0,20.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   ;;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Prec.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], -PR_SST3[0,*]*86400000, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 8], yticks = 2.0, $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGED SFC. PRECIP RATE [mm day!U-1!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], -PR_SST3[0,*]*86400000, $
   thick = 6, line = 0, color = cgColor("Black")
   OPLOT, time[*], -PR_SST3_s[0,*]*86400000, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], -PR_SST3_n[0,*]*86400000, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], -PR_SST3_p[0,*]*86400000, $
   thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,8.0,8.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,8.0,8.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   ;;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'ZINV.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], ZINV[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0.45, 0.75], yticks = 3.0, $
   ytickname = ['450','550','650','750'], $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGED INVERSION HEIGHT [m]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], ZINV[*], $
   thick = 6, line = 0, color = cgColor("Black")
   ;OPLOT, time[*], LWPST3[0,*]*1000.0, $
   ;thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], ZINV_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   ;OPLOT, time[*], LWPST3_s[0,*]*1000.0, $
   ;thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], ZINV_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   ;OPLOT, time[*], LWPST3_n[0,*]*1000.0, $
   ;thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], ZINV_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   ;OPLOT, time[*], LWPST3_p[0,*]*1000.0, $ 
   ;thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.45,0.75,0.75,0.45], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.45,0.75,0.75,0.45], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   ;;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['ST1','ST3','ST1_s','ST3_s','ST1_n','ST3_n']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'LWPtimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], LWPST1[0,*]*1000.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 100], yticks = 5.0, $
   yminor = 1.0, $
   ytitle = 'LWP [g m!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], LWPST1[0,*]*1000.0, $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], LWPST3[0,*]*1000.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], LWPST1_s[0,*]*1000.0, $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], LWPST3_s[0,*]*1000.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], LWPST1_n[0,*]*1000.0, $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], LWPST3_n[0,*]*1000.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,100.0,100.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,100.0,100.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [1,0,1,0,1,0], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Sheartimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], UST1_shear[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 4.0], yticks = 4.0, $
   yminor = 1.0, $
   ytitle = 'Zonal Shear Magnitude [m s!U-1!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], UST1_shear[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], UST3_shear[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], UST1_s_shear[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], UST3_s_shear[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], UST1_n_shear[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], UST3_n_shear[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,4.0,4.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,4.0,4.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   ;line = [0,0,1,1,2,2], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   line = [1,0,1,0,1,0], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','ST1','Strong Shear','ST1_s','No Shear','ST1_n']
!P.FONT = 1
!P.BACKGROUND = 255
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'SHFshear.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], SHF[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 15.0], yticks = 4.0, $
   yminor = 1.0, $
   ytitle = 'Sensible Heat Flux [W m!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, color = cgColor("Black"),$
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], SHF[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], SH_FST1[0,*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], SHF_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], SH_FST1_s[0,*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], SHF_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], SH_FST1_n[0,*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,15.0,15.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,15.0,15.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,1,0,1,0,1], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

!P.FONT = 1
!P.BACKGROUND = 255
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'LHFshear.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], LHF[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [30.0, 60.0], yticks = 3.0, $
   yminor = 1.0, $
   ytitle = 'Latent Heat Flux [W m!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, color = cgColor("Black"), $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], LHF[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], LH_FST1[0,*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], LHF_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], LH_FST1_s[0,*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], LHF_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], LH_FST1_n[0,*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [30.0,60.0,60.0,30.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [30.0,60.0,60.0,30.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   ;line = [0,0,1,1], thick = [5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   ;box = 0, charsize = 2.0, /top, /right
    line = [0,1,0,1,0,1], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['ST1','ST3','ST1_s','ST3_s','ST1_n','ST3_n']

!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Invtimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], ZBST1[0,*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [400.0, 700.0], yticks = 4.0, $
   yminor = 1.0, $
   ytitle = 'Z!Dinv!N [m]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, color = cgColor("Black"),$
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], ZBST1[0,*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], ZBST3[0,*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], ZBST1_s[0,*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], ZBST3_s[0,*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], ZBST1_n[0,*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], ZBST3_n[0,*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [400.0,700.0,700.0,400.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [400.0,700.0,700.0,400.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [1,0,1,0,1,0], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Raintimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], -PR_SST1[0,*]*86400000.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 8.0], yticks = 4.0, $
   yminor = 1.0, $
   ytitle = 'Sfc. Rain Rate [mm day!U-1!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, color = cgColor("Black"), $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], -PR_SST1[0,*]*86400000.0, $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], -PR_SST3[0,*]*86400000.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], -PR_SST1_s[0,*]*86400000.0, $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], -PR_SST3_s[0,*]*86400000.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], -PR_SST1_n[0,*]*86400000.0, $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], -PR_SST3_n[0,*]*86400000.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0.0,8.0,8.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0.0,8.0,8.0,0.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [1,0,1,0,1,0], thick = [5,5,5,5,5,5], $
   ;color = [cgColor("Red"),cgColor("Blue"),cgColor("Red"),cgColor("Blue")], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['full domain','ship, cloud','no ship, cloud','no ship, no cloud']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TKEtimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_TKE[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   yminor = 1.0, $
   ytitle = 'MEAN BL TKE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_TKE[*], $
   thick = line_thick, line = line_type, color = 0
   OPLOT, time[*], MEAN_TKE_st1[*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], MEAN_TKE_st3[*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], MEAN_TKE_st4[*], $
   thick = line_thick, line = line_type, color = cgColor("Orange")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [0,cgColor("Red"),cgColor("Blue"),cgColor("Orange")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['full domain - control','ST1-control','full domain - shear','ST1 - shear', 'full domain - weak', 'ST1 - weak']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TKEshear.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_TKE[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   ;ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'MEAN BL TKE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_TKE[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_TKE_st1[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_TKE_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TKE_st1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TKE_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_TKE_st1_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,1,0,1,0,1], thick = [5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

;legend = ['full domain - control','ST1-control','full domain - shear','ST1 - shear']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Entshear.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], ent[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [-1.0, 5.0], yticks = 6.0, $
   ;ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'W!De!N [mm s!U-1!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], ent[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], ent_st1[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], ent_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], ent_st1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], ent_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], ent_st1_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, [12.0,48.0], [0.0,0.0], line = 1, thick = 2
   POLYFILL, [12.0,12.0,13.0,13.0], [-1.0,5.0,5.0,-1.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [-1.0,5.0,5.0,-1.0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,1,0,1,0,1], thick = [5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2shear.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   ;ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'MEAN BL ZONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_U2[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_st1[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_st1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_U2_st1_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,1,0,1,0,1], thick = [5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

;legend2 = ['Control', 'Strong', 'Weak']
legend = ['Control', 'Strong', 'Weak','Polluted','C - st1','S - st1', 'W - st1', 'P - st1']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2shear_domain.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.2], yticks = 2.0, $
   ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGE ZONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_U2_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], MEAN_U2_st1[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_st1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_st1_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_U2_st1_p[*], $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
           cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control', 'Strong', 'Weak','Polluted','C - st1','S - st1', 'W - st1', 'P - st1']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'V2shear_domain.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_V2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.2], yticks = 2.0, $
   ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGE MERIDIONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_V2[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_V2_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_V2_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_V2_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], MEAN_V2_st1[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_V2_st1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_V2_st1_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_V2_st1_p[*], $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
           cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control', 'Strong', 'Weak','Polluted','C - st1','S - st1', 'W - st1', 'P - st1']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'W2shear_domain.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_W2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 0.3], yticks = 2.0, $
   ytickname = ['0','0.15','0.30'], $
   yminor = 1.0, $
   ytitle = 'DOMAIN-AVERAGE VERT. VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_W2[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_W2_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_W2_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_W2_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], MEAN_W2_st1[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_W2_st1_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_W2_st1_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_W2_st1_p[*], $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
           cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

MEAN_DISS_noship = FLTARR(nt)
MEAN_DISS_noship_s = FLTARR(nt)
MEAN_DISS_noship_n = FLTARR(nt)
MEAN_DISS_noship_p = FLTARR(nt)

MEAN_DISS_noship[*] = MEAN_DISS_st3[*]*(ST_3[*]/(ST_3[*] + ST_4[*])) + MEAN_DISS_st4*(ST_4[*]/(ST_3[*] + ST_4[*]))
MEAN_DISS_noship_s[*] = MEAN_DISS_st3_s[*]*(ST_3_s[*]/(ST_3_s[*] + ST_4_s[*])) + MEAN_DISS_st4_s*(ST_4_s[*]/(ST_3_s[*] + ST_4_s[*]))
MEAN_DISS_noship_n[*] = MEAN_DISS_st3_n[*]*(ST_3_n[*]/(ST_3_n[*] + ST_4_n[*])) + MEAN_DISS_st4_n*(ST_4_n[*]/(ST_3_n[*] + ST_4_n[*]))
MEAN_DISS_noship_p[*] = MEAN_DISS_st3_p[*]*(ST_3_p[*]/(ST_3_p[*] + ST_4_p[*])) + MEAN_DISS_st4_p*(ST_4_n[*]/(ST_3_p[*] + ST_4_p[*]))

MEAN_TKE_noship = FLTARR(nt)
MEAN_TKE_noship_s = FLTARR(nt)
MEAN_TKE_noship_n = FLTARR(nt)
MEAN_TKE_noship_p = FLTARR(nt)

MEAN_TKE_noship[*] = MEAN_TKE_st3[*]*(ST_3[*]/(ST_3[*] + ST_4[*])) + MEAN_TKE_st4*(ST_4[*]/(ST_3[*] + ST_4[*]))
MEAN_TKE_noship_s[*] = MEAN_TKE_st3_s[*]*(ST_3_s[*]/(ST_3_s[*] + ST_4_s[*])) + MEAN_TKE_st4_s*(ST_4_s[*]/(ST_3_s[*] + ST_4_s[*]))
MEAN_TKE_noship_n[*] = MEAN_TKE_st3_n[*]*(ST_3_n[*]/(ST_3_n[*] + ST_4_n[*])) + MEAN_TKE_st4_n*(ST_4_n[*]/(ST_3_n[*] + ST_4_n[*]))
MEAN_TKE_noship_p[*] = MEAN_TKE_st3_p[*]*(ST_3_p[*]/(ST_3_p[*] + ST_4_p[*])) + MEAN_TKE_st4_p*(ST_4_p[*]/(ST_3_p[*] + ST_4_p[*]))

NEW_TS_noship = FLTARR(nt)
NEW_TS_noship_s = FLTARR(nt)
NEW_TS_noship_n = FLTARR(nt)
NEW_TS_noship_p = FLTARR(nt)

NEW_TS_noship[*] = NEW_TS_st3[*]*(ST_3[*]/(ST_3[*] + ST_4[*])) + NEW_TS_st4[*]*(ST_4[*]/(ST_3[*] + ST_4[*]))
NEW_TS_noship_s[*] = NEW_TS_st3_s[*]*(ST_3_s[*]/(ST_3_s[*] + ST_4_s[*])) + NEW_TS_st4_s[*]*(ST_4_s[*]/(ST_3_s[*] + ST_4_s[*]))
NEW_TS_noship_n[*] = NEW_TS_st3_n[*]*(ST_3_n[*]/(ST_3_n[*] + ST_4_n[*])) + NEW_TS_st4_n[*]*(ST_4_n[*]/(ST_3_n[*] + ST_4_n[*]))
NEW_TS_noship_p[*] = NEW_TS_st3_p[*]*(ST_3_p[*]/(ST_3_p[*] + ST_4_p[*])) + NEW_TS_st4_p[*]*(ST_4_p[*]/(ST_3_p[*] + ST_4_p[*]))

MEAN_U2_noship = FLTARR(nt)
MEAN_U2_noship_s = FLTARR(nt)
MEAN_U2_noship_n = FLTARR(nt)
MEAN_U2_noship_p = FLTARR(nt)

MEAN_U2_noship[*] = MEAN_U2_st3[*]*(ST_3[*]/(ST_3[*] + ST_4[*])) + MEAN_U2_st4[*]*(ST_4[*]/(ST_3[*] + ST_4[*]))
MEAN_U2_noship_s[*] = MEAN_U2_st3_s[*]*(ST_3_s[*]/(ST_3_s[*] + ST_4_s[*])) + MEAN_U2_st4_s[*]*(ST_4_s[*]/(ST_3_s[*] + ST_4_s[*]))
MEAN_U2_noship_n[*] = MEAN_U2_st3_n[*]*(ST_3_n[*]/(ST_3_n[*] + ST_4_n[*])) + MEAN_U2_st4_n[*]*(ST_4_n[*]/(ST_3_n[*] + ST_4_n[*]))
MEAN_U2_noship_p[*] = MEAN_U2_st3_p[*]*(ST_3_p[*]/(ST_3_p[*] + ST_4_p[*])) + MEAN_U2_st4_p[*]*(ST_4_p[*]/(ST_3_p[*] + ST_4_p[*]))

MEAN_U_noship = FLTARR(nt)
MEAN_U_noship_s = FLTARR(nt)
MEAN_U_noship_n = FLTARR(nt)
MEAN_U_noship_p = FLTARR(nt)

MEAN_U_noship[*] = MEAN_U_st3[*]*(ST_3[*]/(ST_3[*] + ST_4[*])) + MEAN_U_st4[*]*(ST_4[*]/(ST_3[*] + ST_4[*]))
MEAN_U_noship_s[*] = MEAN_U_st3_s[*]*(ST_3_s[*]/(ST_3_s[*] + ST_4_s[*])) + MEAN_U_st4_s[*]*(ST_4_s[*]/(ST_3_s[*] + ST_4_s[*]))
MEAN_U_noship_n[*] = MEAN_U_st3_n[*]*(ST_3_n[*]/(ST_3_n[*] + ST_4_n[*])) + MEAN_U_st4_n[*]*(ST_4_n[*]/(ST_3_n[*] + ST_4_n[*]))
MEAN_U_noship_p[*] = MEAN_U_st3_p[*]*(ST_3_p[*]/(ST_3_p[*] + ST_4_p[*])) + MEAN_U_st4_p[*]*(ST_4_p[*]/(ST_3_p[*] + ST_4_p[*]))

legend = ['Control', 'Strong', 'Weak','Polluted','C-noship','S-noship', 'W-noship', 'P-noship']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'dissip.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_DISS[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 0.00075], yticks = 3.0, $
   ytickname = ['0','0.25','0.50','0.75'], $
   yminor = 1.0, $
   ytitle = 'DISSIPATION [m!U2!N s!U-3!N] x 10!U-3!N', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_DISS[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_DISS_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_DISS_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_DISS_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], MEAN_DISS_noship[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_DISS_noship_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_DISS_noship_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_DISS_noship_p[*], $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,0.00075,0.00075,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,0.00075,0.00075,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
           cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control', 'Strong', 'Weak','Polluted','C-noship','S-noship', 'W-noship', 'P-noship']
;legend = ['Control', 'Strong', 'Weak','Polluted','C - st3','S - st3', 'W - st3', 'P - st3']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'tke.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_TKE[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.2], yticks = 2.0, $
   ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'TKE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_TKE[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_TKE_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TKE_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_TKE_p[*], $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], MEAN_TKE_noship[*], $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_TKE_noship_s[*], $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TKE_noship_n[*], $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_TKE_noship_p[*], $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
           cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control', 'Strong', 'Weak','Polluted','C-noship','S-noship', 'W-noship', 'P-noship']
;legend = ['Control', 'Strong', 'Weak','Polluted','C - st3','S - st3', 'W - st3', 'P - st3']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'tsold.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_TS[*]/3600.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.2], yticks = 2.0, $
   ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'TKE/DISSIPATION [hrs]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_TS[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_TS_s[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TS_n[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_TS_p[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], MEAN_TS_st3[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_TS_st3_s[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TS_st3_n[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_TS_st3_p[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   ;LEGEND, legend, $
   ;line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   ;color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
   ;        cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   ;box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

;legend = ['Control', 'Strong', 'Weak','Polluted','C - st3','S - st3', 'W - st3', 'P - st3']
!P.FONT = 1
set_plot, 'ps' 
DEVICE, /color, /encapsulated, filename = 'tsnew.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], NEW_TS[*]/3600.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 0.6], yticks = 2.0, $
   ytickname = ['0','0.3','0.6'], $
   yminor = 1.0, $ 
   ytitle = '0.5xU''!U2!N/DISSIPATION [hrs]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], NEW_TS[*]/3600.0, $ 
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_s[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], NEW_TS_n[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], NEW_TS_p[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Green")
   OPLOT, time[*], NEW_TS_noship[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_noship_s[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], NEW_TS_noship_n[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Cyan")
   OPLOT, time[*], NEW_TS_noship_p[*]/3600.0, $
   thick = line_thick, line = 1, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   ;LEGEND, legend, $
   ;line = [0,0,0,0,1,1,1,1], thick = [5,5,5,5,5,5,5,5], $
   ;color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green"),$
   ;        cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   ;box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend2 = ['Control', 'Strong', 'Weak']
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2shear_st1.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U2_st1[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   ;ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'IN-PLUME ZONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_st1[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   ;OPLOT, time[*], MEAN_U2_st1[*], $
   ;thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_st1_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   ;OPLOT, time[*], MEAN_U2_st1_s[*], $
   ;thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_st1_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   ;OPLOT, time[*], MEAN_U2_st1_n[*], $
   ;thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend2, $
   line = [0,0,0], thick = [5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2shear_st2.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U2_st2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   ;ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'PLUME-EDGE ZONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_st2[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   ;OPLOT, time[*], MEAN_U2_st1[*], $
   ;thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_st2_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   ;OPLOT, time[*], MEAN_U2_st1_s[*], $
   ;thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_st2_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   ;OPLOT, time[*], MEAN_U2_st1_n[*], $
   ;thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend2, $
   line = [0,0,0], thick = [5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file




;!P.FONT = 1
;set_plot, 'ps'
;DEVICE, /color, /encapsulated, filename = 'DISSshear.eps', $
;   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
;plotposition = ASPECT(0.35, margin = 0.15)
;PLOT, time[*], MEAN_DISS[*], /nodata,$
;   xstyle = 9, xrange = [12.0, 48.0], $
;   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
;   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
 ;  xtitle = 'Local Time [PDT]', $
   ;ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   ;ytickname = ['0','0.6','1.2'], $
;   ystyle = 1, yrange = [0, 0.00075], yticks = 3.0, $
;   ytickname = ['0','0.25','0.5','0.75'], $
;   yminor = 1.0, $
;   ytitle = 'MEAN BL DISSIP. [m!U2!N s!U-3!N]x10!U-3!N', $
;   position = plotposition, $
;   charsize = 4, thick =4, $
;   xthick = xaxisthick, ythick = yaxisthick, $
;   xticklen = x_tick_scale, yticklen = y_tick_scale
;   OPLOT, time[*], MEAN_DISS[*], $
;   thick = line_thick, line = 0, color = cgColor("Black")
;   OPLOT, time[*], MEAN_DISS_st1[*], $
;   thick = line_thick, line = 1, color = cgColor("Black")
;   OPLOT, time[*], MEAN_DISS_s[*], $
;   thick = line_thick, line = 0, color = cgColor("Orange")
;   OPLOT, time[*], MEAN_DISS_st1_s[*], $
;   thick = line_thick, line = 1, color = cgColor("Orange")
;   OPLOT, time[*], MEAN_DISS_n[*], $
;   thick = line_thick, line = 0, color = cgColor("Cyan")
;   OPLOT, time[*], MEAN_DISS_st1_n[*], $
;   thick = line_thick, line = 1, color = cgColor("Cyan")
;   POLYFILL, [12.0,12.0,13.0,13.0], [0,0.00075,0.00075,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
;   POLYFILL, [27.5,27.5,37.0,37.0], [0,0.00075,0.00075,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
;   LEGEND, legend, $
;   line = [0,1,0,1,0,1], thick = [5,5,5,5,5,5], $
;   color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
;   box = 0, charsize = 2.0, /top, /right
;DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TSNEW_domain.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], NEW_TS[*]/3600.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 0.6], yticks = 2.0, $
   ytickname = ['0','0.3','0.6'], $
   yminor = 1.0, $
   ytitle = 'MODIFIED RELAXATION TIMESCALE [hrs]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], NEW_TS[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_s[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], NEW_TS_n[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], NEW_TS_p[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,0.6,0.6,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,0.6,0.6,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control','Strong','Weak','Polluted']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TSOLD_domain.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15) 
PLOT, time[*], MEAN_TS[*]/3600.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.2], yticks = 2.0, $
   ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'RELAXATION TIMESCALE [hrs]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], MEAN_TS[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], MEAN_TS_s[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], MEAN_TS_n[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   OPLOT, time[*], MEAN_TS_p[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Green")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,0.6,0.6,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,0.6,0.6,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan"),cgColor("Green")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control - ST2','Shear - ST2','Weak - ST2']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'RELAXTSNEW_st2.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], NEW_TS_st2[*]/3600.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 2.0], yticks = 2.0, $
   ytickname = ['0','1','2'], $
   yminor = 1.0, $
   ytitle = 'PLUME-EDGE MODIFIED RELAXATION TIMESCALE [hrs]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_st2[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_st2_s[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], NEW_TS_st2_n[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0], thick = [5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['Control - ST1','Shear - ST1','Weak - ST1']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'RELAXTSNEW_st1.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], NEW_TS_st1[*]/3600.0, /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 0.5], yticks = 2.0, $
   ytickname = ['0','0.25','0.5'], $
   yminor = 1.0, $
   ytitle = 'IN-PLUME MODIFIED RELAXATION TIMESCALE [hrs]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_st1[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Black")
   OPLOT, time[*], NEW_TS_st1_s[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Orange")
   OPLOT, time[*], NEW_TS_st1_n[*]/3600.0, $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,0.5,0.5,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,0.5,0.5,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0], thick = [5,5,5], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2shear_avg.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   ;ytickname = ['0','0.6','1.2'], $
   yminor = 1.0, $
   ytitle = 'MEAN BL ZONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_U2[*], $
   thick = line_thick, line = 0, color = cgColor("Black")
   ;OPLOT, time[*], MEAN_U2_st1[*], $
   ;thick = line_thick, line = 1, color = cgColor("Black")
   OPLOT, time[*], MEAN_U2_s[*], $
   thick = line_thick, line = 0, color = cgColor("Orange")
   ;OPLOT, time[*], MEAN_U2_st1_s[*], $
   ;thick = line_thick, line = 1, color = cgColor("Orange")
   OPLOT, time[*], MEAN_U2_n[*], $
   thick = line_thick, line = 0, color = cgColor("Cyan")
   ;OPLOT, time[*], MEAN_U2_st1_n[*], $
   ;thick = line_thick, line = 1, color = cgColor("Cyan")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.2,1.2,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0], thick = [5,5,5], $
   ;color = [cgColor("Black"),cgColor("Black"),cgColor("Orange"),cgColor("Orange"),cgColor("Cyan"),cgColor("Cyan")], $
   color = [cgColor("Black"),cgColor("Orange"),cgColor("Cyan")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file


legend = ['full domain','ship, cloud','no ship, cloud','no ship, no cloud']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2timeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   yminor = 1.0, $
   ytitle = 'MEAN ZONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_U2[*], $
   thick = line_thick, line = line_type, color = 0
   OPLOT, time[*], MEAN_U2_st1[*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], MEAN_U2_st3[*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], MEAN_U2_st4[*], $
   thick = line_thick, line = line_type, color = cgColor("Orange")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [0,cgColor("Red"),cgColor("Blue"),cgColor("Orange")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['full domain','ship, cloud','no ship, cloud','no ship, no cloud']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'V2timeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_V2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 1.0], yticks = 5.0, $
   yminor = 1.0, $
   ytitle = 'MEAN MERIDIONAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_V2[*], $
   thick = line_thick, line = line_type, color = 0
   OPLOT, time[*], MEAN_V2_st1[*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], MEAN_V2_st3[*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], MEAN_V2_st4[*], $
   thick = line_thick, line = line_type, color = cgColor("Orange")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,1.0,1.0,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [0,cgColor("Red"),cgColor("Blue"),cgColor("Orange")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['full domain','ship, cloud','no ship, cloud','no ship, no cloud']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'W2timeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_W2[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [0, 0.3], yticks = 2.0, $
   yminor = 1.0, $
   ytitle = 'MEAN VERTICAL VARIANCE [m!U2!N s!U-2!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_W2[*], $
   thick = line_thick, line = line_type, color = 0
   OPLOT, time[*], MEAN_W2_st1[*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], MEAN_W2_st3[*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], MEAN_W2_st4[*], $
   thick = line_thick, line = line_type, color = cgColor("Orange")
   POLYFILL, [12.0,12.0,13.0,13.0], [0,0.3,0.3,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [0,0.3,0.3,0], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [0,cgColor("Red"),cgColor("Blue"),cgColor("Orange")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

legend = ['full domain','ship, cloud','no ship, cloud','no ship, no cloud']
;I change transparency in illustrator because it's a nightmare in idl postscript
!P.FONT = 1
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'Utimeseries.eps', $
   set_font = 'Helvetica', /tt_font, set_character_size = [70, 90]
plotposition = ASPECT(0.35, margin = 0.15)
PLOT, time[*], MEAN_U[*], /nodata,$
   xstyle = 9, xrange = [12.0, 48.0], $
   xticks = 3, xminor = 0, $ ;xtickv = irtime,$;, xtickname = ['0.25','1.25','2.25','3.25','4.25','5.25'],$
   xtickname = ['6 AM','6 PM','6 AM','6 PM'],$
   xtitle = 'Local Time [PDT]', $
   ystyle = 1, yrange = [-0.5, 0.0], yticks = 2.0, $
   yminor = 1.0, $
   ytitle = 'MEAN ZONAL VELOCITY [m s!U-1!N]', $
   position = plotposition, $
   charsize = 4, thick =4, $
   xthick = xaxisthick, ythick = yaxisthick, $
   xticklen = x_tick_scale, yticklen = y_tick_scale
   OPLOT, time[*], MEAN_U[*], $
   thick = line_thick, line = line_type, color = 0
   OPLOT, time[*], MEAN_U_st1[*], $
   thick = line_thick, line = line_type, color = cgColor("Red")
   OPLOT, time[*], MEAN_U_st3[*], $
   thick = line_thick, line = line_type, color = cgColor("Blue")
   OPLOT, time[*], MEAN_U_st4[*], $
   thick = line_thick, line = line_type, color = cgColor("Orange")
   POLYFILL, [12.0,12.0,13.0,13.0], [-0.5,0.0,0.0,-0.5], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   POLYFILL, [27.5,27.5,37.0,37.0], [-0.5,0.0,0.0,-0.5], TRANSPARENT = 0.25, color = cgColor("Light Gray")
   LEGEND, legend, $
   line = [0,0,0,0], thick = [5,5,5,5], $
   color = [0,cgColor("Red"),cgColor("Blue"),cgColor("Orange")], $
   box = 0, charsize = 2.0, /top, /right
DEVICE, /close_file

;time-height cross-sections
z = z/1000.0
WTV_diff = WTVST1 - WTVST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 21
nalvls = [-20.0, -18.0, -16.0, -14.0, -12.0, -10.0, -8.0, -6.0, -4.0, -2.0, 0.0, $
           2.0, 4.0, 6.0, 8.0, 10.0, 12.0, 14.0, 16.0, 18.0, 20.0]
natick = ['-20','0.0','20']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'WTV_diff.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 23, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Diff. in T!Dv!N flux between Control and Strong Shear Runs [W m!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = WTVST1 
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [-30.0, -28.0, -26.0, -24.0, -22.0, -20.0, -18.0, -16.0, -14.0, -12.0, -10.0, -8.0, -6.0, -4.0, -2.0, 0.0, $
           2.0, 4.0, 6.0, 8.0, 10.0, 12.0, 14.0, 16.0, 18.0, 20.0, 22.0, 24.0, 26.0, 28.0, 30.0]
natick = ['-30','0.0','30']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'WTV_control.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 23, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control T!Dv!N flux [W m!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file


WTV_diff = WTVST1_s 
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [-30.0, -28.0, -26.0, -24.0, -22.0, -20.0, -18.0, -16.0, -14.0, -12.0, -10.0, -8.0, -6.0, -4.0, -2.0, 0.0, $
           2.0, 4.0, 6.0, 8.0, 10.0, 12.0, 14.0, 16.0, 18.0, 20.0, 22.0, 24.0, 26.0, 28.0, 30.0]
natick = ['-30','0.0','30']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'WTV_shear.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 23, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Shear T!Dv!N flux [W m!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = UST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [-3.0, -2.8, -2.6, -2.4, -2.2, -2.0, -1.8, -1.6, -1.4, -1.2, -1.0, -0.8, -0.6, -0.4, $
          -0.2, 0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0]
natick = ['-3','0.0','3']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U_shear.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 21, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Shear Zonal Velocity [m s!U-1!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = UST1
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [-3.0, -2.8, -2.6, -2.4, -2.2, -2.0, -1.8, -1.6, -1.4, -1.2, -1.0, -0.8, -0.6, -0.4, $
          -0.2, 0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0]
natick = ['-3','0.0','3']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U_control.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 21, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control Zonal Velocity [m s!U-1!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = UST1 - UST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [-3.0, -2.8, -2.6, -2.4, -2.2, -2.0, -1.8, -1.6, -1.4, -1.2, -1.0, -0.8, -0.6, -0.4, $
          -0.2, 0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0]
natick = ['-3','0.0','3']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U_diff.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 21, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control - Strong Shear Zonal Velocity [m s!U-1!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = DISS_ST1
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 17
nalvls = [0.0, 0.00025, 0.0005, 0.00075, 0.001, 0.00125, 0.0015, 0.00175, 0.002, $
          0.00225, 0.0025, 0.00275, 0.003, 0.00325, 0.0035, 0.00375, 0.004]
natick = ['0','0.2','0.4']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'DISS_control.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 7, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control Dissipation in Ship Track [m!U2!N s!U-3!N]x10!U-3!N', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = DISS_ST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 17
nalvls = [0.0, 0.00025, 0.0005, 0.00075, 0.001, 0.00125, 0.0015, 0.00175, 0.002, $
          0.00225, 0.0025, 0.00275, 0.003, 0.00325, 0.0035, 0.00375, 0.004]
natick = ['0','0.2','0.4']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'DISS_shear.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 7, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Shear Dissipation in Ship Track [m!U2!N s!U-3!N]x10!U-3!N', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = DISS_ST1 - DISS_ST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 13
nalvls = [-0.0003, -0.00025, -0.0002, -0.00015, -0.0001, -0.00005, 0.0, $
           0.00005, 0.0001, 0.00015, 0.0002, 0.00025, 0.0003]
natick = ['-0.3','0','0.3']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'DISS_diff.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 18, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control - Shear Run Dissipation in Ship Track [m!U2!N s!U-3!N]x10!U-3!N', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = TKERST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [0.0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, $
          0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.05, 1.1, 1.15, 1.2, 1.25, 1.3, 1.35, 1.4, 1.45, 1.5]
;nalvls = [0.0, 0.00025, 0.0005, 0.00075, 0.001, 0.00125, 0.0015, 0.00175, 0.002, $
;          0.00225, 0.0025, 0.00275, 0.003, 0.00325, 0.0035, 0.00375, 0.004]
natick = ['0','0.75','1.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TKE_shear.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 7, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Shear Run TKE in Ship Track [m!U2!N s!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = TKERST1
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [0.0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, $
          0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.05, 1.1, 1.15, 1.2, 1.25, 1.3, 1.35, 1.4, 1.45, 1.5]
;nalvls = [0.0, 0.00025, 0.0005, 0.00075, 0.001, 0.00125, 0.0015, 0.00175, 0.002, $
;          0.00225, 0.0025, 0.00275, 0.003, 0.00325, 0.0035, 0.00375, 0.004]
natick = ['0','0.75','1.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TKE_control.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 7, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control Run TKE in Ship Track [m!U2!N s!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

U2_diff = TKERST1 - TKERST1_s
WTV_diff = U2_diff
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 21
nalvls = [-0.5, -0.45, -0.4, -0.35, -0.3, -0.25, -0.2, -0.15, -0.1, -0.05, 0.0, 0.05, 0.1, 0.15, $
           0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5]
natick = ['-0.5','0.0','0.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TKE_diff.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 18, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control - Shear Run TKE in Ship Track [m!U2!N s!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = RELAX_TS_ST1/3600.0 - RELAX_TS_ST1_s/3600.0
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 21
nalvls = [-0.5, -0.45, -0.4, -0.35, -0.3, -0.25, -0.2, -0.15, -0.1, -0.05, 0.0, 0.05, 0.1, 0.15, $
           0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5]
natick = ['-0.5','0.0','0.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'TS_shear.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 18, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control - Shear Run Relaxation Timescale [hrs]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = US2ST1
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [0.0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, $
          0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.05, 1.1, 1.15, 1.2, 1.25, 1.3, 1.35, 1.4, 1.45, 1.5]
;nalvls = [0.0, 0.00025, 0.0005, 0.00075, 0.001, 0.00125, 0.0015, 0.00175, 0.002, $
;          0.00225, 0.0025, 0.00275, 0.003, 0.00325, 0.0035, 0.00375, 0.004]
natick = ['0','0.75','1.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2_control.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 7, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control Run U variance in Ship Track [m!U2!N s!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

WTV_diff = US2ST1_s
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 31
nalvls = [0.0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6, $
          0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.05, 1.1, 1.15, 1.2, 1.25, 1.3, 1.35, 1.4, 1.45, 1.5]
;nalvls = [0.0, 0.00025, 0.0005, 0.00075, 0.001, 0.00125, 0.0015, 0.00175, 0.002, $
;          0.00225, 0.0025, 0.00275, 0.003, 0.00325, 0.0035, 0.00375, 0.004]
natick = ['0','0.75','1.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2_shear.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 7, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Shear Run U variance in Ship Track [m!U2!N s!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

U2_diff = US2ST1 - US2ST1_s
WTV_diff = U2_diff
NAd_XY = FLTARR(nt, nzm)
WTV_diff = TRANSPOSE(WTV_diff)
NAd_XY[*,*] = WTV_diff[*,*]
nacont = 21
nalvls = [-0.5, -0.45, -0.4, -0.35, -0.3, -0.25, -0.2, -0.15, -0.1, -0.05, 0.0, 0.05, 0.1, 0.15, $
           0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5]
natick = ['-0.5','0.0','0.5']
colors = bindgen(nacont+1)+2B
set_plot, 'ps'
DEVICE, /color, /encapsulated, filename = 'U2_diff.eps', $
  set_font = 'Helvetica', /tt_font, set_character_size = [70,90]
cgLoadCT, 18, /BREWER, Ncolors=nacont+2, clip = [35,240], /REVERSE
cgCONTOUR, NAd_XY[*,*], time[*], z[*], /FILL, Aspect=1.0/4.0, $
  xstyle = 9, xticks = 3, xminor = 0, xrange = [12.0,48.0], $
  xtickname = ['6 AM','6 PM','6 AM','6 PM'], $
  xtitle = 'time (hr)', $
  ystyle = 1, yrange = [0,0.8], yticks = 4, yminor = 0, $
  ytitle = 'z (km)', $
  ytickname = ['0.0','0.2','0.4','0.6','0.8'], $
  title = 'Control - Shear Run U variance in Ship Track [m!U2!N s!U-2!N]', $
  charsize = 2, levels = nalvls, c_colors = colors
  OPLOT, [13.0,13.0], [0,100], line = 0, thick =2
  OPLOT, [27.5,27.5], [0,100], line = 0, thick =2
  OPLOT, [37.0,37.0], [0,100], line = 0, thick =2
cgColorBar, NColors = nacont+1, Divisions =2, /VERTICAL, /RIGHT, $
   charsize = 2, ticknames = natick, position=[0.93,0.35,0.96,0.70]
DEVICE, /close_file

;writing files to netcdf
print, 'Writing Netcdf...'
id = NCDF_CREATE('NOSHEAR_inputparams_v2.nc', /CLOBBER)
NCDF_CONTROL, id, /FILL

;defining dimensions
tid = NCDF_DIMDEF(id,'time',N_ELEMENTS(time))

wid1 = NCDF_VARDEF(id, 'time', [tid], /FLOAT)
wid2 = NCDF_VARDEF(id, 'MEAN_U_n', [tid], /FLOAT)
wid3 = NCDF_VARDEF(id, 'MEAN_U_st1_n', [tid], /FLOAT)
wid4 = NCDF_VARDEF(id, 'MEAN_U_st3_n', [tid], /FLOAT)
wid5 = NCDF_VARDEF(id, 'MEAN_V_n', [tid], /FLOAT)
wid6 = NCDF_VARDEF(id, 'MEAN_V_st1_n', [tid], /FLOAT)
wid7 = NCDF_VARDEF(id, 'MEAN_V_st3_n', [tid], /FLOAT)
wid8 = NCDF_VARDEF(id, 'MEAN_U2_n', [tid], /FLOAT)
wid9 = NCDF_VARDEF(id, 'MEAN_U2_st1_n', [tid], /FLOAT)
wid10 = NCDF_VARDEF(id, 'MEAN_U2_st3_n', [tid], /FLOAT)
wid11 = NCDF_VARDEF(id, 'MEAN_V2_n', [tid], /FLOAT)
wid12 = NCDF_VARDEF(id, 'MEAN_V2_st1_n', [tid], /FLOAT)
wid13 = NCDF_VARDEF(id, 'MEAN_V2_st3_n', [tid], /FLOAT)
wid14 = NCDF_VARDEF(id, 'MEAN_TS_n', [tid], /FLOAT)
wid15 = NCDF_VARDEF(id, 'MEAN_TS_st1_n', [tid], /FLOAT)
wid16 = NCDF_VARDEF(id, 'MEAN_TS_st3_n', [tid], /FLOAT)
wid17 = NCDF_VARDEF(id, 'NEW_TS_n', [tid], /FLOAT)
wid18 = NCDF_VARDEF(id, 'NEW_TS_st1_n', [tid], /FLOAT)
wid19 = NCDF_VARDEF(id, 'NEW_TS_st3_n', [tid], /FLOAT)

NCDF_ATTPUT, id, wid1, 'long_name', 'time [hr]'
NCDF_ATTPUT, id, wid2, 'long_name', 'Mean Boundary-layer zonal velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid3, 'long_name', 'Mean Boundary-layer zonal velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid4, 'long_name', 'Mean Boundary-layer zonal velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid5, 'long_name', 'Mean Boundary-layer meridional velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid6, 'long_name', 'Mean Boundary-layer meridional velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid7, 'long_name', 'Mean Boundary-layer meridional velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid8, 'long_name', 'Mean Boundary-layer zonal velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid9, 'long_name', 'Mean Boundary-layer zonal velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid10, 'long_name', 'Mean Boundary-layer zonal velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid11, 'long_name', 'Mean Boundary-layer meridional velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid12, 'long_name', 'Mean Boundary-layer meridional velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid13, 'long_name', 'Mean Boundary-layer meridional velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid14, 'long_name', 'Mean Boundary-layer relaxation timescale (full domain) [s]'
NCDF_ATTPUT, id, wid15, 'long_name', 'Mean Boundary-layer relaxation timescale (ship track region) [s]'
NCDF_ATTPUT, id, wid16, 'long_name', 'Mean Boundary-layer relaxation timescale (plume edge region) [s]'
NCDF_ATTPUT, id, wid17, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (full domain) [s]'
NCDF_ATTPUT, id, wid18, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (ship track region) [s]'
NCDF_ATTPUT, id, wid19, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (plume edge region) [s]'

NCDF_CONTROL, id, /ENDEF

NCDF_VARPUT, id, wid1, time
NCDF_VARPUT, id, wid2, MEAN_U_n
NCDF_VARPUT, id, wid3, MEAN_U_st1_n
NCDF_VARPUT, id, wid4, MEAN_U_st3_n
NCDF_VARPUT, id, wid5, MEAN_V_n
NCDF_VARPUT, id, wid6, MEAN_V_st1_n
NCDF_VARPUT, id, wid7, MEAN_V_st3_n
NCDF_VARPUT, id, wid8, MEAN_U2_n
NCDF_VARPUT, id, wid9, MEAN_U2_st1_n
NCDF_VARPUT, id, wid10, MEAN_U2_st3_n
NCDF_VARPUT, id, wid11, MEAN_V2_n
NCDF_VARPUT, id, wid12, MEAN_V2_st1_n
NCDF_VARPUT, id, wid13, MEAN_V2_st3_n
NCDF_VARPUT, id, wid14, MEAN_TS_n
NCDF_VARPUT, id, wid15, MEAN_TS_st1_n
NCDF_VARPUT, id, wid16, MEAN_TS_st3_n
NCDF_VARPUT, id, wid17, NEW_TS_n
NCDF_VARPUT, id, wid18, NEW_TS_st1_n
NCDF_VARPUT, id, wid19, NEW_TS_st3_n

NCDF_CLOSE, id

;writing files to netcdf
print, 'Writing Netcdf...'
id = NCDF_CREATE('CONTROL_inputparams_noship.nc', /CLOBBER)
NCDF_CONTROL, id, /FILL

;defining dimensions
tid = NCDF_DIMDEF(id,'time',N_ELEMENTS(time))

wid1 = NCDF_VARDEF(id, 'time', [tid], /FLOAT)
wid2 = NCDF_VARDEF(id, 'MEAN_U_noship', [tid], /FLOAT)
wid3 = NCDF_VARDEF(id, 'MEAN_U_st1', [tid], /FLOAT)
wid4 = NCDF_VARDEF(id, 'MEAN_U_st3', [tid], /FLOAT)
wid5 = NCDF_VARDEF(id, 'MEAN_V', [tid], /FLOAT)
wid6 = NCDF_VARDEF(id, 'MEAN_V_st1', [tid], /FLOAT)
wid7 = NCDF_VARDEF(id, 'MEAN_V_st3', [tid], /FLOAT)
wid8 = NCDF_VARDEF(id, 'MEAN_U2_noship', [tid], /FLOAT)
wid9 = NCDF_VARDEF(id, 'MEAN_U2_st1', [tid], /FLOAT)
wid10 = NCDF_VARDEF(id, 'MEAN_U2_st3', [tid], /FLOAT)
wid11 = NCDF_VARDEF(id, 'MEAN_V2', [tid], /FLOAT)
wid12 = NCDF_VARDEF(id, 'MEAN_V2_st1', [tid], /FLOAT)
wid13 = NCDF_VARDEF(id, 'MEAN_V2_st3', [tid], /FLOAT)
wid14 = NCDF_VARDEF(id, 'MEAN_TS', [tid], /FLOAT)
wid15 = NCDF_VARDEF(id, 'MEAN_TS_st1', [tid], /FLOAT)
wid16 = NCDF_VARDEF(id, 'MEAN_TS_st3', [tid], /FLOAT)
wid17 = NCDF_VARDEF(id, 'NEW_TS_noship', [tid], /FLOAT)
wid18 = NCDF_VARDEF(id, 'NEW_TS_st1', [tid], /FLOAT)
wid19 = NCDF_VARDEF(id, 'NEW_TS_st3', [tid], /FLOAT)

NCDF_ATTPUT, id, wid1, 'long_name', 'time [hr]'
NCDF_ATTPUT, id, wid2, 'long_name', 'Mean Boundary-layer zonal velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid3, 'long_name', 'Mean Boundary-layer zonal velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid4, 'long_name', 'Mean Boundary-layer zonal velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid5, 'long_name', 'Mean Boundary-layer meridional velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid6, 'long_name', 'Mean Boundary-layer meridional velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid7, 'long_name', 'Mean Boundary-layer meridional velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid8, 'long_name', 'Mean Boundary-layer zonal velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid9, 'long_name', 'Mean Boundary-layer zonal velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid10, 'long_name', 'Mean Boundary-layer zonal velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid11, 'long_name', 'Mean Boundary-layer meridional velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid12, 'long_name', 'Mean Boundary-layer meridional velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid13, 'long_name', 'Mean Boundary-layer meridional velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid14, 'long_name', 'Mean Boundary-layer relaxation timescale (full domain) [s]'
NCDF_ATTPUT, id, wid15, 'long_name', 'Mean Boundary-layer relaxation timescale (ship track region) [s]'
NCDF_ATTPUT, id, wid16, 'long_name', 'Mean Boundary-layer relaxation timescale (plume edge region) [s]'
NCDF_ATTPUT, id, wid17, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (full domain) [s]'
NCDF_ATTPUT, id, wid18, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (ship track region) [s]'
NCDF_ATTPUT, id, wid19, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (plume edge region) [s]'

NCDF_CONTROL, id, /ENDEF

NCDF_VARPUT, id, wid1, time
NCDF_VARPUT, id, wid2, MEAN_U_noship
NCDF_VARPUT, id, wid3, MEAN_U_st1
NCDF_VARPUT, id, wid4, MEAN_U_st3
NCDF_VARPUT, id, wid5, MEAN_V
NCDF_VARPUT, id, wid6, MEAN_V_st1
NCDF_VARPUT, id, wid7, MEAN_V_st3
NCDF_VARPUT, id, wid8, MEAN_U2_noship
NCDF_VARPUT, id, wid9, MEAN_U2_st1
NCDF_VARPUT, id, wid10, MEAN_U2_st3
NCDF_VARPUT, id, wid11, MEAN_V2
NCDF_VARPUT, id, wid12, MEAN_V2_st1
NCDF_VARPUT, id, wid13, MEAN_V2_st3
NCDF_VARPUT, id, wid14, MEAN_TS
NCDF_VARPUT, id, wid15, MEAN_TS_st1
NCDF_VARPUT, id, wid16, MEAN_TS_st3
NCDF_VARPUT, id, wid17, NEW_TS_noship
NCDF_VARPUT, id, wid18, NEW_TS_st1
NCDF_VARPUT, id, wid19, NEW_TS_st3

NCDF_CLOSE, id

;writing files to netcdf
print, 'Writing Netcdf...'
id = NCDF_CREATE('STRONGSHEAR_inputparams.nc', /CLOBBER)
NCDF_CONTROL, id, /FILL

;defining dimensions
tid = NCDF_DIMDEF(id,'time',N_ELEMENTS(time))

wid1 = NCDF_VARDEF(id, 'time', [tid], /FLOAT)
wid2 = NCDF_VARDEF(id, 'MEAN_U_s', [tid], /FLOAT)
wid3 = NCDF_VARDEF(id, 'MEAN_U_st1_s', [tid], /FLOAT)
wid4 = NCDF_VARDEF(id, 'MEAN_U_st2_s', [tid], /FLOAT)
wid5 = NCDF_VARDEF(id, 'MEAN_V_s', [tid], /FLOAT)
wid6 = NCDF_VARDEF(id, 'MEAN_V_st1_s', [tid], /FLOAT)
wid7 = NCDF_VARDEF(id, 'MEAN_V_st2_s', [tid], /FLOAT)
wid8 = NCDF_VARDEF(id, 'MEAN_U2_s', [tid], /FLOAT)
wid9 = NCDF_VARDEF(id, 'MEAN_U2_st1_s', [tid], /FLOAT)
wid10 = NCDF_VARDEF(id, 'MEAN_U2_st2_s', [tid], /FLOAT)
wid11 = NCDF_VARDEF(id, 'MEAN_V2_s', [tid], /FLOAT)
wid12 = NCDF_VARDEF(id, 'MEAN_V2_st1_s', [tid], /FLOAT)
wid13 = NCDF_VARDEF(id, 'MEAN_V2_st2_s', [tid], /FLOAT)
wid14 = NCDF_VARDEF(id, 'MEAN_TS_s', [tid], /FLOAT)
wid15 = NCDF_VARDEF(id, 'MEAN_TS_st1_s', [tid], /FLOAT)
wid16 = NCDF_VARDEF(id, 'MEAN_TS_st2_s', [tid], /FLOAT)
wid17 = NCDF_VARDEF(id, 'NEW_TS_s', [tid], /FLOAT)
wid18 = NCDF_VARDEF(id, 'NEW_TS_st1_s', [tid], /FLOAT)
wid19 = NCDF_VARDEF(id, 'NEW_TS_st2_s', [tid], /FLOAT)

NCDF_ATTPUT, id, wid1, 'long_name', 'time [hr]'
NCDF_ATTPUT, id, wid2, 'long_name', 'Mean Boundary-layer zonal velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid3, 'long_name', 'Mean Boundary-layer zonal velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid4, 'long_name', 'Mean Boundary-layer zonal velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid5, 'long_name', 'Mean Boundary-layer meridional velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid6, 'long_name', 'Mean Boundary-layer meridional velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid7, 'long_name', 'Mean Boundary-layer meridional velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid8, 'long_name', 'Mean Boundary-layer zonal velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid9, 'long_name', 'Mean Boundary-layer zonal velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid10, 'long_name', 'Mean Boundary-layer zonal velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid11, 'long_name', 'Mean Boundary-layer meridional velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid12, 'long_name', 'Mean Boundary-layer meridional velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid13, 'long_name', 'Mean Boundary-layer meridional velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid14, 'long_name', 'Mean Boundary-layer relaxation timescale (full domain) [s]'
NCDF_ATTPUT, id, wid15, 'long_name', 'Mean Boundary-layer relaxation timescale (ship track region) [s]'
NCDF_ATTPUT, id, wid16, 'long_name', 'Mean Boundary-layer relaxation timescale (plume edge region) [s]'
NCDF_ATTPUT, id, wid17, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (full domain) [s]'
NCDF_ATTPUT, id, wid18, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (ship track region) [s]'
NCDF_ATTPUT, id, wid19, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (plume edge region) [s]'

NCDF_CONTROL, id, /ENDEF

NCDF_VARPUT, id, wid1, time
NCDF_VARPUT, id, wid2, MEAN_U_s
NCDF_VARPUT, id, wid3, MEAN_U_st1_s
NCDF_VARPUT, id, wid4, MEAN_U_st2_s
NCDF_VARPUT, id, wid5, MEAN_V_s
NCDF_VARPUT, id, wid6, MEAN_V_st1_s
NCDF_VARPUT, id, wid7, MEAN_V_st2_s
NCDF_VARPUT, id, wid8, MEAN_U2_s
NCDF_VARPUT, id, wid9, MEAN_U2_st1_s
NCDF_VARPUT, id, wid10, MEAN_U2_st2_s
NCDF_VARPUT, id, wid11, MEAN_V2_s
NCDF_VARPUT, id, wid12, MEAN_V2_st1_s
NCDF_VARPUT, id, wid13, MEAN_V2_st2_s
NCDF_VARPUT, id, wid14, MEAN_TS_s
NCDF_VARPUT, id, wid15, MEAN_TS_st1_s
NCDF_VARPUT, id, wid16, MEAN_TS_st2_s
NCDF_VARPUT, id, wid17, NEW_TS_s
NCDF_VARPUT, id, wid18, NEW_TS_st1_s
NCDF_VARPUT, id, wid19, NEW_TS_st2_s

NCDF_CLOSE, id

;writing files to netcdf
print, 'Writing Netcdf...'
id = NCDF_CREATE('POLLUTED_inputparams_noship.nc', /CLOBBER)
NCDF_CONTROL, id, /FILL

;defining dimensions
tid = NCDF_DIMDEF(id,'time',N_ELEMENTS(time))

wid1 = NCDF_VARDEF(id, 'time', [tid], /FLOAT)
wid2 = NCDF_VARDEF(id, 'MEAN_U_noship_p', [tid], /FLOAT)
wid3 = NCDF_VARDEF(id, 'MEAN_U_st1_p', [tid], /FLOAT)
wid4 = NCDF_VARDEF(id, 'MEAN_U_st2_p', [tid], /FLOAT)
wid5 = NCDF_VARDEF(id, 'MEAN_V_p', [tid], /FLOAT)
wid6 = NCDF_VARDEF(id, 'MEAN_V_st1_p', [tid], /FLOAT)
wid7 = NCDF_VARDEF(id, 'MEAN_V_st2_p', [tid], /FLOAT)
wid8 = NCDF_VARDEF(id, 'MEAN_U2_noship_p', [tid], /FLOAT)
wid9 = NCDF_VARDEF(id, 'MEAN_U2_st1_p', [tid], /FLOAT)
wid10 = NCDF_VARDEF(id, 'MEAN_U2_st2_p', [tid], /FLOAT)
wid11 = NCDF_VARDEF(id, 'MEAN_V2_p', [tid], /FLOAT)
wid12 = NCDF_VARDEF(id, 'MEAN_V2_st1_p', [tid], /FLOAT)
wid13 = NCDF_VARDEF(id, 'MEAN_V2_st2_p', [tid], /FLOAT)
wid14 = NCDF_VARDEF(id, 'MEAN_TS_p', [tid], /FLOAT)
wid15 = NCDF_VARDEF(id, 'MEAN_TS_st1_p', [tid], /FLOAT)
wid16 = NCDF_VARDEF(id, 'MEAN_TS_st2_p', [tid], /FLOAT)
wid17 = NCDF_VARDEF(id, 'NEW_TS_noship_p', [tid], /FLOAT)
wid18 = NCDF_VARDEF(id, 'NEW_TS_st1_p', [tid], /FLOAT)
wid19 = NCDF_VARDEF(id, 'NEW_TS_st2_p', [tid], /FLOAT)

NCDF_ATTPUT, id, wid1, 'long_name', 'time [hr]'
NCDF_ATTPUT, id, wid2, 'long_name', 'Mean Boundary-layer zonal velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid3, 'long_name', 'Mean Boundary-layer zonal velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid4, 'long_name', 'Mean Boundary-layer zonal velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid5, 'long_name', 'Mean Boundary-layer meridional velocity (full domain) [m/s]'
NCDF_ATTPUT, id, wid6, 'long_name', 'Mean Boundary-layer meridional velocity (ship track region) [m/s]'
NCDF_ATTPUT, id, wid7, 'long_name', 'Mean Boundary-layer meridional velocity (plume edge region) [m/s]'
NCDF_ATTPUT, id, wid8, 'long_name', 'Mean Boundary-layer zonal velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid9, 'long_name', 'Mean Boundary-layer zonal velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid10, 'long_name', 'Mean Boundary-layer zonal velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid11, 'long_name', 'Mean Boundary-layer meridional velocity variance (full domain) [m2/s2]'
NCDF_ATTPUT, id, wid12, 'long_name', 'Mean Boundary-layer meridional velocity variance (ship track region) [m2/s2]'
NCDF_ATTPUT, id, wid13, 'long_name', 'Mean Boundary-layer meridional velocity variance (plume edge region) [m2/s2]'
NCDF_ATTPUT, id, wid14, 'long_name', 'Mean Boundary-layer relaxation timescale (full domain) [s]'
NCDF_ATTPUT, id, wid15, 'long_name', 'Mean Boundary-layer relaxation timescale (ship track region) [s]'
NCDF_ATTPUT, id, wid16, 'long_name', 'Mean Boundary-layer relaxation timescale (plume edge region) [s]'
NCDF_ATTPUT, id, wid17, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (full domain) [s]'
NCDF_ATTPUT, id, wid18, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (ship track region) [s]'
NCDF_ATTPUT, id, wid19, 'long_name', 'Modified Boundary-layer relaxation timescale (u2/diss) (plume edge region) [s]'

NCDF_CONTROL, id, /ENDEF

NCDF_VARPUT, id, wid1, time
NCDF_VARPUT, id, wid2, MEAN_U_noship_p
NCDF_VARPUT, id, wid3, MEAN_U_st1_p
NCDF_VARPUT, id, wid4, MEAN_U_st2_p
NCDF_VARPUT, id, wid5, MEAN_V_p
NCDF_VARPUT, id, wid6, MEAN_V_st1_p
NCDF_VARPUT, id, wid7, MEAN_V_st2_p
NCDF_VARPUT, id, wid8, MEAN_U2_noship_p
NCDF_VARPUT, id, wid9, MEAN_U2_st1_p
NCDF_VARPUT, id, wid10, MEAN_U2_st2_p
NCDF_VARPUT, id, wid11, MEAN_V2_p
NCDF_VARPUT, id, wid12, MEAN_V2_st1_p
NCDF_VARPUT, id, wid13, MEAN_V2_st2_p
NCDF_VARPUT, id, wid14, MEAN_TS_p
NCDF_VARPUT, id, wid15, MEAN_TS_st1_p
NCDF_VARPUT, id, wid16, MEAN_TS_st2_p
NCDF_VARPUT, id, wid17, NEW_TS_noship_p
NCDF_VARPUT, id, wid18, NEW_TS_st1_p
NCDF_VARPUT, id, wid19, NEW_TS_st2_p

NCDF_CLOSE, id

END
