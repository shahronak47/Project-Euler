library(gmp)
num_1 = 3
num_2 = 7
denom_1 = 2
denom_2 = 5
count = 2
total_num = 0
while(count < 1000) {
  temp = num_1
  num_1 = num_2
  num_2 = mul.bigz(as.bigz(2), as.bigz(num_2)) + temp
  temp = denom_1
  denom_1 = denom_2
  denom_2 = mul.bigz(as.bigz(2), as.bigz(denom_2)) + temp
  count = count + 1
  #cat(num_2, denom_2, "\n")
  if (nchar(as.character(num_2)) > nchar(as.character(denom_2)))
    total_num = total_num + 1
  
}
