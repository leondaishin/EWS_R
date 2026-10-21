# readline(prompt = "") == input("...") 
# as.numeric() == int()

name <- readline(prompt = "What is your name? ")
age <- as.numeric(readline(prompt = "How old are you? ")) 

# outputs the value of the nam that the user has inputted 
# \n means add enter to the output
cat("Hello, ", name, "!\n")

age <- readline(prompt = "How old are you? ")

# outputs the age that the user has given in 
cat(name, "is", age, "years old")

# outputs the age of the user in one year 
cat(name, "is going to become", age + 1, "years old") 