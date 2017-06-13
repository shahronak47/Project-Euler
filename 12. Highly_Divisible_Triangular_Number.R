#12. Highly divisible triangular number
source("/Users/ronakshah/Google Drive/Project Euler")
highly_divisible_triangle_number <- function(factorLength) {
  num <- 2
  while(TRUE) {
    triangleNumber <- sum(seq(num))
    triangleFactors <- getFactors2(triangleNumber)
    if(length(unique(triangleFactors)) > factorLength)
      break
    else
      num <- num + 1
  }
  return(triangleNumber)
}
