counter = 0
for(i in seq(1, 14)) {
  for(j in seq(i)) {
    if(ncol(combn(i, j)) > 100) {
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

sapply(seq(18), function(x) sum(ncol(combn(18, x)) > 100))