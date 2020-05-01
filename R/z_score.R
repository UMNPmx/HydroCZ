#' Target Z-score calculation
#'
#' This funcion aim to calculate the target z-score for Height potential
#'
#' @param HtPot Heigh potential which is equal to TargetHt
#' @param mHt Median height
#' @param sdHt standerd deviation of height
#' @param L box-cox transformation
#' @export


z_score <- function(HtPot = TargetHt,
gender = c("female", "male")){
if(!is.na(gender)){

  if(gender == "male"){
    mHt = 176.8414914
    sdHt = 0.04036818
    L = 1.16863827
  } else if(gender == "female"){
    mHt = 163.3354491
    sdHt = 0.039637105
    L = 1.107132561
  } else {
    message("Gender is not defined")
  }

  z <- ((HtPot/mHt)^L - 1)/ (L * sdHt)
  return(round(z, digits = 2))
} else {
  message("Gender is not defined")
}
  }
