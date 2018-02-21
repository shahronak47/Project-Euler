source("/Users/ronakshah/Google Drive/Project Euler/54.Poker_card_supporting_functions.R")
get_hand <- function(cards) {
  value <- substr(cards, 1, 1)
  suit <- substr(cards, 2, 2)
  if(is_royal_flush(value, suit))
    return("Royal Flush")
  else
    if(is_straight_flush(value, suit))
      return("Straight Flush")
  else
    if(is_four_of_a_kind(value))
      return("Four of a kind")
  else
    if(is_full_house(value))
      return("Full house")
  else
    if(is_flush(suit))
      return("Flush")
  else
    if(is_straight(value))
      return("Straight")
  else
    if(is_three_of_a_kind(value))
      return("Three of a kind")
  else
    if(is_two_pair(value))
      return("Two pair")
  else
    if(is_a_pair(value))
      return("Pair")
  else
    return(high_card(value))
}
