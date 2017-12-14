source("/Users/ronakshah/Google Drive/Project Euler/29. Get_Prime_Factors.R")
check_distinct_prime_factors <- function(cons_number, distinct_primes) {
  flag = TRUE
  n = 2
  while(flag) {
    nos_to_check = c(n, n + seq(cons_number-1))
    if(all(sapply(nos_to_check, function(x) length(unique(get_prime_factors(x))) == distinct_primes))) {
      flag = FALSE
      print(nos_to_check)
    }
    n = n + 1
  }
}

check_distinct_prime_factors(2, 2)
#[1] 14 15
check_distinct_prime_factors(3, 3)
#[1] 644 645 646

check_distinct_prime_factors(4, 4)
#[1] 134043 134044 134045 134046

system.time(check_distinct_prime_factors(4, 4))
# user      system  elapsed 
# 560.089   2.408   567.374 
