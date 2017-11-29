generate_nth_pentagonal_number <- function(n) {
  n * (3*n - 1)/2
}

#You can use it in following ways : 
#For single number :
# generate_nth_pentagonal_number(5)
#[1] 35

#For multiple numbers :
#sapply(seq(10), generate_nth_pentagonal_number)
#[1]   1   5  12  22  35  51  70  92 117 145
