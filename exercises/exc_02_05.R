# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# Remove the variables 'id' and 'ever_married' using subset()

# Check the dimensions of the subset DF.. 