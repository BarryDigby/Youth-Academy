library(caret)

# load training and test object created in previous step:
train <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/train.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)
test <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/test.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)
# re-make training model 
#      knn3(training data, training labels, value for k)
model_fit <- knn3(train[_:__], train[,__], k = _)

# make predictions
# insert 'training data' below
test_predictions <- predict(model_fit, test[,_:__], type = "class")

# evaluate model
test_results <- confusionMatrix(test_predictions, test[,21])

# uncomment this line when code filled out.
#print(test_results)