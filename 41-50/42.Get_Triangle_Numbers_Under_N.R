generate_triangle_numbers_until_n <- function(n) {
  current_num = 1
  current_index = 1
  numvec = numeric()
  while(current_num <= n) {
    current_num = current_index * (current_index+1)/2
    numvec = c(numvec, current_num)
    current_index = current_index + 1
  }
  return(numvec[-length(numvec)])
}