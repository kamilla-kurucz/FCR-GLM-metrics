ptf %

&glm_setup
   sim_name = 'FCR'
   max_layers = 500
   min_layer_vol = 0.025
   min_layer_thick = 0.1
   max_layer_thick = 0.2
   non_avg = .true.
/
&wq_setup
   wq_lib = 'aed'
   wq_nml_file = 'aed/aed2_4zones.nml'
   ode_method = 1
   split_factor = 1
   bioshade_feedback = .true.
   repair_state = .true.
/
&light
   light_mode = 0
   n_bands = 4
   light_extc = 1, 0.5, 2, 4
   energy_frac = 0.51, 0.45, 0.035, 0.005
   Benthic_Imin = 10
   Kw = %               kw%
/
&mixing
   coef_mix_conv = 0.2
   coef_wind_stir = 0.23
   coef_mix_shear = 0.3
   coef_mix_turb = 0.51
   coef_mix_KH = 0.3
   !coef_mix_shreq = 0.1506756631528729
   coef_mix_shreq = 0
   deep_mixing = 1
   !coef_mix_hyp = 5.874908532252400e-06
   coef_mix_hyp = %     coef_mix_hyp%
/
&morphometry
   lake_name = 'FallingCreek'
   latitude = 37.30768
   longitude = -79.83707
   bsn_len = 711.699
   bsn_wid = 226.03
   bsn_vals = 31
   H = 497.683, 497.983, 498.283, 498.683, 498.983, 499.283, 499.583, 499.883, 500.183, 500.483, 500.783, 501.083, 501.383, 501.683, 501.983, 502.283, 502.583, 502.883, 503.183, 503.483, 503.783, 504.083, 504.383, 504.683, 505.083, 505.383, 505.683, 505.983, 506.283, 506.583, 506.983
   A = 0, 61.408883, 494.615572, 1201.23579, 2179.597283, 3239.620513, 4358.358439, 5637.911458, 6929.077352, 8228.697419, 9469.324081, 10811.30792, 12399.67051, 14484.22802, 16834.20941, 19631.05422, 22583.1399, 25790.70893, 28442.99667, 31155.95008, 36269.3312, 42851.13714, 51179.89109, 59666.85885, 68146.39437, 76424.14457, 85430.25429, 95068.47603, 103030.4489, 111302.1604, 119880.9164
/
&time
   timefmt = 2
   start = '2016-12-01 00:00:00'
   stop = '2019-12-31 00:00:00'
   dt = 3600
   num_days = 1
   timezone = -5
/
&output
   out_dir = 'output'
   out_fn = 'output'
   nsave = 24
   csv_lake_fname = 'lake'
/
&init_profiles
   num_depths = 29
   lake_depth = 9.3
   the_depths = 0.1, 0.33, 0.66, 1, 1.33, 1.66, 2, 2.33, 2.66, 3, 3.33, 3.66, 4, 4.33, 4.66, 5, 5.33, 5.66, 6, 6.33, 6.66, 7, 7.33, 7.66, 8, 8.33, 8.66, 9, 9.2
   the_temps = 8.757, 8.744, 8.724, 8.704, 8.675, 8.647, 8.617, 8.575, 8.533, 8.490, 8.454, 8.419, 8.382, 8.300, 8.218, 8.133, 8.106, 8.079, 8.052, 8.042, 8.032, 8.022, 8.018, 8.015, 8.011, 8.009, 8.008, 8.006
   the_sals = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
   num_wq_vars = 5
   wq_names = 'OXY_oxy','NIT_amm','NIT_nit','PHS_frp','OGM_doc'
   wq_init_vals = 278.646, 275.455, 270.877, 266.161, 265.553, 264.944, 264.318, 282.100, 299.882, 318.203, 317.352, 316.500, 315.623, 312.779, 309.936, 307.006, 306.065, 305.124, 304.155, 303.473, 302.791, 302.089, 301.139, 300.189, 299.210, 299.065, 298.919, 298.769, 298.7,
   0.222, 0.230, 0.242, 0.255, 0.267, 0.276, 0.267, 0.259, 0.250, 0.242, 0.234, 0.225, 0.222, 0.222, 0.222, 0.222, 0.222, 0.222, 0.222, 0.218, 0.208, 0.197, 0.187, 0.177, 0.166, 0.185, 0.203, 0.222, 0.222,
   0.048, 0.048, 0.048, 0.048, 0.048, 0.049, 0.054, 0.059, 0.064, 0.069, 0.074, 0.079, 0.081, 0.081, 0.081, 0.081, 0.076, 0.072, 0.067, 0.063, 0.060, 0.057, 0.054, 0.051, 0.048, 0.048, 0.048, 0.048, 0.048,
   0.105, 0.097, 0.086, 0.074, 0.062, 0.052, 0.051, 0.049, 0.048, 0.046, 0.044, 0.043, 0.046, 0.051, 0.057, 0.063, 0.063, 0.063, 0.063, 0.062, 0.060, 0.058, 0.057, 0.055, 0.053, 0.053, 0.053, 0.053, 0.053,
   21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.649, 21.191, 20.733, 20.261, 19.983, 19.983, 19.983, 19.983, 19.983, 19.983, 19.709, 19.434, 19.151, 19.15
   snow_thickness = 0
   white_ice_thickness = 0
   blue_ice_thickness = 0
   avg_surf_temp = 6
