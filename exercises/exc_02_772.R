# Load data, library
library(ggpubr)
library(datasets)
data("ToothGrowth")

# Make Histogram #3
gghistogram(ToothGrowth, 
            x = "____",
            y = "..count..",
            fill = "_____",
            facet.by = "______")