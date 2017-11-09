get_fibbonaci_numbers_upto_n <- function(n) {
first_number = 0
second_number = 1
fibbonaci_numbers = c(first_number, second_number)
next_number = first_number + second_number
while(next_number < n) {
  fibbonaci_numbers = c(fibbonaci_numbers, next_number)
  first_number = second_number
  second_number = next_number
  next_number = first_number + second_number
}
return(fibbonaci_numbers)
}