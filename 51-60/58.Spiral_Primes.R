source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/1-10/3.Check_if_Prime.R") 
flag = TRUE
i = 0
previous_prime_count = 0
previous_length = 1
while(flag) {
  i = i + 1
  constant = 2 * i
  length_i = constant + 1
  second_number = 4 * (i^2) + 1
  first_number = second_number - constant
  third_number = second_number + constant
  fourth_number = third_number + constant
  previous_prime_count = previous_prime_count + sum(is_prime(c(first_number, second_number, third_number, fourth_number)))
  previous_length = previous_length + 4
  ratio = previous_prime_count / previous_length
  cat(ratio, length_i, "\n")
  if (ratio < 0.1) 
    flag = FALSE
}

previous_length 
#[1] 26241