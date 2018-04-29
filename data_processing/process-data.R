load("data_processing/C_cal_23SEP2015.RData")
load("data_processing/K_cal_23SEP2015.RData")
load("data_processing/leaf.spec.data.rda")
load("data_processing/leaf.spec.spectra.rda")
load("data_processing/N_cal_23SEP2015.RData")
load("data_processing/P_cal_23SEP2015.RData")

save(C_cal, file = "data/C_cal.RData")
save(N_cal, file = "data/N_cal.RData")
save(P_cal, file = "data/P_cal.RData")
save(K_cal, file = "data/K_cal.RData")
plantspec.data <- leaf.spec.data
  save(plantspec.data, file = "data/plantspec.data.RData")
plantspec.spectra <- leaf.spec.spectra  
  save(plantspec.spectra, file = "data/plantspec.spectra.RData")


