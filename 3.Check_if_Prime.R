is_prime <- function(num) {
  flag = 0
  if (num %% 2 == 0) return(FALSE)
  if (num == 3 | num == 5) return(TRUE)
  for (i in seq(3, floor(num/2), by=2)) {
    if (num %% i == 0) {
      flag = 1
      return(FALSE)
    }
  }
  return(TRUE)
}