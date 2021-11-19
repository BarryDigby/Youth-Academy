# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# I am removing an outlier here. 
df <- subset(df, df$gender != "Other")

# create new variable 'above_40'
df$above_40 <- _____________

# load ggpubr
library(ggpubr)

# create scatterplot, facet.by the newly created variable!
ggscatter(df, 
          x="age", 
          y="bmi", 
          facet.by = "________")