/
&meteorology
   met_sw = .true.
   lw_type = 'LW_IN'
   rain_sw = .false.
   atm_stab = 0
   catchrain = .false.
   rad_mode = 1
   albedo_mode = 4
   cloud_mode = 4
   meteo_fl = 'inputs/met_avg_filtered.csv' !these met data are from local met station at reservoir- SW is filtered to remove values outside of what the solar geometry allows, following Thomas et al. 2020 WRR
   subdaily = .true.
   wind_factor = %         wind_fac%
   sw_factor = %           sw_fac%
   !sw_factor = 0.9
   lw_factor = %           lw_fac%
   at_factor = 1
   rh_factor = 1
   rain_factor = 1
   cd = %               cd%
   ce = %               ce%
   ch = %               ch%
   rain_threshold = 0.04
   runoff_coef = 0.2
   time_fmt = 'YYYY-MM-DD hh:mm:ss'
/
&inflow
   num_inflows = 2
   names_of_strms = 'weir','SSS'
   subm_flag = .false., .true.
   strm_hf_angle = 55, -15
   strmbd_slope = 0.05, 15
   !inflow_factor = 1, 0.5811603370304192
   inflow_factor = 1, %       inflow_fac%
   strmbd_drag = 0.03, 0.03
   subm_elev = 7.166530546, 1.631309262885859
   inflow_fl = 'inputs/FCR_weir_inflow_2013_2020_20220411_allfractions_2poolsDOC_1dot5xDOCr.csv', 'inputs/inflow_SSS_K_elevation_waterquality.csv'
   inflow_varnum = 37
   inflow_vars = 'FLOW','TEMP','SALT','TRC_tr1','TRC_age','NCS_ss1','NCS_ss2','OXY_oxy','CAR_dic','CAR_pH','CAR_ch4','CAR_ch4_bub','SIL_rsi','NIT_amm','NIT_nit','PHS_frp','PHS_frp_ads','OGM_doc','OGM_poc','OGM_don','OGM_pon','OGM_dop','OGM_pop','OGM_docr','OGM_donr','OGM_dopr','OGM_cpom','PHY_cyano','PHY_cyano_IN','PHY_cyano_IP','PHY_green','PHY_green_IN','PHY_green_IP','PHY_diatom','PHY_diatom_IN','PHY_diatom_IP','BIV_filtfrac'
/
&outflow
   num_outlet = 2
   flt_off_sw = .false., .false.
   outl_elvs = 506.9, 498
   !outl_elvs = 506.9, 502
   bsn_len_outl = 711.699, 711.699
   bsn_wid_outl = 226.03. 226.03
   outflow_fl = 'inputs/FCR_spillway_outflow_WeirOnly_2013_2020_20211102.csv', 'inputs/outflow_K.csv'
   !outflow_factor = 1, 0.5811603370304192
   outflow_factor = 1, %      outflow_fac%
/
&snowice
   snow_albedo_factor = 0.8
   snow_rho_max = 300
   snow_rho_min = 50
   min_ice_thickness = 0.001
   dt_iceon_avg = 0.01
   avg_surf_temp_thres = 0.5
/
&sediment
   benthic_mode = 2
   sed_heat_model = 1
   n_zones = 4
   zone_heights = 3, 5, 7, 9.5
   sed_heat_Ksoil = %      sed_heat_k1%, %      sed_heat_k2%, %      sed_heat_k3%, %      sed_heat_k4%
   sed_temp_depth = 0.5, 0.5, 0.5, 0.5
   sed_temp_mean = %      sed_temp_m1%, %      sed_temp_m2%, %      sed_temp_m3%, %      sed_temp_m4%
   sed_temp_amplitude = %      sed_temp_a1%, %      sed_temp_a2%, %      sed_temp_a3%, %      sed_temp_a4%
   sed_temp_peak_doy = %      sed_temp_d1%, %      sed_temp_d2%, %      sed_temp_d3%, %      sed_temp_d4%
/
