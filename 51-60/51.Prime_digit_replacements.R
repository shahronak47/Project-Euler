source("is_prime.R")

unknown_number = 3
consecutive_primes = 8

flag = TRUE

check_all_prime_combinations <- function(num) {
  current_number = 100001
  print(num)
  while(flag & current_number < 999999) {
    print(current_number)
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

combn(seq(6), unknown_number, check_all_prime_combinations, FALSE)

#[1] 121313 222323 323333 424343 525353 626363 727373 828383 929393