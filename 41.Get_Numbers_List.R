get_odd_numbers_from_list <- function(num_list) {
  num_list[which(num_list %% 2 != 0)]
}

get_even_numbers_from_list <- function(num_list) {
  num_list[which(num_list %% 2 == 0)]
}