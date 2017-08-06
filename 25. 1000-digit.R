library(gmp)
factorial_for_n_digits <- function(no_of_digits) {
first_number = 1
second_number = 1
next_number = first_number + second_number
current_index = 3
while(nchar(as.character(next_number)) != no_of_digits) {
  first_number = second_number
  second_number = next_number
  next_number = as.bigz(first_number) + as.bigz(second_number)
  current_index = current_index + 1
}
return(current_index)
}

#system.time(factorial_for_n_digits(1000))
#user  system elapsed 
#0.143   0.002   0.147




