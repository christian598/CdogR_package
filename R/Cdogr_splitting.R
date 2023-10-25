#' Splitting RNA into Codons
#'
#' @param splt2 RNA sequence
#' @param start Start of the reading frame
#'
#' @return Returns codons
#' @export
Cdogr_splitting <- function(splt2, start = 1){
  splt3 <- nchar(splt2)
  codons <- substring(splt2,
                      first = seq(from = start, to = splt3-3+1, by = 3),
                      last = seq(from = 3+start-1, to = splt3, by = 3))
  return(codons)
}
