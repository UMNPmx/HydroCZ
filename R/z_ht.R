#'  z-score of actual height
#'
#' Calculate z-score of actual height
#'
#' @param ht actual height
#' @param mu median height value
#' @param std Standerd deviation of height
#'
#' @concept z score
#'

z_ht <- function(ht, mu, std){
  z <- (ht - mu)/std

  return(z)
}
