library(gmp)
options(digits = 22)
max_digit_sum = 0
for (a in seq(99)) {
  for (b in seq(99)) {
    cat(a, b, "\n")
    digit_sum = sum(as.numeric(unlist(c(strsplit(as.character(pow.bigz(a , b)), "")))))
    if (digit_sum > max_digit_sum) {
      max_a = a
      max_b = b
      max_digit_sum = digit_sum
    }
  }
}

max_a
#[1] 99
max_b
#[1] 95
max_digit_sum
#[1] 972

system.time()
#user  system elapsed 
#0.19   0.00   0.20

