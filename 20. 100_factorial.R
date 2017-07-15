library(gmp)
sum_of_factorial_digits <- function(number) {
  factorial = factorialZ(number)
  sum(as.numeric(strsplit(as.character(factorial), "")[[1]]))
}
  
sum_of_factorial_digits(10)
#[1] 27
sum_of_factorial_digits(100)
#[1] 648