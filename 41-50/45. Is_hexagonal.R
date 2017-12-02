is_hexagonal <- function(n) {
  ((sqrt(8 * n + 1) + 1) %% 4) == 0
}