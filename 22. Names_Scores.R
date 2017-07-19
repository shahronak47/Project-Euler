calculate_names_scores <- function(file.path) {
df <- data.frame(names = t(read.table(file = filename, sep = ",", na.strings = 0)), stringsAsFactors = F)
sortedNames <- sort(df$names)
sum(mapply(function(x, y) sum(match(unlist(strsplit(x, "")), LETTERS)) * y, 
       sortedNames, seq_along(sortedNames)))
}
filename <- "C:/Users/Ronak Shah/Downloads/p022_names.txt"
system.time(calculate_names_scores(filename))
#user  system elapsed 
#1.15    0.02    1.17 