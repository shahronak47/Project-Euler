for (i in seq(1, 9)) {
  for (j in seq(0, 9)) {
    for (k in seq(i, 9)) {
      for (l in seq(0, 9)) {
        if (((i == k) | (i == l) | (j==k) | (j==l)) & ((i != j) & (k != l) & (i != k) & (j != l))) {
          number1 = as.numeric(paste0(i, j))
          number2 = as.numeric(paste0(k, l))
          #print(c(number1, number2))
          ratio1 = number1/number2
          vec = c(i = i, j = j, k = k, l = l)
          freq = table(c(i, j, k, l))
          othertwo = freq[freq < 2]
          remaining = vec[vec %in% names(othertwo)]
          if (length(remaining) > 0) {
            ratio2 = remaining[1]/remaining[2]
            if (ratio1 == ratio2) {
              print(c(number1, number2))
            }
          }
        }
      }
    }
  }
}

#[1] 16 64
#[1] 19 95
#[1] 26 65
#[1] 49 98