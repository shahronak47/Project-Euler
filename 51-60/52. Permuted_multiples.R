get_character_in_order <- function(x){
  sort(strsplit(as.character(x),"")[[1]]) 
}

is_permuted_multiple <- function(vec) {
  if (length(unique(nchar(vec))) == 1) {
    ordered_vec = get_character_in_order(vec[1])
    return(all(ordered_vec == sapply(vec[-1], get_character_in_order)))
  }
  else
    return(FALSE)
}

get_answer_problem_52 <- function() {
  flag = TRUE
  current_number = 1
  while(flag) {
    all_multiples = current_number * 1:6
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
#10.845   0.101  11.174 
