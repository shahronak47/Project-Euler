source("C:\\Users\\Ronak Shah\\Google Drive\\Git-Project-Euler\\1-10\\3.Check_if_Prime.R")

unknown_number = 2
consecutive_primes = 7

flag = TRUE

check_all_prime_combinations <- function(num) {
  current_number = 56001
  print(num)
  while(flag & current_number < 60000) {
    #print(current_number)
    if (is_prime(current_number)) {
      all_nums = as.numeric(sapply(0:9, function(x) 
        paste0(replace(strsplit(as.character(current_number), "")[[1]], num, x), collapse = "")))
      #Remove those numbers which are prefixed with 0's
      all_num_chars <- nchar(all_nums)
      all_nums <- all_nums[all_num_chars == names(which.max(table(all_num_chars)))]
      if (sum(is_prime(all_nums)) >= consecutive_primes) {
            print(all_nums)
            flag = FALSE
      }
    }
    current_number = current_number + 2
  }
}

combn(seq(5), 2, check_all_prime_combinations, FALSE)
#for (i in combn(seq(5), 2)) {
#  check_all_prime_combinations(i)
#  print(i)
#}
