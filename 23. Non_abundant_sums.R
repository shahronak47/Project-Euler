source("/Users/ronakshah/Google Drive/23 . Abundant Numbers.R")
not_sum_of_abundant_numbers <- function(num) {
abundant_numbers = get_abundant_numbers(num)
sum_of_two_abundant_numbers = sort(unique(rowSums(expand.grid(abundant_numbers, abundant_numbers))))
sum(setdiff(c(1:47, seq(49, num, 2)), sum_of_two_abundant_numbers))
}

system.time(not_sum_of_abundant_numbers(28123))
#user  system elapsed 
#34.421   1.808  36.766 

system.time(not_sum_of_abundant_numbers(20161))
#user  system elapsed 
#17.730   0.815  19.029 