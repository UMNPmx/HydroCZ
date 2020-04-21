#' Z score to percentile
#'
#' This function will match the z-score to percentile from z-score percentile table
#'
#' @param z_score z-score calculated from z_score function
#'
#'
#' @export z_to_percent
#'

z_to_percent <- function(z_score=NULL){

if(z_score > 0 && nchar(z_score) >= 4){
  i <- substr(z_score, 1, nchar(z_score) - 1)
  j <- substr(z_score, 4, nchar(z_score))
   percent <- unname(as.vector(data_z[data_z$Z==as.numeric(i),
                                       paste0("X",as.numeric(j))]))
  } else if(z_score > 0 && nchar(z_score) < 4){
    i <- substr(z_score, 1, nchar(z_score))
    percent <- unname(as.vector(data_z[data_z$Z==as.numeric(i), paste0("X",0)]))
  } else if( z_score < 0 && nchar(z_score) > 4) {

  i <- substr(z_score, 1, nchar(z_score) - 1)
  j <- substr(z_score, 5, nchar(z_score))
    percent <- unname(as.vector(data_z[data_z$Z==as.numeric(i), paste0("X",as.numeric(j))]))
  } else if(z_score < 0 && nchar(z_score) <= 4){
    i <- substr(z_score, 1, nchar(z_score))
    percent <- unname(as.vector(data_z[data_z$Z==as.numeric(i), paste0("X",0)]))
  } else if (z_score==0){
  i <- 0
  j <- 0
    percent <- unname(as.vector(data_z[data_z$Z==i, paste0("X",j)]))
  } else {
    message("Z-score is not defined")
  }


  return(cat("Percentage:", percent))
}
