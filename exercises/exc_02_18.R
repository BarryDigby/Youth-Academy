# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# create a new column called bmi_over_30
# use logical operators here (df$bmi > 30)


# Use table on the resulting column to print the results
table(df$bmi_over_30)