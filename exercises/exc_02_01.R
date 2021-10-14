# Read in the data
mat <- read.csv("data/stroke-data.csv", header=T, sep=",")

# Check the dimensions of the data frame
dim(mat)

# Check the columns in the data frame
str(mat)