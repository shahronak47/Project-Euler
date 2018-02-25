source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/51-60/54.Get_hand.R")

df <- read.table("/Users/Ronak Shah/Downloads/p054_poker.txt", sep = "", header = F, stringsAsFactors = FALSE)
output <- character(nrow(df))

for (i in 1:nrow(df)) {
  #browser()
  hands_1 <- as.character(df[i, 1:5, drop = TRUE])
  hands_2 <- as.character(df[i, 6:10, drop = TRUE])
  output[i] <- get_hand(hands_1, hands_2)
}
