generateCollatzSequence <- function(vec, num) {
 vec <- append(vec, num)
 if(num == 1) {
   return(vec)
 }
 if(num %% 2 == 0)
   num = num / 2
 else
  num = 3*num + 1
 generateCollatzSequence(vec, num)
}


