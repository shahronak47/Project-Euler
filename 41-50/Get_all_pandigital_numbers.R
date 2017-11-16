library(combinat)
get_all_n_digital_pandigital <- function(start, end) {
  as.numeric(sapply(permn(start:end),function(x) paste0(x, collapse = "")))
}