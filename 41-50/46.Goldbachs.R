source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/1-10/3.Check_if_Prime.R")
source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/31-40/35. Get_Primes_Under_n.R")
get_answer_for_problem46_v1 <- function() {
  start_num <- 33
  flag = TRUE
  while(flag) {
    start_num = start_num + 2
    if(is_prime(start_num))
      next
    else {
      flag = FALSE
      primes <- get_primes_under_n(start_num - 2)
      square_number = 1
      for (i in primes) {
          for (square_number in seq(start_num)) {
          current_sum = i + (2 * (square_number^2))
          if (current_sum > start_num)
            break
          else if (current_sum == start_num) {
            cat(start_num, "=", i, "+ 2 X", square_number, "^2\n")
            flag = TRUE
            break
            }
          }
      }
      if(!flag)
        cat("The answer is : ", start_num, "\n")
    }
  }
}

system.time(get_answer_for_problem46_v1())

#  user  system elapsed 
# 193.71    1.00  197.95 


get_answer_for_problem46_v2 <- function() {
  start_num <- 33
  flag = TRUE
  while(flag) {
    start_num = start_num + 2
    if(is_prime(start_num))
      next
    else {
      flag = FALSE
      primes <- get_primes_under_n(start_num - 2)
      square_number = 1
      for (i in primes) {
        for (square_number in seq(start_num)) {
          current_sum = i + (2 * (square_number^2))
          if (current_sum > start_num)
            break
          else if (current_sum == start_num) {
            cat(start_num, "=", i, "+ 2 X", square_number, "^2\n")
            flag = TRUE
            break
          }
        }
        if(flag)
          break
      }
      if(!flag)
        cat("The answer is : ", start_num, "\n")
    }
  }
}

get_answer_for_problem46_v2()
# The answer is :  5777 

system.time(get_answer_for_problem46_v2())

#user  system elapsed 
#75.73    0.27   77.06 
