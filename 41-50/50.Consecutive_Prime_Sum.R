source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/31-40/35. Get_Primes_Under_n.R")
source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/1-10/3.Check_if_Prime.R")
n <- 1000000
#keep number of consecutive sum prime
cons_index <- 0 
#get all the primes under n
list_primes <- get_primes_under_n(n)
len_primes <- length(list_primes)
for (i in seq(len_primes - 1)) {
  sum_prime = numeric()
  for (j in seq(i+1, len_primes)) {
    #Calculate the sum of primes from ith index to jth one
    sum_num <- sum(list_primes[i:j])
    #If sum has crossed n then no point calculating further, break the loop
    if(n > sum_num) {
      sum_prime <- c(sum_prime, sum_num)
    }
    else
      break()
  }
  #Find the last index which had a prime sum
  ind = which.max(cumsum(is_prime(sum_prime)))
  #There should be atleast one prime in the sum
  if(length(ind) > 0)
  #If it is greater than the previous max then replace it
    if(ind > cons_index) {
    cons_index = ind
    cons_sum = sum_prime[ind]
    }
}

print(cons_sum)
#[1] 997651

