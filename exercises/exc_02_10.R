# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# load the library for plots
library(ggpubr)

# make boxplot
ggboxplot(df, 
          x="smoking_status", 
          y="age", 
          palette = "jco", 
          color = "smoking_status", 
          ggtheme = theme_classic())

# add original datapoints
ggboxplot(df,
          x="smoking_status",
          y="age",
          palette="jco",
          color="smoking_status",
          ggtheme=theme_classic(),
          add=c("jitter","boxplot"), 
          size = 0.01)