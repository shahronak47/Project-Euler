source("/Users/ronakshah/Google Drive/Project Euler/35. Get_Primes_Under_n.R")
source("/Users/ronakshah/Google Drive/Project Euler/49.Is_Permutable_Numbers.R")
prime_permutation_v3 <- function() {
  all_primes <- get_primes_under_n(10000)
  all_primes <- all_primes[all_primes > 1000]
  for (num in seq(length(all_primes) - 2)) {
    for (i in seq(num + 1, length(all_primes))) {
      third_number = all_primes[i] + all_primes[i] - all_primes[num]
      if (third_number %in% all_primes) {
        if(is_permutable_numbers(c(all_primes[i], all_primes[num], third_number))) {
        print(c(all_primes[num], all_primes[i], third_number))
        }
      }
    }
  }
}

system.time(prime_permutation_v3())
#[1] 1487 4817 8147
#[1] 2969 6299 9629

#user  system elapsed 
#89.069   0.318  90.235 

system.time(prime_permutation_v3())
#[1] 1487 4817 8147
#[1] 2969 6299 9629

#user  system elapsed 
#10.013   0.279  10.775 