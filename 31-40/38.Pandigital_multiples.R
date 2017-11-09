source("C:\\Users\\Ronak Shah\\Google Drive\\Git-Project-Euler\\32.Is_Pandigital.R")
get_pandigital_multiples <- function() {
  highest_pandigital_number = 0
  for(i in seq(9123, 9876)) {
    pasted_number = paste0(i, i*2)
    if(is_pandigital(pasted_number)) {
      highest_pandigital_number = pasted_number
    }
    
  }
  return(highest_pandigital_number)
}

get_pandigital_multiples()
#[1] "932718654"

system.time(get_pandigital_multiples())
#user  system elapsed 
#0.14    0.00    0.14 

#[1] 9267 9273 9327