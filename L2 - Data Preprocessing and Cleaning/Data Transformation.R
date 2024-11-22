# Example Titanic-like dataset
data <- data.frame(
  Name = c("John", "Alice", "Bob", "Jane"),
  Sex = c("male", "female", "male", "female"),
  Pclass = c(1, 2, 3, 1),
  Age = c(28, 22, 35, 22)
)

# Convert Sex and Pclass to factor
data$Sex <- as.factor(data$Sex)
data$Pclass <- as.factor(data$Pclass)

# Confirm changes
print(data)


# Create a new feature: Age group
data$AgeGroup <- ifelse(data$Age < 18, "Child", "Adult")

# Create interaction term: Class and Sex
data$ClassSex <- paste(data$Pclass, data$Sex, sep = "_")

print(data)

# Standardize Age
data$Age_Standardized <- scale(data$Age)

print(data)

# Normalize Fare
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

data$Age_Normalized <- normalize(data$Age)

print(data)
