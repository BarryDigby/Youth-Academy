# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

df$bmi_over_30 <- df$bmi >= 30 

# load the library for plots
library(ggpubr)

# make a basic histogram plot  
gghistogram(df, 
            x="bmi", 
            y="..count..",
            color = "_____",
            fill = "______",
            facet.by = "______")