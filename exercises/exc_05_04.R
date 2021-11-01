# load iris, train and test data + library
load("data/knn_intro.RData")
library(caret)
set.seed(123)

# create training model again.
model_fit <- knn3(train[,1:4], train[,5], k = 10)

# add the sample from figure 2
new_sample <- data.frame(4.7, 3.5, 2.6, 1, "New Data")
names(new_sample) <- colnames(iris)

# add it to the test dataset
test <- rbind(test, new_sample)

# test model on the test set (including unseen sample)
test_predictions <- predict(model_fit, test[,1:4], type = "class")
test_cfm <- confusionMatrix(test_predictions, test[,5])
print(test_cfm)
