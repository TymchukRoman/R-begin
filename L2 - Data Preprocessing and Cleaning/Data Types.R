# Numeric values
x <- 42        # Integer treated as numeric
y <- 3.14      # Decimal

# Check type
class(x)       # "numeric"
class(y)       # "numeric"

# Integer values
x <- 5L        # Integer
class(x)       # "integer"

# Character strings
name <- "John Doe"
class(name)    # "character"

# Vector of characters
names <- c("Alice", "Bob", "Charlie")
print(names)

# Create a factor
gender <- factor(c("male", "female", "male", "female"))

# Check the structure
print(gender)         # Shows levels: "female", "male"
levels(gender)        # "female" "male"
class(gender)         # "factor"

# Convert factor to numeric
as.numeric(gender)    # 2 1 2 1 (indices of levels)

# Logical values
x <- TRUE
y <- FALSE
class(x)              # "logical"

# Logical operations
x & y                 # FALSE
x | y                 # TRUE

# Complex number
z <- 2 + 3i
class(z)              # "complex"

# Access real and imaginary parts
Re(z)                 # 2
Im(z)                 # 3

# Date type
date <- as.Date("2024-11-22")
class(date)           # "Date"

# POSIXct for datetime
datetime <- as.POSIXct("2024-11-22 14:30:00")
class(datetime)       # "POSIXct"

# Convert numeric to character
x <- 42
as.character(x)       # "42"

# Convert character to numeric
y <- "3.14"
as.numeric(y)         # 3.14

# Convert character to factor
gender <- c("male", "female", "male")
gender_factor <- as.factor(gender)




