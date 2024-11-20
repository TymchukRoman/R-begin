# Create a matrix using matrix() function
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Check the matrix
print(my_matrix)

# Accessing an element at row 1, column 2
my_matrix[1, 2]  # Returns 3

# Accessing all elements in the first row
my_matrix[1, ]  # Returns c(1, 3, 5)

# Accessing all elements in the second column
my_matrix[, 2]  # Returns c(3, 4)

# Matrix addition
my_matrix + my_matrix

# Matrix multiplication (element-wise)
my_matrix * my_matrix

# Matrix transpose
t(my_matrix)
