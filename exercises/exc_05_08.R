library(caret)

# load training object created in previous step:
train <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/train.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)

# make model 
#      knn3(training data, training labels, value for k)
model_fit <- knn3(train[_:__], train[,__], k = _)

# make predictions
# insert 'training data' below
train_predictions <- predict(model_fit, train[,_:__], type = "class")

# evaluate model
train_results <- confusionMatrix(train_predictions, train[,21])

# uncomment this line when code filled out.
#print(train_results)
