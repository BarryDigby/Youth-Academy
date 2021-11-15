# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# subset by bmi
under_30 <- subset(df, df$bmi < 30)
over_30 <- subset(df, df$age >= 30)