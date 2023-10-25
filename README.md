
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Loading the package

Load `Cdogr` with:

``` r
library(Cdogr)
```

# Introduction

`Cdogr` allows you to generate random DNA sequences, convert DNA to RNA,
split RNA into codons, translate RNA codons to amino acids, and
visualize the frequency of amino acids in a sequence.

# Functions in `Cdogr`

## 1. Generating a Random DNA Sequence

You can generate a random DNA sequence of a specified length with the
‘Cdogr_seq()’ function. The function takes ‘size’ of the desired DNA
length as input.

``` r
dna_sequence <- Cdogr_seq(30)
print(dna_sequence)
#> [1] "ATGTATAATCGTTCTGACTTTTTATTGGGT"
```

## 2. Converting DNA to RNA

You can convert a DNA sequence to RNA with the `Cdogr_substitution()`
function. The input of the function is a DNA sequence.

``` r
rna_sequence <- Cdogr_substitution(dna_sequence)
print(rna_sequence)
#> [1] "AUGUAUAAUCGUUCUGACUUUUUAUUGGGU"
```

## 3. Splitting RNA into Codons

You can split an RNA sequence into its constituent codons with the
`Cdogr_splitting()` function. The input is an RNA sequence and start
parameter picks the reading frame.

``` r
codons <- Cdogr_splitting(rna_sequence, start = 1)
print(codons)
#>  [1] "AUG" "UAU" "AAU" "CGU" "UCU" "GAC" "UUU" "UUA" "UUG" "GGU"
```

## 4. Translating RNA Codons to Amino Acids

You can translate a sequence of RNA codons into amino acids with the
`Cdogr_translating()` function.

``` r
amino_acids <- translating(codons)
print(amino_acids)
#> [1] "MYNRSDFLLG"
```

## 5. Visualizing Amino Acid Frequencies

You can visualize the frequency of each amino acid in a sequence with
the `Cdogr_frequencies()` function. The function uses the list of amino
acids as input.

``` r
plot <- Cdogr_frequencies(amino_acids)
print(plot)
```

<img src="man/figures/README-unnamed-chunk-6-1.svg" width="100%" />
