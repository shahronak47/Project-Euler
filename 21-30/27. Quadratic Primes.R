source("file:///C:/Users/Ronak Shah/Google Drive/Git-Project-Euler/3.Check_if_Prime.R")
get_quadratic_primes <- function() {
max_n = 0
for (a in seq(-999, 999)){
  for (b in seq(-1000, 1000)) {
    n = 0
    is_number_prime = TRUE
    while(is_number_prime) {
      generate_next_number = n^2 + (a * n) + b
      print(paste(a, b, n, generate_next_number))
      if(generate_next_number > 0) {
        if(is_prime(generate_next_number)) {
          n = n + 1
       }
      else {
        is_number_prime = FALSE
        if(n > max_n) {
          max_a = a
          max_b = b
          max_n = n
          print(max_n)
        }
      }
      }
      else {
        is_number_prime = FALSE
      }
    }
  }
} 
return(list(max_a = max_a, max_b = max_b, max_primes = max_n))
}
#971 * -61
#[1] -59231

#user  system elapsed 
#192.892   3.167 200.767 



get_quadratic_primes_v2 <- function() {
  max_n = 0
  for (a in seq(-999, 999)){
    for (b in seq(2, 1000)) {
      n = 0
      if(is_prime(b)) {
        is_number_prime = TRUE
        while(is_number_prime) {
          generate_next_number = n^2 + (a * n) + b
          print(paste(a, b, n, generate_next_number))
          if(generate_next_number > 0) {
            if(is_prime(generate_next_number)) {
              n = n + 1
            }
            else {
              is_number_prime = FALSE
              if(n > max_n) {
                max_a = a
                max_b = b
                max_n = n
                print(max_n)
              }
            }
          }
          else {
            is_number_prime = FALSE
          }
        }
      }
      } 
  }
  return(list(max_a = max_a, max_b = max_b, max_primes = max_n))
}

#user  system elapsed 
#86.610   1.513  92.365 



get_quadratic_primes_v3 <- function() {
  max_n = 0
  for (a in seq(-999, 999)){
    for (b in seq(2, 1000)) {
      n = 0
      if(is_prime(b) & identical(a %% 2, b %% 2)) {
        is_number_prime = TRUE
        while(is_number_prime) {
          generate_next_number = n^2 + (a * n) + b
          print(paste(a, b, n, generate_next_number))
          if(generate_next_number > 0) {
            if(is_prime(generate_next_number)) {
              n = n + 1
            }
            else {
              is_number_prime = FALSE
              if(n > max_n) {
                max_a = a
                max_b = b
                max_n = n
                print(max_n)
              }
            }
          }
          else {
            is_number_prime = FALSE
          }
        }
      }
    } 
  }
  return(list(max_a = max_a, max_b = max_b, max_primes = max_n))
}

#user  system elapsed 
#63.822   1.088  67.377 