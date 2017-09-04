get_coin_sums <- function(target) {
  ways = 0
  for (a in seq(target, 0, -200)){
    for (b in seq(a, 0, -100)) {
      for (c in seq(b, 0, -50)) {
        for (d in seq(c, 0, -20)) {
          for (e in seq(d, 0, -10)) {
            for (f in seq(e, 0, -5)) {
              for (g in seq(f, 0, -2)) {
                ways = ways + 1
              }
            }
          }
        }
      }
    }
  }
  return(ways)
}

get_coin_sums(200)
#[1] 73682
system.time(get_coin_sums(200))
#user  system elapsed 
#0.046   0.001   0.047 

get_coin_sums_dynamic <- function(target, coins) {
#coins should be an array without inclusion of 1
#initialize all the values to 1
  summation = rep(1, target + 1)
  for(i in coins) {
    for(j in seq(i, target)) {
      summation[j + 1] = summation[j + 1] + summation[j - i + 1]
    }
  }
  return(tail(summation, 1))
}

get_coin_sums_dynamic(20, c(2, 5, 10))
#[1] 40

get_coin_sums_dynamic(200, c(2, 5, 10, 20, 50, 100, 200))
#[1] 73682
system.time(get_coin_sums_dynamic(200, c(2, 5, 10, 20, 50, 100, 200)))
#user  system elapsed 
#0       0       0 
