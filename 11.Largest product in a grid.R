library(zoo)
getMaxProduct <- function(mat, windowSize) {
#check for column
a = max(rollapply(mat, windowSize, prod))
#check for row
b = max(rollapply(t(mat), windowSize, prod))
#check for diagonal
# create an indicator for all diagonals in the matrix
d <- row(mat) - col(mat)
k <- row(mat) + col(mat)
# use split to group on these values
diags1 <- split(mat, d)
diags2 <- split(mat, k)
#rollapply(x, 3, prod,align = 'left', partial = 1)
prodList1 <- unlist(lapply(diags1[lapply(diags1, length) > (windowSize - 1)], function(x) rollapply(x, windowSize, prod)), use.names = FALSE)
prodList2 <- unlist(lapply(diags2[lapply(diags2, length) > (windowSize - 1)], function(x) rollapply(x, windowSize, prod)), use.names = FALSE)
c = max(prodList1)
d = max(prodList2)
max(a, b, c, d)
}
