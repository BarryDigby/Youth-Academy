# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# load ggpubr
library(ggpubr)

# create very basic scatterplot
ggscatter(df, 
          x="bmi", 
          y="avg_glucose_level")


# Lets tease apart bmi vs avg_glucose_level within stroke vs. no stroke. 
ggscatter(df, 
          x="bmi", 
          y="avg_glucose_level", 
          facet.by = "stroke", 
          color = "stroke", 
          add = "reg.line", 
          conf.int = T, 
          add.params = list(color = "blue"))