get_primes_under_n <- function (n) {
  num_seq = seq(3, n, 2)
  prime_number = numeric()
  while(length(num_seq) >= 1) {
    prime_number = c(prime_number, num_seq[1])
    num_seq = setdiff(num_seq, seq(num_seq[1], n, num_seq[1]))
  }
  return(c(2, prime_number))
}
