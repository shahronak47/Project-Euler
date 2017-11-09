# https://gist.github.com/psychemedia/150cb9901529da58124a
countNumberOfCharactersInASeries <- function(x) {
  sum(nchar(gsub(" ", "", numbers2words(seq(x)))))
}
#[1] 21124