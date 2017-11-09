library(zoo)
largestProductInASeries <- function(numberInCharacterForm, windowSize) {
numberVector = as.numeric(unlist(strsplit(numberInCharacterForm, "")))
productVector = rollapply(numberVector, windowSize, prod)
maxProduct = max(productVector)
baseIndex = which.max(productVector)
adjNumbers = numberVector[baseIndex:(baseIndex + windowSize - 1)]
cat(sprintf("The maximum product of %d adjacent numbers are : %f\n", windowSize, maxProduct))
cat(sprintf("And the numbers are : %s", paste0(adjNumbers, collapse = " , ")))
}
