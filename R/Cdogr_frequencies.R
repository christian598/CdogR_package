#' Visualizing Amino Acid Frequencies
#'
#' @param frq2 ..
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#' @return Amino Acid Frequencies
#' @export
#'
#' @examples ..
Cdogr_frequencies <- function(frq2){
  frq3 <- frq2 |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(frq3, function(amino_acid) stringr::str_count(string = frq2, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["frq2"]] <- rownames(counts)

  frq4 <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = frq2, y = Counts, fill = frq2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(frq4)
}
