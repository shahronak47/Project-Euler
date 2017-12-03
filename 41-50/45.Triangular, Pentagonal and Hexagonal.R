source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/41-50/44.Generate_nth_Pentagonal_numbers.R")
source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/41-50/45.Generate_nth_hexagonal_numbers.R")
source("/Users/Ronak Shah/Google Drive/Git-Project-Euler/41-50/45.Generate_nth_triangular_numbers.R")

system.time(Reduce(intersect, list(sapply(seq(60000), generate_nth_triangular_number),
                       sapply(seq(60000), generate_nth_pentagonal_number), 
                       sapply(seq(60000), generate_nth_hexagonal_number))))


#[1]          1      40755 1533776805

system.time(Reduce(intersect, list(sapply(seq(60000), generate_nth_triangular_number),
                                   sapply(seq(60000), generate_nth_pentagonal_number), 
                                   sapply(seq(60000), generate_nth_hexagonal_number))))
#user  system elapsed 
#0.31    0.00    0.31 

get_common_hpt <- function(n) {
  sixtykseq <- seq(n)
  Reduce(intersect, list(sapply(sixtykseq, generate_nth_hexagonal_number), 
                         sapply(sixtykseq, generate_nth_pentagonal_number)))
}

get_common_hpt(60000)
#[1]          1      40755 1533776805

system.time(get_common_hpt(60000))
#user  system elapsed 
#0.20    0.00    0.21 