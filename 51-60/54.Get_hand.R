source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/51-60/54.Poker_card_supporting_functions.R")
get_hand <- function(hands_1, hands_2) {
  value1 <- substr(hands_1, 1, 1)
  suit1 <- substr(hands_1, 2, 2)
  value2 <- substr(hands_2, 1, 1)
  suit2 <- substr(hands_2, 2, 2)
  output1 = is_royal_flush(value1, suit1)
  output2 = is_royal_flush(value2, suit2)
  if(sum(output1, output2) == 1) {
    if (output1) return("Player 1") else return("Player 2")
  }
  
  output1 = is_straight_flush(value1, suit1)
  output2 = is_straight_flush(value2, suit2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_four_of_a_kind(value1)
  output2 = is_four_of_a_kind(value2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_full_house(value1)
  output2 = is_full_house(value2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_flush(suit1)
  output2 = is_flush(suit2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_straight(value1)
  output2 = is_straight(value2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_three_of_a_kind(value1)
  output2 = is_three_of_a_kind(value2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_two_pair(value1)
  output2 = is_two_pair(value2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = is_a_pair(value1)
  output2 = is_a_pair(value2)
  if(sum(output1, output2) == 1){
    if (output1) return("Player 1") else return("Player 2")
  }
  if(sum(output1, output2) == 2) {
    return(break_ties(value1, value2))
  }
  output1 = high_card(value1)
  output2 = high_card(value2)
  if (output1 > output2) return("Player 1") else return("Player 2")
}

break_ties <- function(value1, value2) {
  out1 = tie_breaker(value1)
  out2 = tie_breaker(value2)
  if (out1 == out2) {
    output1 = high_card(value1)
    output2 = high_card(value2)
    if (output1 > output2) return("Player 1") else return("Player 2")
  }
  if(out1 > out2) return("Player 1") else return("Player 2")
}
