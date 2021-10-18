# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# Remove patients below 18 (i.e select those greater than or equal to 18)
df <- subset(df, df$age >= 18)