#' C_cal: NIR calibration for Carbon
#' 
#' NIR calibration for Carbon using version 1 of plantspecDB, excluding
#' litter and bryophytes.
#' 
#' @name C_cal
#' @aliases C_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords calibrations
#' @examples
#' 
NULL

#' K_cal: NIR calibration for Potassium
#' 
#' NIR calibration for Potassium using version 1 of plantspecDB, excluding
#' litter and bryophytes.
#' 
#' @name K_cal
#' @aliases K_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords calibrations
#' @examples
#' 
NULL

#' N_cal: NIR calibration for Nitrogen
#' 
#' NIR calibration for Nitrogen using version 1 of plantspecDB, excluding
#' litter and bryophytes.
#' 
#' @name N_cal
#' @aliases N_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords calibrations
#' @examples
#' 
NULL

#' P_cal: NIR calibration for Phosphorus
#' 
#' NIR calibration for Phosphorus using version 1 of plantspecDB, excluding
#' litter and bryophytes.
#' 
#' @name P_cal
#' @aliases P_cal
#' @docType data
#' @format An object of class \code{PLScalibration}.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords calibrations
#' @examples
#' 
NULL

#' Wet lab chemistry for global calibration dataset.
#' 
#' Wet lab chemistry (a \code{data.frame}) from samples ground on an UDY belt
#' drive mill.
#' 
#' 
#' @name plantspec.data
#' @docType data
#' @format A \code{data.frame} containing wet lab chemistry data and relevant
#' metadata for the scans.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords datasets
#' @examples
#' 
#' data(plantspec.data)
#' 
NULL

#' NIR Calibration data for the 'plantspec' package
#' 
#' This R package is the companion package to \code{plantspec} and provides
#' access to a global calibration dataset for leaf chemistry in herbaceous
#' plants developed from the nutrient network experiment.
#' 
#' @name plantspecDB-package
#' @aliases plantspecDB-package plantspecDB
#' @docType package
#' @author Daniel M. Griffith <griffith.dan@@gmail.com>; T. Michael Anderson
#' <anderstm@@wfu.edu>
#' @seealso
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords package
#' @examples
#' 
#' data(plantspec.spectra)
#' data(plantspec.data)
#' data(C_cal)
#' data(N_cal)
#' data(P_cal)
#' data(K_cal)
#' 
NULL

#' NIR scans for global calibration dataset.
#' 
#' NIR scans (a \code{spectra.matrix}) from samples ground on an UDY belt drive
#' mill and scanned on a Bruker MPA.
#' 
#' @name plantspec.spectra
#' @docType data
#' @format A large \code{spectra.matrix}.
#' @references \url{http://www.nutnet.umn.edu/}
#' @keywords datasets
#' @examples
#' 
#' data(plantspec.spectra)
#' 
NULL





