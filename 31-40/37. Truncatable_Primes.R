source("C:\\Users\\Ronak Shah\\Google Drive\\Git-Project-Euler\\35. Get_Primes_Under_n.R")
source("C:\\Users\\Ronak Shah\\Google Drive\\Git-Project-Euler\\3.Check_if_Prime.R")
primes_under_million = get_primes_under_n(1000000)
#Take only odd primes
truncable_primes = numeric()
for(i in primes_under_million) {
  print(i)
  split_num = strsplit(as.character(i), "")[[1]]
  if (length(split_num) > 1) {
    if (all(sapply(trunc_numbers(split_num, "right"), is_prime))) {
      if (all(sapply(trunc_numbers(split_num, "left"), is_prime))) {
          truncable_primes = c(truncable_primes, i) 
    }
   }
  }
}
trunc_numbers <- function(split_num, direction = "right") {
  if(direction != "right" & direction != "left")
    stop("direction accepts only right or left as argument")
  if(direction == "right")
    sapply(seq_along(split_num), function(x) as.numeric(paste0(head(split_num, x), collapse = "")))
  else if(direction == "left")
    sapply(seq_along(split_num), function(x) as.numeric(paste0(tail(split_num, x), collapse = "")))
}


truncable_primes
#[1]     23     37     53     73    313    317    373    797   3137   3797 739397
sum(truncable_primes)
#[1] 748317
> 