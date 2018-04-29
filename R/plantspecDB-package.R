

#' C_cal_23SEP2015: NIR calibration for Carbon
#' 
#' NIR calibration for Carbon using version 1 of leaf.spec.data, excluding
#' litter and bryophytes.
#' 
#' 
#' @name C_cal_23SEP2015
#' @aliases C_cal_23SEP2015 C_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references
#' @keywords calibrations
#' @examples
#' 
#' 
#' #  library(leaf.spec)
#' #  library(leaf.spec.DB)
#' 
#' #######################################################################################################################
#' #######################################################################################################################
#' # C: Code to create this calibration
#' #######################################################################################################################
#' #######################################################################################################################
#'   ## LOAD DATA FROM leaf.spec.DB
#'   # data(leaf.spec.spectra)
#'   # data(leaf.spec.data)
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$SCAN_FILE=="SCAN_00225.dpt"),] # remove an outlier
#'   # leaf.spec.data <- leaf.spec.data[leaf.spec.data$VERSION==1,] # use dataset version 1
#'   # leaf.spec.data <- leaf.spec.data[!is.na(leaf.spec.data$C),] # remove data where response is NA
#'   ## remove litter and bryophytes 
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$FUNCTIONAL_TYPE=="bryophyte"|leaf.spec.data$FUNCTIONAL_TYPE=="litter"),]  
#'   # NUTNET_SCANS <- leaf.spec.spectra[leaf.spec.data$SCAN_FILE,] # choose scans based on remaining data
#'   # plot(NUTNET_SCANS) # inspect scans
#'   # component_C <- leaf.spec.data$C # for clarity, put the response in a new vector
#'   ## select a 10 % validation set with SPXY, but use ! to return TRUE for the training set
#'   # training_set_SPXY <- !(subdivideDataset(spectra = NUTNET_SCANS, component = component_C, method = "SPXY", p=0.1, type = "validation"))  
#'   # C_opt <- optimizePLS(component=component_C, spectra=NUTNET_SCANS, training_set = training_set_SPXY)
#'   # C_cal <- calibrate(component=component_C, spectra=NUTNET_SCANS, optimal_params=C_opt, optimal_model=1, validation = "testset", training_set = training_set_SPXY)
#' 
#' ## LOAD CALIBRATION
#' # data(C_cal_23SEP2015)
#' 
#' 
#' 
NULL





#' K_cal_23SEP2015: NIR calibration for Potassium
#' 
#' NIR calibration for Potassium using version 1 of leaf.spec.data, excluding
#' litter and bryophytes.
#' 
#' 
#' @name K_cal_23SEP2015
#' @aliases K_cal_23SEP2015 K_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references
#' @keywords calibrations
#' @examples
#' 
#' 
#' #  library(leaf.spec)
#' #  library(leaf.spec.DB)
#' 
#' #######################################################################################################################
#' #######################################################################################################################
#' # K: Code to create this calibration
#' #######################################################################################################################
#' #######################################################################################################################
#'   ## LOAD DATA FROM leaf.spec.DB
#'   # data(leaf.spec.spectra)
#'   # data(leaf.spec.data)
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$SCAN_FILE=="SCAN_00225.dpt"),] # remove an outlier
#'   # leaf.spec.data <- leaf.spec.data[leaf.spec.data$VERSION==1,] # use dataset version 1
#'   # leaf.spec.data <- leaf.spec.data[!is.na(leaf.spec.data$K),] # remove data where response is NA
#'   ## remove litter and bryophytes 
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$FUNCTIONAL_TYPE=="bryophyte"|leaf.spec.data$FUNCTIONAL_TYPE=="litter"),] 
#'   # NUTNET_SCANS <- leaf.spec.spectra[leaf.spec.data$SCAN_FILE,] # choose scans based on remaining data
#'   # plot(NUTNET_SCANS) # inspect scans
#'   # component_K <- leaf.spec.data$K # for clarity, put the response in a new vector
#'   ## select a 10 % validation set with KS, but use ! to return TRUE for the training set
#'   # training_set_KS <- !(subdivideDataset(spectra = NUTNET_SCANS, method = "KS", p=0.1, type = "validation"))
#'   # K_opt <- optimizePLS(component=component_K, spectra=NUTNET_SCANS, training_set = training_set_KS)
#'   # K_cal <- calibrate(component=component_K, spectra=NUTNET_SCANS, optimal_params=K_opt, optimal_model=1, validation = "testset", training_set = training_set_KS)
#' 
#' ## LOAD CALIBRATION
#' # data(K_cal_23SEP2015)
#' 
#' 
#' 
NULL





#' Wet lab chemistry for global calibration dataset.
#' 
#' Wet lab chemistry (a \code{data.frame}) from samples ground on an UDY belt
#' drive mill.
#' 
#' 
#' @name leaf.spec.data
#' @docType data
#' @format A \code{data.frame} containing wet lab chemistry data and relevant
#' metadata for the scans.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords datasets
#' @examples
#' 
#' data(leaf.spec.data)
#' 
NULL





