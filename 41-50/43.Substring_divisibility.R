get_answer_for_euler_problem43 <- function() {
  #Generate 3 digit multiples of 17
  n17 <- sprintf("%03d", seq(17, 1000, 17))
  #Remove all the numbers who has any digit more than once
  final_n17 <- n17[sapply(n17, function(x) all(table(strsplit(x, "")[[1]])==1))]
  
  for (i in c(13, 11, 7, 5, 3, 2)) {
    #Generate 3 digit multiples of all the prime numbers above
    n13 <- sprintf("%03d", seq(i, 1000, i))
    final_n13 <- n13[sapply(n13, function(x) all(table(strsplit(x, "")[[1]])==1))]
    #Create a named vector where every number has it's common part as it's name
    #This part of the solution was taken from @Jaap's answer to this question on SO https://stackoverflow.com/questions/47431111/match-substring-of-two-vectors-and-create-a-new-vector-combining-them
    final_n17 <- setNames(final_n17, substr(final_n17,1,2))
    final_n13 <- setNames(final_n13, substr(final_n13,2,3))
    #merge the values based on common part between final_n17 and final_n13
    df <- merge(stack(final_n13), stack(final_n17), by = 'ind')
    #paste values together between 
    combined_value <- paste0(substr(df$values.x,1,1), df$values.y)
    #Assigning the value back to final_n17 to continue in the loop
    final_n17 <- combined_value
  }
  #Removing all the solution who has got any digit more than once
  last_sums <- final_n17[sapply(final_n17, function(x) all(table(strsplit(x, "")[[1]])==1))]
  #To get d1 we need to fill in with the missing digit to make it pandigital
  sum(as.numeric(sapply(last_sums, function(x) paste0(setdiff(0:9, strsplit(x, "")[[1]]), x))))
}

get_answer_for_euler_problem43()
#[1] 16695334890

system.time(get_answer_for_euler_problem43())
#user  system elapsed 
#0.121   0.000   0.123 