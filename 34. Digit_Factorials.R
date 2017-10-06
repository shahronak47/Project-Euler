get_digit_factorials <- function() {
  numx <- seq(0,9)
  factorial_list = factorial(numx)
  names(factorial_list) <- numx
  numvec <- numeric()
  for(i in seq(3, 2540160)) {
    split_chars = strsplit(as.character(i), "")[[1]]
    if(sum(factorial_list[split_chars]) == i)
      numvec = c(numvec, i)
  }
 return(sum(numvec))
}
get_digit_factorials()
#[1] 40730
system.time(get_digit_factorials())
#user  system elapsed 
#9.420   0.091   9.607 