# load iris, train and test data + library
load("data/knn_intro.RData")
library(caret)
set.seed(123)

# create training model again.
model_fit <- knn3(train[,1:4], train[,5], k = 10)

# test model on test dataset 
test_predictions <- predict(model_fit, test[,1:4], type = "class")
#print(test_predictions)

# Generate confusion matrix
test_cfm <- confusionMatrix(test_predictions, test[,5])
print(test_cfm)