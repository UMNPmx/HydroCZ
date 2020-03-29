#' Target height calculation
#'
#' this function aims to calculate the target height according to gender
#'
#' @param HtFather Father's height in cm
#' @param HtMother Mother's height in cm
#' @param gender Gender of the child F: Female, M: Male
#' @export

TargerHt <- function(HtFather= NULL,
                     HtMother = NULL,
                     gender = c("F", "M")){
  if(gender == "F"){
    Ht <- ((HtFather - 13) + HtMother)/2
  } else if(gender == "M"){
    Ht <- ((HtMother + 13) + HtFather)/2
  } else {
    stop("Specifiy the gender")
  }
  return(Ht)
}


