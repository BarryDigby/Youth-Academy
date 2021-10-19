# Load data, library
library(ggpubr)
library(datasets)
data("ToothGrowth")

# make a boxplot of len vs dose
ggboxplot(ToothGrowth,
         x = "dose",
         y = "len",
         bxp.errorbar = TRUE)