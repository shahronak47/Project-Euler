library(gmp)
self_powers <- function(n) {
  sum(pow.bigz(seq(n),seq(n)))
}


self_powers(10)
#Big Integer ('bigz') :
#[1] 10405071317

a = self_powers(1000)
substr(a, nchar(as.character(a)) - 9, nchar(as.character(a)))

#[1] "9110846700"

system.time(self_powers(1000))
#user  system elapsed 
#0.010   0.000   0.009 