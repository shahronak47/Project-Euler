count_numbers <- function(max_number) {
  nums = 9
  digits = 2
  sum_digits = 9
  while(TRUE) {
    nums = nums * 10
    sum_digits = sum_digits + (nums * digits)
    digits = digits + 1
    if (sum_digits > max_number) break
  }
  return(sum_digits)
}

multiply_all_constants <- function(sum_digits, max_number) {
  pasted_digit = paste(seq(sum_digits), collapse = "")
  n  = 1
  numvec = n
  while(n < max_number){
    n = n *10
    numvec = c(numvec, n)
  }
  return(prod(as.numeric(sapply(numvec, function(x) substr(pasted_digit, x, x)))))
}