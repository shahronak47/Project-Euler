source("/home/ronakshah/Ronak/Palindrome.R")
getLargest3DigitPalindrome <- function() {
  allProducts <- outer(1:999, 1:999)
  getAllPalindromes <- sapply(allProducts, check_if_palindrome)
  max(allProducts[which(getAllPalindromes==1, arr.ind = T)])
}