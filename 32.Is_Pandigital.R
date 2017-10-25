is_pandigital <- function(number) {
  number_digits <- as.numeric(strsplit(as.character(number), "")[[1]])
  return (all(1:9 %in% number_digits) &  all(table(number_digits) == 1))
}
