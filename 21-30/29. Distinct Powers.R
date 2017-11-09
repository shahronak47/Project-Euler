source("C:/Users/Ronak Shah/Google Drive/Git-Project-Euler/29. Get_Prime_Factors.R")
get_distinct_powers_in_range <- function(min_range, max_range) {
  all_list = list()
  i = 0
  range = seq(min_range, max_range)
  for(a in range) {
    prime_factors = get_prime_factors(a)
    for(b in range) {
      i = i + 1
      all_list[[i]] = rep(prime_factors, each = b)
    }
  }
  return(length(unique(all_list)))
}
get_distinct_powers_in_range(2, 100)
#[1] 9183

system.time(get_distinct_powers_in_range(2, 100))
#user  system elapsed 
#0.41    0.00    0.40 