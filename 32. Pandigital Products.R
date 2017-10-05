is_pandigital <- function(number) {
  number_digits <- as.numeric(strsplit(as.character(number), "")[[1]])
 return (all(1:9 %in% number_digits) &  all(table(number_digits) == 1))
}

numvec = numeric()
for (i in seq(101, 100000)) {
  for (j in seq(101, 100000)) {
    combined_number = paste0(i, j, i*j)
    if (nchar(combined_number) == 9) {
      if (is_pandigital(combined_number))
      {
        numvec = c(numvec, i*j)      
      }
    }
  }
}
sum(unique(numvec))
#[1] 45228
