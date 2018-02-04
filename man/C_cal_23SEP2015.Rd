\name{C_cal_23SEP2015}
\alias{C_cal_23SEP2015}
\alias{C_cal}
\docType{data}
\title{
C_cal_23SEP2015: NIR calibration for Carbon
}
\description{
NIR calibration for Carbon using version 1 of leaf.spec.data, excluding litter and bryophytes.
}
\usage{data(C_cal_23SEP2015)}
\format{
An object of class \code{PLScalibration}.

}

\references{

}
\examples{

#  library(leaf.spec)
#  library(leaf.spec.DB)

#######################################################################################################################
#######################################################################################################################
# C: Code to create this calibration
#######################################################################################################################
#######################################################################################################################
  ## LOAD DATA FROM leaf.spec.DB
  # data(leaf.spec.spectra)
  # data(leaf.spec.data)
  # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$SCAN_FILE=="SCAN_00225.dpt"),] # remove an outlier
  # leaf.spec.data <- leaf.spec.data[leaf.spec.data$VERSION==1,] # use dataset version 1
  # leaf.spec.data <- leaf.spec.data[!is.na(leaf.spec.data$C),] # remove data where response is NA
  ## remove litter and bryophytes 
  # leaf.spec.data <- leaf.spec.data[!(leaf.spec.data$FUNCTIONAL_TYPE=="bryophyte"|leaf.spec.data$FUNCTIONAL_TYPE=="litter"),]  
  # NUTNET_SCANS <- leaf.spec.spectra[leaf.spec.data$SCAN_FILE,] # choose scans based on remaining data
  # plot(NUTNET_SCANS) # inspect scans
  # component_C <- leaf.spec.data$C # for clarity, put the response in a new vector
  ## select a 10 % validation set with SPXY, but use ! to return TRUE for the training set
  # training_set_SPXY <- !(subdivideDataset(spectra = NUTNET_SCANS, component = component_C, method = "SPXY", p=0.1, type = "validation"))  
  # C_opt <- optimizePLS(component=component_C, spectra=NUTNET_SCANS, training_set = training_set_SPXY)
  # C_cal <- calibrate(component=component_C, spectra=NUTNET_SCANS, optimal_params=C_opt, optimal_model=1, validation = "testset", training_set = training_set_SPXY)

## LOAD CALIBRATION
# data(C_cal_23SEP2015)


}
\keyword{calibrations}
