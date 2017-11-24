source("/Users/ronakshah/Google Drive/Project Euler/Get_all_pandigital_numbers.R")
get_all_numbers <- get_all_n_digital_pandigital(0, 9)
ind2 = !as.numeric(substr(get_all_numbers, 2, 4)) %% 2
ind3 = !as.numeric(substr(get_all_numbers, 3, 5)) %% 3
ind5 = !as.numeric(substr(get_all_numbers, 4, 6)) %% 5
ind7 = !as.numeric(substr(get_all_numbers, 5, 7)) %% 7
ind11 = !as.numeric(substr(get_all_numbers, 6, 8)) %% 11
ind13 = !as.numeric(substr(get_all_numbers, 7, 9)) %% 13
ind17 = !as.numeric(substr(get_all_numbers, 8, 10)) %% 17

sum(get_all_numbers[ind2 & ind3 & ind5 & ind7 & ind11 & ind13 & ind17])

#[1] 16695334890
