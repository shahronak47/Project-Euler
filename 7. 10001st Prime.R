source("/home/ronakshah/Ronak/MyDocs/Project Euler/3.Check_if_Prime.R")

get_nth_Prime <- function(n) {
  num_list <- (2:55000) * 2 -1
  boolean_list <- which(sapply(num_list, is_prime))
  num_list[boolean_list[n-1]]
}


