source("/Users/ronakshah/Google Drive/Project Euler/3.Check_if_Prime.R")
get_n_primes <- function(n) {
  count = 1
  primes = 2
  num  = 3
  while(count < n) {
    if(is_prime(num)) {
      primes = c(primes, num)
      count = count + 1
    }
    num = num + 2
  }
  primes
}