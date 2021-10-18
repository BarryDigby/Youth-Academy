# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# create histogram plots
par(mfrow=c(2,2))
hist(df$id)
hist(df$age)
hist(df$avg_glucose_level)
hist(df$bmi)