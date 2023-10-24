#' Translating RNA codons into amino acids
#'
#' @param codons
#'
#' @return Amino Acid Residues
#' @export
#'
#' @examples ..
translating <- function(codons){
  transl2 <- paste0(Codon_table[codons], collapse = "")
  return(transl2)
}