#' NIR Calibration data for the 'leaf.spec' package
#' 
#' This R package is the companion package to \code{leaf.spec} and provides
#' access to a global calibration dataset for leaf chemistry in herbaceous
#' plants developed from the nutrient network experiment.
#' 
#' 
#' @name leaf.spec.DB-package
#' @aliases leaf.spec.DB-package leaf.spec.DB
#' @docType package
#' @author Daniel M. Griffith <griffith.dan@@gmail.com>; T. Michael Anderson
#' <anderstm@@wfu.edu>
#' @seealso
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords package
#' @examples
#' 
#' data(leaf.spec.spectra)
#' data(leaf.spec.data)
#' data(C_cal_23SEP2015)
#' data(N_cal_23SEP2015)
#' data(P_cal_23SEP2015)
#' data(K_cal_23SEP2015)
#' 
NULL





#' NIR scans for global calibration dataset.
#' 
#' NIR scans (a \code{spectra.matrix}) from samples ground on an UDY belt drive
#' mill and scanned on a Bruker MPA.
#' 
#' 
#' @name leaf.spec.spectra
#' @docType data
#' @format A large \code{spectra.matrix}.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords datasets
#' @examples
#' 
#' data(leaf.spec.spectra)
#' 
NULL





#' N_cal_23SEP2015: NIR calibration for Nitrogen
#' 
#' NIR calibration for Nitrogen using version 1 of leaf.spec.data, excluding
#' litter and bryophytes.
#' 
#' 
#' @name N_cal_23SEP2015
#' @aliases N_cal_23SEP2015 N_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references
#' @keywords calibrations
#' @examples
#' 
#' 
#' #  library(leaf.spec)
#' #  library(leaf.spec.DB)
#' 
#' #######################################################################################################################
#' #######################################################################################################################
#' # N: Code to create this calibration
#' #######################################################################################################################
#' #######################################################################################################################
#'   ## LOAD DATA FROM leaf.spec.DB
#'   # data(leaf.spec.spectra)
#'   # data(leaf.spec.data)
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$SCAN_FILE=="SCAN_00225.dpt"),] # remove an outlier
#'   # leaf.spec.data <- leaf.spec.data[leaf.spec.data$VERSION==1,] # use dataset version 1
#'   # leaf.spec.data <- leaf.spec.data[!is.na(leaf.spec.data$N),] # remove data where response is NA
#'   ## remove litter and bryophytes  
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$FUNCTIONAL_TYPE=="bryophyte"|leaf.spec.data$FUNCTIONAL_TYPE=="litter"),]
#'   # NUTNET_SCANS <- leaf.spec.spectra[leaf.spec.data$SCAN_FILE,] # choose scans based on remaining data
#'   # plot(NUTNET_SCANS) # inspect scans
#'   # component_N <- leaf.spec.data$N # for clarity, put the response in a new vector
#'   ## select a 10 % validation set with MDKS, but use ! to return TRUE for the training set 
#'   # training_set_MDKS <- !(subdivideDataset(spectra = NUTNET_SCANS, component = component_N, method = "MDKS", p=0.1, type = "validation"))
#'   # N_opt <- optimizePLS(component=component_N, spectra=NUTNET_SCANS, training_set = training_set_MDKS)
#'   # N_cal <- calibrate(component=component_N, spectra=NUTNET_SCANS, optimal_params=N_opt, optimal_model=1, validation = "testset", training_set = training_set_MDKS)
#' 
#' 
#' ## LOAD CALIBRATION
#' # data(N_cal_23SEP2015)
#' 
#' 
#' 
NULL





#' P_cal_23SEP2015: NIR calibration for Phosphorus
#' 
#' NIR calibration for Phosphorus using version 1 of leaf.spec.data, excluding
#' litter and bryophytes.
#' 
#' 
#' @name P_cal_23SEP2015
#' @aliases P_cal_23SEP2015 P_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references
#' @keywords calibrations
#' @examples
#' 
#' 
#' #  library(leaf.spec)
#' #  library(leaf.spec.DB)
#' 
#' #######################################################################################################################
#' #######################################################################################################################
#' # P: Code to create this calibration
#' #######################################################################################################################
#' #######################################################################################################################
#'   ## LOAD DATA FROM leaf.spec.DB
#'   # data(leaf.spec.spectra)
#'   # data(leaf.spec.data)
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$SCAN_FILE=="SCAN_00225.dpt"),] # remove an outlier
#'   # leaf.spec.data <- leaf.spec.data[leaf.spec.data$VERSION==1,] # use dataset version 1
#'   # leaf.spec.data <- leaf.spec.data[!is.na(leaf.spec.data$P),] # remove data where response is NA
#'   ## remove litter and bryophytes  
#'   # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$FUNCTIONAL_TYPE=="bryophyte"|leaf.spec.data$FUNCTIONAL_TYPE=="litter"),]
#'   # NUTNET_SCANS <- leaf.spec.spectra[leaf.spec.data$SCAN_FILE,] # choose scans based on remaining data
#'   # plot(NUTNET_SCANS) # inspect scans
#'   # component_P <- leaf.spec.data$P # for clarity, put the response in a new vector
#'   ## select a 10 % validation set with SPXY, but use ! to return TRUE for the training set 
#'   # training_set_SPXY <- !(subdivideDataset(spectra = NUTNET_SCANS, component = component_P, method = "SPXY", p=0.1, type = "validation"))
#'   # P_opt <- optimizePLS(component=component_P, spectra=NUTNET_SCANS, training_set = training_set_SPXY)
#'   # P_cal <- calibrate(component=component_P, spectra=NUTNET_SCANS, optimal_params=P_opt, optimal_model=1, validation = "testset", training_set = training_set_SPXY)
#' 
#' ## LOAD CALIBRATION
#' # data(P_cal_23SEP2015)
#' 
#' 
#' 
NULL



