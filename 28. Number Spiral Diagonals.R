get_the_sum_of_spiral_diagonals <- function(n) {
  max_number = n^2
  total_sum = 1
  fourth_number = 0
  i = 0
  while(fourth_number < max_number) {
    i = i + 1
    second_number = 4 * (i^2) + 1
    first_number = second_number - (2*i)
    third_number = second_number + (2*i)
    fourth_number = third_number + (2*i)
    total_sum = total_sum + first_number + second_number + third_number + fourth_number
  }
  return(total_sum)
}

get_the_sum_of_spiral_diagonals(1001)
#[1] 669171001

system.time(get_the_sum_of_spiral_diagonals(1001))
#user  system elapsed 
#0.01    0.00    0.01 