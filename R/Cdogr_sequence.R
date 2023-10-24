#' Generate DNA Sequence
#'
#' @param seq2
#'
#' @return
#' @export
#'
#' @examples
seq <- function(seq2){
  seq3 <- sample(c("A", "T", "G", "C"), size = seq2, replace = TRUE)
  seq4 <- paste0(seq3, collapse = "")
  return(seq4)
}