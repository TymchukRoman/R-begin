data <- titanic::titanic_train
install.packages('GGally')

library(ggplot2)
library(GGally)
library(reshape2)

# Pair plot: Age, Fare, and Survival
ggpairs(data, columns = c("Fare", "Pclass"), aes(color = factor(Survived))) 

# Correlation matrix
cor_data <- data[, c("Age", "Fare", "Pclass")]
cor_matrix <- cor(cor_data, use = "complete.obs")

# Convert to long format for heatmap
cor_melt <- melt(cor_matrix)

# Heatmap for correlation matrix
ggplot(cor_melt, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0) +
  labs(title = "Correlation Heatmap", x = "", y = "") +
  theme_minimal()
