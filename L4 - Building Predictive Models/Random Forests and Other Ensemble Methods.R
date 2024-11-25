data_dirty <- titanic::titanic_train
data <- na.omit(data_dirty)

# Load necessary libraries
library(randomForest)

# Build a random forest model
rf_model <- randomForest(Survived ~ Sex + Pclass + Age + Fare, data = data, ntree = 100)

# View the model
print(rf_model)

# Predict survival as class labels
data$Predicted_RF <- predict(rf_model, type = "response")

# Classify based on a threshold (e.g., 0.5)
data$Predicted_RF_Result <- ifelse(data$Predicted_RF > 0.5, 1, 0)

# Confusion Matrix
confusionMatrix(as.factor(data$Predicted_RF_Result), as.factor(data$Survived))
