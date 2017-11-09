#Get factors
getFactors <- function(num) {
  numvec <- numeric()
  for (i in seq(floor(num/2)))
    if (num %% i == 0) 
      numvec <- append(numvec, i)
    #Also append the number itself
    numvec <- append(numvec, num)
  return(numvec)
}


getFactors2 <- function(num) {
  numvec <- numeric()
  for (i in seq(ceiling(sqrt(num))))
    if (num %% i == 0) 
      numvec <- append(numvec, c(i, num/i))
    return(sort(unique(numvec)))
}