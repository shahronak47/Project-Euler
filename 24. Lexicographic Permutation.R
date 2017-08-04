library(combinat)

sort(sapply(permn(0:9), paste0, collapse = ""))[1000000]
#2783915460
system.time(sort(sapply(permn(0:9), paste0, collapse = ""))[1000000])

#user      system elapsed 
#232.427   1.715 237.966 