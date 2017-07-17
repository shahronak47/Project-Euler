source("C:/Users/Ronak Shah/Google Drive/Git-Project-Euler/12.Get_Factors.R")
get_sum_of_amicable_number_under_n <- function(n) {
amicable_numbers = numeric()
for(i in 3:n) {
  #Excluding the number itself, as they are sorted so excluding the last one
  divisors =  head(getFactors2(i), -1)
  #The sum of divisors of first would be the possible pair of amicable numbers
  opposite_number = sum(divisors)
  opposite_divisors = head(getFactors2(opposite_number), -1)
  #If the sum of factors of opposite number is same as original number and opposite number is not same as original number
  #and both the numbers are not previously visited
  if (sum(opposite_divisors) == i & i != opposite_number & !(i %in% amicable_numbers)) {
    amicable_numbers =  append(amicable_numbers, c(i, opposite_number))
  }
}
#returning sum of all the amicable numbers
return(sum(amicable_numbers))
}