# Example data with missing values
data <- data.frame(
  Name = c("John", "Alice", "Bob", "Jane"),
  Age = c(28, NA, 35, 22),
  Fare = c(72.5, 15.0, NA, 25.0),
  Survived = c(1, 0, 1, 1)
)

# Check for missing values
print(data)
is.na(data)  # Returns TRUE where values are missing

# Summarize missing values per column
colSums(is.na(data))



# Impute missing Age with the median
data$Age[is.na(data$Age)] <- median(data$Age, na.rm = TRUE)

# Impute missing Fare with the mean
data$Fare[is.na(data$Fare)] <- mean(data$Fare, na.rm = TRUE)

print(data)


# Remove rows with NA
data_clean <- na.omit(data)
print(data_clean)
