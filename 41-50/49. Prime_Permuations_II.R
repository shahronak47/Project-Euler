source("/Users/ronakshah/Google Drive/Project Euler/35. Get_Primes_Under_n.R")
source("/Users/ronakshah/Google Drive/Project Euler/3.Check_if_Prime.R")
library(combinat)
prime_permutation <- function() {
  #Get all primes under 10000
  all_primes <- get_primes_under_n(10000)
  #Keep only those primes which are 1000 as we need 4 digit numbers
  all_primes <- all_primes[all_primes > 1000]
  
  checked_nums <- numeric()
  #creating a vector which checks already checked numbers
  for(i in all_primes) { 
    if (!i %in% checked_nums) {
      all_combns <- as.numeric(sapply(permn(strsplit(as.character(i), "")[[1]]), function(x) paste0(x, collapse = "")))
      #1487, 1748, 7481 etc  are going to generate same combinations, so 
      #no need to check them again and again
      checked_nums <- c(all_combns, checked_nums)
      #keep only those numbers which are primes
      primes <- sort(unique(all_combns[is_prime(all_combns)]))
      length_prime = length(primes)
      #There should be atleast three numbers in the list and all of them 
      #should be 4 digit long
      #This is to avoid cases like 0123, 0011 etc.
      if(length_prime >= 3 & all(nchar(primes) >= nchar(i))) {
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

system.time(prime_permutation())
#[1] 1487 4817 8147
#[1] 2969 6299 9629

#user  system elapsed 
#0.798   0.010   0.812 