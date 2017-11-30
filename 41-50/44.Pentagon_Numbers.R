source("/Users/ronakshah/Google Drive/Project Euler/44.Generate_nth_Pentagonal_numbers.R")
source("/Users/ronakshah/Google Drive/Project Euler/44.Is_pentagonal.R")
get_answer_for_problem_44 <- function() {
  n <- 2
  not_found <- TRUE
  while(not_found) {
    one = generate_nth_pentagonal_number(n)
    for (i in seq(n-1, 1)) {
      two = generate_nth_pentagonal_number(i)
      if(is_pentagonal(one + two) && is_pentagonal(one - two)) {
        print("Answer")
        not_found = FALSE
        print(c(n, i))
        print(one-two)
        break
      }
    }
    n = n + 1
  }
}

system.time(get_answer_for_problem_44())
#[1] "Answer"
#[1] 2167 1020
#[1] 5482660
#user  system elapsed 
#2.307   0.021   2.344 