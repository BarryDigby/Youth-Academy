# Read in the dataset 
df <- read.table("data/stroke-data.csv", header=TRUE, sep=",")

# How many columns and rows? (i.e the dimensions)
print(dim(df))

# Let's look at the columns and their data type
str(df)