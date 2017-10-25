source("C:\\Users\\Ronak Shah\\Google Drive\\Git-Project-Euler\\32.Is_Pandigital.R")
numvec = numeric()
for (i in seq(101, 100000)) {
  for (j in seq(101, 100000)) {
    combined_number = paste0(i, j, i*j)
    if (nchar(combined_number) == 9) {
      if (is_pandigital(combined_number))
      {
        numvec = c(numvec, i*j)      
      }
    }
  }
}
sum(unique(numvec))
#[1] 45228
