source("/Users/ronakshah/Downloads/42.Get_Triangle_Numbers_Under_N.R")
df <- read.table("/Users/ronakshah/Downloads/p042_words.txt", sep = ",")
new_df <- data.frame(t(df), stringsAsFactors = F)
rownames(new_df) <- NULL
colnames(new_df) <- c("word")
get_triangle_numbers_from_file <- function() {
  #Calculate sum of each word
  word_sum <- sapply(new_df$word, function(x) sum(match(strsplit(x, "")[[1]], LETTERS)))
  #Calculate triangle numbers until maximum of word sums
  triangle_numbers = generate_triangle_numbers_until_n(max(word_sum))
  sum(word_sum %in% triangle_numbers)
}

system.time(get_triangle_numbers_from_file())
#user  system elapsed 
#0.007   0.000   0.007 