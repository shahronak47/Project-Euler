source('/Users/shahronak47/Documents/Project-Euler/1-10/3.Check_if_Prime.R')
#max range
n <- seq_len(10000)
#primes under n
primes <- n[is_prime(n)]

primes <- primes[!primes %in% c(2, 5)]
n <- length(primes)

for(i in seq_along(primes)) {
  print(i)
  for(j in i:n) {
    for(k in j:n) {
      for(l in k:n) {
        for(m in l:n) {
          i1 <- primes[i]
          i2 <- primes[j]
          i3 <- primes[k]
          i4 <- primes[l]
          i5 <- primes[m]
          #i-j, i-k, i-l, j-k, j-l, k-l
          if(check_prime(as.numeric(paste0(i1, i2))) && check_prime(as.numeric(paste0(i2, i1))) &&
             check_prime(as.numeric(paste0(i1, i3))) && check_prime(as.numeric(paste0(i3, i1))) &&
             check_prime(as.numeric(paste0(i1, i4))) && check_prime(as.numeric(paste0(i4, i1))) &&
             check_prime(as.numeric(paste0(i1, i5))) && check_prime(as.numeric(paste0(i5, i1))) &&
             check_prime(as.numeric(paste0(i2, i3))) && check_prime(as.numeric(paste0(i3, i2))) &&
             check_prime(as.numeric(paste0(i2, i4))) && check_prime(as.numeric(paste0(i4, i2))) &&
             check_prime(as.numeric(paste0(i2, i5))) && check_prime(as.numeric(paste0(i5, i2))) &&
             check_prime(as.numeric(paste0(i3, i4))) && check_prime(as.numeric(paste0(i4, i3))) &&
             check_prime(as.numeric(paste0(i3, i5))) && check_prime(as.numeric(paste0(i5, i3))) &&
             check_prime(as.numeric(paste0(i4, i5))) && check_prime(as.numeric(paste0(i5, i4)))) {
              ans <- c(i1, i2, i3, i4)
              print(ans)
              break
          }
        }
      }
    }
  }
}
