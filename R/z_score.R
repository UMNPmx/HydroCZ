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
                    mHt = NULL,
                    sdHt = NULL,
                    L = NULL){
  z <- ((HtPot/mHt)^L - 1)/ (L * sdHt)
  return(round(z, digits = 2))
}
