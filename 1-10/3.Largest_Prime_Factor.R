source("/home/ronakshah/Ronak/Check_if_Prime.R")
Largest_prime_factor <- function(num) {
  for (i in seq(3, floor(sqrt(num)), by=2)) {
    if (num %% i == 0 & is_prime(i)) {
      maxNumber = i      
    }
  }
  return(maxNumber)
}
