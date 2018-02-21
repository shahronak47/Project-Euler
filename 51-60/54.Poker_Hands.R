source("/Users/ronakshah/Google Drive/Project Euler/54.Get_hand.R")

df <- read.table("/Users/ronakshah/Downloads/p054_poker.txt", sep = "", header = F, stringsAsFactors = FALSE)
hands <- character(nrow(df))

for (i in 1:nrow(df)) {
  hands[i] <- get_hand(as.character(df[i, 1:5, drop = TRUE]))
}