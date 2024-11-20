# Create a list
my_list <- list(
  name = "Titanic Dataset",    # character type
  passengers = 220,            # numeric type
  survived = c(120, 100),      # vector of survivors
  details = data.frame(Sex = c("male", "female"), Age = c(30, 25)) # data frame
)

# Check the structure of the list
str(my_list)

# Accessing an element by index
my_list[[1]]  # "Titanic Dataset" (First element)

# Accessing by name
my_list$name  # "Titanic Dataset"

# Accessing the "survived" vector
my_list$survived  # c(120, 100)

# Accessing a value from the "details" data frame (nested list)
my_list$details$Sex  # c("male", "female")

