data <- titanic::titanic_train

library(ggplot2)

# Histogram for Age
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 2, fill = "steelblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Age", x = "Age", y = "Count") +
  theme_minimal()

# Bar plot for Sex
ggplot(data, aes(x = Sex)) +
  geom_bar(fill = "coral", color = "black", alpha = 0.7) +
  labs(title = "Frequency of Gender", x = "Gender", y = "Count") +
  theme_minimal()
