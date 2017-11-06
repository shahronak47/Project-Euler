source("/Users/ronakshah/Google Drive/Project Euler/40.Champernowne_constant.R")
sum_digits = count_numbers(1000000)
multiply_all_constants(sum_digits, 1000000)

sum_digits = count_numbers(1000000)
multiply_all_constants(sum_digits, 1000000)
#[1] 210

system.time(multiply_all_constants(sum_digits, 1000000))
#user  system elapsed 
#3.702   0.150   3.860 