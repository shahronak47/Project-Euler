get_character_in_order <- function(x){
  sort(strsplit(as.character(x),"")[[1]]) 
}

is_permuted_multiple <- function(vec) {
  #Every number should be of the same length, hence there would be only 1 unique value
  if (length(unique(nchar(vec))) == 1) {
    #set a benchmark vector to compare against all other numbers in the vector
    ordered_vec = get_character_in_order(vec[1])
    #Check if all the numbers follow the same order as the benchmarked vector
    return(all(ordered_vec == sapply(vec[-1], get_character_in_order)))
  }
  else
    return(FALSE)
}

get_answer_problem_52 <- function() {
  flag = TRUE
  current_number = 1
  while(flag) {
    #Generate 6 multiples for the current number
    all_multiples = current_number * 1:6
    #Check if all the numbers are permutations of one another
    if(is_permuted_multiple(all_multiples)) {
      print(all_multiples)
      flag = FALSE
    }
    current_number = current_number + 1
  }
}

system.time(get_answer_problem_52())
#[1] 142857 285714 428571 571428 714285 857142
#user  system elapsed 
#15.27    0.00   15.30  

get_answer_problem_52_v1 <- function() {
  flag = TRUE
  start_number = 10
  end_number = 16
  current_vec = 1:16
  while(flag) {
    for (current_number in current_vec) {
      all_multiples = current_number * 1:6
      if(is_permuted_multiple(all_multiples)) {
        print(all_multiples)
        flag = FALSE
        break
      }
    }
    start_number = start_number * 10
    end_number = as.numeric(paste0(end_number, 6))
    current_vec = seq(start_number, end_number)
  }
}

system.time(get_answer_problem_52_v1())
#[1] 142857 285714 428571 571428 714285 857142
#user  system elapsed 
#8.57    0.00    8.59 
