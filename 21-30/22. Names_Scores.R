calculate_names_scores <- function(file_path) {
df <- data.frame(names = t(read.table(file = file_path, sep = ",", na.strings = 0)), stringsAsFactors = F)
sortedNames <- sort(df$names)
total_sum <- sum(mapply(function(x, y) sum(match(unlist(strsplit(x, "")), LETTERS)) * y, 
       sortedNames, seq_along(sortedNames)))
print(total_sum)
}
system.time(calculate_names_scores("C:/Users/Ronak Shah/Downloads/p022_names.txt"))
#user  system elapsed 
#1.34    0.00    1.36 
