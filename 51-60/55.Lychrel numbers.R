library(stringi)
lychrel_num = numeric()
lychrel_nums_under_n <- function(limit) {
  for (i in seq(limit)) {
    num = i + as.numeric(stri_reverse(i))
    count = 0
    while(num != stri_reverse(num) & count < 50) {
      num = num + as.numeric(stri_reverse(num))
      count = count + 1
    }
    if(count == 50)
      lychrel_num = c(lychrel_num, i)
  }
  return(lychrel_num)
}

length(lychrel_nums_under_n(10000))
#[1] 249

system.time(lychrel_nums_under_n(10000))
#user  system elapsed 
#0.75    0.00    0.75 