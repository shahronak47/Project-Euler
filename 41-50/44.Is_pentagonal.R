is_pentagonal <- function(n) {
((sqrt(24 * n + 1) + 1) %% 6) == 0
}