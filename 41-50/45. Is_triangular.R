is_triangular <- function(n) {
  ((sqrt(8 * n + 1) - 1) %% 2) == 0
}