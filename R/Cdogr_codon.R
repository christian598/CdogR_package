#' Title
#'
#' @param dna_data Insert proper DNA string
#' @param start Pick start codon position
#'
#' @return Returns the corresponding codons for the DNA string
#' @export
#'
Cdogr_codon <- function(dna_data, start = 1){
  end <- nchar(dna_data)
  codons <- substring(dna_data,
                      first = seq(from = start, to = end-3+1, by = 3),
                      last = seq(from = 3+start-1, to = end, by = 3))
  return(codons)
}
