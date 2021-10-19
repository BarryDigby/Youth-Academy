# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# Check number of unique entries in 'id'
length(unique(df$id))

# Is it the same as the number of rows? 
length(unique(df$id)) == nrow(df)

# Drop the column from the dataset
df <- subset(df, select=-c(id))