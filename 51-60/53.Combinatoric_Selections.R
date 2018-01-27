get_combinatoric_selection <- function(max_number, limit) {
  counter = 0
  for(i in seq(23, max_number)) {
    for(j in seq(i)) {
      if(ncol(combn(i, j)) > limit) {
        mid = floor(i/2)
        if (i %% 2 == 0) {
          counter = counter + (2*(mid - j) + 1)
        }
        else {
          counter = counter + (2*(mid - j) + 2)
        }
        break
      }
    }
  }
}

system.time(get_combinatoric_selection(100, 1000000))
#user  system elapsed 
#303.96    2.14  306.78 