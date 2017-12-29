library(combinat)
is_permutable_numbers <- function(num_list) {
  all_combns <- as.numeric(sapply(permn(strsplit(as.character(num_list[1]), "")[[1]]), function(x) paste0(x, collapse = "")))  
  if(all(num_list %in% all_combns))
    return(TRUE)
  else
    return(FALSE)
}