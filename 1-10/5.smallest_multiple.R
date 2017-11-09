smallest_multiple <- function(maxnumber) {
num1 = maxnumber
num = maxnumber
flag = TRUE
j = 2
while(flag) {
  for(i in 2:maxnumber) {
    if (num %% i != 0) {
      num = num1 * j
      j = j + 1
      break
    }
  }
  if (i == maxnumber) {
    flag = FALSE
    print(num)  
  }
  
}
}