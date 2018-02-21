all_cards <- c(2:9, "T", "J", "Q", "K", "A")

#Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
is_royal_flush <- function(value, suit) {
  #All from the same suit
  return(is_flush(suit) &
           #Contains all of Ten, Jack, Queen, King and Ace
           (all(c("T", "J", "Q", "K", "A") %in% value)))
}


#Straight Flush: All cards are consecutive values of same suit.
is_straight_flush <- function(value, suit) {
  return(is_straight(value) & is_flush(suit))
}

#Four of a Kind: Four cards of the same value.
is_four_of_a_kind <- function(value) {
  return(length(unique(value)) == 1)
}

#Full House: Three of a kind and a pair.
is_full_house <- function(value) {
  return(is_three_of_a_kind(value) & is_a_pair(value))
}

#Flush: All cards of the same suit
is_flush <- function(suit) {
  return(length(unique(suit)) == 1)
}

#Straight: All cards are consecutive values.
is_straight <- function(value) {
  return(all(abs(diff(match(value, all_cards))) == 1))
}

#Three of a Kind: Three cards of the same value.
is_three_of_a_kind <- function(value) {
  return(any(table(value) == 3))
}

#Two Pairs: Two different pairs.
is_two_pair <- function(value) {
  return(sum(table(value) == 2) == 2)
}

#One Pair: Two cards of the same value.
is_a_pair <- function(value) {
  return(any(table(value) == 2))
}

#High Card: Highest value card.
high_card <- function(value) {
  return(max(match(value, all_cards)))
}
