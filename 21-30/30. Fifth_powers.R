sum_to_fifth_power <- function() {
  all_numbers = numeric()
  for(i in seq(2, 999999)) {
    individual_raised_to_5 = as.numeric(strsplit(as.character(i), "")[[1]])^5
    if(i == sum(individual_raised_to_5)) {
      all_numbers = c(all_numbers, i)
    }
  }
  return(sum(all_numbers))
}

sum_to_fifth_power()
#[1] 443839
system.time(sum_to_fifth_power())
#user  system elapsed 
#9.53    0.00    9.57 