find_longest_reciprocal_cycle_under_n <- function(n) {
max_length = 1
reciprocal_list =  list(max_length = 0, max_num = 0)
for( i in 2:n) {
  unit_mod = 1
  latest_mod = 1
  while(!any(duplicated(unit_mod)) & latest_mod != 0)  {
    latest_mod = (latest_mod * 10) %% i
    unit_mod = c(unit_mod, latest_mod)
  }
  latest_length = length(unit_mod) - 1
  if (latest_length > reciprocal_list$max_length) {
    reciprocal_list$max_length = latest_length
    reciprocal_list$max_num = i
  }
}
return(reciprocal_list)
}

find_longest_reciprocal_cycle_under_n(1000)
#$max_length
#[1] 982

#$max_num
#[1] 983


system.time(find_longest_reciprocal_cycle_under_n(1000))
#user  system elapsed 
#0.783   0.027   0.817 

#with additional check of latest_mod != 0
system.time(find_longest_reciprocal_cycle_under_n(1000))
#user  system elapsed 
#0.841   0.018   0.866 