source("/Users/ronakshah/Google Drive/Project Euler/3.Check_if_Prime.R")
source("/Users/ronakshah/Google Drive/Project Euler/41.Get_Numbers_List.R")
source("/Users/ronakshah/Google Drive/Project Euler/32.Is_Pandigital.R")

library(combinat)
get_pandigital_prime <- function() {
  max_digits = 7
  flag = 0
  for (i in seq(max_digits, 1)) {
    all_numbers = sort(unlist(permn(1:i, function(x) as.numeric(paste0(x, collapse = "")))), decreasing = T)
    odd_numbers = get_odd_numbers_from_list(all_numbers)
    for (number in odd_numbers) {
      print(number)
      if(is_prime(number)) {
        cat("Highest pandigital prime is ", number)
        flag = 1
        break
      }
    }
    if(flag) break
  }
}