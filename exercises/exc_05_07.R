# load dataset
mat <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/mat.txt", row.names="samples", header=T, sep=",", stringsAsFactors = TRUE)

# load library
# set seed for reproducibility
library(caret)
set.seed(2112)

# split dataset into training set
train_size <- floor(0.70 * nrow(mat))
train_idx <- sample(seq_len(nrow(mat)), size = train_size)

# store test data for later
test  <- mat[-train_idx,]

train <- mat[train_idx,]