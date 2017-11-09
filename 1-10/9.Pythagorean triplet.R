getTripletForSum <- function(x) {
gotit = FALSE
for (a in 1:x) {
  for (b in 1:x) {
    for (c in 1:x) {
      if (a+b+c == x && !gotit) {
        lhs = (a*a) + (b*b)
        rhs = (c*c)
        if (lhs == rhs) {
          cat("The pythagorean triplets are ", a, b, c, "and the product is ", a*b*c)
          gotit = TRUE
        }
      }
    }
  }
}
}