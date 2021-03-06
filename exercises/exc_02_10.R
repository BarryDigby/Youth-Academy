# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# load the library for plots
library(ggpubr)

# make boxplot
ggboxplot(df, 
          y = "age",
          bxp.errorbar = TRUE)