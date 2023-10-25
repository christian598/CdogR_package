#' Translating RNA Codons to Amino Acids
#'
#' @param codons Takes RNA codons as input
#'
#' @return Outputs Amino Acids
#' @export
#'
translating <- function(codons){
  transl2 <- paste0(Codon_table[codons], collapse = "")
  return(transl2)
}
