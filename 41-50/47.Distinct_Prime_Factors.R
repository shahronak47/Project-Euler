source("/Users/ronakshah/Google Drive/Project Euler/29. Get_Prime_Factors.R")
flag = TRUE
n = 2
count = 4
while(flag) {
  print(n)
  nos_to_check = c(n, n + seq(count-1))
  if(all(sapply(nos_to_check, function(x) length(unique(get_prime_factors(x))) == count))) {
    flag = FALSE
    print(nos_to_check)
  }
  n = n + 1
}
