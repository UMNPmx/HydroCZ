#' Corrected Height calculation
#'
#' This function calculate the corrected height
#'
#'
#'
#' (Corrected Height SDS = Ht SDS - Target Height SDS)
#'
#' @param z_score Taregt height z-score
#' @param z_ht Actual height z-score
#'
#' @export corr_ht
#'

corr_ht <- function(z_score=NULL
                    , z_ht=NULL){
  if(is.null(z_score && z_ht)){
    message("Z scores are required")
  }

  corr <- z_ht - z_score
  return(corr)
}
