get_prime_factors <- function(n) {
  numvec <- numeric()
  while(n %% 2 == 0){
    numvec = c(numvec, 2)
    n = n/2
  }
  i = 3
  while(n != 1) {
    while(n %% i == 0) {
      numvec = c(numvec, i)
      n = n/i
    }
    i = i + 2
  }
  return(sort(numvec))
}