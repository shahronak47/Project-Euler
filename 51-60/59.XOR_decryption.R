library(R.utils)

xor_gate <- function(a, b) {
  #Change to binary
  a <- intToBin(a)
  b <- intToBin(b)
  #Add lagging 0's if the binary vectors are of different length
  n <- paste0('%0', max(nchar(a), nchar(b)), 's')
  a <- sprintf(n, a)
  b <- sprintf(n, b)
  #Compare the binary vector and return 1 if the pair has different value 
  #or return 0 if they have the same value. 
  #Change binary to integer. 
  strtoi(paste0(as.integer(strsplit(a, '')[[1]] != strsplit(b, '')[[1]]), collapse = ''), base = 2)
}
#test examples
#xor_gate(65, 42)
#xor_gate(107, 65)

#Read the comma-separated text as string and convert to numeric vector
readLines('https://projecteuler.net/project/resources/p059_cipher.txt') |>
  strsplit(',') |> unlist() |> as.numeric() -> vec
#ASCII values of all lower case letters
lower_case_ascii <- utf8ToInt(paste0(letters, collapse = ''))
#Get all possible combinations of 3 letters keys
all_combns <- expand.grid(lower_case_ascii, lower_case_ascii, lower_case_ascii)

#Try with each key and save the decrypted value in a vector
apply(all_combns, 1, function(x) {
  intToUtf8(mapply(xor_gate, vec, x))
}) -> new

#Manually finding text that has some meaning 
inds <- grep('\\bthe\\b', new)
text <- new[inds[10]]
all_combns[inds[10], ]
#Get sum of ASCII values of a text
sum(utf8ToInt(text))
#129448
