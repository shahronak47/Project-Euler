#readLines('https://projecteuler.net/project/resources/p059_cipher.txt')

library(R.utils)
xor_gate <- function(a, b) {
  a <- intToBin(a)
  b <- intToBin(b)
  n <- paste0('%0', max(nchar(a), nchar(b)), 's')
  a <- sprintf(n, a)
  b <- sprintf(n, b)
  strtoi(paste0(as.integer(strsplit(a, '')[[1]] != strsplit(b, '')[[1]]), collapse = ''), base = 2)
}
xor_gate(65, 42)
xor_gate(107, 65)
