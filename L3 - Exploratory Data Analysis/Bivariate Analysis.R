data <- titanic::titanic_train

library(ggplot2)

# Box plot: Survival chances by Class
ggplot(data, aes(x = factor(Pclass), y = Fare, fill = factor(Survived))) +
  geom_boxplot(alpha = 0.7) +
  labs(title = "Fare Distribution by Class and Survival", x = "Passenger Class", y = "Fare") +
  theme_minimal()

# Scatter plot: Age vs Class
ggplot(data, aes(x = Age, y = factor(Pclass), color = factor(Survived))) +
  geom_point(alpha = 0.7) +
  labs(title = "Scatter Plot of Age vs Class by Survival", x = "Age", y = "Class") +
  theme_minimal()
