source("C:\\Users\\Ronak Shah\\Google Drive\\Git-Project-Euler\\35. Get_Primes_Under_n.R")
count_circular_primes <- function(num) {
  prime_numbers = get_primes_under_n(num)
  final_answer = numeric()
  for(i in prime_numbers) {
      split_num = strsplit(as.character(i), "")[[1]]
      #If it contains any of the even digit then it is going to be divisible by 2 in any one of the circular shift operation
      if (any(split_num %in% c("0","2","4","6","8")) & length(split_num) > 1) next
      all_nums = as.numeric(cyc_shift(split_num))
      #All possible variations should be prime numbers, hence should be included in the prime numbers we had calculated previously
      if (all(all_nums %in% prime_numbers))
        final_answer = c(final_answer, i)
  }
  return(length(final_answer))
}

cyc_shift <- function(x) {
  if(length(x) == 1) return(x)
  comb <- paste0(x, collapse = "")
  n <- nchar(comb) - 1
  c(comb, lapply(1:n, function(i) paste0(c(tail(x,-i), head(x,i)), collapse = "")))
}
count_circular_primes(1000000)
#[1] 55
system.time(count_circular_primes(1000000))
#user  system elapsed 
#359.22   19.53  388.47 