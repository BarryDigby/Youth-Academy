# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# load the library for plots
library(ggpubr)

# make boxplot, use stroke variable for x-axis.
ggboxplot(df, 
          x = "stroke",
          y = "age",
          bxp.errorbar = TRUE,
          color = "_______",
          palette = "_______",
          theme = ______(),
          fill = "______")