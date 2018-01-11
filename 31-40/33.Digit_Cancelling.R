digit_cancelling_fractionv1 <- function() {

  numprod = 1
  denomprod = 1
  #A loop for every digit in 2-two digit number
  for (i in seq(1, 9)) {
    for (j in seq(0, 9)) {
      for (k in seq(i, 9)) {
        for (l in seq(0, 9)) {
          #We are only interested in there is only one digit common in both the numbers
          if (((i == k) | (i == l) | (j==k) | (j==l)) & ((i != j) & (k != l) & (i != k) & (j != l))) {
            #Creating two numbers by pasting them
            number1 = as.numeric(paste0(i, j))
            number2 = as.numeric(paste0(k, l))
            ratio1 = number1/number2
            #Creating a named vector so that it is easy to know which ones are repeated and need to be eliminated
            vec = c(i = i, j = j, k = k, l = l)
            #Calculating the frequency of each digit
            freq = table(c(i, j, k, l))
            #Eliminating those numbers which are repeated twice
            othertwo = freq[freq < 2]
            #Finding the digits which are not eliminated from the original vector
            remaining = vec[vec %in% names(othertwo)]
            #A condition to check if both the digits are not eliminated
            if (length(remaining) > 0) {
              ratio2 = remaining[1]/remaining[2]
              if (ratio1 == ratio2) {
                #Calculating cumulative products for numerator and denominator
                numprod = numprod * number1
                denomprod = denomprod * number2
              }
            }
          }
        }
      }
    }
  }
  return(denomprod/numprod)
}

#The fractions are : 
#[1] 16 64
#[1] 19 95
#[1] 26 65
#[1] 49 98


digit_cancelling_fractionv1()
#[1] 100


system.time(digit_cancelling_fractionv1())
#user  system elapsed 
#0.14    0.00    0.14 