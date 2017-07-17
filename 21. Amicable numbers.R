source("C:/Users/Ronak Shah/Google Drive/Git-Project-Euler/12.Get_Factors.R")
get_sum_of_amicable_number_under_n <- function(n) {
amicable_numbers = numeric()
for(i in 3:n) {
  #Excluding the number itself, as they are sorted so excluding the last one
  divisors =  head(getFactors2(i), -1)
  opposite_number = sum(divisors)
  opposite_divisors = head(getFactors2(opposite_number), -1)
  if (sum(opposite_divisors) == i & i != opposite_number & !(i %in% amicable_numbers)) {
    amicable_numbers =  append(amicable_numbers, c(i, opposite_number))
  }
}
return(sum(amicable_numbers))
}