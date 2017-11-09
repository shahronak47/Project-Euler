check_if_palindrome <- function(num) {
  if(!is.numeric(num) & (num %% 1 == 0))
    stop("Please enter only whole numbers")
  if(num > .Machine$integer.max)
    stop("Value too large")
  
  n = num;
  rev = 0;
  while (num > 0) {
    dig = num %% 10
    rev = rev * 10 + dig
    num = floor(num / 10)
  }
  if (n==rev)
    return(TRUE)
  else
    return(FALSE)  
}
