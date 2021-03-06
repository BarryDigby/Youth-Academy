# read in the data frame
df <- read.table("data/stroke-data.csv", sep=",", header=T)

# load the library for plots
library(ggpubr)

# make a basic histogram plot  
gghistogram(df, 
            x="bmi", 
            y="..count..")