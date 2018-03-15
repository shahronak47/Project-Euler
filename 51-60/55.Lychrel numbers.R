library(stringi)
lychrel_num = numeric()
for (i in seq(10000)) {
  cat("Iteration: ", i, "\n")
  num = i + as.numeric(stri_reverse(i))
  count = 0
  while(num != stri_reverse(num) & count < 50) {
    num = num + as.numeric(stri_reverse(num))
    cat(num)
    count = count + 1
  }
  if(count == 50)
    lychrel_num = c(lychrel_num, i)
}

