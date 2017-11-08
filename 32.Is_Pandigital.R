is_pandigital <- function(number, digits) {
  number_digits <- as.numeric(strsplit(as.character(number), "")[[1]])
  return (all(1:digits %in% number_digits) &  all(table(number_digits) == 1))
}
