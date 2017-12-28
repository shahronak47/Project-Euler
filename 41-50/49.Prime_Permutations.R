library(combinat)
source("/Users/ronakshah/Google Drive/Project Euler/3.Check_if_Prime.R")
prime_permutations_in_range <- function(start, stop) {
  #expecting start to be odd
  checked_nums <- numeric()
  #creating a vector which checks already checked numbers
  for(i in seq(start, stop, 2)) { 
    if (!i %in% checked_nums) {
      all_combns <- as.numeric(sapply(permn(strsplit(as.character(i), "")[[1]]), function(x) paste0(x, collapse = "")))
      #1487, 1748, 7481 etc  are going to generate same combinations, so 
      #no need to check them again and again
      checked_nums <- c(all_combns, checked_nums)
      #keep only those numbers which are primes
      primes <- sort(unique(all_combns[is_prime(all_combns)]))
      length_prime = length(primes)
      if(length_prime > 2 & all(nchar(primes) > (nchar(start) - 1))) {
        for(a in seq(length_prime - 2)) {
          for(b in seq(a + 1, length_prime - 1)) {
            for(c in seq(b + 1, length_prime)) {
              if ((primes[b] - primes[a]) == (primes[c] - primes[b])) {
                print(c(primes[a], primes[b], primes[c]))
              }
            }
          }
        }
      }
    }
  }
}   


system.time(prime_permutations_in_range(1001, 9999))
#[1] 1487 4817 8147
#[1] 2969 6299 9629

#user  system elapsed 
#1.192   0.075   1.284 