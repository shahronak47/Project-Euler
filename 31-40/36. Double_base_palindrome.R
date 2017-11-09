library(R.utils)
library(stringi)
get_double_base_palindrome_under_n <- function(n) {
  numvec <- numeric()
  for(i in seq(n)) {
    if(i == stri_reverse(i)) 
      if(intToBin(i) == stri_reverse(intToBin(i)))
        numvec = c(numvec, i)
  }
  return(sum(numvec))
}

get_double_base_palindrome_under_n(1000000)
#[1] 872187

#With combined-if condition
System.time(get_double_base_palindrome_under_n(1000000))
#user      system     elapsed 
#188.676   1.066      191.634

#With separate-if condition
System.time(get_double_base_palindrome_under_n(1000000))
#user  system elapsed 
#3.485   0.014   3.513 