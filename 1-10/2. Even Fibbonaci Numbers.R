source("/Users/ronakshah/Google Drive/2. Fibonacci_number.R")
fibbo_numbers = get_fibbonaci_numbers_upto_n(4000000)
sum(fibbo_numbers[fibbo_numbers %% 2 == 0])
# [1] 4613732