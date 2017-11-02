get_max_solution_pythagorean_triplet_v1 <- function(limit) {
  limit = 1000
  all_list = list()
  for (p in seq(limit)) {
    for (q in seq(p, limit)){
      for(r in seq(q, limit)) {
        if(p^2 + q^2 == r^2) {
          all_list = append(all_list, list(c(p, q, r)))
        }
      }
    }
  }
  sum_list <- sapply(all_list, sum)
  return(which.max(table(sum_list[sum_list <= limit])))
}

system.time(get_max_solution_pythagorean_triplet_v1(1000))
#user  system elapsed 
#13.240   0.043  13.324 

get_max_solution_pythagorean_triplet_v2 <- function(limit) {
  limit = 1000
  all_list = list()
  for (p in seq(limit)) {
    for (q in seq(p, limit)){
      for(r in seq(q, limit)) {
        if(sum(p, q, r) > limit) break
        if(p^2 + q^2 == r^2) {
          all_list = append(all_list, list(c(p, q, r)))
        }
      }
    }
  }
  return(which.max(table(sapply(all_list, sum))))
}

system.time(get_max_solution_pythagorean_triplet_v2(1000))
#user  system elapsed 
#14.483   0.059  14.591 

get_max_solution_pythagorean_triplet_v3 <- function(limit) {
  limit = 1000
  all_list = list()
  for (p in seq(limit)) {
    for (q in seq(p, limit)){
      for(r in seq(q, limit)) {
        add_nums = sum(p, q, r)
        if(!!add_nums %% 2) next
        if(add_nums > limit) break
        if(p^2 + q^2 == r^2) {
          all_list = append(all_list, list(c(p, q, r)))
        }
      }
    }
  }
  return(which.max(table(sapply(all_list, sum))))
}

system.time(get_max_solution_pythagorean_triplet_v3(1000))
#user  system elapsed 
#22.134   0.183  22.602 