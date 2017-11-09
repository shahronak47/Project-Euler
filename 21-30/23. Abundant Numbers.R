source("/Users/ronakshah/Google Drive/Project Euler/12.Get_Factors.R")
get_abundant_numbers <- function(n) {
  abundant_numbers = numeric()
  for(i in seq(3, n)) {
    sumOfFactors <- sum(head(getFactors(i), -1))
    if(sumOfFactors > i)
      abundant_numbers <- c(abundant_numbers, i)
  }
  return(abundant_numbers)
}

