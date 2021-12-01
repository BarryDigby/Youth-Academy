library(caret)

# load training and test object created in previous step:
train <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/train.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)
test <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/test.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)
new_data <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/new_patients.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)

# re-make training model 
#      knn3(training data, training labels, value for k)
model_fit <- knn3(train[1:20], train[,21], k = 3)

# add new patients
test <- rbind(test, new_data)

# make predictions
# insert 'test data' below
test_predictions <- predict(model_fit, test[,1:20], type = "class")

# evaluate model
test_results <- confusionMatrix(test_predictions, test[,21])

# uncomment this line when code filled out.
print(test_results)