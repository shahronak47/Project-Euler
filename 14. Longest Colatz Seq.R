source("/Users/ronakshah/Google Drive/Project Euler/14. GenColSeq.R")
get_highest_CNumber <- function(num) {
highestSeq <- 0
for(i in seq(num))
{
  vec <- numeric()
  newvec <- generateCollatzSequence(vec, i)
  if(length(newvec) > highestSeq) {
    highestSeq = length(newvec)
    highestSeqNumber = i
  }
}
return(highestSeqNumber)
}