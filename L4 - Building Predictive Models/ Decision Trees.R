data_dirty <- titanic::titanic_train
data <- na.omit(data_dirty)

# Load necessary libraries
library(rpart)
library(rpart.plot)

# Build a decision tree model
tree_model <- rpart(Survived ~ Sex + Pclass + Age + Fare, data = data, method = "class")


# Visualize the tree
rpart.plot(tree_model, type = 1, extra = 3)

# Predict classes
data$Predicted_Tree <- predict(tree_model, type = "class")

# Confusion Matrix
confusionMatrix(as.factor(data$Predicted_Tree), as.factor(data$Survived))
