# load training object created in previous step:
train <- read.delim("https://raw.githubusercontent.com/BarryDigby/Youth-Academy/master/data/train.txt", row.names="samples", header=T, sep="\t", stringsAsFactors = TRUE)

head(train)