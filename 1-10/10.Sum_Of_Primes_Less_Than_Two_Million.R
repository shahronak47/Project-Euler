source("/home/ronakshah/Ronak/MyDocs/Project Euler/3.Check_if_Prime.R")
getSumOfPrimes <- function(x) {
additionSum = 0
numSeq = seq(3, x,by = 2)
return(sum(numSeq[sapply(numSeq, is_prime)]))
}

