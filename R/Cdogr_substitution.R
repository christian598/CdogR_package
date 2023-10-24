#' Converting DNA to RNA
#'
#' @param subT2  dfvx
#'
#' @return fvdfv
#' @export
#'
#' @examples vf
Cdogr_substitution <- function(subT2){
  subT3 <- gsub("T", "U", subT2)
  return(subT3)
}
