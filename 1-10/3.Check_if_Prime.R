is_prime <- function(num) {
  flag = 0
  if (num %in% c(2, 3, 5)) return(TRUE)
  if (num == 1 | num %% 2 == 0) return(FALSE)
  for (i in seq(3, floor(num/2), by=2)) {
    if (num %% i == 0) {
      flag = 1
      return(FALSE)
    }
  }
  return(TRUE)
}