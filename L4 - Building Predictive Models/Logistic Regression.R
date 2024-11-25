data_dirty <- titanic::titanic_train
data <- na.omit(data_dirty)

# Load necessary libraries
library(caret)

# Prepare data: Ensure factors are correctly set
data$Survived <- factor(data$Survived, levels = c(0, 1))
data$Pclass <- factor(data$Pclass, levels = c(1, 2, 3))

# Fit logistic regression model
logistic_model <- glm(Survived ~ Sex + Pclass + Age + Fare, data = data, family = binomial)

# View model summary
summary(logistic_model)

# Predict probabilities
data$Survival_Chance <- predict(logistic_model, type = "response")

# Classify predictions using a threshold of 0.5
data$Predicted_Survival <- ifelse(data$Survival_Chance > 0.5, 1, 0)

# Confusion Matrix
confusionMatrix(as.factor(data$Predicted_Survival), data$Survived)

