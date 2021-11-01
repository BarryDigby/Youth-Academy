# 1. Split test/train 
library(datasets)
library(caret)
iris <- datasets::iris
#head(iris)

# 2. Create index for split
set.seed(123)
train_size <- floor(0.70 * nrow(iris))
train_idx  <- sample(seq_len(nrow(iris)), size = train_size)
#print(train_size)
#print(train_idx)

# 3. Make train , test set 
train <- iris[train_idx,]
test <- iris[-train_idx,]
#dim(train)
#dim(test)

# 4. Check the datasets are balanced (within reason)
#table(train$Species)
#table(test$Species)