# load iris, train and test data + library
load("data/knn_intro.RData")
library(caret)
set.seed(123)

# create training model 
model_fit <- knn3(train[,1:4], train[,5], k = 10)

# test model on training dataset it learned from 
model_predictions <- predict(model_fit, train[,1:4], type = "class")
print(model_predictions)

# Generate confusion matrix
train_cfm <- confusionMatrix(model_predictions, train[,5])
print(train_cfm)

