# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# I am removing an outlier here. 
df <- subset(df, df$gender != "Other")

# load ggpubr
library(ggpubr)

# create very basic scatterplot
ggscatter(df, 
          x="age", 
          y="bmi")